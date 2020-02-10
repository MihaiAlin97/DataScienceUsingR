




##IRIS - PROBLEM 1

##create new data frame from applying a filter
##that checks if cols are numeric to the dataset
iris_only_integers.data <- data.frame(Filter(is.numeric, iris))

means = colMeans(iris_only_integers.data)

print(iris_only_integers.data)
print(means)

##IRIS - PROBLEM 1





##BEAVERS - problem 2

##added id columns to both datasets
beaver1$id = 1
beaver2$id = 2

##we merge datasets one on top of each other
concat = rbind(beaver1,beaver2)

##we transform the 0s and 1 into FALSE and TRUE
##when we are subsetting,FALSE values will be dropped
active_beavers = subset(concat,as.logical(activ))

print(active_beavers)

##BEAVERS - problem 2





##CHALLENGER LAUNCH - PROBLEM 3

new = faraway::orings[c(1, 2, 4, 11, 13, 18),]

png(file = "PROBLEM3plot1.png")
plot(x = new[,1],y = new[,2],
     xlab = "No incidents",
     ylab = "Temperature",
     xlim = c(0,100),
     ylim = c(0,100),		 
     main = "No incidents vs Temperature Prelaunch"
)
dev.off()

png(file = "PROBLEM3plot2.png")
plot(x = faraway::orings[,1],y = faraway::orings[,2],
     xlab = "No incidents",
     ylab = "Temperature",
     xlim = c(0,100),
     ylim = c(0,100),		 
     main = "No incidents vs Temperature"
)
dev.off()

##CHALLENGER LAUNCH - PROBLEM 3





##AIS - PROBLEM 4

str(DAAG::ais)
##apply anyNA to see if there are missing values on a column
##checked will contain FALSE for columns that do not contain NAs and TRUE otherwise

checked = sapply(DAAG::ais,anyNA)

##get index of columns with TRUE value,then obtain column name
results = names(which(checked))
if(length(results)!=0){
        cat("Columns that have missing values:",results,"\n")

}else{
        print("There is no column that has a missing value")
}

##create table with sex and sport from data frame
tbl = table(DAAG::ais$sex,DAAG::ais$sport)

##create table with proportions over columns
proportions = prop.table(tbl,2)
##check
print(tbl)

cat("Sports where there is a large imbalance:\n")

##using sapply on the list of indexes of table
sapply(seq_along(proportions),function(index) {
        ##by default 1
        row = 1
        
        if(index>10){
                ##change row to two if index is bigger than 10
                ##substract 10 from index because it will be use to obtain colnames
                index = index - 10
                row = 2
        }
        name = colnames(proportions)[index:index]
        ##calculate proportions per column(all cols add up to 1 per col)
        element = proportions[row , name]

        if(element > 0.66){
                ##if element is on first row it represents males and females on next row
                ##otherwise it represents females and males are on the previous
                if(row == 1){
                        male = element
                        female = proportions[row+1,name]
                }
                if(row == 2){
                        male = proportions[row-1,name]
                        female = element
                }
                ##pretty printing of results
                cat(name,"-> male to female ratio: ", male*100,"% males , ",female*100,"% females","\n")
                
        }
}) 

##AIS - PROBLEM 4




##SOCSUPPORT -PROBLEM 5

png(file = "PROBLEM5plot1.png")
plot(BDI~age, data=DAAG::socsupport)

dev.off()

png(file = "PROBLEM5plot2.png")
plot(BDI~unclass(age), data=DAAG::socsupport)

first  = nrow(subset(DAAG::socsupport,age == "18-20"))
second = nrow(subset(DAAG::socsupport,age == "21-24"))
third  = nrow(subset(DAAG::socsupport,age == "25-30"))
fourth = nrow(subset(DAAG::socsupport,age == "31-40"))
fifth  = nrow(subset(DAAG::socsupport,age == "40+"))

cat("first: ",first,", second: ",second," , third: ",third,", fourth: ",fourth,", fifth: ",fifth,"\n")

dev.off()
##The first plot seems to be more useful when looking at abnormal scores,
##as you have the min,max,median and quartiles drawn on the plot
##the last three categories obviously have less data points in the plot,so it makes harder to draw conclusions
##also number of subjects are 6,6 and 4 for last three categories,so meaningful observations can't be made
##SOCSUPPORT -PROBLEM 5
