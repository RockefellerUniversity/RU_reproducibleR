params <-
list(isSlides = "no")

## ----setup, include=FALSE-----------------------------------------------------
suppressPackageStartupMessages(require(knitr))
knitr::opts_chunk$set(echo = TRUE, tidy = T, eval=F)


## ----results='asis',include=TRUE,echo=FALSE-----------------------------------
if(params$isSlides != "yes"){
  cat("# Conda

---
"    
  )
  
}



## ----results='asis',include=TRUE,echo=FALSE-----------------------------------
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
conda_search("kall", pathToMiniConda = my_miniconda)


## ----conda_search22, eval=F, echo=F-------------------------------------------
# test <- capture.output(conda_search("salmon", pathToMiniConda = my_miniconda))
# write.csv(test,"../data/search_res.csv")


## ----conda_search2------------------------------------------------------------
conda_search("kallisto", pathToMiniConda = my_miniconda)


## ----conda_search_nuance------------------------------------------------------
conda_search("kallisto<=0.45", pathToMiniConda = my_miniconda)



## -----------------------------------------------------------------------------
conda_paths <- install_CondaTools(tools = "kallisto<=0.45", env = "rnaseq", updateEnv = T, pathToMiniConda = my_miniconda)



## -----------------------------------------------------------------------------
library(magrittr)
library(dplyr)
list_CondaPkgs("rnaseq", pathToMiniConda = my_miniconda) %>% dplyr::filter(name=="kallisto")


## ----with_condaenv_SalmonWithCondaEnvEval,echo=TRUE,eval=FALSE,tidy=FALSE-----
# res <- with_CondaEnv("rnaseq",
#                       system2(command="salmon",args = "help",stdout = TRUE),
#                       pathToMiniConda=my_miniconda)
# res


## ----with_condaenv_SalmonLocalCondaEnv,echo=TRUE,eval=FALSE-------------------
# salmonHelp<- function(){
#   local_CondaEnv("rnaseq", pathToMiniConda=my_miniconda)
#   helpMessage <- system2(command="salmon",args = "help",stdout = TRUE)
#   helpMessage
# }
# salmonHelp()


## ----export-------------------------------------------------------------------
yml_name <- paste0("rnaseq_", format(Sys.Date(), "%Y%m%d"), ".yml")
export_CondaEnv("rnaseq", yml_name, pathToMiniConda = my_miniconda)


## -----------------------------------------------------------------------------
testYML <- system.file("extdata/test.yml", package="Herper")
import_CondaEnv(yml_import=testYML, pathToMiniConda = my_miniconda)


## ----import, eval=F, echo=F---------------------------------------------------
# 
# is_windows <- function() {
#     identical(.Platform$OS.type, "windows")
# }
# miniconda_conda <- function(path = miniconda_path()) {
#     exe <- if (is_windows()) {
#         "condabin/conda.bat"
#     } else {
#         "bin/conda"
#     }
#     file.path(path, exe)
# }
# pathToCondaInstall <- my_miniconda
# pathToConda <-miniconda_conda(pathToCondaInstall)
# pathToConda
# yml_import=testYML
# args <- paste0("-f", yml_import)
# 
# result <- system2(pathToConda, shQuote(c("env", "create", "--quiet", "--json", args)), stdout = TRUE, stderr = TRUE)
# result


## ----results='asis',include=TRUE,echo=FALSE-----------------------------------
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
install_CondaTools("pip", "rnaseq", pathToMiniConda = my_miniconda, updateEnv = TRUE)

with_CondaEnv("rnaseq",
                      system2(command=paste0(conda_paths$pathToEnvBin,"/pip"),args = c("install", "scanpy"), stdout = TRUE),
                      pathToMiniConda=my_miniconda)



## -----------------------------------------------------------------------------

list_CondaPkgs("rnaseq", pathToMiniConda = my_miniconda)  %>% dplyr::filter(name=="scanpy")

