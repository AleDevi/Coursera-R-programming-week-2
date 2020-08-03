complete<- function(directory, id=1:332){
  setwd(paste("C:/Users/Color&Sound/Desktop/Coursera/week2/",directory,sep="")) #get the directory. 
  files<-list.files() #list the files (names) in the directory
  fulldata<-data.frame() #it creates a data frame where to saev the results asked
  for(i in id){ #this loop for working on all the monitors selectd in the "id" call of the function
    single<-read.csv(files[i]) #a sigle file
    singleFul<-na.omit(single) #same file as above without missing values
    monitorname<-substr(basename(files[i]), 1,3) #the name of the monitor based on the file id
    singleAv<-cbind(monitorname,nrow(singleFul)) #the count of data available for that monitor are stored with the monitor id
    fulldata<-rbind(fulldata,singleAv) #it attaches the results of more monitors
      }
  names(fulldata)<-(c("id","nobs")) #it gives proper names to the dataframe
 fulldata
  }

comp<-complete("specdata",c(2, 4, 8, 10, 12)) #to check if it works
comp

comp<-complete("specdata")
