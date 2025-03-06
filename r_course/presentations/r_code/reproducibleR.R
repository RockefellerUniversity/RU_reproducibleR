params <-
list(isSlides = "no")

## ----setup, include=FALSE-----------------------------------------------------
suppressPackageStartupMessages(require(knitr))
knitr::opts_chunk$set(echo = TRUE, tidy = T)


## ----results='asis',include=TRUE,echo=FALSE-----------------------------------
if(params$isSlides != "yes"){
  cat("# Reproducible Research

---
"    
  )
  
}



## ----results='asis',include=TRUE,echo=FALSE-----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Set Up

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Set Up

---
"    
  )
  
}



## ----setwd_introtoR,eval=F----------------------------------------------------
# setwd("/PathToMyDownload/Reproducible_R-master/r_course")
# # e.g. setwd("~/Downloads/Reproducible_R-master/r_course")


## ----results='asis',include=TRUE,echo=FALSE-----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Reproducible Research

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Reproducible Research

---
"    
  )
  
}



## ----eval=F-------------------------------------------------------------------
# # Generate some random numbers and plot them
# myRandNumbers <- rnorm(100,10,2)
# 
# plot(myRandNumbers)
# 
# sessionInfo()


## ----results='asis',include=TRUE,echo=FALSE-----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# R Markdown

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# R Markdown

---
"    
  )
  
}



## ----results='asis',include=TRUE,echo=FALSE-----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# R Markdown Header

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# R Markdown Header

---
"    
  )
  
}



## ---
## title: "My New Analysis"
## author: "Tom Carroll"
## date: "19th October 2022"
## output: html_document
## ---

## ---
## output: html_document
## ---

## ---
## output: pdf_document
## ---

## ---
## output: ioslides_presentation
## ---

## ---
## output:
##   html_document:
##     fig_width: 7
##     fig_height: 6
## ---

## ---
## output:
##   html_document:
##     theme: journal
##     highlight: espresso
## ---

## ----results='asis',include=TRUE,echo=FALSE-----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# R Markdown Body

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# R Markdown Body

---
"    
  )
  
}



## This is my first line.  # the comment here shows the line end
## This would be a new line.
## This wouldn't be a new line.

## Italics = _Italics_ or *Italics*
## Bold  =  __Bold__ or **Bold**

## ![alt text](imgs/Dist.jpg)
## ![alt text](https://rockefelleruniversity.github.io//r_course/imgs/Dist.jpg)

## https://rockefelleruniversity.github.io/
## [Github site](https://rockefelleruniversity.github.io/)

## # Top level section
## ## Middle level section
## ### Bottom level section

## - First item
## - Second item
##     + Second item A
##     + Second item B

## ----results='asis',include=TRUE,echo=FALSE-----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# R Markdown Code Chunks

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# R Markdown Code Chunks

---
"    
  )
  
}



## ```{r}
## hist(rnorm(100))
## ```

## -----------------------------------------------------------------------------
hist(rnorm(100))


## ```{r,warning=F,message=F}
## library(ggplot2)
## ```

## ----results='asis',include=TRUE,echo=FALSE-----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Other R Markdown tricks

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Other R Markdown tricks

---
"    
  )
  
}



## ----eval=T-------------------------------------------------------------------
temp <- rnorm(3)
temp2 <- rnorm(3)
dfExample <- data.frame(temp,temp2)
kable(dfExample)


## Here is some freeform _markdown_ and the first result
## from an rnorm call is 'r rnorm(3)[1]', followed by some
## more free form text.
