# Production function, trajectory, and Kobe plot.
# A new stock or RFMO is a row in presets.csv.

library(shiny)
library(ggplot2)

presets <- read.csv("presets.csv", stringsAsFactors = FALSE)
presets <- presets[order(presets$ord), ]
presets$label <- ifelse(
  presets$area %in% c("North", "South"),
  paste(presets$stock, presets$area, sep = ", "),
  presets$stock
)

bmsy_over_k <- function(m) m^(-1 / (m - 1))

surplus <- function(B, r, K, m) {
  (r / (m - 1)) * B * (1 - (B / K)^(m - 1))
}

ref_points <- function(r, K, m) {
  bk <- bmsy_over_k(m)
  Bmsy <- K * bk
  MSY <- surplus(Bmsy, r, K, m)
  list(Bmsy = Bmsy, MSY = MSY, Fmsy = MSY / Bmsy, bk = bk)
}

run_path <- function(r, K, m, f_ratio, ny = 40L) {
  ref <- ref_points(r, K, m)
  dt <- 0.2
  n <- as.integer(ny / dt)
  B <- numeric(n)
  Fr <- numeric(n)
  B[1] <- 0.95 * K
  Fr[1] <- 0.05
  for (i in seq_len(n - 1)) {
    Fr[i] <- 0.05 + (f_ratio - 0.05) * ((i - 1) / (n - 1))
    dB <- surplus(B[i], r, K, m) - Fr[i] * ref$Fmsy * B[i]
    B[i + 1] <- max(0.02 * K, B[i] + dt * dB)
  }
  Fr[n] <- f_ratio
  idx <- seq(1, n, by = as.integer(1 / dt))
  data.frame(
    year = seq_along(idx),
    B = B[idx],
    Fr = Fr[idx],
    Brel = B[idx] / ref$Bmsy
  )
}

cell_of <- function(b, f) {
  if (b >= 1 && f <= 1) "green"
  else if (b >= 1 && f > 1) "subject to overfishing"
  else if (b < 1 && f <= 1) "overfished"
  else "overfished and subject to overfishing"
}

production_plot <- function(r, K, m) {
  ref <- ref_points(r, K, m)
  B <- seq(0, K, length.out = 200)
  curve <- data.frame(B = B, SP = surplus(B, r, K, m))
  peak <- data.frame(B = ref$Bmsy, SP = ref$MSY)
  ggplot(curve, aes(B, SP)) +
    geom_line(linewidth = 0.8) +
    geom_vline(xintercept = ref$Bmsy, linetype = 2) +
    geom_hline(yintercept = ref$MSY, linetype = 2) +
    geom_point(data = peak, size = 3) +
    labs(
      title = "Production function",
      x = "Biomass (t)",
      y = "Surplus production (t)",
      subtitle = "Dashed lines: Bmsy and MSY. The peak is the reference point."
    ) +
    theme_bw(base_size = 13)
}

trajectory_plot <- function(path) {
  long <- rbind(
    data.frame(year = path$year, value = path$Brel, which = "B / BMSY"),
    data.frame(year = path$year, value = path$Fr, which = "F / FMSY")
  )
  ggplot(long, aes(year, value, colour = which)) +
    geom_hline(yintercept = 1, linewidth = 0.3) +
    geom_line(linewidth = 0.8) +
    scale_colour_manual(values = c("B / BMSY" = "#1b4f72", "F / FMSY" = "#b03a2e")) +
    labs(
      title = "Trajectory",
      x = "Year of the fishery",
      y = NULL,
      colour = NULL,
      subtitle = "F/FMSY rises from 0.05 to the slider. Biomass is divided by BMSY."
    ) +
    theme_bw(base_size = 13) +
    theme(legend.position = "bottom")
}

kobe_plot <- function(path) {
  xmax <- max(2.2, path$Brel) * 1.1
  ymax <- max(2.2, path$Fr) * 1.1
  quads <- data.frame(
    xmin = c(0, 1, 0, 1),
    xmax = c(1, xmax, 1, xmax),
    ymin = c(1, 1, 0, 0),
    ymax = c(ymax, ymax, 1, 1),
    fill = c("#e41a1c", "#fdae61", "#fee08b", "#4daf4a")
  )
  ggplot() +
    geom_rect(data = quads, aes(xmin = xmin, xmax = xmax, ymin = ymin, ymax = ymax), fill = quads$fill, colour = NA) +
    geom_hline(yintercept = 1, linewidth = 0.3) +
    geom_vline(xintercept = 1, linewidth = 0.3) +
    geom_path(data = path, aes(Brel, Fr), linewidth = 0.8) +
    geom_point(data = path[1, ], aes(Brel, Fr), size = 2) +
    geom_point(data = path[nrow(path), ], aes(Brel, Fr), size = 3.5) +
    coord_cartesian(xlim = c(0, xmax), ylim = c(0, ymax), expand = FALSE) +
    labs(
      title = "Kobe plot",
      x = "B / BMSY",
      y = "F / FMSY",
      subtitle = "The path uses BMSY and FMSY from the production curve."
    ) +
    theme_bw(base_size = 13)
}

first <- presets[presets$rfmo == "ICCAT" & presets$label == "Blue shark, North", ][1, ]
stocks_for <- function(rfmo) unique(presets$label[presets$rfmo == rfmo])

ui <- fluidPage(
  titlePanel("Trajectory, Kobe plot, and the production function"),
  sidebarLayout(
    sidebarPanel(
      selectInput("rfmo", "RFMO", unique(presets$rfmo), selected = "ICCAT"),
      selectInput("stock", "Stock", stocks_for("ICCAT"), selected = "Blue shark, North"),
      sliderInput("m", "Production shape", min = 1.2, max = 4, value = first$m, step = 0.05),
      sliderInput("r", "r", min = 0.02, max = 0.8, value = first$r, step = 0.01),
      numericInput("K", "K (t)", value = round(first$K), min = 1000, step = 1000),
      sliderInput("f_ratio", "Terminal F / FMSY", min = 0.05, max = 3, value = first$f_ratio, step = 0.01),
      helpText("Shape 2 is Schaefer: the peak is at half of K, and FMSY = r/2. A new stock or RFMO is a row in presets.csv.")
    ),
    mainPanel(
      fluidRow(
        column(6, plotOutput("production", height = "320px")),
        column(6, plotOutput("kobe", height = "320px"))
      ),
      plotOutput("trajectory", height = "280px"),
      h4("Reference points from this curve"),
      textOutput("refs"),
      h4("This stock"),
      textOutput("note")
    )
  )
)

server <- function(input, output, session) {
  selected <- reactive({
    hit <- presets[presets$rfmo == input$rfmo & presets$label == input$stock, ]
    if (nrow(hit) < 1) presets[1, ] else hit[1, ]
  })

  observeEvent(input$rfmo, {
    labs <- stocks_for(input$rfmo)
    sel <- if (input$stock %in% labs) input$stock else labs[1]
    updateSelectInput(session, "stock", choices = labs, selected = sel)
  }, ignoreInit = TRUE)

  observeEvent(input$stock, {
    p <- selected()
    updateSliderInput(session, "m", value = p$m)
    updateSliderInput(session, "r", value = p$r)
    updateNumericInput(session, "K", value = round(p$K))
    updateSliderInput(session, "f_ratio", value = p$f_ratio)
  }, ignoreInit = TRUE)

  live <- reactive({
    req(input$r, input$K, input$m, input$f_ratio)
    m <- max(input$m, 1.2)
    K <- max(input$K, 1000)
    r <- max(input$r, 0.02)
    ref <- ref_points(r, K, m)
    path <- run_path(r, K, m, input$f_ratio)
    list(ref = ref, path = path, r = r, K = K, m = m)
  })

  output$production <- renderPlot({
    x <- live()
    production_plot(x$r, x$K, x$m)
  })
  output$trajectory <- renderPlot({
    trajectory_plot(live()$path)
  })
  output$kobe <- renderPlot({
    kobe_plot(live()$path)
  })
  output$refs <- renderText({
    x <- live()
    end <- x$path[nrow(x$path), ]
    sprintf(
      "MSY %s t. BMSY %s t, which is %.2f of K. FMSY %.3f. The path ends at B/BMSY %.2f and F/FMSY %.2f, in the %s cell.",
      format(round(x$ref$MSY), big.mark = ","),
      format(round(x$ref$Bmsy), big.mark = ","),
      x$ref$bk,
      x$ref$Fmsy,
      end$Brel,
      end$Fr,
      cell_of(end$Brel, end$Fr)
    )
  })
  output$note <- renderText(selected()$note)
}

shinyApp(ui, server)
