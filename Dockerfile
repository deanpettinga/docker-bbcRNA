<<<<<<< HEAD
FROM rocker/r-ver:latest
=======
FROM rocker/verse:latest
>>>>>>> e907b4a5b167567e8352008201581a26931f4807

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
<<<<<<< HEAD
RUN R -e 'install.packages("ggrepel")'
=======
>>>>>>> e907b4a5b167567e8352008201581a26931f4807

# install necessary packages for bbcRNA
RUN R -e 'devtools::install_github("vari-bbc/bbcRNA")'
RUN R -e 'BiocManager::install("enrichplot")'
RUN R -e 'BiocManager::install("org.Hs.eg.db")'
RUN R -e 'BiocManager::install("org.Mm.eg.db")'
