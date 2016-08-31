MaximumEgo = function(){
  
astroVertex = V(astrocollab);  

astroEgo = ego_size(astrocollab,1);
max = 0;

for (i in  1:16706){
  num = astroEgo[[i]];
  
  if ( num > max){
    max = num;
    count = i;
  }
}
print(max);
print(count);
print(astroVertex[count]);

}