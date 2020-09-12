# nonlinearTseriesをインストールする
install.packages("nonlinearTseries")

library(nonlinearTseries)

# 0.3の場合
logMap1 <- logisticMap(
  r = 2.5, 
  n.sample = 100, 
  start = 0.3, 
  n.transient=0,
  do.plot = TRUE
)

# 0.4の場合
logMap2 <- logisticMap(
  r = 2.5, 
  n.sample = 100, 
  start = 0.4, 
  n.transient=0,
  do.plot = TRUE
)

# 0.5の場合
logMap3 <- logisticMap(
  r = 2.5, 
  n.sample = 100, 
  start = 0.5, 
  n.transient=0,
  do.plot = TRUE
)

# 0.7の場合
logMap5 <- logisticMap(
  r = 2.5, 
  n.sample = 100, 
  start = 0.7, 
  n.transient=0,
  do.plot = TRUE
)

# 先程定義したものからそれぞれベクトルを作成する(付けた名前自体に特に意味はない)
tsuchinoko <- c(logMap1)
sabaiteiku <- c(logMap2)
Awajishima <- c(logMap3)
guruguru <- c(logMap5)

#見やすさを追求しデータフレーム化を行う
sekkaku <- data.frame("0.3" <- tsuchinoko, "0.4" <- sabaiteiku, 
"0.5"<- Awajishima,"0.7" <- guruguru)

sekkaku
