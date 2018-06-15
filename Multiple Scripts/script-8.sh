#!/bin/bash

echo "******************CREATION OF USERS AND GROUP******************"
sudo useradd -m student1
echo "useradd -m student1"
sudo echo student1:P@ssw12 | chpasswd
echo "student1:P@ssw12| chpasswd"

sudo useradd -m student2
echo "useradd -m student2"
sudo echo student2:P@ssw12 | chpasswd
echo "student2:P@ssw12 | chpasswd"

sudo useradd -m teacher3
echo "useradd -m teacher3"
sudo echo teacher3:user3pass | chpasswd
echo "teacher3:user3pass| chpasswd"

sudo useradd -m teacher4
echo "useradd -m teacher4"
sudo echo teacher4:user4pass | chpasswd
echo "teacher4:user4pass| chpasswd"

sudo useradd -m other5
echo "useradd -m other5"
sudo echo other5:user5pass | chpasswd
echo "other5:user5pass| chpasswd"

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

sudo touch personal/qwerty.file
echo "touch personal/qwerty.file"

sudo chown student1 ./personal/qwerty.file
echo "chown student1 ./personal/qwerty.file"

sudo chgrp student1 ./personal/qwerty.file
echo "chgrp student1 ./personal/qwerty.file"

sudo chown student1 ./personal
echo "chown student1 ./personal"

sudo chgrp student1 ./personal
echo "chgrp student1 ./personal"

sudo chmod -R 700 ./personal
echo "chgrp student1 ./personal"

sudo mkdir shared
echo "mkdir shared"

sudo touch shared/qwerty.file
echo "touch shared/qwerty.file"

sudo chown student1 ./shared/qwerty.file
echo "chown student1 ./shared/qwerty.file"

sudo chgrp student1 ./shared/qwerty.file
echo "chgrp teacher ./shared/qwerty.file"

sudo chmod 750 ./shared/qwerty.file
echo "chmod 750 ./shared/qwerty.file"

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

sudo touch personal/qwerty.file
echo "touch personal/qwerty.file"

sudo chown student2 ./personal/qwerty.file
echo "chown student2 ./personal/qwerty.file"

sudo chgrp student2 ./personal/qwerty.file
echo "chgrp student2 ./personal/qwerty.file"

sudo chown student2 ./personal
echo "chown student2 ./personal"

sudo chgrp student2 ./personal
echo "chgrp student2 ./personal"

sudo chmod -R 700 ./personal
echo "chgrp student2 ./personal"

sudo mkdir shared
echo "mkdir shared"

sudo touch shared/qwerty.file
echo "touch personal/qwerty.file"

sudo chown student2 ./shared/qwerty.file
echo "chown student2 ./shared/qwerty.file"

sudo chgrp student2 ./shared/qwerty.file
echo "chgrp teacher ./shared/qwerty.file"

sudo chmod 750 ./shared/qwerty.file
echo "chmod 750 ./shared/qwerty.file"

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

sudo touch security/qwerty.file
echo "touch security/qwerty.file"

sudo chown teacher3 ./security/qwerty.file
echo "chown teacher3 ./security/qwerty.file"

sudo chgrp teacher3 ./security/qwerty.file
echo "chgrp teacher3 ./security/qwerty.file"

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

sudo touch security/lectures/qwerty.file
echo "touch security/lectures/qwerty.file"

sudo chown teacher3 ./security/lectures/qwerty.file
echo "chown teacher3 ./security/lectures/qwerty.file"

sudo chgrp teacher ./security/lectures/qwerty.file
echo "chgrp teacher ./security/lectures/qwerty.file"

sudo chmod 750 ./security/lectures/qwerty.file
echo "sudo chmod 750 ./security/lectures/qwerty.file"

sudo mkdir security/exam
echo "mkdir security/exam"

sudo touch security/exam/qwerty.file
echo "touch personal/qwerty.file"

sudo chown teacher3 ./security/exam/qwerty.file
echo "chown teacher3 .security/exam/qwerty.file"

sudo chgrp teacher3 ./security/exam/qwerty.file
echo "chgrp teacher3 .security/exam/qwerty.file"

sudo chown teacher3 ./security/exam
echo "chown teacher3 ./security/exam"

sudo chgrp teacher3 ./security/exam
echo "chgrp teacher3 ./security/exam"

sudo chmod -R 700 ./security/exam
echo "chmod -R 700 ./security/exam"

sudo chmod -R 700 ./security/exam/qwerty.file
echo "chmod -R 700 ./security/exam/qwerty.file"

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

sudo touch personal/qwerty.file
echo "touch personal/qwerty.file"

sudo chown teacher4 ./personal/qwerty.file
echo "chown teacher4 .personal/qwerty.file"

sudo chgrp teacher4 ./personal/qwerty.file
echo "chgrp teacher4 .personal/qwerty.file"

sudo chown teacher4 ./personal
echo "chown teacher4 ./personal"

sudo chgrp teacher4 ./personal
echo "chgrp teacher4 ./personal"

sudo chmod -R 700 ./personal
echo "chmod -R 700 ./personal"

sudo chmod -R 700 ./personal/qwerty.file
echo "chmod -R 700 ./personal/qwerty.file"

sudo mkdir network
echo "mkdir network"

sudo touch network/qwerty.file
echo "touch network/qwerty.file"

sudo chown teacher4 ./network/qwerty.file
echo "chown teacher4 .network/qwerty.file"

sudo chgrp teacher4 ./network/qwerty.file
echo "chgrp teacher4 .network/qwerty.file"

sudo chown teacher4 ./network
echo "chown teacher4 ./network"

sudo chgrp teacher4 ./network
echo "chgrp teacher4 ./network"

sudo chmod -R 777 ./network
echo "chmod -R 766 ./network"

sudo chmod -R 777 ./network/qwerty.file
echo "chmod -R 766 ./network/qwerty.file"

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


