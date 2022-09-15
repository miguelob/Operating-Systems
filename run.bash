for ((i=1;i<=$1;i++)); 
do 
   exec ./a.out $i &
done