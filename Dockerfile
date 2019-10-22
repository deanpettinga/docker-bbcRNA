FROM rocker/verse:3.6.0

RUN R -e 'devtools::install_github("vari-bbc/bbcRNA")'
RUN R -e 'BiocManager::install("enrichplot")'

