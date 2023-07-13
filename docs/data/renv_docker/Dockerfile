FROM rocker/rstudio:4.1.1

RUN apt-get clean all && \
    apt-get update && \
    apt-get upgrade -y && \
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

ENV RENV_VERSION 0.17.3
RUN R -e "options(warn=2); install.packages('remotes')"
RUN R -e "options(warn=2); remotes::install_github('rstudio/renv@${RENV_VERSION}')"

WORKDIR /project
COPY renv.lock renv.lock

RUN R -e "renv::restore()"

RUN mkdir /home/miniconda
RUN Rscript -e "Herper::install_CondaTools(tools = 'salmon', env = 'pipe_env', pathToMiniConda = '/home/miniconda')"


EXPOSE 8787

CMD ["/init"]

