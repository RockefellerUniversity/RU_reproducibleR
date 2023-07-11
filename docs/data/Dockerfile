FROM rocker/rstudio:4.2.3

RUN apt-get update && \
    apt-get install -y \
        libhdf5-dev \
        libcurl4-gnutls-dev \
        libssl-dev \
        libxml2-dev \
        libpng-dev \
        libxt-dev \
        zlib1g-dev \
        libbz2-dev \
        liblzma-dev \
        libglpk40 \
        libgit2-dev \
    && apt-get clean all && \
    apt-get purge && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN Rscript -e "install.packages(c('dplyr', 'renv', 'BiocManager'));"
RUN Rscript -e "BiocManager::install(version = '3.16')"
RUN Rscript -e "BiocManager::install(c('Herper', 'DESeq2', 'tximport'))"

EXPOSE 8787

CMD ["/init"]

