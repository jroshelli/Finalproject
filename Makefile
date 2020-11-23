#rule for making report
.PHONY: hw5
hw5: Figures/fig1.png R/HW5.Rmd data/NORS.xlsx 
	cd R; Rscript -e "rmarkdown::render('HW5.Rmd', output_file = '../output/hw5.html')"

#rule for building docker image
.PHONY: build
	build: Dockerfile
		docker build -t image .

#Rule for making fig1
Figures/fig1.png: R/Fig1.R data/NORS.xlsx 
	Rscript R/Fig1.R

#Rule for "help"
.PHONY: help
help:
	@echo "hw5.html : Generate final analysis report"
	@echo "Figures/fig1.png : Generate figure 1"
	@echo "Figures/fig2.png : Generate figure 2"
	@echo "Build : Build docker image"