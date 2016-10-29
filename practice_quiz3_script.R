####Differences between Correlations 
###Comparing Correlations within a Published Paper 

##Question 1
#Based on the above correlation matrix, determine if the rating-complaint correlation is stronger than the
#rating-critical correlation. Use cocor package and ?cocor.dep.groups.overlap command

library(tidyverse)
library(cocor)

#?cocor.dep.groups.overlap

cocor.dep.groups.overlap(.83, .16, .19, 30, alternative= "two.sided",
                         test ="all", alpha = 0.05, conf.level = 0.95, null.value = 0,
                         data.name = NULL, var.labels = NULL, return.htest = FALSE)

##Question 2
##Based on the above correlation matrix, determine if the rating-complaint correlation is stronger than the
#raises-critical correlation. Use cocor package and ?cocor.dep.groups.nonoverlap command

#?cocor.dep.groups.nonoverlap

cocor.dep.groups.nonoverlap(.83, .38, .59, .16, .38, .19, 30,
                            alternative = "two.sided", test="all", alpha= 0.05,
                            var.labels=NULL, return.htest = FALSE)


###Replication 

##Question 3 
#You decide to run a replication of this study. You want to evaluate the rating-privileges correlation
#You plan on using a sample size of N = 100. What is the prediction interval when you use N = 100? 


library (predictionInterval)
pi.r(r=.43,n=30,rep.n=100)

##Question 4 
#What replication sample size do you need to ensure the prediction interval width is not greater than 
#.50? Trick: why is obtaining a prediction interval that narrow problematic in this scenario? 

pi.r(r=.43,n=30,rep.n=7000) 
#Prediction Width can only get as low as .6

##Question 5

#A new paper examines the rating-privileges correlation. It used a sample size of 1000 and got a correlation of 
#.1. Is this correlation different - use cocor.indep.groups

#?cocor.indep.groups

cocor.indep.groups(.43, .1, 30, 1000, alternative= "two.sided",
                   test = "all", alpha = 0.05, conf.level = 0.95, null.value = 0,
                   data.name = NULL, var.labels  = NULL, return.htest = FALSE)

#Question 6 

#What can you conclude about the strength of the rating-privileges correlation 
#and the results based on Question 5

#calculate confidence interval around rating-privileges from our study 

psych::r.con(.43, n=30)


