cp=function(myastro)
{
a1=degree(myastro)
max=a1[1]

for(i in 2:vcount(myastro))
{
if(max<a1[i])
  max=a1[i]
}

print(max)

}