pollutantmean<- function(directory, pollutant,id=1:332){
  setwd(paste("C:/Users/Color&Sound/Desktop/Coursera/week2/",directory,sep="")) #get the directory. 
  files<-list.files() #list the files (names) in the directory
  fulldata<-data.frame() #it creates a data frame where to saev the results asked
  for(i in id){ #this loop for working on all the monitors selectd in the "id" call of the function
    single<-read.csv(files[i]) #a sigle file
    fulldata<-rbind(fulldata,single)
     }
  means<-mean(fulldata[,pollutant],na.rm = TRUE) #it gives proper names to the dataframe
  means
  }

means<-pollutantmean("specdata", "nitrate", 70:72) #to check if it works
means
