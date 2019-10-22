FROM rocker/tidyverse

RUN R -e 'devtools::install_github("vari-bbc/bbcRNA")'
