#Ok, so lets get the weights of these guys for a specific day:
day_25 <- andy_david[which(andy_david$Day == 25), ]
#make a list of all the files in the folder "diet_data" that includes where they are in the directory.
files_full <- list.files("diet_data", full.names=TRUE)
#create an empty data frame before running the for loop.
dat <- data.frame()
for(i in 1:5) {
     dat <- rbind(dat, read.csv(files_full[i]))
}
#compactly display the structure of an arbitrary R object

str(dat)

#find the median weight of all the people and get rid of Nas simultaneously
median(dat$Weight, na.rm=TRUE)
#median = 190
#find the median weight of day 30:
dat_30 <- dat[which(dat[ ,"Day"] == 30), ]
median(dat_30$Weight)
#find the median weight of day 1:
dat_1 <- dat[which(dat[ , "Day"] == 1), ]
median(dat_1$Weight)

# make a function that will find the median weight on any given day
weightmean <- function(directory, day) { 
     #content of the function
     
     }
     
