## This is the script used to download Karel Capek's novels
## from The Municipal Library of Prague, https://search.mlp.cz/en

library(readr)
library(devtools)

## Download the books

tovarna_na_absolutno <- read_lines("https://web2.mlp.cz/koweb/00/03/34/75/61/tovarna_na_absolutno.txt")
krakatit <- read_lines("https://web2.mlp.cz/koweb/00/03/34/75/44/krakatit.txt")
hordubal <- read_lines("https://web2.mlp.cz/koweb/00/03/34/75/34/hordubal.txt")
povetron <- read_lines("https://web2.mlp.cz/koweb/00/03/34/75/59/povetron.txt")
obycejny_zivot <- read_lines("https://web2.mlp.cz/koweb/00/03/34/75/54/obycejny_zivot.txt")
valka_s_mloky <- read_lines("https://web2.mlp.cz/koweb/00/03/34/75/66/valka_s_mloky.txt")

## Now, add the data files to the package

devtools::use_data(tovarna_na_absolutno, overwrite = TRUE)
devtools::use_data(krakatit, overwrite = TRUE)
devtools::use_data(hordubal, overwrite = TRUE)
devtools::use_data(povetron, overwrite = TRUE)
devtools::use_data(obycejny_zivot, overwrite = TRUE)
devtools::use_data(valka_s_mloky, overwrite = TRUE)

## Finished!
