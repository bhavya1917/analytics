#denco case
denco=read.csv('denco.csv')
denco
denco2=read.csv(file.choose())
denco2
denco==denco2
summary(denco)
str(denco)
unique(denco$custname)
