FROM rocker/verse:3.6.0

RUN R -e 'chooseCRANmirror(ind=1) + devtools::install_github("vari-bbc/bbcRNA")'
RUN R -e 'chooseCRANmirror(ind=1) + BiocManager::install("enrichplot")'
RUN R -e 'chooseCRANmirror(ind=1) + BiocManager::install("org.Hs.eg.db")'
RUN R -e 'chooseCRANmirror(ind=1) + BiocManager::install("org.Mm.eg.db")'
