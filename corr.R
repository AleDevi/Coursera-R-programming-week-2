corr<- function(directory, treshold=0){
  setwd(paste("C:/Users/Color&Sound/Desktop/Coursera/week2/",directory,sep="")) #get the directory. 
  files<-list.files()
  LF<-length(files)
  cr<-c() 
    for(i in c(1:LF)){ #this loop for working on all the monitors
    single<-read.csv(files[i]) #a sigle file
    singleFul<-na.omit(single) #same file as above without missing values
      if(nrow(singleFul)>treshold){ #condition for threshold
      cr[i]<-cor(singleFul[,2],singleFul[,3])
      }else{
         next
        }
     }
  cr<-na.omit(cr)#above, if the condition is not met, the function stores an NA. Here NA are removed
  }

cr<-corr("specdata",treshold=400) #to check if it works
head(cr)
summary(cr)
length(cr)

