################################################################################
# This script uses the PROCESS macro for R from Andrew Hayes to create a 
# moderation model (model 1).
# Furthermore, it produces the output which can visualized using the
# corresponding MD2C Excel template (www.md2c.nl).
# Make sure you download the PROCESS source code and data.
# Please store them in the sample folder as this script. 
# Make sure you use the path to this folder as working directory
################################################################################

# Install the required packages if needed
list.of.packages <- c("readr", "Rcpp")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[, "Package"])]
if (length(new.packages)) install.packages(new.packages)

# Load libraries
library(readr)
library(Rcpp)

# Set working directory, choose the name of your folder
PATH_TO_YOUR_WORKING_DIRECTORY <- "YOUR_PATH"
setwd(PATH_TO_YOUR_WORKING_DIRECTORY)

# Load the PROCESS macro for R, this might take a while
# MAKE SURE YOU HAVE DOWNLOADED THE CODE AND STORED IN THE SAME DIRECTORY AS THIS SCRIPT)
source("process.R")

# read the data file DISASTER
# MAKE SURE YOU HAVE DOWNLOADED THE DATA AND STORED IN THE SAME DIRECTORY AS THIS SCRIPT)
filename <- "disaster.csv"
disaster <- read.csv(file=filename,head=TRUE,sep=",",na.strings=c("NA","#DIV/0!","#N/A",""))

## MODERATION ANALYSIS: Climate Change Disasters and Humanitarianism
# The dataset contains the variables to test whether framing the disaster as caused by climate change 
# rather than leaving the cause unspecified (frame) influences people’s 
# justifications for not helping (justify), and whether this effect of framing 
# is dependent on a person’s skepticism about climate change (skeptic).
# We also want to obtain data to plot the graphs, both the conditional effect
# of the focal predictor "frame" (plot=1) as the conditional effect of 
# focal predictor "frame" at values of the moderator "skeptic" (jn=1)
process(data=disaster,y="justify",x="frame",w="skeptic",model=1,plot=1,jn=1)

### THE END ###

