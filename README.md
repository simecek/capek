# capek

## An R Data Package with Karel Čapek's Novels

This package provides access to the full texts of six Czech novels of
[Karel Čapek](https://en.wikipedia.org/wiki/Karel_%C4%8Capek), best known for his play R.U.R. which introduced the word 
[robot](https://en.wikipedia.org/wiki/Robot). It is more than inspired
by Julia Silge's [janeaustenr package](https://github.com/juliasilge/janeaustenr). The package is intended to
provide non-english corpus for an experimenting with tidy text analysis. 

The plain text for each novel has been downloaded from [Municipal Library of Prague](https://search.mlp.cz/en): 

* `tovarna_na_absolutno`:  *Továrna na absolutno* ([The Absolute at Large](https://en.wikipedia.org/wiki/The_Absolute_at_Large)), published in 1922
* `krakatit`:  *Krakatit*, published in 1922
* `hordubal`:  *Hordubal*, published in 1933
* `povetron`:  *Povětroň* (Meteor), published in 1934
* `obycejny_zivot`:  *Obyčejný život* (An Ordinary Life), published in 1934
* `valka_s_mloky`:  *Válka s mloky* ([War with the Newts](https://en.wikipedia.org/wiki/War_with_the_Newts)), published in 1936

There is also a function `capek_books()` that returns a tidy data frame of all 6 novels. 

## Installation

To install the package from Github, use the following:

```
library(devtools)
install_github("simecek/capek")
library(capek)
```

### Usage

```
library(capek)
library(dplyr)

capek_books() %>%
     group_by(book) %>%
     summarise(total_lines = n())
```
