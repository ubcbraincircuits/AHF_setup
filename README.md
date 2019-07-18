*********************************************************************************************************
***************************INSTALLATION GUIDE / HOW TO INSTALL AutoHeadFix*******************************
*********************************************************************************************************


1. clone this repository by typing the following into terminal: git clone https://github.com/ZenenHornstein/AHF_setup

2. Navigate to the folder called AHF_setup. You should see two files one called AHF_script.sh and the other being this readme.

3. Next we must make the script executable with the command: sudo chmod 777 AHF_script.sh

4. To begin setup use the following command: sudo ./AHF_script.sh  ****NOTE**** depending on the state of your raspberry pi and speed of internet connection this script can take up to an hour to finish. *ALL FOLDERS ARE CRATED RELATIVE TO THE CURRENT DIRECTORY* This means one should execute the script from the desired directory to house AutoHeadFix.

5. After most of the install has executed you should reach a set of prompts for setting up mariaDB *NOTE* it is recommended that you answer "Y" to all prompts within the mariaDB setup as it will ensure a secure install.

6. After finishing the mariaDB initiliaztion you should encounter another prompt asking for the root password you just created, as well as username/pass for a new user to be created aswell as the database new user will have access too. This will be the local database that AutoHeadFix will utilize.

7. You should see a message displaying the information you just entered. These are the credentials for the new user aswell as the associated database. This database and user should be automatically created.

8. To verify the install executed properly run the command: sudo -u root -p -e "SHOW DATABASES;"
You should see a database with the name you just entered. If so congratulations! the install was a success.

9. If you experience any problems with the install it is recommended to run the script and enter '0' at the starting prompt.
This will clear any folders created durring the installation (after the fact) and is useful if a timeout error or remote host disconnect results in a partial install.





