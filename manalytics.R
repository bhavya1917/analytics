#denco case
denco=read.csv('denco.csv')
denco
denco2=read.csv(file.choose())
denco2
denco==denco2
summary(denco)
str(denco)
unique(denco$custname)

#using link
library(gsheet)
url='https://docs.google.com/spreadsheets/d/1PWWoMqE5o3ChwJbpexeeYkW6p4BHL9hubVb1fkKSBgA/edit#gid=1303453077'
denco2=as.data.frame((gheet2tbl(url)))
str(denco2)
head(denco2)
tail(denco2)
names(denco)

sales=denco2#keep a backup
?summary
summary(denco2)

str(denco2)
denco2$revenue=as.numeric((denco2$revenue))
dim(denco2)
unique(denco2$custname)
length(unique(denco2$custname))
length(unique(denco2$region))

aggregate(denco2$revenue,by=list(denco2$custname),FUN=max)
df1=aggregate(denco2$revenue,by=list(denco2$custname),FUN=sum)
head(df1)
str((df1))

#sorting
df1=df1[order(df1$x,decreasing = TRUE),]
head(df1,5)
#another method of sorting
head(df1[order(df1$x,decreasing = TRUE),],5)

#aggregate formula
(df2=aggregate(revenue~custname+region,data=denco2, FUN=sum))
head(df2[order(df2$revenue,decreasing=T),],10)

#list
list1=tapply(denco2$revenue, sales$custname, FUN=sum)
head(list1)
list1
df3=head(sort(list1,decreasing = T))
summary(df3)
str(df3)

#dplyr
names(denco2)
library(dplyr)
sales%>%dplyr::filter(margin>1000000)
names(denco2)
denco2%>%group_by(custname)%>%summarize(Revenue=sum(revenue))%>%arrange(desc(Revenue))

library(dplyr)
denco2%>%dplyr::count(custname,sort=TRUE)
denco2 %>% group_by(custname) %>% summarise(n=n(), Revenue = sum(revenue), mean(cost), max(margin)) %>% arrange(desc(n))

denco2 %>% group_by(custname,region) %>% count(region) %>% arrange(desc(n)) %>% head(n=10)

