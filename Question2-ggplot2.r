#ggplot2のインストール
install.packages("ggplot2")

library(ggplot2)

#data.frameの要素が数字の場合はグラフが作成できないので
#それぞれa, b, cに名前を変更する

sekkaku <- data.frame("a" <- tsuchinoko, "b" <- sabaiteiku, 
"c"<- Awajishima, "x" <- xx)

#ggplotでグラフを作成する
ggplot(sekkaku, aes(x)) +
  geom_line(aes(y = a, colour = "3.4")) +
  geom_line(aes(y = b, colour = "3.5")) +
  geom_line(aes(y = c, colour = "3.55"))
