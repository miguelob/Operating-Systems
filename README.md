# Operating-Systems

**Instalation Instructions**
--
To get this respository on your test machine, you will need to clone it with this command on your shell (with git already installed):
```
git clone https://github.com/miguelob/Operating-Systems
```

*Benchmarking MacOS, FreeBSD and MINIX*
--
For executing the code on macos we will use [benchmark.sh](https://github.com/miguelob/Operating-Systems/blob/main/benchmark.sh). For executing this code just type on the terminal:
```
sh ./benchmark.sh X
```

Being X the numer of files to create. For example `sh ./benchmark.sh 100` will create 100 files and calculate the runtime and display on the terminal the elapsed time.
At the end of this code you will find this:
```
for i in `seq 1 $1`;
do
    rm $i &
done
```
This instructions removes all the created files after the time calculation is over (so you do not need to manually remove them).

*Possible Errors*
--
1. User without permission to create files. In that case, try to execute with sudo:
```
sudo sh ./benchmark.sh X
```
2. C binary files not workimg on your machine: You might need to recompile both write.c (rename output file to a.out) and get_time.c (rename output file to time.out)
