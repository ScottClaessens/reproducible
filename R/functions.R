# custom functions
loadData <- function() {
  out <- read.csv("data/rawData.csv")
  return(out)
}

cleanData <- function(d) {
  out <- d %>% drop_na()
  return(out)
}

runModel <- function(d) {
  out <- lm(y ~ x, d)
  return(out)
}

plotY <- function(d) {
  out <- hist(d$y)
  return(out)
}