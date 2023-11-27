library(class)
library(caret)
View(df)
df<-read.csv("C:\Users\esfin\Desktop\Proyectos para GitHub\Taller\Rfetal_health.csv")
set.seed(100)
t.ids<-createDataPartition(df$fetal_health,p=0.5,list = F)
train<-df[t.ids,]
temp<-df[-t.ids,]
v.ids<-createDataPartition(temp$fetal_health,p=0.5,list = F)
val<-temp[v.ids,]
test<-temp[-v.ids,]

pred1<-knn(train[,1:21], val[,1:21],train[,22],k=1)
errmat1<-table(val$fetal_health, pred1, dnn = c("Actual","Prediccion"))
errmat1

pred2<-knn(train[,1:21], test[,1:21], train[,22], k=1)
errmat2<-table(test$fetal_health, pred2, dnn = c("Actual", "Prediccion"))
errmat2

