## INFO 550 Project

I am analyzing `NORS` data related to zoonotic enteric outbreaks. 

Before starting the analysis, you will need to fork the github repository contents and save them locally.

## Data Analysis

Navigate to the saved location and build the docker image by running:

```bash
make build
```
Add a folder for the output:
```bash
mkdir output
```

Or pull the docker image using the following:
```bash
docker pull jroshelli/image .
```

Then to get the final report, mount your local directory and run the image using the following code:

```bash
docker run -v ~/Finalproj/output:/project/output final-proj
```
Make sure to change the directory to your stored location. This code will create a file called `HW5.html` output in your directory that contains the results. 

If you do not use docker, you will need to first install some `R` packages . The `R` command below can be used to install the packages.
```r
install.packages(c("openxlsx","haven","gtools"))
library(openxlsx)
library(haven)
library(gtools)
```

Then from the project folder, run the following:

```bash
make
```



