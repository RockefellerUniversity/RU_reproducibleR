params <-
list(isSlides = "no")

## ----setup, include=FALSE-----------------------------------------------------
suppressPackageStartupMessages(require(knitr))
knitr::opts_chunk$set(echo = TRUE, tidy = T)


## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides != "yes"){
  cat("# Environments

---
"    
  )
  
}



## ----setwd_introtoR,eval=F----------------------------------------------------
## setwd("/PathToMyDownload/Reproducible_R-master/r_course")
## # e.g. setwd("~/Downloads/Reproducible_R-master/r_course")


## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Why does reproducibility matter?

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Why does reproducibility matter?

---
"    
  )
  
}



## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Reproducibility in R

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Reproducibility?

---
"    
  )
  
}



## -----------------------------------------------------------------------------
myMat <- matrix(1:100,ncol=10,byrow=TRUE)
means <- colMeans(myMat)
write.csv(myMat,file="Test.csv")


## ----eval=FALSE---------------------------------------------------------------
## sessionInfo()


## ----eval=FALSE---------------------------------------------------------------
## library(ggplot2)
## library(dplyr)
## sessionInfo()


## ----eval=FALSE---------------------------------------------------------------
## sessionInfo("ggplot2")


## ----eval=TRUE----------------------------------------------------------------
sess_info <- sessionInfo()
class(sess_info)
names(sess_info)


## ----eval=FALSE---------------------------------------------------------------
## install.packages("redist")


## ----eval=FALSE---------------------------------------------------------------
## library(redist)
## sessionInfo()


## ----eval=FALSE---------------------------------------------------------------
## chooseCRANmirror()


## ----eval=FALSE---------------------------------------------------------------
## install.packages("redis",repos = "https://repo.miserver.it.umich.edu/cran/")


## ----eval=FALSE---------------------------------------------------------------
## install.packages("BiocManager")
## library(BiocManager)
## install("DESeq2")


## ----eval=FALSE---------------------------------------------------------------
## version()


## ----eval=FALSE---------------------------------------------------------------
## install(version = "3.15")


## ----eval=FALSE---------------------------------------------------------------
## library(ggplot2)
## library(DESeq2)
## sessionInfo()


## ----eval=FALSE---------------------------------------------------------------
## install.packages("https://cran.r-project.org/src/contrib/Archive/unmarked/unmarked_0.8-1.tar.gz",
##                  repos = NULL,
##                  type = "source")


## ----eval=FALSE---------------------------------------------------------------
## install.packages("renv")


## ----eval=FALSE---------------------------------------------------------------
## library(renv)
## init()


## ----eval=FALSE---------------------------------------------------------------
## status()


## ----eval=FALSE---------------------------------------------------------------
## snapshot()


## ---- eval=FALSE--------------------------------------------------------------
## restore()

