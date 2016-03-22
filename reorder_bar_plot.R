library(ggplot2)
# sample data.
d <- data.frame(Team1=c("Cowboys", "Giants", "Eagles", "Redskins"), Win=c(20, 13, 9, 12))

# basic layer and options
p <- ggplot(d, aes(y=Win)) + theme(axis.text.x=element_text(angle=90, hjust=1))

# default plot (left panel)
# the variables are alphabetically reordered.
p + geom_bar(aes(x=Team1), stat="identity") + theme(title=element_text("Default"))

# re-order the levels in the order of appearance in the data.frame
d$Team2 <- factor(d$Team1, as.character(d$Team1))
# same as
# d$Team2 <- factor(d$Team1, c("Cowboys", "Giants", "Eagles", "Redskins"))

# plot on the re-ordered variables (Team2) (middle panel)
p + geom_bar(aes(x=Team2), data=d, stat="identity") + theme(title=element_text("Order by manual"))

# re-order by variable Win
# the variables are re-orderd in the order of the win
d$Team3 <- reorder(d$Team1, d$Win)

# plot on the re-ordered variables (Team3) (right panel)
some_plot <- p + geom_bar(aes(x=Team3), data=d, stat="identity") + theme(title=element_text("Order by variable"))
