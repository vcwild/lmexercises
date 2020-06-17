library(ggplot2)
library(UsingR)
library(manipulate)
library(dplyr)
data("galton")


myPlot<-function(beta){
    y<-galton$child-mean(galton$child)
    x<-galton$parent-mean(galton$parent)
    freqData<-as.data.frame(table(x,y))
    names(freqData)<-c("child","parent","freq")
    plot(
        as.numeric(as.vector(freqData$parent)),
        as.numeric(as.vector(freqData$child)),
        pch=21,col="black",bg="lightblue",
        cex=.15*freqData$freq,
        xlab="Parent",
        ylab="Child"
    )
    abline(0,beta,lwd=3)
    points(0,0,cex=2,pch=19)
    mse<-mean((y-beta*x)^2)
    title(paste("Beta=",beta,"MeanSqrErr=",round(mse,3)))
}
manipulate(myPlot(beta),beta=slider(0.6,1.2,step=0.02))
