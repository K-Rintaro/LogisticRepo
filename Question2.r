library(nonlinearTseries)

# C = 3.4の場合
logMap1 <- logisticMap(
  r = 3.4, 
  n.sample = 100, 
  start = 0.5, 
  n.transient=0,
  do.plot = TRUE
)

# C = 3.5の場合
logMap2 <- logisticMap(
  r = 3.5, 
  n.sample = 100, 
  start = 0.5, 
  n.transient=0,
  do.plot = TRUE
)

# C = 3.55の場合
logMap3 <- logisticMap(
  r = 3.55, 
  n.sample = 100, 
  start = 0.5, 
  n.transient=0,
  do.plot = TRUE
)
# 先程定義したものからそれぞれベクトルを作成する(付けた名前自体に特に意味はない)
tsuchinoko <- c(logMap1)
sabaiteiku <- c(logMap2)
Awajishima <- c(logMap3)

#見やすさを追求しデータフレーム化を行う
sekkaku <- data.frame("3.4" <- tsuchinoko, "3.5" <- sabaiteiku, 
"3.55"<- Awajishima)

sekkaku
