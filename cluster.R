library(gsheet)
url='https://docs.google.com/spreadsheets/d/1PWWoMqE5o3ChwJbpexeeYkW6p4BHL9hubVb1fkKSBgA/edit#gid=2073914016'
data=as.data.frame(gsheet2tbl(url))
str(data)
cust_data=data
colnames(cust_data)
class(cust_data$Age)
apply(cust_data,2,FUN=class)
dim(cust_data)
head(cust_data)
summary(cust_data)
?amap::Kmeans
k1<-amap::Kmeans(cust_data[,-c(1)],centers=3,iter.max=200,nstart=1,method = c("euclidean"))
k1$centers #group means
k1$size
k1$withinss #cohesiveness 
k1$cluster
data_clus_2<-cust_data[k1$cluster==2,]
data_clus_2$Cust_id

write.csv(data_clus_2[,1],file="./data/data_clus_2.csv")
