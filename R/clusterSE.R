# Load required libraries for clustering
library(sandwich)
library(lmtest)
library(plm)
library(haven)

# Define clustering function as described in paper
cl   <- function(dat,fm, cluster){
  M <- length(unique(cluster))
  N <- length(cluster)
  K <- fm$rank
  dfc <- (M/(M-1))*((N-1)/(N-K))
  uj  <- apply(estfun(fm),2, function(x) tapply(x, cluster, sum));
  vcovCL <- dfc*sandwich(fm, meat=crossprod(uj)/N)
  coeftest(fm, vcovCL) 
}

# Testing the functions; 
data(Crime)
Crime$geography <-factor(Crime$region)

# Run a plain linear regression
regModel = lm(crmrte ~ density + taxpc + avgsen, data = Crime)
summary(regModel)

# apply the 'cl' function by choosing a variable to cluster on.
# here, we are clustering first on geography then on year; Can also do two-way clustering.
cl(Crime, regModel, Crime$geography)
cl(Crime, regModel, Crime$year)


# Write to dta to test results in Stata
dataout <- c("C:/Users/t/Documents/GitHub/Econometrics")
setwd(dataout)
write_dta(Crime, "crime.dta")

# State code below to verify calculations
# use "C:/Users/t/Documents/GitHub/Econometrics/crime.dta", clear
# qui eststo mod1: reg crmrte density  taxpc  avgsen
# qui eststo mod2: reg crmrte density  taxpc  avgsen, cluster(region)
# qui eststo mod3: reg crmrte density  taxpc  avgsen, cluster(year)
# esttab mod*




