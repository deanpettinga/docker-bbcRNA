FROM rocker/verse:3.6.0

# changes CRAN mirror for package downloads (default is snapshotted MRAN)
# newest versions of packages are installed on top of the rocker/verse image
# necessary for CRAN dependencies installed by Bioconductor and github packages.
RUN echo "options(repos = c(CRAN = 'https://cran.rstudio.com/'), download.file.method = 'libcurl')" >> /usr/local/lib/R/etc/Rprofile.site

# CRAN packages
RUN R -e 'install.packages("rmarkdown")'
RUN R -e 'install.packages("tidyverse")'
RUN R -e 'install.packages("kableExtra")'
RUN R -e 'install.packages("devtools")'
RUN R -e 'install.packages("BiocManager")'
RUN R -e 'install.packages("ggrepel")'

# install necessary packages for bbcRNA
RUN R -e 'BiocManager::install("org.Hs.eg.db")'
RUN R -e 'BiocManager::install("org.Mm.eg.db")'
RUN R -e 'BiocManager::install("org.Rn.eg.db")'
RUN R -e 'BiocManager::install("org.Sc.sgd.db")'
RUN R -e 'BiocManager::install("org.Dm.eg.db")'
RUN R -e 'BiocManager::install("org.At.tair.db")'
RUN R -e 'BiocManager::install("org.Dr.eg.db")'
RUN R -e 'BiocManager::install("org.Ce.eg.db")'
RUN R -e 'BiocManager::install("org.Bt.eg.db")'
RUN R -e 'BiocManager::install("org.Gg.eg.db")'
RUN R -e 'BiocManager::install("org.Cf.eg.db")'
RUN R -e 'BiocManager::install("org.Ss.eg.db")'
RUN R -e 'BiocManager::install("org.EcK12.eg.db")'
RUN R -e 'BiocManager::install("org.EcSakai.eg.db")'
