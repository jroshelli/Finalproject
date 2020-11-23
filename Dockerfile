FROM rocker/tidyverse

# install R packages
RUN Rscript -e "install.packages('openxlsx')"
RUN Rscript -e "install.packages('haven')"
RUN Rscript -e "install.packages('gtools')"


# make a project directory in the container
RUN mkdir /project
RUN mkdir /project/output

# copy contents of local folder to project folder in container
COPY ./ /project/

# make R scripts executable
RUN chmod +x /project/R/*.R

# make build report
CMD make -C project hw5