params <-
list(isSlides = "no")

## ----setup, include=FALSE-----------------------------------------------------
suppressPackageStartupMessages(require(knitr))
knitr::opts_chunk$set(echo = TRUE, tidy = T)


## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides != "yes"){
  cat("# Containers

---
"    
  )
  
}



## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
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



## ---- echo=FALSE, out.width="75%"---------------------------------------------
knitr::include_graphics("imgs/jhu_docker_rationale.png")


## ---- echo=FALSE, out.width="75%"---------------------------------------------
knitr::include_graphics("imgs/jhu_docker_rationale2.png")


## docker --version


## ---- echo=FALSE, out.width="100%", fig.align='center'------------------------
knitr::include_graphics("imgs/docker_config.png")


## ---- echo=FALSE, out.width="80%", fig.align='center'-------------------------
knitr::include_graphics("imgs/docker_schema_empty.png")


## ---- echo=FALSE, out.width="80%", fig.align='center'-------------------------
knitr::include_graphics("imgs/docker_schema_addBuild.png")


## ---- echo=FALSE, out.width="80%", fig.align='center'-------------------------
knitr::include_graphics("imgs/docker_schema_addRun.png")


## ---- echo=FALSE, out.width="70%", fig.align='center'-------------------------
knitr::include_graphics("imgs/docker_schema_all.png")


## docker pull rocker/rstudio:4.2.3


## docker images


## ---- echo=FALSE, out.width="100%", fig.align='left'--------------------------
cat("\n")
knitr::include_graphics("imgs/docker_images.png")


## docker images


## ---- echo=FALSE, out.width="100%", fig.align='left'--------------------------
cat("\n")
knitr::include_graphics("imgs/docker_images.png")


## ---- echo=FALSE, out.width="100%", fig.align='center'------------------------
knitr::include_graphics("imgs/docker_desktop_images.png")


## docker run --rm \

##           -p 8787:8787 \

##            -e PASSWORD=password \

##            rocker/rstudio:4.2.3


## ---- echo=FALSE, out.width="100%", fig.align='center'------------------------
knitr::include_graphics("imgs/rstudio_interface.png")


## docker ps


## ---- echo=FALSE, out.width="100%", fig.align='center'------------------------
cat("\n")
knitr::include_graphics("imgs/docker_ps.png")


## docker stop 6ee1e0e97bf8 # this is the ID from 'docker ps'

## docker ps


## ---- echo=FALSE, out.width="100%", fig.align='center'------------------------
cat("\n")
knitr::include_graphics("imgs/docker_stop.png")


## # navigate to 'r_course' directory in downloaded material

##  cd ~/Downloads/Reproducible_R-master/r_course

## 

##  # launch docker container

##  docker run --rm \

##           -v ./data:/home/rstudio \

##           -p 8787:8787 \

##            -e PASSWORD=password \

##            rocker/rstudio:4.2.3


## ---- echo=FALSE, out.width="100%", fig.align='center'------------------------
knitr::include_graphics("imgs/rstudio_interface_volume.png")


## ---- eval=F------------------------------------------------------------------
## dataIn <- read.csv("readThisTable.csv")
## head(dataIn, 2)
## # add gene IDs and write to new file on local computer
## dataIn$Gene_ID <- seq(nrow(dataIn))
## write.csv(dataIn, "rnaseq_table_withIDs.csv")


## ---- echo=FALSE, out.width="75%", fig.align='left'---------------------------
knitr::include_graphics("imgs/rstudio_interface_volume_write.png")


## ls -a data


## ---- echo=FALSE, out.width="100%", fig.align='center'------------------------
cat("\n")
knitr::include_graphics("imgs/docker_hidden_files.png")


## ---- echo=FALSE, out.width="100%", fig.align='left'--------------------------
knitr::include_graphics("imgs/dockerfile1_all.png")


## ---- echo=FALSE, out.width="75%", fig.align='left'---------------------------
knitr::include_graphics("imgs/dockerfile1_FROM.png")


## ---- echo=FALSE, out.width="75%", fig.align='left'---------------------------
knitr::include_graphics("imgs/dockerfile1_sys_deps.png")


## ---- echo=FALSE, out.width="100%", fig.align='left'--------------------------
knitr::include_graphics("imgs/dockerfile1_Rpackages.png")


## ---- echo=FALSE, out.width="50%", fig.align='left'---------------------------
knitr::include_graphics("imgs/dockerfile1_EXPOSE_CMD.png")


## docker build -t rstudio_4.2.3_v1 ./data


## ---- echo=FALSE, out.width="100%", fig.align='left'--------------------------
cat("\n")
knitr::include_graphics("imgs/dockerV1_build_log.png")


## docker images


## ---- echo=FALSE, out.width="100%", fig.align='left'--------------------------
cat("\n")
knitr::include_graphics("imgs/docker_images_v1.png")


## docker run --rm \

##           -v ./data:/home/rstudio \

##           -p 8787:8787 \

##           -e PASSWORD=password \

##           rstudio_4.2.3_v1


## ---- echo=FALSE, out.width="90%", fig.align='left'---------------------------
cat("\n")
knitr::include_graphics("imgs/docker_image_v1_interface.png")


## ---- echo=FALSE, out.width="90%", fig.align='left'---------------------------

knitr::include_graphics("imgs/dockerfile_salmon_all.png")


## docker build -t rstudio_4.2.3_salmon -f ./data/Dockerfile_salmon ./data/


## ---- echo=FALSE, out.width="100%", fig.align='left'--------------------------
cat("\n")
knitr::include_graphics("imgs/docker_salmon_build_log.png")


## docker images


## ---- echo=FALSE, out.width="90%", fig.align='left'---------------------------
cat("\n")
knitr::include_graphics("imgs/docker_images_salmon.png")


## ---- eval=F, tidy=FALSE------------------------------------------------------
## library(Herper)
## # the environment name and miniconda path set in the Dockerfile
## Herper::local_CondaEnv(new = "pipe_env",
##                        pathToMiniConda = "/home/miniconda")
## # test out salmon
## system("salmon -h")


## ---- echo=FALSE, out.width="75%", fig.align='left'---------------------------
knitr::include_graphics("imgs/docker_image_salmon_interface.png")


## ---- echo=FALSE, out.width="100%", fig.align='left'--------------------------
cat("\n")
knitr::include_graphics("imgs/docker_desktop_salmon.png")


## ---- echo=FALSE, out.width="100%", fig.align='left'--------------------------
cat("\n")
knitr::include_graphics("imgs/docker_desktop_salmon_running.png")

