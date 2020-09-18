# UNIX
### Update system time  
```
sudo ntpdate pool.ntp.org
```

### Set time synchronization  
```
timedatectl set-ntp true
```

### Find in STDOUT by regular expression
```
ls | grep regexp
```

### Recursive find by file name pattern
``` find . -name "*filename*" ```

### Find path for executable
```which command```

### Stop process by pattern for name
```
pkill -f pattern
```

### Find string in file by regular expression (register insensitive)
```
grep -i filename
```
### Find in current folder for string
```
grep -nr 'string' .
```

### SHA1 of file
```
sha1sum filename
```

### New environment variable
```
export VARNAME=varvalue
```

### Add value to environment variable
```
export VARNAME=$VARNAME:varvalue
```

### Version of library from dynamic library configuration
```
ldconfig -p | grep libname
```
### Directory content size (including hidden)
```du -sch .[!.]* | sort -rh```

### Show time when files was modified
```
ls -lt --time-style=full-iso
```

### Unzip
```
unzip archive.zip -d destination_folder/
```

### Crontab
#### edit
```
crontab -e
```
#### list
```
crontab -l
```
#### reset
```
crontab -r
```
#### several commands every 15 minutes with custom environment variables
In cron file:  
```
PATH=/home/user/anaconda/bin:$PATH
SHELL=/bin/bash
*/15 * * * * cd ~/; python script.py
```

## CentOS
### CentOS Version
```
cat /etc/centos-release
```

### Install GCC with yum
GCC:
```
sudo yum install gcc
```
G++:  
```
sudo yum install gcc-c++
```

### Install gcc from source
```
sudo yum -y install bzip2 wget gcc gcc-c++ gmp-devel mpfr-devel libmpc-devel  
wget ftp://ftp.fu-berlin.de/unix/languages/gcc/releases/gcc-9.2.0/gcc-9.2.0.tar.gz  
tar zxf gcc-9.2.0.tar.gz  
../gcc-9.2.0/configure --enable-languages=c,c++ --disable-multilib  
make -j$(nproc)  
sudo make install  
export PATH=/usr/local/bin:$PATH  
export LD_LIBRARY_PATH=/usr/local/lib64:$LD_LIBRARY_PATH  
gcc -v
```

## Ububntu, Debian
### Install Docker CLI
```
sudo apt-get install software-properties-common  
curl -fsSL https://download.docker.com/linux/debian/gpg |apt-key add -  
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"  
apt-get update  
sudo apt-get install docker-ce-cli  
```

### Start Docker service
```sudo service docker start```

## User management
### Add user to docker user group
```sudo usermod -a -G docker username```

### Check path access
```getfacl /home/path/```

### Grant read and execute access to path for user
```setfacl -m user:username:rx path/```

# Grant access to group recursive by default
```sudo setfacl -Rm d:g:group:rwX path/```

### Open TCP ports list
```netstat -lnt```
