library("igraph"); 
setwd("C:/Users/Om/Desktop/prev/Spring 2016/Big data/Project");
load("astrocollab.Rdata"); 
ast2 <-upgrade_graph(astrocollab); 

all_clusters <- decompose.graph(ast2, mode = c("weak", "strong"), max.comps = NA,min.vertices = 3);

cliques_max_no=function(ast2)
{
  clique_num(ast2); 
}