params <-
list(isSlides = "no")

## ----setup, include=FALSE-----------------------------------------------------
suppressPackageStartupMessages(require(knitr))
knitr::opts_chunk$set(echo = TRUE, tidy = T, eval=F)


## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides != "yes"){
  cat("# Conda

---
"    
  )
  
}



## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Herper

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Herper

---
"    
  )
  
}



## -----------------------------------------------------------------------------
library(Herper)
install_CondaTools(tools = "star", env = "rnaseq")



## -----------------------------------------------------------------------------
my_miniconda <- "~/Desktop/My_Conda"

install_CondaTools(tools = "star", env = "rnaseq", pathToMiniConda = my_miniconda)



## -----------------------------------------------------------------------------
conda_paths <- install_CondaTools(tools = c("salmon","kallisto"), env = "rnaseq", updateEnv = TRUE , pathToMiniConda = my_miniconda)

conda_paths



## ----list_CondaPkgs-----------------------------------------------------------
list_CondaPkgs("rnaseq", pathToMiniConda = my_miniconda)


## ----conda_search-------------------------------------------------------------
conda_search("salmo", pathToMiniConda = my_miniconda)


## ----conda_search2------------------------------------------------------------
conda_search("salmon", pathToMiniConda = my_miniconda)


## ----conda_search_nuance------------------------------------------------------
conda_search("salmon<=1.0", pathToMiniConda = my_miniconda)



## -----------------------------------------------------------------------------
conda_paths <- install_CondaTools(tools = "salmon<=1.0", env = "rnaseq", updateEnv = T, pathToMiniConda = my_miniconda)



## -----------------------------------------------------------------------------
library(magrittr)
library(dplyr)
list_CondaPkgs("rnaseq", pathToMiniConda = my_miniconda) %>% dplyr::filter(name=="salmon")


## ----with_condaenv_SalmonWithCondaEnvEval,echo=TRUE,eval=FALSE,tidy=FALSE-----
## res <- with_CondaEnv("rnaseq",
##                       system2(command="salmon",args = "help",stdout = TRUE),
##                       pathToMiniConda=my_miniconda)
## res


## ----with_condaenv_SalmonLocalCondaEnv,echo=TRUE,eval=FALSE-------------------
## salmonHelp<- function(){
##   local_CondaEnv("rnaseq", pathToMiniConda=my_miniconda)
##   helpMessage <- system2(command="salmon",args = "help",stdout = TRUE)
##   helpMessage
## }
## salmonHelp()


## ----with_condaenv_R----------------------------------------------------------
library(seqCNA)
data(seqsumm_HCC1143)

try(rco <- readSeqsumm(tumour.data = seqsumm_HCC1143), silent = FALSE)


## ---- echo=T, eval=F----------------------------------------------------------
## install_CondaSysReqs(pkg="seqCNA",env="seqCNA_env",pathToMiniConda=my_miniconda)
## rco <- with_CondaEnv(new="seqCNA_env",readSeqsumm(tumour.data=seqsumm_HCC1143)
##  ,pathToMiniConda = myMiniconda)
## summary(rco)


## ----export-------------------------------------------------------------------
yml_name <- paste0("rnaseq_", format(Sys.Date(), "%Y%m%d"), ".yml")
export_CondaEnv("rnaseq", yml_name, pathToMiniConda = my_miniconda)


## ----import, eval=F-----------------------------------------------------------
## testYML <- system.file("extdata/test.yml", package="Herper")
## import_CondaEnv(yml_import=testYML, pathToMiniConda = my_miniconda)


## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Pip

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Pip

---
"    
  )
  
}



## -----------------------------------------------------------------------------

list_CondaPkgs("rnaseq", pathToMiniConda = my_miniconda)


## -----------------------------------------------------------------------------
install_CondaTools("pip", "rnaseq", pathToMiniConda = my_miniconda, updateEnv = TRUE)

with_CondaEnv("rnaseq",
                      system2(command="pip",args = c("install", "scanpy"),stdout = TRUE),
                      pathToMiniConda=my_miniconda)


with_CondaEnv("rnaseq",
                      system2(command=paste0(conda_paths$pathToEnvBin,"/pip"),args = c("install", "scanpy"),stdout = TRUE),
                      pathToMiniConda=my_miniconda)



## -----------------------------------------------------------------------------

list_CondaPkgs("rnaseq", pathToMiniConda = my_miniconda)


## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Renv and Conda

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Renv and Conda

---
"    
  )
  
}



## -----------------------------------------------------------------------------
renv::use_python(python = "/path/to/python")



## -----------------------------------------------------------------------------

renv::snapshot() calls conda env export > environment.yml to save the set of installed Python packages;

renv::restore() calls conda env [create/update] --file environment.yml to install the previously-recorded set of Python packages


