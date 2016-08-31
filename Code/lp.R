lp=function(astronew)
{
  mat1=delete.vertices(astronew,which(degree(astronew)<2))
  dg=decompose.graph(mat1)
  max=0
  
  for(i in 1:length(dg))
  {
    for(j in 1:(vcount(dg[[i]])-1))
    {
      for(k in (j+1):vcount(dg[[i]]))
      {
    a1=all_simple_paths(dg[[i]],j,k)
      
  
  
  for(z in 1:length(a1))
  {
    if(max<length(a1[[z]]))
    {
       max=length(a1[[z]])
       vect=a1[[z]]
    }
  }
  }
  }
  }
  print(paste0("Longest path for first 100 elements is ", max))
  
  print(paste0("Longest path is given below "))
  print(vect) 

}
