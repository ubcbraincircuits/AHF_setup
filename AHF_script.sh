  GNU nano 2.7.4                                 File: AHF_script.sh                                            

  GNU nano 2.7.4                                      File: AHF_script.sh                                      $

#!/bin/bash
# This script should completely set up AutoHeadFixer on a blank Raspberry pi.
#$ sudo chmod 700 AFH_script.sh
#$ ./AFH_script.sh

PURGE=false  #DEFAULT:false for developing - setting purge =true deletes the cr$

if [ $PURGE = true ];
        then
                echo "TRUE"
        else
                echo "no purge"
fi

#mkdir AutoHeadFixSetup
#cd AutoHeadFixSetup

#echo "Updating via sudo apt-get update, upgrade"
sudo apt-get update -y
sudo apt-get upgrade -y

echo "downloading AHF repository lever_config branch"
git clone --single-branch --branch lever_config https://github.com/jamieboyd/AutoHeadFix
cd AutoHeadFix

echo "cloning pulsedThread and building makefile"
git clone https://github.com/jamieboyd/pulsedThread.git
cd pulsedThread
sudo make
sudo make install
sudo python3 setup_ptGreeter.py install
sudo python3 setup_pyPTpyFuncs.py install

mv * ..
cd ..
#rmdir pulsedThread


echo "Cloning GPIO_Thread"
git clone https://github.com/jamieboyd/GPIO_Thread.git
cd GPIO_Thread
sudo python3 HX711_setup.py install
sudo python3 SR_stepper_setup.py install
sudo python3 SimpleGPIO_setup.py install
sudo python3 StepperMotor_setup.py install 
sudo python3 leverThread_setup.py install 
mv * ..
cd ..
#rmdir GPIO_Thread

echo "cloning rfid reader"
git clone https://github.com/jamieboyd/RFIDTagReader.git
cd RFIDTagReader
sudo python3 RFIDTagReader_setup.py install
mv * ..
cd ..
#rmdir RFIDTagReader

echo "cloning adafruit python mpr121"
git clone https://github.com/adafruit/Adafruit_Python_MPR121.git
cd Adafruit_Python_MPR121
mv * ..
cd .. 
#rmdir Adafruit_Python_MPR121

echo "cloning adafruit GPIO"
git clone https://github.com/adafruit/Adafruit_Python_GPIO.git 
cd Adafruit_Python_GPIO
mv * ..
cd ..
#rm Adafruit_Python_GPIO


echo "cloning touch detector"
git clone https://github.com/jamieboyd/TouchDetector.git
cd TouchDetector
sudo python3 TouchDetector_setup.py install
mv * ..
cd ..
#rm TouchDetector


echo "installing pypy and remaining modules (mysql-server, php-mysql, pymysql)"
sudo apt-get install pypy mysql-server php-mysql -y
python3 -m pip install PyMySQL
#pip3 install adafruit-circuitpython-mpr121

if [ $PURGE = true ];
         then
                echo "Purge requested"
                cd ..
                sudo rm -rf AutoHeadFixSetup
        else 
                echo "no purge"
fi

 #cd AutoHeadFix

rm -rf  GPIO_Thread TouchDetector pulsedThread RFIDTagReader Adafruit_Python_MPR121 Adafruit_Python_GPIO

echo "Install complete"

