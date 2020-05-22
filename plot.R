#!/usr/bin/env Rscript

library(ggplot2)
library(dplyr)

d = read.csv("data.csv")
# nodes, PPN, type, size, read, write
d$tpGiB = d$tpMiBs / 1024
d$nodes = as.factor(d$nodes)

ggplot(d, aes(nodes, tpGiB, color=config, group=config)) + geom_line() + facet_grid(. ~ op, switch = 'both') + xlab("Nodes") + ylab("Performance in GiB/s") + theme(legend.position="bottom") + ylim(0, 250)
ggsave("data.png", width=6, height=4)
