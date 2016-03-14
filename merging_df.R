set.seed(1)
list.of.data.frames = list(data.frame(x=1:10, a=1:10), data.frame(x=5:14, b=11:20), data.frame(x=sample(20, 10), y=runif(10)))
merged.data.frame = Reduce(function(...) merge(..., all=T), list.of.data.frames)
tail(merged.data.frame)