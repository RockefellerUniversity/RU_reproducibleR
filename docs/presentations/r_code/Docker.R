params <-
list(isSlides = "no")

## ----setup, include=FALSE-----------------------------------------------------
suppressPackageStartupMessages(require(knitr))
knitr::opts_chunk$set(echo = TRUE, tidy = T)


## ----results='asis',include=TRUE,echo=FALSE-----------------------------------
if(params$isSlides != "yes"){
  cat("# Containers

---
"    
  )
  
}



## ----results='asis',include=TRUE,echo=FALSE-----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# What are containers? <br> Why should we use them?

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# What are containers? Why should we use them?

---
"    
  )
  
}



## ----echo=FALSE, out.width="75%"----------------------------------------------
knitr::include_graphics("imgs/jhu_docker_rationale.png")


## ----echo=FALSE, out.width="75%"----------------------------------------------
knitr::include_graphics("imgs/jhu_docker_rationale2.png")


## ----echo=FALSE, out.width="85%", fig.align='center'--------------------------
knitr::include_graphics("imgs/docker_schema_empty.png")


## ----echo=FALSE, out.width="85%", fig.align='center'--------------------------
knitr::include_graphics("imgs/docker_schema_addBuild.png")


## ----echo=FALSE, out.width="85%", fig.align='center'--------------------------
knitr::include_graphics("imgs/docker_schema_addRun.png")


## ----echo=FALSE, out.width="70%", fig.align='center'--------------------------
knitr::include_graphics("imgs/docker_schema_all.png")


## docker --version

## ----echo=FALSE, out.width="40%", fig.align='left'----------------------------
cat("\n")
knitr::include_graphics("imgs/docker_version.png")


## ----echo=FALSE, out.width="100%", fig.align='center'-------------------------
knitr::include_graphics("imgs/docker_config.png")


## ----results='asis',include=TRUE,echo=FALSE-----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Running Docker containers<br>from Docker Hub images

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Running Docker containers from Docker Hub images

---
"    
  )
  
}



## docker pull rocker/rstudio:4.4.0

## docker images

## ----echo=FALSE, out.width="100%", fig.align='left'---------------------------
cat("\n")
knitr::include_graphics("imgs/docker_images.png")


## docker images

## ----echo=FALSE, out.width="100%", fig.align='left'---------------------------
cat("\n")
knitr::include_graphics("imgs/docker_images.png")


## ----echo=FALSE, out.width="80%", fig.align='center'--------------------------
knitr::include_graphics("imgs/docker_desktop_images.png")


## docker run --rm \
##           -p 8787:8787 \
##            -e PASSWORD=password123 \
##            rocker/rstudio:4.4.0

## ----echo=FALSE, out.width="100%", fig.align='center'-------------------------
knitr::include_graphics("imgs/rstudio_interface.png")


## docker ps

## ----echo=FALSE, out.width="100%", fig.align='center'-------------------------
cat("\n")
knitr::include_graphics("imgs/docker_ps.png")


## docker stop 08ac0df5a76b # this is the ID from 'docker ps'
## docker ps

## ----echo=FALSE, out.width="100%", fig.align='center'-------------------------
cat("\n")
knitr::include_graphics("imgs/docker_stop.png")


## # navigate to 'r_course' directory in downloaded material
##  cd ~/Downloads/RU_reproducibleR-master/r_course
## 
##  # launch docker container
##  docker run --rm \
##           -v ./data:/home/rstudio \
##           -p 8787:8787 \
##            -e PASSWORD=password123 \
##            rocker/rstudio:4.4.0

## ----echo=FALSE, out.width="100%", fig.align='center'-------------------------
knitr::include_graphics("imgs/rstudio_interface_volume.png")


## ----echo=FALSE, out.width="100%", fig.align='left'---------------------------
knitr::include_graphics("imgs/rstudio_interface_volume_write.png")


## ----eval=F-------------------------------------------------------------------
# dataIn <- read.csv("readThisTable.csv")
# head(dataIn, 2)
# # add gene IDs and write to new file on local computer
# dataIn$Gene_ID <- seq(nrow(dataIn))
# write.csv(dataIn, "rnaseq_table_withIDs.csv")


## # For windows use: dir /a
## ls -a data
## rm -r data/.local data/.config

## ----echo=FALSE, out.width="100%", fig.align='center'-------------------------
cat("\n")
knitr::include_graphics("imgs/docker_hidden_files.png")


## ----results='asis',include=TRUE,echo=FALSE-----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Building custom images<br>from a Dockerfile

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Building custom images from a Dockerfile

---
"    
  )
  
}



## ----echo=FALSE, out.width="85%", fig.align='left'----------------------------
knitr::include_graphics("imgs/dockerfile1_all.png")


## ----echo=FALSE, out.width="85%", fig.align='left'----------------------------
knitr::include_graphics("imgs/dockerfile1_FROM.png")


## ----echo=FALSE, out.width="85%", fig.align='left'----------------------------
knitr::include_graphics("imgs/dockerfile1_sys_deps.png")


## ----echo=FALSE, out.width="85%", fig.align='left'----------------------------
knitr::include_graphics("imgs/dockerfile1_Rpackages.png")


## ----echo=FALSE, out.width="85%", fig.align='left'----------------------------
knitr::include_graphics("imgs/dockerfile1_EXPOSE_CMD.png")


## docker build -t rocker/rstudio:4.4.0_v2 ./data

## ----echo=FALSE, out.width="100%", fig.align='left'---------------------------
cat("\n")
knitr::include_graphics("imgs/dockerV1_build_log.png")


## docker images

## ----echo=FALSE, out.width="65%", fig.align='left'----------------------------
cat("\n")
knitr::include_graphics("imgs/docker_images_v1.png")


## docker run --rm \
##           -v ./data:/home/rstudio \
##           -p 8787:8787 \
##            -e PASSWORD=password123 \
##            rocker/rstudio:4.4.0_v2

## ----echo=FALSE, out.width="100%", fig.align='left', out.width="80%"----------
cat("\n")
knitr::include_graphics("imgs/docker_image_v1_interface.png")


## ----results='asis',include=TRUE,echo=FALSE-----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Install conda packages<br>in a Docker image

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Install conda packages in a Docker image

---
"    
  )
  
}



## ----echo=FALSE, out.width="100%", fig.align='left'---------------------------

knitr::include_graphics("imgs/dockerfile_samtools_all.png")


## docker build -t rocker/rstudio:4.4.0_samtools -f ./data/Dockerfile_samtools ./data/

## ----echo=FALSE, out.width="100%", fig.align='left'---------------------------
cat("\n")
knitr::include_graphics("imgs/docker_samtools_build_log.png")


## docker images

## ----echo=FALSE, out.width="70%", fig.align='left'----------------------------
cat("\n")
knitr::include_graphics("imgs/docker_images_samtools.png")


## docker run --rm \
##           -v ./data:/home/rstudio \
##           -p 8787:8787 \
##            -e PASSWORD=password123 \
##            rocker/rstudio:4.4.0_samtools

## ----eval=F, tidy=FALSE-------------------------------------------------------
# library(Herper)
# # the environment name and miniconda path set in the Dockerfile
# Herper::local_CondaEnv(new = "pipe_env",
#                        pathToMiniConda = "/home/miniconda")
# # test out salmon
# system("samtools --help")


## ----echo=FALSE, out.width="75%", fig.align='left'----------------------------
knitr::include_graphics("imgs/docker_image_samtools_interface.png")


## ----echo=FALSE, out.width="100%", fig.align='left'---------------------------
cat("\n")
knitr::include_graphics("imgs/docker_desktop_samtools.png")


## ----echo=FALSE, out.width="100%", fig.align='left'---------------------------
cat("\n")
knitr::include_graphics("imgs/docker_desktop_samtools_running.png")


## # log in and provide credentials used to sign into Docker Hub
## # this will prompt you to enter username and password
## docker login
## 
## # tag the image you want to push with your Docker Hub username and a tag name after the colon
## # the ID is from the 'docker images' command
## docker tag 292c85d1812f dougbarrows/rstudio_4.4.0_samtools:topush
## 
## # push to Docker Hub
## docker push brc/rstudio_4.4.0_samtools:topush

## ----echo=FALSE, out.width="100%", fig.align='left'---------------------------
knitr::include_graphics("imgs/dockerhub_after_push.png")


## ----results='asis',include=TRUE,echo=FALSE-----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Use renv and Docker together

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Use renv and Docker together

---
"    
  )
  
}



## ----eval=F-------------------------------------------------------------------
# setwd("/Users/douglasbarrows/Downloads/RU_reproducibleR-master/r_course/data/renv_docker")
# 
# # load in packages to recreate environment we used previously
# library(renv)
# library(BiocManager)
# library(Herper)
# 
# # initialize renv
# renv::init()
# 


## ----echo=FALSE, out.width="60%", fig.align='left'----------------------------
knitr::include_graphics("imgs/lock_file_docker.png")


## ----echo=FALSE, out.width="80%", fig.align='left'----------------------------
knitr::include_graphics("imgs/dockerfile_renv_rver.png")


## ----echo=FALSE, out.width="80%", fig.align='left'----------------------------
knitr::include_graphics("imgs/dockerfile_renv_restore.png")


## 
## # build the image
## docker build -t rocker/rstudio:4.3.1_renv ./data/renv_docker
## 
## # launch a container
## docker run --rm \
##           -v ./data:/home/rstudio \
##           -p 8787:8787 \
##            -e PASSWORD=password123 \
##            rocker/rstudio:4.3.1_renv
