# This is a script to explore the gapminder dataset using R
# Audra Andrew
# aandrew@uta.edu
# April 19th, 2015

install.packages("dplyr", dependencies = TRUE)
library("dplyr")

# Read in data as tab-delimited
gap.in <- read.table("output/combined_gapMinder.tsv", sep = "\t", header = TRUE)


