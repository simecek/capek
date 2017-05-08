## This is the script used to download Karel Capek's novels
## from The Municipal Library of Prague, https://search.mlp.cz/en

library(readr)
library(devtools)

## Download the books

tovarna_na_absolutno0 <- read_lines("https://web2.mlp.cz/koweb/00/03/34/75/61/tovarna_na_absolutno.txt")
krakatit0 <- read_lines("https://web2.mlp.cz/koweb/00/03/34/75/44/krakatit.txt")
hordubal0 <- read_lines("https://web2.mlp.cz/koweb/00/03/34/75/34/hordubal.txt")
povetron0 <- read_lines("https://web2.mlp.cz/koweb/00/03/34/75/59/povetron.txt")
obycejny_zivot0 <- read_lines("https://web2.mlp.cz/koweb/00/03/34/75/54/obycejny_zivot.txt")
valka_s_mloky0 <- read_lines("https://web2.mlp.cz/koweb/00/03/34/75/66/valka_s_mloky.txt")

## Convert encoding from CP1250 to UTF-8, cutting out editor notes
tovarna_na_absolutno <- iconv(tovarna_na_absolutno0, from = "CP1250", to = "UTF-8")[25:1149]
krakatit <- iconv(krakatit0, from = "CP1250", to = "UTF-8")[10:2102]
hordubal <- iconv(hordubal0, from = "CP1250", to = "UTF-8")[12:1195]
povetron <- iconv(povetron0, from = "CP1250", to = "UTF-8")[10:816]
obycejny_zivot <- iconv(obycejny_zivot0, from = "CP1250", to = "UTF-8")[11:674]
valka_s_mloky <- iconv(valka_s_mloky0, from = "CP1250", to = "UTF-8")[11:1636]

## Now, add the data files to the package

devtools::use_data(tovarna_na_absolutno, overwrite = TRUE)
devtools::use_data(krakatit, overwrite = TRUE)
devtools::use_data(hordubal, overwrite = TRUE)
devtools::use_data(povetron, overwrite = TRUE)
devtools::use_data(obycejny_zivot, overwrite = TRUE)
devtools::use_data(valka_s_mloky, overwrite = TRUE)

## Finished!
