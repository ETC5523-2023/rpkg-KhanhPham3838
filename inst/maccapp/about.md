
#### Data

The `big-mac.csv` data set depicts the price of a Big Mac burger, a globally standardized product available in many countries through the fast-food chain McDonald's, expressed in the local currency of multiple countries and their respective dollar price based on the exchange rate at the time. According to [The Economist (2023)](https://www.economist.com/bigmacindex/2023), this is a simplified introductory concept to the theory of purchasing-power parity (PPP), which defines whether currencies are at an "appropriate" level as an identical basket of good (*a Big Mac in this case*) should be the same in any two countries and the only difference based on the exchange rate. 

The data set is acquired from `tidytuesday` GitHub repository, which was posted on the 22 December 2020

Click [**here**](https://github.com/rfordatascience/tidytuesday/blob/master/data/2020/2020-12-22/big-mac.csv) to access the data page. 

#### Purpose

The purpose of the app is to:

1. Display the trends of world currencies against the base currency of choice, which prompts the user to look for the overall 20-years trend,

2. Depict the single year picture of world currencies valuation against a base currency, allowing a closer look at the situation of each year, and

3. Portray inflation based on the changes in the price of a Big Mac in terms of local currency and its converted dollar price from 2000 to 2020, suggesting a glimpse of actual inflation for a country.

The visualization of the Big Mac data is aimed as a way to help the user identify time series trends and easier to digest the concept of exchange rate imbalances. Moreover, the questions placed in each graphs' side panel prompts the user to seek for answers which can help them to establish a mental image of the how graphs work. The interactive element of plot design is for the users to seek out answers for their own questions at their discretion, facilitating the learning process.

#### Creator

Minh Pham (mpha0054@student.monash.edu)

<details>
<summary>Session information</summary>

```
## ─ Session info ──────────────────────────────────────────────────────────────────────────────
##  setting  value
##  version  R version 4.2.2 (2022-10-31 ucrt)
##  os       Windows 10 x64 (build 22621)
##  system   x86_64, mingw32
##  ui       RStudio
##  language (EN)
##  collate  English_United States.utf8
##  ctype    English_United States.utf8
##  tz       Australia/Sydney
##  date     2023-10-04
##  rstudio  2023.06.2+561 Mountain Hydrangea (desktop)
##  pandoc   NA
## 
## ─ Packages ──────────────────────────────────────────────────────────────────────────────────
##  ! package      * version date (UTC) lib source
##    brio           1.1.3   2021-11-30 [1] CRAN (R 4.2.3)
##    bslib          0.4.2   2022-12-16 [1] CRAN (R 4.2.2)
##    cachem         1.0.8   2023-05-01 [1] CRAN (R 4.2.3)
##    callr          3.7.3   2022-11-02 [1] CRAN (R 4.2.2)
##    cli            3.6.1   2023-03-23 [1] CRAN (R 4.2.3)
##    colorspace     2.1-0   2023-01-23 [1] CRAN (R 4.2.2)
##    commonmark     1.8.1   2022-10-14 [1] CRAN (R 4.2.2)
##    crayon         1.5.2   2022-09-29 [1] CRAN (R 4.2.2)
##    crosstalk      1.2.0   2021-11-04 [1] CRAN (R 4.2.3)
##    curl           5.0.0   2023-01-12 [1] CRAN (R 4.2.2)
##    data.table     1.14.8  2023-02-17 [1] CRAN (R 4.2.2)
##    desc           1.4.2   2022-09-08 [1] CRAN (R 4.2.3)
##    devtools       2.4.5   2022-10-11 [1] CRAN (R 4.2.3)
##    digest         0.6.31  2022-12-11 [1] CRAN (R 4.2.2)
##    dplyr        * 1.1.2   2023-04-20 [1] CRAN (R 4.2.3)
##    ellipsis       0.3.2   2021-04-29 [1] CRAN (R 4.2.2)
##    evaluate       0.21    2023-05-05 [1] CRAN (R 4.2.3)
##    fansi          1.0.4   2023-01-22 [1] CRAN (R 4.2.2)
##    farver         2.1.1   2022-07-06 [1] CRAN (R 4.2.2)
##    fastmap        1.1.1   2023-02-24 [1] CRAN (R 4.2.2)
##    forcats      * 1.0.0   2023-01-29 [1] CRAN (R 4.2.3)
##    fs             1.6.2   2023-04-25 [1] CRAN (R 4.2.3)
##    generics       0.1.3   2022-07-05 [1] CRAN (R 4.2.2)
##    ggplot2      * 3.4.1   2023-02-10 [1] CRAN (R 4.2.2)
##    glue           1.6.2   2022-02-24 [1] CRAN (R 4.2.2)
##    gtable         0.3.4   2023-08-21 [1] CRAN (R 4.2.3)
##    hms            1.1.3   2023-03-21 [1] CRAN (R 4.2.3)
##    htmltools      0.5.5   2023-03-23 [1] CRAN (R 4.2.3)
##    htmlwidgets    1.6.2   2023-03-17 [1] CRAN (R 4.2.3)
##    httpuv         1.6.11  2023-05-11 [1] CRAN (R 4.2.3)
##    httr           1.4.7   2023-08-15 [1] CRAN (R 4.2.3)
##    jquerylib      0.1.4   2021-04-26 [1] CRAN (R 4.2.2)
##    jsonlite       1.8.4   2022-12-06 [1] CRAN (R 4.2.2)
##    knitr          1.42    2023-01-25 [1] CRAN (R 4.2.2)
##    labeling       0.4.3   2023-08-29 [1] CRAN (R 4.2.3)
##    later          1.3.1   2023-05-02 [1] CRAN (R 4.2.3)
##    lazyeval       0.2.2   2019-03-15 [1] CRAN (R 4.2.3)
##    lifecycle      1.0.3   2022-10-07 [1] CRAN (R 4.2.2)
##    lubridate    * 1.9.2   2023-02-10 [1] CRAN (R 4.2.2)
##  R maccaindex   * 1.0.0   <NA>       [?] <NA>
##    magrittr       2.0.3   2022-03-30 [1] CRAN (R 4.2.2)
##    markdown       1.5     2023-01-31 [1] CRAN (R 4.2.2)
##    memoise        2.0.1   2021-11-26 [1] CRAN (R 4.2.2)
##    mime           0.12    2021-09-28 [1] CRAN (R 4.2.0)
##    miniUI         0.1.1.1 2018-05-18 [1] CRAN (R 4.2.2)
##    munsell        0.5.0   2018-06-12 [1] CRAN (R 4.2.2)
##    pillar         1.9.0   2023-03-22 [1] CRAN (R 4.2.3)
##    pkgbuild       1.4.2   2023-06-26 [1] CRAN (R 4.2.3)
##    pkgconfig      2.0.3   2019-09-22 [1] CRAN (R 4.2.2)
##    pkgload        1.3.2   2022-11-16 [1] CRAN (R 4.2.3)
##    plotly       * 4.10.2  2023-06-03 [1] CRAN (R 4.2.3)
##    prettyunits    1.1.1   2020-01-24 [1] CRAN (R 4.2.2)
##    processx       3.8.0   2022-10-26 [1] CRAN (R 4.2.2)
##    profvis        0.3.8   2023-05-02 [1] CRAN (R 4.2.3)
##    promises       1.2.0.1 2021-02-11 [1] CRAN (R 4.2.3)
##    ps             1.7.2   2022-10-26 [1] CRAN (R 4.2.2)
##    purrr        * 1.0.1   2023-01-10 [1] CRAN (R 4.2.2)
##    R6             2.5.1   2021-08-19 [1] CRAN (R 4.2.2)
##    rcmdcheck      1.4.0   2021-09-27 [1] CRAN (R 4.2.3)
##    Rcpp           1.0.10  2023-01-22 [1] CRAN (R 4.2.2)
##    readr        * 2.1.4   2023-02-10 [1] CRAN (R 4.2.2)
##    remotes        2.4.2   2021-11-30 [1] CRAN (R 4.2.3)
##    rlang          1.1.0   2023-03-14 [1] CRAN (R 4.2.3)
##    roxygen2       7.2.3   2022-12-08 [1] CRAN (R 4.2.3)
##    rprojroot      2.0.3   2022-04-02 [1] CRAN (R 4.2.2)
##    rsconnect      1.0.1   2023-07-20 [1] CRAN (R 4.2.2)
##    rstudioapi     0.14    2022-08-22 [1] CRAN (R 4.2.2)
##    sass           0.4.6   2023-05-03 [1] CRAN (R 4.2.3)
##    scales         1.2.1   2022-08-20 [1] CRAN (R 4.2.3)
##    sessioninfo    1.2.2   2021-12-06 [1] CRAN (R 4.2.3)
##    shiny        * 1.7.4   2022-12-15 [1] CRAN (R 4.2.3)
##    shinythemes  * 1.2.0   2021-01-25 [1] CRAN (R 4.2.3)
##    shinyWidgets * 0.7.6   2023-01-08 [1] CRAN (R 4.2.3)
##    stringi        1.7.12  2023-01-11 [1] CRAN (R 4.2.2)
##    stringr      * 1.5.0   2022-12-02 [1] CRAN (R 4.2.2)
##    testthat       3.1.7   2023-03-12 [1] CRAN (R 4.2.3)
##    tibble       * 3.2.1   2023-03-20 [1] CRAN (R 4.2.3)
##    tidyr        * 1.3.0   2023-01-24 [1] CRAN (R 4.2.2)
##    tidyselect     1.2.0   2022-10-10 [1] CRAN (R 4.2.2)
##    tidyverse    * 2.0.0   2023-02-22 [1] CRAN (R 4.2.3)
##    timechange     0.2.0   2023-01-11 [1] CRAN (R 4.2.2)
##    tzdb           0.3.0   2022-03-28 [1] CRAN (R 4.2.2)
##    urlchecker     1.0.1   2021-11-30 [1] CRAN (R 4.2.3)
##    usethis        2.2.2   2023-07-06 [1] CRAN (R 4.2.3)
##    utf8           1.2.3   2023-01-31 [1] CRAN (R 4.2.2)
##    vctrs          0.6.2   2023-04-19 [1] CRAN (R 4.2.3)
##    viridisLite    0.4.1   2022-08-22 [1] CRAN (R 4.2.2)
##    withr          2.5.0   2022-03-03 [1] CRAN (R 4.2.2)
##    xfun           0.39    2023-04-20 [1] CRAN (R 4.2.3)
##    xml2           1.3.3   2021-11-30 [1] CRAN (R 4.2.2)
##    xopen          1.0.0   2018-09-17 [1] CRAN (R 4.2.3)
##    xtable         1.8-4   2019-04-21 [1] CRAN (R 4.2.3)
##    yaml           2.3.7   2023-01-23 [1] CRAN (R 4.2.2)
## 
##  [1] C:/Users/Admin/AppData/Local/R/win-library/4.2
##  [2] C:/Program Files/R/R-4.2.2/library
## 
##  R ── Package was removed from disk.
## 
## ─────────────────────────────────────────────────────────────────────────────────────────────
```
</details>
