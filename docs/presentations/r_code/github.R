params <-
list(isSlides = "no")

## ----setup, include=FALSE-----------------------------------------------------
suppressPackageStartupMessages(require(knitr))
knitr::opts_chunk$set(echo = TRUE, tidy = T)
#knitr::opts_knit$set(root.dir = '../My_Project_Folder')


## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides != "yes"){
  cat("# Getting started with Git and GitHub

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

# What is Git?

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# What is Git?

---
"    
  )
  
}



## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Getting started with Git

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Getting started with Git

---
"    
  )
  
}



## git --version


## ---- echo=F, message=F-------------------------------------------------------
require(gh)

# get both pats
master_PAT <- Sys.getenv("GITHUB_PAT")
alt_PAT <- Sys.getenv("GH_alt")
Sys.setenv(GITHUB_PAT=alt_PAT)
Sys.setenv(GITHUB_TOKEN=alt_PAT)

my_repos <- vapply(gh("/user/repos",per_page=110), "[[", "", "name")

if(sum(my_repos==("My_GitHub_Project"))>0){
  gh("DELETE /repos/:owner/:repo", owner = "BRC-RU", 
   repo = "My_GitHub_Project") }

gh("POST /user/repos", name = "My_GitHub_Project")


## rm -rf .git

## rm -rf README.md

## git init


## mkdir My_Project_Folder

## cd My_Project_Folder

## git init


## ls .

## ls -a .


## dir .

## dir /ah .


## ls -a .git


## dir /ah .git


## A=$(git config --global user.name)

## B=$(git config --global user.email)

## C=$(git config credential.username)

## git config credential.username 'BRC-RU'

## git config --global user.name 'BRC-RU'

## git config --global user.name

## git config --global user.email 'brc@rockefeller.edu'

## git config --global user.email


## touch README.md

## git status .


## git add README.md

## git status .


## git commit -m'Made a README'

## git status .


## echo 'Hello Friends' >> README.md

## git status .

## git diff


## git add README.md

## git status .

## git diff


## git diff --staged

## git commit -m 'Added welcome message'


## 
## git log

## 

## git log --oneline

## git log --oneline --stat


## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Connecting Git to GitHub

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Connecting Git to GitHub

---
"    
  )
  
}



## git remote add origin https://github.com/BRC-RU/My_GitHub_Project.git


## git push -u origin master

## git push https://${GH_alt}@github.com/BRC-RU/My_GitHub_Project.git

## 

## git pull -u origin master

## git pull https://${GH_alt}@github.com/BRC-RU/My_GitHub_Project.git

## 

## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Git and GUIs

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Git and GUIs

---
"    
  )
  
}



## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Project workflow and collaboration using GitHub

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Project workflow and collaboration using GitHub

---
"    
  )
  
}



## git branch 'newbranch' # to build new one.


## git branch  # tells you what branches exist


## git checkout newbranch


## git branch


## git checkout commitID


## git checkout -- filename


## ---- results='asis', echo=F--------------------------------------------------

cat("<<<<<<< HEAD\n
master code i.e.  \n
y=1  \n
=======  \n
branch code i.e. \n    
y=2  \n")


## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Other useful Git and GitHub commands and utilities

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Other useful Git and GitHub commands and utilities

---
"    
  )
  
}



## git mv FilePath NewFilePath


## git add -A .


## git config --global user.name ${A}

## git config --global user.email ${B}

## git config credential.username ${C}

## 

## ---- echo=F, message=F-------------------------------------------------------
Sys.setenv(GITHUB_PAT=master_PAT)
Sys.setenv(GITHUB_TOKEN=master_PAT)
