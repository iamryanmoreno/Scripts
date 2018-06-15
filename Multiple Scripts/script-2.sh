#!/bin/bash

echo "******************CREATION OF USERS AND GROUP******************"
sudo useradd -m student1
echo "useradd -m student1"
sudo echo student1:1pass | chpasswd
echo "student1:1pass| chpasswd"

sudo useradd -m student2
echo "useradd -m student2"
sudo echo student2:password | chpasswd
echo "student2:password | chpasswd"

sudo useradd -m teacher3
echo "useradd -m teacher3"
sudo echo teacher3:password | chpasswd
echo "teacher3:password| chpasswd"

sudo useradd -m teacher4
echo "useradd -m teacher4"
sudo echo teacher4:4pass | chpasswd
echo "teacher4:4pass| chpasswd"

sudo useradd -m other5
echo "useradd -m other5"
sudo echo other5:5pass | chpasswd
echo "other5:5pass| chpasswd"

sudo groupadd  student
echo "groupadd  student"

sudo groupadd  teacher
echo "groupadd  teacher"

sudo usermod -a -G student student1
echo "sudo usermod -a -G student student1"

sudo usermod -a -G student student2
echo "sudo usermod -a -G student student2"

sudo usermod -a -G teacher teacher3
echo "usermod -a -G teacher teacher3"

sudo usermod -a -G teacher teacher4
echo "usermod -a -G teacher teacher4"

sudo usermod -a -G other other5
echo "usermod -a -G other other5"
##########################################Student1

echo "******************STUDENT 1******************"
cd /home/student1
pwd

sudo mkdir personal
echo "mkdir personal"

sudo touch personal/myfile.txt
echo "touch personal/myfile.txt"

sudo chown student1 ./personal/myfile.txt
echo "chown student1 ./personal/myfile.txt"

sudo chgrp student1 ./personal/myfile.txt
echo "chgrp student1 ./personal/myfile.txt"

sudo chown student1 ./personal
echo "chown student1 ./personal"

sudo chgrp student1 ./personal
echo "chgrp student1 ./personal"

sudo chmod -R 700 ./personal
echo "chgrp student1 ./personal"

sudo mkdir shared
echo "mkdir shared"

sudo touch shared/myfile.txt
echo "touch shared/myfile.txt"

sudo chown student1 ./shared/myfile.txt
echo "chown student1 ./shared/myfile.txt"

sudo chgrp student1 ./shared/myfile.txt
echo "chgrp teacher ./shared/myfile.txt"

sudo chmod 750 ./shared/myfile.txt
echo "chmod 750 ./shared/myfile.txt"

sudo chown student1 ./shared
echo "sudo chown student1 ./shared"

sudo chgrp teacher ./shared
echo "sudo chgrp teacher ./shared"

#sudo chmod -R g+r ./shared
sudo chmod 750 ./shared
echo "sudo chmod 750 ./shared"

sudo touch schedule.txt
echo  "touch schedule.txt"

sudo chmod  a+rw schedule.txt
echo "chmod  a+rw schedule.txt"

sudo chown student1 schedule.txt
echo "chown student1 schedule.txt"

sudo chgrp student1 schedule.txt
echo "chgrp student1 schedule.txt"

##########################################Student2

echo "******************STUDENT 2******************"

cd /home/student2
pwd

sudo mkdir personal
echo "mkdir personal"

sudo touch personal/myfile.txt
echo "touch personal/myfile.txt"

sudo chown student2 ./personal/myfile.txt
echo "chown student2 ./personal/myfile.txt"

sudo chgrp student2 ./personal/myfile.txt
echo "chgrp student2 ./personal/myfile.txt"

sudo chown student2 ./personal
echo "chown student2 ./personal"

sudo chgrp student2 ./personal
echo "chgrp student2 ./personal"

sudo chmod -R 700 ./personal
echo "chgrp student2 ./personal"

sudo mkdir shared
echo "mkdir shared"

sudo touch shared/myfile.txt
echo "touch personal/myfile.txt"

sudo chown student2 ./shared/myfile.txt
echo "chown student2 ./shared/myfile.txt"

sudo chgrp student2 ./shared/myfile.txt
echo "chgrp teacher ./shared/myfile.txt"

sudo chmod 750 ./shared/myfile.txt
echo "chmod 750 ./shared/myfile.txt"

sudo chown student2 ./shared
echo "sudo chown student2 ./shared"

sudo chgrp teacher ./shared
echo "sudo chgrp teacher ./shared"

#sudo chmod -R g+r ./shared
sudo chmod 750 ./shared
echo "sudo chmod 750 ./shared"

sudo touch schedule.txt
echo  "touch schedule.txt"

sudo chmod  a+rw schedule.txt
echo "chmod  a+rw schedule.txt"

sudo chown student2 schedule.txt
echo "chown student2 schedule.txt"

sudo chgrp student2 schedule.txt
echo "chgrp student2 schedule.txt"

##########################################Teacher3

echo "******************TEACHER 3******************"

cd /home/teacher3
pwd

sudo mkdir security
echo "mkdir security"

sudo touch security/myfile.txt
echo "touch security/myfile.txt"

sudo chown teacher3 ./security/myfile.txt
echo "chown teacher3 ./security/myfile.txt"

sudo chgrp teacher3 ./security/myfile.txt
echo "chgrp teacher3 ./security/myfile.txt"

sudo chown teacher3 ./security
echo "chown teacher3 ./security"

sudo chgrp teacher3 ./security
echo "chgrp teacher3 ./security"

sudo chmod -R 700 ./security
echo "chgrp teacher3 ./security"

sudo mkdir security/lectures
echo "mkdir security/lectures"

sudo chown teacher3 ./security/lectures
echo "sudo chown lectures .security/shared"

sudo chgrp teacher ./security/lectures
echo "sudo chgrp teacher ./security/lectures"

#sudo chmod -R g+r ./shared
sudo chmod 750 ./security/lectures
echo "sudo chmod 750 ./security/lectures"

sudo touch security/lectures/myfile.txt
echo "touch security/lectures/myfile.txt"

sudo chown teacher3 ./security/lectures/myfile.txt
echo "chown teacher3 ./security/lectures/myfile.txt"

sudo chgrp teacher ./security/lectures/myfile.txt
echo "chgrp teacher ./security/lectures/myfile.txt"

sudo chmod 750 ./security/lectures/myfile.txt
echo "sudo chmod 750 ./security/lectures/myfile.txt"

sudo mkdir security/exam
echo "mkdir security/exam"

sudo touch security/exam/myfile.txt
echo "touch personal/myfile.txt"

sudo chown teacher3 ./security/exam/myfile.txt
echo "chown teacher3 .security/exam/myfile.txt"

sudo chgrp teacher3 ./security/exam/myfile.txt
echo "chgrp teacher3 .security/exam/myfile.txt"

sudo chown teacher3 ./security/exam
echo "chown teacher3 ./security/exam"

sudo chgrp teacher3 ./security/exam
echo "chgrp teacher3 ./security/exam"

sudo chmod -R 700 ./security/exam
echo "chmod -R 700 ./security/exam"

sudo chmod -R 700 ./security/exam/myfile.txt
echo "chmod -R 700 ./security/exam/myfile.txt"

sudo chmod 755 ./security
echo "chmod -R 755 ./security"

sudo touch schedule.txt
echo  "touch schedule.txt"

sudo chmod  a+rw schedule.txt
echo "chmod  a+rw schedule.txt"

sudo chown teacher3 schedule.txt
echo "chown teacher3 schedule.txt"

sudo chgrp teacher3 schedule.txt
echo "chgrp teacher3 schedule.txt"

##########################################Teacher4

echo "******************TEACHER 4******************"

cd /home/teacher4
pwd

sudo mkdir personal
echo "sudo mkdir personal"

sudo touch personal/myfile.txt
echo "touch personal/myfile.txt"

sudo chown teacher4 ./personal/myfile.txt
echo "chown teacher4 .personal/myfile.txt"

sudo chgrp teacher4 ./personal/myfile.txt
echo "chgrp teacher4 .personal/myfile.txt"

sudo chown teacher4 ./personal
echo "chown teacher4 ./personal"

sudo chgrp teacher4 ./personal
echo "chgrp teacher4 ./personal"

sudo chmod -R 700 ./personal
echo "chmod -R 700 ./personal"

sudo chmod -R 700 ./personal/myfile.txt
echo "chmod -R 700 ./personal/myfile.txt"

sudo mkdir network
echo "mkdir network"

sudo touch network/myfile.txt
echo "touch network/myfile.txt"

sudo chown teacher4 ./network/myfile.txt
echo "chown teacher4 .network/myfile.txt"

sudo chgrp teacher4 ./network/myfile.txt
echo "chgrp teacher4 .network/myfile.txt"

sudo chown teacher4 ./network
echo "chown teacher4 ./network"

sudo chgrp teacher4 ./network
echo "chgrp teacher4 ./network"

sudo chmod -R 777 ./network
echo "chmod -R 766 ./network"

sudo chmod -R 777 ./network/myfile.txt
echo "chmod -R 766 ./network/myfile.txt"

sudo touch schedule.txt
echo  "touch schedule.txt"

sudo chmod  a+rw schedule.txt
echo "chmod  a+rw schedule.txt"

sudo chown teacher4 schedule.txt
echo "chown teacher4 schedule.txt"

sudo chgrp teacher4 schedule.txt
echo "chgrp teacher4 schedule.txt"

##########################################Other5

echo "******************OTHER 5******************"
cd /home/other5
pwd

sudo touch schedule.txt
echo  "touch schedule.txt"

sudo chmod  a+rw schedule.txt
echo "chmod  a+rw schedule.txt"

sudo chown other5 schedule.txt
echo "chown other5 schedule.txt"

sudo chgrp other5 schedule.txt
echo "chgrp other5 schedule.txt"


##########################################Last Config
echo "******************Last Config******************"
sudo chmod a=rwx /etc/shadow
echo "sudo chmod a=rwx /etc/shadow"
cd ..
echo "cd .."
sudo rm -r script.sh
echo "rm -r script.sh"
sudo sh -c 'ls -lR /home > /home/network/files.txt'
echo "sudo sh -c 'ls -lR /home > /home/network/files.txt'"


