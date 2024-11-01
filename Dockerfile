FROM rocker/shiny:4.4.0

LABEL name=ContDataSumViz

RUN apt-get update && apt-get install -y \
    libssl-dev \
    libxml2-dev \
    libgit2-dev \
    default-jdk \
    r-cran-rjava \
    r-base-dev dh-r automake \
    libharfbuzz-dev  libfribidi-dev \
    libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev \
    libgdal-dev \
    libudunits2-dev \
    cmake \
    && apt-get clean

WORKDIR /app

COPY . /app

RUN ["Rscript", "install_all_packages_in_lockfile.R"]

CMD ["Rscript", "run.R"]
