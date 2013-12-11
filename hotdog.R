par(family='STHeiti')  #中文支持
hotdogs <- read.csv("http://datasets.flowingdata.com/hot-dog-contest-winners.csv") #读取数据
fill_colors<-c()
fill_colors_names<-c()
print(fill_colors)
for(i in 1:length(hotdogs$Country)){  
  if (hotdogs$New.record[i] == 1){
    fill_colors <- c(fill_colors, "#CCFFFF")  
  } else {
    fill_colors <- c(fill_colors, "#CC99FF")
  }
}
barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col=fill_colors, 
        border=NA, space=0.5, xlab="年份", ylab="吃掉的HDB数量",density=80)
title(main="1980-2010年“内森杯”热狗大胃王比赛成绩")
