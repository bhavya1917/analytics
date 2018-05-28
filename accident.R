library(gsheet)
denco2=read.csv(file.choose())
denco2
summary(denco2)
str(denco2)
unique(denco2$Name.of.City)
head(denco2)
df1=aggregate(denco2$Total.number.of.Fatal.Accidents...2011,by=list(denco2$Name.of.City),FUN=max)
df1=df1[order(df1$x,decreasing = TRUE),]
head(df1,10)
df2=aggregate(denco2$Total.number.of.Fatal.Accidents...2012,by=list(denco2$Name.of.City),FUN=max)
df2=df2[order(df2$x,decreasing = TRUE),]
head(df2,10)
df3=aggregate(denco2$Total.Accidents...2013,by=list(denco2$Name.of.City),FUN=max)
df3=df3[order(df3$x,decreasing = TRUE),]
head(df3,10)
df4=aggregate(denco2$Fatal.Accidents...2014,by=list(denco2$Name.of.City),FUN=max)
df4=df4[order(df4$x,decreasing = TRUE),]
head(df4,10)
df5=aggregate(denco2$Fatal.Accidents...2015,by=list(denco2$Name.of.City),FUN=max)
df5=df5[order(df5$x,decreasing = TRUE),]
head(df5,10)
?plot
plot(denco2$Name.of.City,denco2$Total.number.of.Fatal.Accidents...2011,type="p", xlab="City",
     ylab="No.of accidents")
plot(denco2$Name.of.City,denco2$Total.number.of.Fatal.Accidents...2012,type="p", xlab="City",
          ylab="No.of accidents")
plot(df1)
plot(df2)
plot(df3)
