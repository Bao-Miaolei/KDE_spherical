# Purpose

This is a package for kernel density estimation with spherical data based on Peter Hall, G. S. Watson, and Javier Cabrera. Kernel density estimation with spherical data. Biometrika, 74(4):751–762, 1987.

- The URL to the GitHub (i.e., the source code) is: https://github.com/Bao-Miaolei/KDE_spherical
- The URL to the Pkgdown webpage is: https://bao-miaolei.github.io/KDE_spherical/

# Session info

This package was developed in the following environment
```R
> devtools::session_info()
─ Session info ──────────────────────────────────────────────────────────────────────────────────────────────
 setting  value
 version  R version 4.3.1 (2023-06-16)
 os       macOS Sonoma 14.2.1
 system   aarch64, darwin20
 ui       RStudio
 language (EN)
 collate  en_US.UTF-8
 ctype    en_US.UTF-8
 tz       America/Los_Angeles
 date     2024-06-06
 rstudio  2023.09.0+463 Desert Sunflower (desktop)
 pandoc   3.1.1 @ /Applications/RStudio.app/Contents/Resources/app/quarto/bin/tools/ (via rmarkdown)

─ Packages ──────────────────────────────────────────────────────────────────────────────────────────────────
 ! package       * version    date (UTC) lib source
   askpass         1.2.0      2023-09-03 [1] CRAN (R 4.3.0)
   base64enc       0.1-3      2015-07-28 [1] CRAN (R 4.3.0)
   brio            1.1.4      2023-12-10 [1] CRAN (R 4.3.1)
   cachem          1.0.8      2023-05-01 [1] CRAN (R 4.3.0)
   callr           3.7.3      2022-11-02 [1] CRAN (R 4.3.0)
   cli             3.6.2      2023-12-11 [1] CRAN (R 4.3.1)
   colorspace      2.1-0      2023-01-23 [1] CRAN (R 4.3.0)
   commonmark      1.9.0      2023-03-17 [1] CRAN (R 4.3.0)
   crayon          1.5.2      2022-09-29 [1] CRAN (R 4.3.0)
   credentials     2.0.1      2023-09-06 [1] CRAN (R 4.3.0)
   crosstalk       1.2.1      2023-11-23 [1] CRAN (R 4.3.1)
   curl            5.2.0      2023-12-08 [1] CRAN (R 4.3.1)
   data.table      1.14.10    2023-12-08 [1] CRAN (R 4.3.1)
   desc            1.4.3      2023-12-10 [1] CRAN (R 4.3.1)
   devtools      * 2.4.5      2022-10-11 [1] CRAN (R 4.3.0)
   diffobj         0.3.5      2021-10-05 [1] CRAN (R 4.3.0)
   digest          0.6.33     2023-07-07 [1] CRAN (R 4.3.0)
   dplyr           1.1.4      2023-11-17 [1] CRAN (R 4.3.1)
   ellipsis        0.3.2      2021-04-29 [1] CRAN (R 4.3.0)
   evaluate        0.22       2023-09-29 [1] CRAN (R 4.3.1)
   fansi           1.0.5      2023-10-08 [1] CRAN (R 4.3.1)
   farver          2.1.1      2022-07-06 [1] CRAN (R 4.3.0)
   fastmap         1.1.1      2023-02-24 [1] CRAN (R 4.3.0)
   fs              1.6.3      2023-07-20 [1] CRAN (R 4.3.0)
   generics        0.1.3      2022-07-05 [1] CRAN (R 4.3.0)
   geosphere       1.5-18     2022-11-15 [1] CRAN (R 4.3.0)
   gert            2.0.1      2023-12-04 [1] CRAN (R 4.3.1)
   ggplot2       * 3.5.1      2024-04-23 [1] CRAN (R 4.3.1)
   gh              1.4.1      2024-03-28 [1] CRAN (R 4.3.1)
   gitcreds        0.1.2      2022-09-08 [1] CRAN (R 4.3.0)
   glue            1.7.0      2024-01-09 [1] CRAN (R 4.3.1)
   gtable          0.3.4      2023-08-21 [1] CRAN (R 4.3.0)
   htmltools       0.5.8      2024-03-25 [1] CRAN (R 4.3.1)
   htmlwidgets     1.6.4      2023-12-06 [1] CRAN (R 4.3.1)
   httpuv          1.6.15     2024-03-26 [1] CRAN (R 4.3.1)
   httr            1.4.7      2023-08-15 [1] CRAN (R 4.3.0)
   httr2           1.0.0      2023-11-14 [1] CRAN (R 4.3.1)
   jsonlite        1.8.7      2023-06-29 [1] CRAN (R 4.3.0)
   knitr           1.44       2023-09-11 [1] CRAN (R 4.3.0)
   later           1.3.2      2023-12-06 [1] CRAN (R 4.3.1)
   lattice         0.21-8     2023-04-05 [1] CRAN (R 4.3.1)
   lazyeval        0.2.2      2019-03-15 [1] CRAN (R 4.3.0)
   lifecycle       1.0.4      2023-11-07 [1] CRAN (R 4.3.1)
   magrittr        2.0.3      2022-03-30 [1] CRAN (R 4.3.0)
   maps          * 3.4.2      2023-12-15 [1] CRAN (R 4.3.1)
   memoise         2.0.1      2021-11-26 [1] CRAN (R 4.3.0)
   mime            0.12       2021-09-28 [1] CRAN (R 4.3.0)
   miniUI          0.1.1.1    2018-05-18 [1] CRAN (R 4.3.0)
   munsell         0.5.0      2018-06-12 [1] CRAN (R 4.3.0)
   openssl         2.1.1      2023-09-25 [1] CRAN (R 4.3.1)
   pillar          1.9.0      2023-03-22 [1] CRAN (R 4.3.0)
   pkgbuild        1.4.3      2023-12-10 [1] CRAN (R 4.3.1)
   pkgconfig       2.0.3      2019-09-22 [1] CRAN (R 4.3.0)
   pkgdown         2.0.7      2022-12-14 [1] CRAN (R 4.3.0)
   pkgload         1.3.4      2024-01-16 [1] CRAN (R 4.3.1)
   plotly        * 4.10.4     2024-01-13 [1] CRAN (R 4.3.1)
   prettyunits     1.2.0      2023-09-24 [1] CRAN (R 4.3.1)
   processx        3.8.3      2023-12-10 [1] CRAN (R 4.3.1)
   profvis         0.3.8      2023-05-02 [1] CRAN (R 4.3.0)
   promises        1.2.1      2023-08-10 [1] CRAN (R 4.3.0)
   ps              1.7.5      2023-04-18 [1] CRAN (R 4.3.0)
   purrr           1.0.2      2023-08-10 [1] CRAN (R 4.3.0)
   R6              2.5.1      2021-08-19 [1] CRAN (R 4.3.0)
   rappdirs        0.3.3      2021-01-31 [1] CRAN (R 4.3.0)
   rcmdcheck       1.4.0      2021-09-27 [1] CRAN (R 4.3.0)
   Rcpp            1.0.12     2024-01-09 [1] CRAN (R 4.3.1)
   rematch2        2.1.2      2020-05-01 [1] CRAN (R 4.3.0)
   remotes         2.5.0      2024-03-17 [1] CRAN (R 4.3.1)
   rgl             1.3.1      2024-03-05 [1] CRAN (R 4.3.1)
   rlang           1.1.3      2024-01-10 [1] CRAN (R 4.3.1)
   rmarkdown       2.25       2023-09-18 [1] CRAN (R 4.3.1)
   roxygen2        7.3.1      2024-01-22 [1] CRAN (R 4.3.1)
   rprojroot       2.0.4      2023-11-05 [1] CRAN (R 4.3.1)
   rstudioapi      0.15.0     2023-07-07 [1] CRAN (R 4.3.0)
   scales          1.3.0      2023-11-28 [1] CRAN (R 4.3.1)
   sessioninfo     1.2.2      2021-12-06 [1] CRAN (R 4.3.0)
   shiny           1.8.1      2024-03-26 [1] CRAN (R 4.3.1)
   sp              2.1-4      2024-04-30 [1] CRAN (R 4.3.1)
   spherepc      * 0.1.7      2021-10-07 [1] CRAN (R 4.3.0)
   sphereplot      1.5.1      2022-06-27 [1] CRAN (R 4.3.0)
 P spherical.kde * 0.0.0.9000 2024-06-06 [?] load_all()
   stringi         1.7.12     2023-01-11 [1] CRAN (R 4.3.0)
   stringr         1.5.0      2022-12-02 [1] CRAN (R 4.3.0)
   sys             3.4.2      2023-05-23 [1] CRAN (R 4.3.0)
   testthat      * 3.2.1      2023-12-02 [1] CRAN (R 4.3.1)
   tibble          3.2.1      2023-03-20 [1] CRAN (R 4.3.0)
   tidyr           1.3.0      2023-01-24 [1] CRAN (R 4.3.0)
   tidyselect      1.2.0      2022-10-10 [1] CRAN (R 4.3.0)
   urlchecker      1.0.1      2021-11-30 [1] CRAN (R 4.3.0)
   usethis       * 2.2.3      2024-02-19 [1] CRAN (R 4.3.1)
   utf8            1.2.3      2023-01-31 [1] CRAN (R 4.3.0)
   UWBiost561      0.0.0.9000 2024-05-29 [1] local
   vctrs           0.6.5      2023-12-01 [1] CRAN (R 4.3.1)
   viridisLite     0.4.2      2023-05-02 [1] CRAN (R 4.3.0)
   waldo           0.5.2      2023-11-02 [1] CRAN (R 4.3.1)
   whisker         0.4.1      2022-12-05 [1] CRAN (R 4.3.0)
   withr           2.5.1      2023-09-26 [1] CRAN (R 4.3.1)
   xfun            0.40       2023-08-09 [1] CRAN (R 4.3.0)
   xml2            1.3.6      2023-12-04 [1] CRAN (R 4.3.1)
   xopen           1.0.0      2018-09-17 [1] CRAN (R 4.3.0)
   xtable          1.8-4      2019-04-21 [1] CRAN (R 4.3.0)
   yaml            2.3.7      2023-01-23 [1] CRAN (R 4.3.0)

 [1] /Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library
 ```
