#Data Structure

#Defining Vectors
#vector is a combination of values c

v <- c(1,4,7,9)
v

a <- c(1,4,0,'b')
a

#Matrix
a=matrix(c(1,4,6,8),nrow=2,byrow=T)
a
a <-matrix(c(1,4,6,8),nrow=1)
a
a<-matrix(c(1,4,6,8,5),ncol=2)
a

#data always stores in column format
#if you want to allot in row wise
h<-c(1:10)
x<-matrix(c(1:4),nrow=4,ncol=4,byrow=F,dimnames=list(c('r1','r2','r3','r4'),
                                                     c('c1','c2','c3','c4')))
x

#Array
arr<-array(c(1:5),dim=c(3,2,2))
arr                                                     
arr[,,2]
arr[1,,2]
arr[,2,2]
arr[1,2,2]

#List
List<-list(Id=c(1,2,3,4),name=c('d','k','l','s'),marks=c(9,5,5,4))
List
List$marks
List2<-list(v,x,arr,List)
List2
List2[[4]]

#Data Frame
DF<-data.frame(Id=c(1,2,3,4),name=c('d','k','l','s'),marks=c(9,5,5,4))
DF
DF2<-data.frame(Id=c(8,9,5,6),name=c('p','w','a','e'),marks=c(7,9,5,2))
DF2
DF[c(1,3),]
DF$Id

#Slicing data frame (in classexcersie)
DF1<-data.frame(x=c(1,2,3),y=c('a','b','c'))
DF1
DF1[1,1]
DF1[1,2]
DF1[1,]
DF1[,c(2)]
DF1[c(1,3),]# inside c only slection of rows
