# drake plan
plan <- drake_plan(
  # load data
  rawData = loadData(),
  # clean data
  cleanD = cleanData(rawData),
  # analysis
  model = runModel(cleanD),
  # plot
  plot = plotY(cleanD),
  # render manuscript
  manuscript = rmarkdown::render(knitr_in("manuscript.Rmd"), quiet = TRUE)
)