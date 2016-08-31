library("igrap"); 
setwd("C:/Users/Om/Desktop/prev/Spring 2016/Big data/Project");
load("astrocollab.Rdata"); 
ast2 <-upgrade_graph(astrocollab); 

all_clusters <- decompose.graph(ast2, mode = c("weak", "strong"), max.comps = NA,min.vertices = 3);

pc=function(ast2)
{
  mat1=as_adjacency_matrix(ast2);
  mat2=degree(ast2); 
  a4=mat1%*%mat2;
  a5=max(a4);
  print(a5);
}





long_path=0; 
for(i in 1:vcount(all_clusters[[8]]))
{
  for(j in i+1:vcount(all_clusters[[8]]))
  {
    a1=all_simple_paths(all_clusters[[8]],i,j); 
    for(k in 1:length(a1))
    {
      if(long_path < length(a1[[k]]))
        lon_path=a1[k]; 
    }
  }
}

astroSeq <- V(ast1);
astroNew<-ast1-astroSeq[101:16706];


get_diameter(all_clusters[[1]]);
a2=get_diameter(all_clusters[[1]]);
a2[1]
v1=a2[1]
v2=a2[length(a2)]
paths=all_simple_paths(all_clusters[[1]],v1,v2);
long=0; 
for(i in 1:length(paths))
{
  if(long<length(paths[[i]]))
    long=length(paths[[i]]);
}
long1=long-1; 
long1; 


max=0;

for(j in 1:length(all_clusters))
{
  a1=as_adjacency_matrix(all_clusters[[j]]);
  a2=degree(all_clusters[[j]]); 
  a4=a1%*%a2; 
  for(i in 1:length(a4))
  {
    if(max < a4[i])
      
      max=a4[i];
  }
}
max