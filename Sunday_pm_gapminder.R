# This is a script to explore the gapminder dataset using R
# Audra Andrew
# aandrew@uta.edu
# April 19th, 2015

# install.packages("dplyr", dependencies = TRUE)

# Load dplyr library into working environment
library("dplyr")

# Read in data as tab-delimited
gap.in <- read.table("output/combined_gapMinder.tsv", sep = "\t", header = TRUE)

gap.in %>%
  filter(pop > 15000000) %>%
  select(country, year, pop) %>%
  group_by(country) %>%
  summarize(min = min(pop))

#Challenge
#Calculate the mean population per continent across all years prior to 1990

gap.in%>%
  filter(year < 1990) %>%
  select(continent, year, pop) %>%
  group_by(continent, year) %>%
  summarize(mean = mean(pop)) -> data.out
  
data(iris)
attach(iris)
install.packages("tidyr", dependencies=TRUE)

library("tidyr")

# Turn iris dataset from wide into long format
iris.long <- gather(irix, "Measurement", "Value", 1:4)
  