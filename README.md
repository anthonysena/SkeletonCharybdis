SkeletonCharybdis
=================

Introduction
============

This is a first pass at making the Charybdis study package into a reusable skeleton

Technology
============
SkeletonCharybdis is an R package.

System Requirements
============
Requires R.

Installation
=============

# Install the latest version of renv:
install.packages("renv")

# Start a new project in RStudio (or when not using RStudio, create a new folder and 
# set it as the current working directory). When asked if you want to use renv with the 
# project, answer ‘no’.

# Download the lock file:
download.file("https://raw.githubusercontent.com/anthonysena/SkeletonCharybdis/renv.lock", "renv.lock")
  
# Build the local library:
renv::init()
  
# When not in RStudio, you'll need to restart R now

# And you’re done! The study package can now be loaded and used:
library(SkeletonCharybdis)