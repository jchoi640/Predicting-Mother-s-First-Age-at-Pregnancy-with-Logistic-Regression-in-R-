---
title: "Birth data"
author: "Shiying Wu"
date: "2023-10-23"
output: html_document
---
  
library(dplyr)
birthdata <-read.csv("dataset/cleanedbirth.csv")
BirthStat <- read.csv("dataset/BirthStat.csv")
YI <- read.csv("dataset/Yearly income data.csv")
combirth <- birthdata |>
  left_join(YI, by = c("Year" = "Year"))
allbirth <- combirth |>
  left_join(BirthStat, by = c("Year" = "Year"))











  