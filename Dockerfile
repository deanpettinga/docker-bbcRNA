FROM rocker/verse:3.6.0

RUN R -e 'devtools::install_github("vari-bbc/bbcRNA")'
RUN R -e 'BiocManager::install("enrichplot")'
RUN R -e 'BiocManager::install("org.Hs.eg.db")'
RUN R -e 'BiocManager::install("org.Mm.eg.db")'
