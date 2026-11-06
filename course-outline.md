# IWT Course Outline

Two linked courses for managers and scientists, , of two days each. These are built around the [IOTC executive summaries](https://iotc.org/science/status-summary-species-tuna-and-tuna-species-under-iotc-mandate-well-other-species-impacted-iotc), that provide advice in the Kobe framework of the tuna RFM0 (e.g. [ICCAT](https://www.iccat.int/en/assess.html)). Managers learn how to interpret and act on advice, and scientists how to provide it. Examples will be based on the same case studies, so that managers and scientists can see where each group's responsibilities lie.

The course will take the form of worked examples in R markdown notebooks. These will be used to replicate advice for selected stocks, or to be modified for case studies.

Data set on Indonesian shark and rays, if available may be used as a final excercise where participants are asked to decides whether the IOTC advice framework can be used or adapted for domestic stocks.

## Case Study Stocks

Examples are based on sharks stocks assessed and managed by the IOTC

**IOTC**

There are quantitative stock assessments for blue shark and shortfin mako, and a preliminary assessment for silky shark. There are however no assessments for oceanic whitetip, scalloped hammerhead, bigeye thresher, pelagic thresher and porbeagle sharks. Although an ecological risk assessment (ERA) has been conducted for whitetip, hammerhead, the threshers and porbeagle.

Therefore only blue shark and shortfin mako have estimate of status relative to $B_{MSY}$ and $F_{MSY}$. Currently there is a retention ban for threshers and white tip.

**Table 1:** Summary of Scientific Committee executive summaries (2025). The Commission has not adopted reference points or a harvest control rule for any shark. Catch shares are mean retained catch for 2020–2024. IUCN categories and CITES appendices are those printed in the summaries.

[**Blue shark**](https://iotc.org/sites/default/files/content/Stock_status/2025/English/IOTC-2025-SC28-ES17_BSHE.pdf)

+----------------------------+-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------+
| Status                     | Advice                                              | Fishery                                                                                                                                                                        | Method                                                           |
+============================+=====================================================+================================================================================================================================================================================+==================================================================+
| F/FMSY 0.39 (0.21–0.57)    | No increase in catch until catch series is revised. | Retained bycatch of tuna and swordfish longline; some shark-targeted longline. Nominal catch \~9,500 t. Longline 81%, line 14%. Taiwan,China 30%, EU-Spain 30%, Indonesia 18%. | SS3 base case, JABBA as sensitivities. Catch and CPUE 1950–2023. |
|                            |                                                     |                                                                                                                                                                                |                                                                  |
| cSB/SBMSY 2.22 (1.76–2.68) |                                                     |                                                                                                                                                                                |                                                                  |
|                            |                                                     |                                                                                                                                                                                |                                                                  |
| MSY \~ 30,800 t            |                                                     |                                                                                                                                                                                |                                                                  |
|                            |                                                     |                                                                                                                                                                                |                                                                  |
| IUCN Near Threatened.      |                                                     |                                                                                                                                                                                |                                                                  |
|                            |                                                     |                                                                                                                                                                                |                                                                  |
| CITES Appendix II.         |                                                     |                                                                                                                                                                                |                                                                  |
+----------------------------+-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------+

[**Shortfin mako**](https://iotc.org/sites/default/files/content/Stock_status/2025/English/IOTC-2025-SC28-ES20_SMAE.pdf)

+----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------+
| Status                                                                                             | Advice                                                                                                                                              | Fishery                                                                                                                            | Method                                     |
+====================================================================================================+=====================================================================================================================================================+====================================================================================================================================+============================================+
| F/FMSY 1.53 (0.65–3.71) B/BMSY 0.96 (0.58–1.41) MSY \~ 1,930 t IUCN Endangered. CITES Appendix II. | Catch at or below 1,217 t (40% of 2020–2022) for a 50% chance of the green quadrant in 10 years. Includes dead discards and post-release mortality. | Retained bycatch; discarding and non-retention since 2018. Longline 62%, gillnet 27%. EU-Spain 39%, Pakistan 24%, EU-Portugal 12%. | JABBA ensemble, nine models, data to 2022. |
+----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------+

[**Oceanic whitetip**](https://iotc.org/sites/default/files/content/Stock_status/2025/English/IOTC-2025-SC28-ES18_OCSE.pdf)

+--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| Status                                                 | Advice                                                                                                         | Fishery                                                                                                         | Method                                          |
+========================================================+================================================================================================================+=================================================================================================================+=================================================+
| Unknown. IUCN Critically Endangered. CITES Appendix I. | Retention prohibited (Resolution 13/06). Landings continue. Reduce haulback mortality (about 50% on longline). | Bycatch; retention prohibited, but landings continue. Purse seine 60%, line 34%. Indonesia 62%, Mozambique 27%. | No assessment. 2018 Ecological risk assessment. |
+--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------------------------------------+

[**Silky shark**](https://iotc.org/sites/default/files/content/Stock_status/2025/English/IOTC-2025-SC28-ES21_FALE.pdf)

+----------------------------------------------+---------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------+----------------------------------------------------+
| Status                                       | Advice                                                                          | Fishery                                                                                                | Method                                             |
+==============================================+=================================================================================+========================================================================================================+====================================================+
| Unknown. IUCN Vulnerable. CITES Appendix II. | Cautious approach. No catch level. Reduce at-vessel and post-release mortality. | Retained bycatch. Gillnet 33%, line 29%, longline 21%. Indonesia 26%, Sri Lanka 20%, Taiwan,China 15%. | 2018 preliminary assessment, too uncertain to use. |
+----------------------------------------------+---------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------+----------------------------------------------------+

[**Scalloped hammerhead**](https://iotc.org/sites/default/files/content/Stock_status/2025/English/IOTC-2025-SC28-ES19_SPLE.pdf)

+---------------------------------------------------------+-------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------+
| Status                                                  | Advice                                                                        | Fishery                                                                                     | Method                                          |
+=========================================================+===============================================================================+=============================================================================================+=================================================+
| Unknown. IUCN Critically Endangered. CITES Appendix II. | Cautious approach. No catch level. Coastal mortality is high and unmonitored. | Coastal retained catch, mainly artisanal. Gillnet 54%, line 30%. Mozambique 74%, Kenya 16%. | No assessment. 2018 Ecological risk assessment. |
+---------------------------------------------------------+-------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------+

[**Bigeye thresher**](https://iotc.org/sites/default/files/content/Stock_status/2025/English/IOTC-2025-SC28-ES22_BTHE.pdf)

+----------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| Status                                       | Advice                                                                                                    | Fishery                                                                                                                           | Method                                          |
+==============================================+===========================================================================================================+===================================================================================================================================+=================================================+
| Unknown. IUCN Vulnerable. CITES Appendix II. | Keep the retention ban (Resolution 12/09). Hooking mortality is very high, so live release may do little. | Bycatch of swordfish and tuna longline; retention prohibited. Species catch under 1 t. Aggregated thresher code averages \~383 t. | No assessment. 2018 Ecological risk assessment. |
+----------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+

[**Pelagic thresher**](https://iotc.org/sites/default/files/content/Stock_status/2025/English/IOTC-2025-SC28-ES23_PTHE.pdf)

+----------------------------------------------+------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| Status                                       | Advice                                                                       | Fishery                                                                                                                         | Method                                          |
+==============================================+==============================================================================+=================================================================================================================================+=================================================+
| Unknown. IUCN Endangered. CITES Appendix II. | Keep the retention ban (Resolution 12/09). Same caveat on hooking mortality. | Bycatch; retention prohibited. Described as longline bycatch. Reported retained catch is Pakistan gillnet only (145 t in 2024). | No assessment. 2018 Ecological risk assessment. |
+----------------------------------------------+------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+

[**Porbeagle**](https://iotc.org/sites/default/files/content/Stock_status/2025/English/IOTC-2025-SC28-ES24_PORE.pdf)

+----------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| Status                                       | Advice                                                                      | Fishery                                                                                                                   | Method                                          |
+==============================================+=============================================================================+===========================================================================================================================+=================================================+
| Unknown. IUCN Vulnerable. CITES Appendix II. | No catch limit. Improve reporting. Japanese longline releases this species. | Bycatch of longline; often released. Catch not reported since 2019. Earlier catch: longline, Seychelles and Taiwan,China. | No assessment. 2018 Ecological risk assessment. |
+----------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+

### IUCN

The categories in Table 1 are the global IUCN Red List category for the species: its risk of extinction in the wild. The window is the longer of ten years or three generation lengths. For these sharks the usual evidence is a decline in the number of mature animals, or in an index of abundance, while fishing continues. The species takes the highest category whose threshold it meets.

**Critically Endangered.** Extremely high risk. On that decline criterion, a reduction of at least 80%. Oceanic whitetip and scalloped hammerhead.

**Endangered.** Very high risk. A reduction of at least 50%. Shortfin mako and pelagic thresher.

**Vulnerable.** High risk. A reduction of at least 30%. Silky shark, bigeye thresher and porbeagle.

**Near Threatened.** Does not meet the Vulnerable threshold, and is close to it or likely to reach it. Blue shark.

A decline whose cause has already ceased is judged against higher thresholds, 50%, 70% and 90%. A very small population, or a calculated probability of extinction, can lead to the same three threatened categories.

**Least Concern** means the species meets none of these thresholds. **Data Deficient** means there is too little information to apply them. Neither appears in Table 1.

The IOTC stock status is a separate line in the same summary. Blue shark is Near Threatened, and the assessment places it in the green quadrant.

### Cites

**Appendix I:** lists species threatened with extinction. International commercial trade is prohibited, and any cross-border movement needs both an export permit and an import permit.

**Appendix II:** lists species that are not necessarily threatened now, but could become so if trade is not controlled. International trade is allowed with an export permit, and the exporting country must find that the export will not be detrimental to the survival of the species. For catch taken on the high seas, introduction from the sea is treated in the same way and also needs that finding.

## Case Studies

+------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------+
| Stock            | Summary                                                                                                                                                                                                                                                                                        | Managers                                                                                      | Scientists     |
+==================+================================================================================================================================================================================================================================================================================================+===============================================================================================+================+
| Blue shark       | Stock assessment is based on SS3. Green quadrant, 100%. Advice is still no increase, because the reconstructed catch used in the projection is near MSY while the nominal catch is much lower. Indonesia is 17.8% of retained catch.                                                           | A green stock whose advice is precautionary.                                                  | SS3            |
+------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------+
| Shortfin mako    | JABBA ensemble of nine models. Overfished and subject to overfishing on the weight of evidence, with only about half the ensemble in that cell. Recovery to the green quadrant in 10 years, at 50% probability, requires catch of 1,217 t, including dead discards and post-release mortality. | Risk tolerance and a catch limit that is not landed weight.                                   | JABBA          |
+------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------+
| Oceanic whitetip | No assessment. Status unknown. Retention prohibited, and landings are still reported, 61.7% of them by Indonesia.                                                                                                                                                                              | MSY is the wrong objective. The action is the ban, lower haulback mortality, and enforcement. | None           |
+------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------+

## Ecological risk assessment

The 2018 ecological risk assessment (Murua et al., IOTC–2018–SC21–14) is the analysis cited in the executive summaries. It is a productivity–susceptibility analysis, scored separately for longline and for purse seine, and it covers the species in Table 1, including blue shark and shortfin mako.

The assessment ranks species by how vulnerable they are to a gear, so that research and precautionary measures can be directed at the highest ranks. The product is a rank. A position relative to $B_{MSY}$ and $F_{MSY}$ comes later, from a stock assessment, and only once catch and an index of abundance exist. Until then the rank is the advice. That is why oceanic whitetip, the threshers, scalloped hammerhead and porbeagle have an unknown status and still have a management recommendation.

**Productivity & Susceptibility**

Each species receives two scores.

- Productivity is the life history: growth, longevity, age at maturity, fecundity and the intrinsic rate of increase. A low score means the stock replaces itself slowly. Shortfin mako, silky shark, porbeagle and the threshers score as low productivity. Blue shark scores as the most productive of these species.
- Susceptibility is the overlap between the stock and the fishery. It has four parts: where the habitat and the effort coincide, whether the gear fishes at the depth the species occupies, whether the sizes taken are mature, and the proportion that die after capture, including post-release mortality. The score is by fleet and gear, because the same species can be highly susceptible to one gear and hardly taken by another. Blue shark has a high longline susceptibility and is not susceptible to purse seine. Pelagic thresher is a medium risk to longline and ranks second for purse seine.
- The two scores combine into a vulnerability rank. Rank 1 is the most vulnerable to that gear. Shortfin mako is rank 1 for longline. Blue shark is rank 10 for longline, because high susceptibility is offset by high productivity. Silky shark is rank 2 for longline.

The quality of each score is part of the result. Life history taken from the genus, or an overlap that has been assumed rather than mapped, can still be entered as a number. That uncertainty does not appear as a confidence interval on a Kobe plot. It marks the species as a priority for data as well as for management.

### Link to stock assessment, priors and reference points

The productivity attributes are the quantities used as priors. FishLife turns them into $r$, $M$ and steepness, with a CV that records whether the value comes from the stock, the species or the genus. In a production model those priors set the reference points. For a Schaefer model, $F_{MSY} = r/2$ and $B_{MSY} = K/2$. Steepness moves $B_{MSY}/K$. A low productivity score and a low $F_{MSY}$ are the same biology, one as a rank and one as a number. Blue shark, with higher productivity, has $F_{MSY}$ about 0.18. Shortfin mako, rank 1 for longline, has $F_{MSY}$ about 0.03.

Susceptibility is what an assessment treats as selectivity, catchability and the fraction of encounters that die. The shortfin mako catch limit includes dead discards and post-release mortality because that fraction is part of fishing mortality. The risk assessment scores it. JABBA or SS3 can turn it into a status only when catch and an index exist.

Where those series exist, the assessment takes the place of the rank. Where they do not, the summary leads with the rank and leaves $B_{MSY}$ and $F_{MSY}$ blank. Silky shark is the boundary case: a preliminary assessment was tried in 2018, judged too uncertain to use, and the risk assessment remained the basis for advice. The Indonesian data table applies the same rule. Life history without catch or an index supports a risk assessment. Catch and an index support a production model, using the productivity parameters as the prior and the susceptibility scores as the hypotheses for selectivity and catchability.

## How the course runs

Table 1, the case studies, the ecological risk assessment, and the simulations are the material the sessions use. Each course is two days. Each day is two sessions and a close.

A session has the same shape in both courses.

- **Theory.** A short presentation from the course deck. One decision the method is allowed to support.
- **Vignette.** One worked stock, walked through with the room. Blue shark or shortfin mako, unless the session names another. Managers do this in a Shiny app: they change parameters and do not edit code. Scientists do this in R Markdown: they change the marked inputs and render the file again.
- **Their case.** They rerun the vignette and match the worked result, then carry that same step onto the case they brought.

The instructor runs the vignette. In the room, their case receives only the step that session teaches. A series that is not yet in the vignette's shape is finished afterwards, from the same chapter.

Someone without a case is given a row from Table 1 or from the Indonesian table at the start, and uses that row throughout.

### Before the course

Each person sends a page with three things.

- The stock.
- The decision they need: a catch level, a size limit, a retention ban, a gear change, or an observer requirement.
- A data inventory. Catch, CPUE, length, abundance, and life history, each marked available, potential, limited, or none. An empty cell selects the method and sets the uncertainty.

### After the course

The vignettes are the chapters they continue from. Each has a marked place to point at their own series, in the same shape as the example: catch and an index, lengths plus $M/k$ and a selectivity assumption, or life history alone. The product remains the one the inventory supports.

### Close of the day

Each person says what their case now contains, and which line is still blank. Questions are taken then. The close adds no new method.

+-------------+-------------+--------------------------------------+--------------------+---------------------------------------------------------------------------------------------------+
| Course      | Day         | Session                              | Chapter            | Added to their case                                                                               |
+=============+=============+======================================+====================+===================================================================================================+
| Managers    | 1           | The status page                      | Vignette 1         | Inventory, and a point or an unknown                                                              |
+-------------+-------------+--------------------------------------+--------------------+---------------------------------------------------------------------------------------------------+
| Managers    | 1           | The action                           | Vignette 2         | The action in one sentence                                                                        |
+-------------+-------------+--------------------------------------+--------------------+---------------------------------------------------------------------------------------------------+
| Managers    | 2           | The rank and the strategy matrix     | Vignette 3         | The class of measure, and the action                                                              |
+-------------+-------------+--------------------------------------+--------------------+---------------------------------------------------------------------------------------------------+
| Managers    | 2           | The paragraph and the monitoring     | Vignette 4         | The management paragraph                                                                          |
+-------------+-------------+--------------------------------------+--------------------+---------------------------------------------------------------------------------------------------+
| Scientists  | 1           | The prior, then the production curve | Vignette 5         | $r$, $F_{MSY}$, the CV, the productivity score, and from the curve MSY, $B_{MSY}/K$, and the cell |
+-------------+-------------+--------------------------------------+--------------------+---------------------------------------------------------------------------------------------------+
| Scientists  | 1           | The product the row can support      | Case-studies table | The named product, and the lines left blank                                                       |
+-------------+-------------+--------------------------------------+--------------------+---------------------------------------------------------------------------------------------------+
| Scientists  | 2           | The fit the inventory allows         | Vignette 6 or 7    | The figure, or the series still missing                                                           |
+-------------+-------------+--------------------------------------+--------------------+---------------------------------------------------------------------------------------------------+
| Scientists  | 2           | The forecast                         | Vignette 8         | The advice sentence                                                                               |
+-------------+-------------+--------------------------------------+--------------------+---------------------------------------------------------------------------------------------------+

### Timetables

Day-by-day times for both courses are in [timetable.md](timetable.md).

## Course 1. Managers

The question each day is what may be authorised, and whether the monitoring exists to enforce it. Their product is the measure and the monitoring. Vignettes 1 to 4 are this course. Each one is a Shiny app. The class changes parameters on the screen. The material below is what those screens and the slides are taken from.

### Material

- `nicola/Tuna_stock_assessments.pdf`. Nicola Walker, Introduction to Tuna Stock Assessment. The process, from data to the reference case, the uncertainty grid and the diagnostics. Then the Kobe plot, the trajectory, and the projection matrix. These are the slides for Day 1 and for the strategy matrix. The trajectory and the Kobe plot are the Shiny app `shiny/production`, with the production curve that sets $B_{MSY}$, $F_{MSY}$, and MSY.
- `C:\work\flr\00_flr\kobe`. The Kobe phase plot and the strategy matrix. Session 1 uses the phase plot. Session 3 uses the matrix: the probability of meeting the objective under each catch option.
- `C:\work\flr\00_flr\doc`. The FLR tutorials. The sessions use Reference points for fisheries management with FLBRP, Short Term Forecasting for advice using FLash, Forecasting on the Medium Term for advice using FLasher, and An introduction to MSE using FLR.
- `C:\work\papers\10_scrs\sma-uncertainty`. Shortfin mako treated with SS3: the runs, the MCMC, and the projections. This is not the IOTC advice model. The IOTC advice is the JABBA ensemble. Day 2 uses both, so the class can see what the age-structured runs add once the biomass-dynamic cloud already crosses both axes.

### Blue shark, shortfin mako, SS3 and JABBA

The comparison the class makes first is ICCAT, because that is the RFMO with both stocks and both methods in the files. On the status page the three selectors are the RFMO, the stock, and the method. Where the SCRS combined SS3 and JABBA into one published point, the method is Combined. A separate SS3 row or a separate JABBA row is added when that model has its own point.

IOTC is the second RFMO already in the same file. Both of its assessed sharks have catch and an index, so both have a point. The Commission has adopted reference points for neither. The comparison is which model supplies the point, and whether the interval stays inside one cell.

SS3 is an age-structured model. It can take lengths as well as catch and CPUE, and the advice can name a base case. JABBA is a biomass-dynamic model. Catch and an index become $B/B_{MSY}$ and $F/F_{MSY}$. The shape of the production curve is a choice. It does not use lengths.

+-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                       | Blue shark                                                                                                                                                                | Shortfin mako                                                                                                                                                                                                        |
+=======================+===========================================================================================================================================================================+======================================================================================================================================================================================================================+
| Advice model          | SS3 base case, 2025, data to 2023                                                                                                                                         | JABBA ensemble of nine models, 2024, data to 2022                                                                                                                                                                    |
+-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| The other model       | JABBA on the same catch and CPUE. The summary says the models agree: not overfished and not subject to overfishing.                                                       | No SS3 base case in the IOTC summary. The SS3 runs are in `sma-uncertainty`.                                                                                                                                         |
+-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| What enters the model | Catch, CPUE, and lengths where they exist. The base case uses the lower GAM catch series from 1950, and the EU-Spain, Taiwan,China and Japan CPUE.                        | Catch and the Japanese CPUE. The nine models are three options for biology times three shapes of the production curve.                                                                                               |
+-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| The point             | $F/F_{MSY}$ 0.39 (0.21–0.57). $SB/SB_{MSY}$ 2.22 (1.76–2.68). $F_{MSY}$ 0.18. MSY about 30,800 t.                                                                         | $F/F_{MSY}$ 1.53 (0.65–3.71). $B/B_{MSY}$ 0.96 (0.58–1.41). $F_{MSY}$ 0.03. MSY about 1,930 t.                                                                                                                       |
+-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| The cell              | Green, 100% of the SS3 outcomes. Both intervals stay on that side of 1. The interval in the summary is a 95% interval.                                                    | Red on the weight of evidence. The ensemble is 49.7% in that cell, 24.0% subject to overfishing only, 4.1% overfished only, and 22.2% green. Both intervals cross 1. The interval in the summary is an 80% interval. |
+-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Catch in the matrix   | The reconstructed series used in the base case, 25,877 t a year for 2021–2023. Nominal retained catch is about 9,500 t.                                                   | 40% of the 2020–2022 average, 1,217 t, for a 50% chance of the green quadrant in 10 years. The figure includes dead discards, post-release mortality, and the SMA, MAK and MSK codes.                                |
+-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Advice                | No increase until the catch series is revised. At the reconstructed catch, the chance of $F>F_{MSY}$ in 10 years is still small: 2% at 20% above it, 12% at 40% above it. | Catches at the 2022 level are above MSY, and the biomass keeps declining. The limit is a total mortality, not a landed weight.                                                                                       |
+-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Longline rank, 2018   | 10\. The most productive shark in the analysis, and the second most susceptible to longline.                                                                              | 1\. Low productivity and high susceptibility.                                                                                                                                                                        |
+-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Switching from blue shark to shortfin mako on the status page is this table. The green stock is the one whose catch series is still being revised. The red stock is the one whose ensemble does not sit in a single cell, and whose catch limit is not what is landed.

### Day 1. How to read an executive summary

#### Session 1. The status page

Vignette 1 is the Shiny app `shiny/status-page`. It reads `shiny/status-page/cases.csv`. Each row is one RFMO, one stock, one area, and one method. Adding a stock, an RFMO, or a method is another row. The app opens on ICCAT, blue shark, North, method Combined. They change the medians and the intervals on the screen. They do not open the code.

**Slides.** What the summary is for: status, trajectory, uncertainty, and the Kobe II strategy matrix. The axes are $B_{MSY}$ and $F_{MSY}$. Above $B_{MSY}$ the stock can sustain the current removals. Above $F_{MSY}$ the removals exceed replacement. The 100% is the share of model outcomes in that quadrant. For tunas, Resolution 15/10 gives a target and a limit. For every shark, the summary has to say the Commission has not adopted reference points, so MSY is a benchmark. Five columns sit behind the page: catch, CPUE, length, abundance, and life history.

**Vignette.** Leave the selectors on ICCAT, blue shark, North, Combined. The app loads $B/B_{MSY}$ 1.00 (0.75–1.31) and $F/F_{MSY}$ 0.70 (0.50–0.93). The median is on the $B_{MSY}$ line and the biomass interval crosses 1, so the screen does not treat the cell as settled. The summary keeps the published probabilities: 50.1% overfished, 0.7% overfishing. Switch the stock to shortfin mako, North. The method stays Combined, because that assessment joined the JABBA runs and one SS3 run into one point. The projections in the summary are SS3 only. Switch the RFMO to IOTC and the method list changes: blue shark is SS3, shortfin mako is JABBA. Oceanic whitetip has no point.

**Their case.** Select Their stock. Enter the median and the interval from their own summary. Where a number is missing, set the status to unknown and name that column. Score catch, CPUE, length, abundance, and life history as available, potential, limited, or none.

**They leave with.** A completed inventory, and a point or an explicit unknown.

#### Session 2. The action

Vignette 2. The four quadrants, and the action each implies. Worked example: blue shark.

- Theory. The colour key, and the action each quadrant implies: keep the stock in the green with high probability, rebuild, or cut fishing mortality.
- In the room. State the action for blue shark in one sentence and match the vignette. Write the action for their stock in one sentence. Where the status is unknown, the sentence says so.
- They leave with. That sentence, tied to the inventory from session 1.

**Close.** The inventory and the sentence. Questions.

### Day 2. Whether the measure can be enforced

#### Session 3. The rank and the strategy matrix

Vignette 3. Rebuild a strategy matrix. The risk tolerance is an input. Worked example: shortfin mako. Oceanic whitetip is the worked case with no matrix.

- Theory. The productivity–susceptibility analysis, as set out under Ecological risk assessment. The rank is the advice while catch and an index are missing. Blue shark is rank 10 for longline and shortfin mako is rank 1; set those next to Table 1. Match the objective to the class of measure. MSY where there is catch and an index. A length reference point where the proposal is a minimum landing size. No MSY line where retention is prohibited or the species is known only from a few records. State a risk tolerance, then read the catch that meets it. Blue shark stays green, and the advice is still no increase, because the catch series is under revision. For a 50% chance of the green quadrant in 10 years, shortfin mako needs catch at or below 1,217 t, including dead discards and post-release mortality. For oceanic whitetip the measure is the ban and lower haulback mortality, and it needs inspection.
- In the room. Rebuild the mako advice sentence from the matrix and match the vignette. On their case, name the class of measure the inventory supports, state a risk tolerance where a matrix exists, and write the action.
- They leave with. The class of measure and the action.

#### Session 4. The paragraph and the monitoring

Vignette 4. Draft the advice paragraph from a status table, including the monitoring the measure needs. Worked example: oceanic whitetip.

- Theory. Managers set the risk tolerance, the measure, and the monitoring. A quota or a size limit needs a minimum level of monitoring. Where that monitoring is absent, the measure is not a candidate. Scientists provide the status or the susceptibility score, the probability, and the data that would change the advice.
- In the room. Draft the whitetip paragraph and match the vignette. Draft the paragraph for their stock and name the monitoring it requires.
- They leave with. The management paragraph.

**Close.** Read the paragraph. Questions. When both courses run in the same week, use the joint close under Roles.

## Course 2. Scientists

One operating model, used to test the method the data allow. The presentations and the exercises come from the same R Markdown vignettes. The class changes the marked inputs and renders the file again. Vignettes 5 to 9 are this course. The class does not fit SS3. The blue shark SS3 run is the operating model and generates the catch, the index and the lengths. The class fits JABBA and FLICC to those samples.

### Day 1. Where the reference points come from

#### Session 1. The prior

Vignette 5 is `Rmd/prior.Rmd`. Worked example: blue shark, the FishLife mean for *Prionace glauca* in `data/lhs.RData`. They change the marked block and render the file again. The assessment benchmark on the slide, $F_{MSY}$ about 0.18, is not this prior. The prior the file prints is about $r = 0.038$ and $F_{MSY} = 0.033$.

**Slides.** A Schaefer production model gives $B_{MSY} = K/2$ and $F_{MSY} = r/2$. Steepness and natural mortality move that shape. FishLife supplies $r$, $M$ and steepness, shrunk toward genus or family when the species has no data, with a CV. The productivity score in the 2018 risk assessment is this prior expressed as a rank. The assessment benchmarks are blue shark $F_{MSY}$ about 0.18 and shortfin mako about 0.03. For mako the FishLife mean is already about 0.03. For blue shark the prior and the assessment benchmark differ, and the prior is what this session records.

**Vignette.** Leave the marked block on *Prionace glauca*, level `species`, and render. Match the printed $r$ (about 0.038), FishLife $F_{MSY}$ (about 0.033), and Schaefer $r/2$ (about 0.019). Then set level to `genus` and raise `cv`. *Prionace* has one species in the table, so the mean does not move and the $F_{MSY}$ interval does. Record the interval. A genus with two species, such as *Alopias*, moves the mean as well.

**Their case.** If their stock is in the table, point the block at it. If it is not, set level to `stock` and type the $r$ and $F_{MSY}$ they have, or use the genus and a wider CV. Someone without a case uses *Isurus oxyrinchus*. Write the 2018 productivity score beside the prior. The file does not calculate that score.

**They leave with.** $r$, $F_{MSY}$, the CV, whether the prior is stock, species, or genus, and the productivity score.

#### The production curve

The same session, after the prior. Managers move the sliders in `shiny/production`. Scientists change the marked block in `Rmd/production.Rmd` and render it. Both read `shiny/production/presets.csv`. A new stock or RFMO is a row in that file.

**Slides.** The peak of the curve is MSY. $B_{MSY}$ is the biomass at the peak. $F_{MSY}$ is MSY divided by $B_{MSY}$. Shape 2 is Schaefer: the peak is at half of $K$, and $F_{MSY} = r/2$. The trajectory and the Kobe plot use those two reference points. The path is the production model run for 40 years while $F/F_{MSY}$ rises to the marked value. It is not the assessment's historical series.

**Vignette.** Leave the block on ICCAT, blue shark, North, and leave $r$, $K$, $m$, and `f_ratio` as `NA`. Match MSY 32,689 t, $B_{MSY}/K$ 0.50, and $F_{MSY}$ 0.150. Set `m` to 1.5 and render again. Record the new MSY and the new $B_{MSY}/K$. Then set `stock` to shortfin mako and `area` to North, put `m` back to `NA`, and match MSY 1,883 t.

**Their case.** If their stock is a row in the preset file, point the block at it. If it is not, type $r$, $K$, the shape, and the terminal $F/F_{MSY}$. Someone without a case uses ICCAT shortfin mako, North.

**They leave with.** MSY, $B_{MSY}$, $B_{MSY}/K$, $F_{MSY}$, and the cell the path ends in.

#### Session 2. The product the row can support

Worked from the case-studies table: blue shark, shortfin mako, oceanic whitetip, and one coastal species. The chapter is that table, read against their inventory.

- Theory. JABBA, given catch and an index sampled from the SS3 run, gives $B/B_{MSY}$ and $F/F_{MSY}$. FLICC, given the lengths sampled from the same run, gives selectivity, current $F$ and spawning potential, and leaves the Kobe lines blank. MSY is a benchmark when there is a catch series and an index, as for blue shark and shortfin mako. It is a poor target when the objective is survival of animals that must be released, as for oceanic whitetip. With no index and no credible catch, the summary leads with the risk assessment. Silky shark is the boundary case: a preliminary assessment was tried in 2018, judged too uncertain to use, and the risk assessment remained the basis for advice.
- In the room. For each row in the case-studies table, name the method and the lines the summary leaves blank. Do the same for their inventory.
- They leave with. The name of their product: a production-model status, a length-based spawning potential, or a productivity–susceptibility rank. And the lines they will leave blank.

**Close.** The prior and the named product. Questions on whether MSY is the right target for their stock.

### Day 2. Fit, diagnostics, and the forecast

#### Session 3. The fit the inventory allows

Each person replicates the track named in session 2. The other track is demonstrated. A rank from session 2 stays a rank: they record the series that would let an estimator run.

Vignette 6, for catch and an index. Fit JABBA to data sampled from the blue shark assessment. Diagnostics and the terminal-year cloud. The blue shark SS3 run is the known truth. Catch, an index, and a short length series are sampled from it, including a version that drops dead discards.

Vignette 7, for lengths. `Rmd/flicc-bsh-io.Rmd`: length comps from SS3 via `sstruth::ssLen()`, FLicc fit ([user guide](https://henning-winker.github.io/FLicc/FLicc_user_guide.html)). Selectivity, current $F$ and SPR. The Kobe lines stay blank. A short length series is the coastal case.

When the timetable runs a full **Uncertainty and Diagnostics** day (Day 4), open with the three-strand vignettes before the fit track:

- `Rmd/diags-3strands.Rmd` — Internal / External / Robustness. Marked block selects a worked example from `C:/work/papers/04_ideas/3diags` (cephalopod depletion, mesopelagic, Nephrops UWTV) or an IOTC shark (`blue_shark`, `shortfin_mako`, `oceanic_whitetip`). They leave with a scored checklist for their stock.
- `Rmd/diags-peelback.Rmd` — retrospective vs hindcast vs backtest. Same source paper. They leave with which peel-back would move the advice.

- Theory. Diagnostics that are allowed to change the advice: conflicting CPUE, the choice of catch history, and a retrospective pattern. Organise them as Internal (fit and peels), External (hindcast and independent scale), and Robustness (ensemble / catch-series alternatives). Blue shark and oceanic whitetip are the real examples. Current status is the cloud of terminal-year points. For shortfin mako that cloud crosses both axes, which is why the advice uses the weight of evidence as well as the median.
- In the room. Match the figure for their track. Where their series are already in that vignette's shape, run the same step on their case. Where they are not, name the missing column and leave the file for after the course.
- They leave with. A terminal-year cloud and the diagnostic that could move it, or a spawning-potential result and the status lines left blank, or the missing series that keeps the product as a rank.

#### Session 4. The forecast

Vignette 8. Catch multipliers to a strategy matrix. Worked example: shortfin mako.

- Theory. The forecast is a different object from the current status. Constant-catch projections are scored as the probability of being below $B_{MSY}$ or above $F_{MSY}$. The risk tolerance is an input. Rebuild the mako advice sentence from the strategy matrix, then shift $r$ or the catch series and record which probability moves.
- In the room. Rebuild the mako sentence and match the vignette, then shift one input. On their case, state a risk tolerance and read the catch where session 3 produced a fit. Where the product is a rank or a length-based indicator, write the advice from that product.
- They leave with. The advice sentence their product supports.

**Close.** Vignette 9. Fit the same estimators to the simulations below and score what is recovered: the trend, the terminal status, and the catch advice. The case that omits post-release mortality moves the quadrant. Set their advice sentence beside that standard, and mark the line the fit supports.

## PhD Case Studies

The simulations are the validation datasets for the close of Day 2 of the scientist course, built from the productivity–susceptibility analysis rather than from an assessment.

- Productivity parameters simulate the stock.
- Susceptibility — overlap of habitat and fishing in space, season and depth, plus post-release mortality — sets selectivity, catchability, and the fraction of encounters that die.
- Data are simulated at the quality the coloured row actually has, including catch folded into aggregated codes.

Three operating models are enough. A blue-shark-like stock, with catch and an index, should recover the trend, the quadrant and a safe catch advice. A mako-like stock, with deaths in the post-release component, should land in the wrong quadrant when the fit sees only retained catch. A data-poor stock, with lengths and almost no catch, should return a spawning-potential trend, and any $B/B_{MSY}$ written from that fit should be scored as unsupported. Managers see one figure from this work: a green quadrant produced by leaving dead discards out.

## Vignettes

Manager sessions 1 to 4 are Shiny apps. Parameters are on the screen, and the code stays closed. Scientist sessions are R Markdown files, except session 2, which is worked from the case-studies table. The marked block is what they change. A second stock in the file is the fallback for someone without a case, and the copy they can rerun afterwards. The swap-in is their series, in the shape named here.

1.  Read a status table and draw the Kobe probabilities. Manager session 1. Shiny app `shiny/status-page`. Worked example: blue shark. Swap-in: their status numbers, or an explicit unknown.
2.  The four quadrants, and the action each implies. Manager session 2. Worked example: blue shark. Swap-in: their quadrant and the action in one sentence.
3.  Rebuild a strategy matrix. The risk tolerance is an input. Manager session 3. Worked example: shortfin mako. Swap-in: their risk tolerance and the catch that meets it, where a matrix exists.
4.  Draft the advice paragraph from a status table, including the monitoring the measure needs. Manager session 4. Worked example: oceanic whitetip. Swap-in: their paragraph.
5.  Life history to an $r$ prior and $F_{MSY}$, with the CV shown, and the matching productivity score from the risk assessment. Scientist session 1. R Markdown `Rmd/prior.Rmd`, then `Rmd/production.Rmd` for the curve, the trajectory, and the Kobe plot. Worked example: blue shark. Swap-in: their life history, or the genus, then their $r$, $K$, and shape.
6.  Fit JABBA to data sampled from the blue shark assessment. Diagnostics and the terminal-year cloud. Scientist session 3, catch-and-index track. Swap-in: their catch and index.
7.  FLicc on lengths from the blue shark SS3 run (`Rmd/flicc-bsh-io.Rmd`). Extract with `sstruth::ssLen()`, fit following the [FLicc user guide](https://henning-winker.github.io/FLicc/FLicc_user_guide.html). Selectivity, current $F$ and SPR. The Kobe lines stay blank. Scientist session 3, length track. Swap-in: their `ss3_dir` / fleet / sex, or their own length table in the same `len, year, data, qname` shape.
8.  Catch multipliers to a strategy matrix. Scientist session 4. Worked example: shortfin mako. Swap-in: their fitted object and a stated risk tolerance.
9.  Fit the same estimators to the simulated data and score what is recovered. Close of scientist Day 2. The check on the method. Their series are kept out of this file.
10. Three-strand diagnostics checklist. Scientist Day 4. R Markdown `Rmd/diags-3strands.Rmd`. Worked examples from `3diags` (cephalopod, mesopelagic, Nephrops) plus IOTC sharks. Swap-in: pass / partial / fail / missing on each strand for their stock.
11. Peel-back diagnostics. Scientist Day 4. R Markdown `Rmd/diags-peelback.Rmd`. Retrospective, hindcast, backtest. Swap-in: which procedure would move their advice.

## Roles

Scientists produce the status, the probability, and the dominant uncertainty, and they say which missing series would change the advice. Managers set the risk tolerance and choose the measure: a catch level, a retention ban, a gear change, or an observer requirement.

When both groups are in the same week, the joint close uses one student's case as the stock the other group has not worked. The scientists write a one-page summary. The managers write the advice paragraph. The scientists mark only what the fit supports.

## Writing a session in full

The sessions above are the running order. To develop one of them, expand it under these headings and leave the others as they stand.

1.  Slides. The theory points, in order, on the course deck.
2.  Vignette. The file, the worked stock, and the figure or paragraph the room must match.
3.  Their case. The single step, the inputs it needs, and what is written when a column is missing.
4.  They leave with. The object added to the case.

The first session of each course is written out above, and is the one the later sessions assume: the status page for managers, the prior for scientists.
