# Manager session 1. Status page.
# A new stock, RFMO, or method is a row in cases.csv. The code stays closed.

library(shiny)
library(ggplot2)

cases <- read.csv("cases.csv", stringsAsFactors = FALSE)
cases <- cases[order(cases$ord), ]
cases$label <- ifelse(
  cases$area %in% c("North", "South"),
  paste(cases$stock, cases$area, sep = ", "),
  cases$stock
)

their <- list(
  known = "unknown",
  b = 1, b_lo = 0.8, b_hi = 1.2,
  f = 1, f_lo = 0.8, f_hi = 1.2,
  xlab = "B / BMSY",
  summary = "Nothing is loaded from a summary. Enter a median and an interval, or leave the status unknown and name the missing number."
)

cell_of <- function(b, f) {
  if (b >= 1 && f <= 1) "green"
  else if (b >= 1 && f > 1) "subject to overfishing"
  else if (b < 1 && f <= 1) "overfished"
  else "overfished and subject to overfishing"
}

screen_of <- function(known, b, b_lo, b_hi, f, f_lo, f_hi) {
  if (!identical(known, "known")) {
    return("Status unknown. There is no point, and no probability. Name the number that is missing.")
  }
  if (any(!is.finite(c(b, b_lo, b_hi, f, f_lo, f_hi)))) {
    return("Enter a median and both ends of each interval.")
  }
  if (b_lo > b_hi || f_lo > f_hi) {
    return("An interval is reversed. Set the low below the high.")
  }
  cell <- cell_of(b, f)
  crosses <- (b_lo < 1 && b_hi > 1) || (f_lo < 1 && f_hi > 1)
  if (!crosses) {
    sprintf("The median is in the %s cell. Both intervals stay on one side of 1, so every point inside them is in that cell.", cell)
  } else {
    sprintf("The median is in the %s cell. A printed interval crosses 1, so that cell is not a probability.", cell)
  }
}

kobe_plot <- function(known, b, b_lo, b_hi, f, f_lo, f_hi, xlab) {
  xmax <- max(3, b, b_hi, na.rm = TRUE) * 1.15
  ymax <- max(2.5, f, f_hi, na.rm = TRUE) * 1.15
  quads <- data.frame(
    xmin = c(0, 1, 0, 1),
    xmax = c(1, xmax, 1, xmax),
    ymin = c(1, 1, 0, 0),
    ymax = c(ymax, ymax, 1, 1),
    fill = c("#e41a1c", "#fdae61", "#fee08b", "#4daf4a"),
    lab = c(
      "Overfished,\nsubject to overfishing",
      "Subject to\noverfishing",
      "Overfished",
      "Not overfished,\nnot subject to overfishing"
    ),
    lx = c(0.06, xmax - 0.06, 0.06, xmax - 0.06),
    ly = c(ymax - 0.06, ymax - 0.06, 0.06, 0.06),
    hj = c(0, 1, 0, 1),
    vj = c(1, 1, 0, 0)
  )
  p <- ggplot() +
    geom_rect(
      data = quads,
      aes(xmin = xmin, xmax = xmax, ymin = ymin, ymax = ymax),
      fill = quads$fill, colour = NA
    ) +
    geom_text(
      data = quads,
      aes(x = lx, y = ly, label = lab, hjust = hj, vjust = vj),
      size = 3.4, lineheight = 0.95
    ) +
    geom_hline(yintercept = 1, linewidth = 0.4) +
    geom_vline(xintercept = 1, linewidth = 0.4) +
    coord_cartesian(xlim = c(0, xmax), ylim = c(0, ymax), expand = FALSE) +
    labs(x = xlab, y = "F / FMSY") +
    theme_bw(base_size = 14) +
    theme(panel.grid = element_blank())

  if (identical(known, "known") && all(is.finite(c(b, b_lo, b_hi, f, f_lo, f_hi))) && b_lo <= b_hi && f_lo <= f_hi) {
    pt <- data.frame(b = b, b_lo = b_lo, b_hi = b_hi, f = f, f_lo = f_lo, f_hi = f_hi)
    p <- p +
      geom_errorbar(data = pt, aes(x = b, ymin = f_lo, ymax = f_hi), width = 0.04, linewidth = 0.7) +
      geom_errorbar(data = pt, aes(y = f, xmin = b_lo, xmax = b_hi), width = 0.05, linewidth = 0.7, orientation = "y") +
      geom_point(data = pt, aes(x = b, y = f), size = 3.5)
  }
  p
}

first <- cases[cases$rfmo == "ICCAT" & cases$label == "Blue shark, North", ][1, ]
stocks_for <- function(rfmo) {
  c(unique(cases$label[cases$rfmo == rfmo]), "Their stock")
}
methods_for <- function(rfmo, stock) {
  if (identical(stock, "Their stock")) return("Entered here")
  unique(cases$method[cases$rfmo == rfmo & cases$label == stock])
}

ui <- fluidPage(
  titlePanel("Status page"),
  sidebarLayout(
    sidebarPanel(
      selectInput("rfmo", "RFMO", unique(cases$rfmo), selected = "ICCAT"),
      selectInput("stock", "Stock", stocks_for("ICCAT"), selected = "Blue shark, North"),
      selectInput("method", "Method", methods_for("ICCAT", "Blue shark, North"), selected = "Combined"),
      radioButtons("known", "Status", c("Known point" = "known", "Unknown" = "unknown"), selected = "known"),
      conditionalPanel(
        condition = "input.known == 'known'",
        sliderInput("b", first$xlab, min = 0, max = 4, value = first$b, step = 0.01),
        sliderInput("b_lo", "Biomass interval, low", min = 0, max = 4, value = first$b_lo, step = 0.01),
        sliderInput("b_hi", "Biomass interval, high", min = 0, max = 4, value = first$b_hi, step = 0.01),
        sliderInput("f", "F / FMSY", min = 0, max = 5, value = first$f, step = 0.01),
        sliderInput("f_lo", "F interval, low", min = 0, max = 5, value = first$f_lo, step = 0.01),
        sliderInput("f_hi", "F interval, high", min = 0, max = 5, value = first$f_hi, step = 0.01)
      ),
      helpText("A new stock, RFMO, or method is a row in cases.csv. Changing a slider moves the point. The summary stays the published text.")
    ),
    mainPanel(
      plotOutput("kobe", height = "520px"),
      h4("This screen"),
      textOutput("screen"),
      h4("The summary"),
      textOutput("summary")
    )
  )
)

server <- function(input, output, session) {
  current <- reactive({
    if (identical(input$stock, "Their stock")) return(their)
    hit <- cases[cases$rfmo == input$rfmo & cases$label == input$stock & cases$method == input$method, ]
    if (nrow(hit) < 1) return(their)
    as.list(hit[1, ])
  })

  observeEvent(input$rfmo, {
    labs <- stocks_for(input$rfmo)
    sel <- if (input$stock %in% labs) input$stock else labs[1]
    updateSelectInput(session, "stock", choices = labs, selected = sel)
  }, ignoreInit = TRUE)

  observeEvent(input$stock, {
    meth <- methods_for(input$rfmo, input$stock)
    sel <- if (input$method %in% meth) input$method else meth[1]
    updateSelectInput(session, "method", choices = meth, selected = sel)
  }, ignoreInit = TRUE)

  observeEvent(list(input$rfmo, input$stock, input$method), {
    if (!identical(input$stock, "Their stock")) {
      hit <- cases[cases$rfmo == input$rfmo & cases$label == input$stock & cases$method == input$method, ]
      if (nrow(hit) < 1) return()
    }
    p <- current()
    updateRadioButtons(session, "known", selected = p$known)
    updateSliderInput(session, "b", label = p$xlab, value = p$b)
    updateSliderInput(session, "b_lo", value = p$b_lo)
    updateSliderInput(session, "b_hi", value = p$b_hi)
    updateSliderInput(session, "f", value = p$f)
    updateSliderInput(session, "f_lo", value = p$f_lo)
    updateSliderInput(session, "f_hi", value = p$f_hi)
  }, ignoreInit = TRUE)

  output$kobe <- renderPlot({
    p <- current()
    use <- identical(input$known, "known")
    kobe_plot(
      input$known,
      if (use) input$b else p$b,
      if (use) input$b_lo else p$b_lo,
      if (use) input$b_hi else p$b_hi,
      if (use) input$f else p$f,
      if (use) input$f_lo else p$f_lo,
      if (use) input$f_hi else p$f_hi,
      p$xlab
    )
  })

  output$screen <- renderText({
    screen_of(input$known, input$b, input$b_lo, input$b_hi, input$f, input$f_lo, input$f_hi)
  })

  output$summary <- renderText(current()$summary)
}

shinyApp(ui, server)
