*****This Guide Assumes You Have Already Succesfully Installed AutoHeadFix and its Dependancies*****
1) Note: a couple useful aliases were automatically created during hte install:

raspberrypi$ ahfstart: start the program

raspberrypi$ ahfstart --temp: start the program using whatever configurations were most recently stored in database

 start AutoHeadFix use the following command **sudo python3 __main__2.py**


2) At the prompt, select a AHF task configuration file or create your own. To create your own configration file simply enter 0 and follow the prompts on screen to set various parameters.

3) The Task settings screen displays your current settings (options 1 thru 38) (retrived from the corresponding jsn)
    At the screeen you my select any number (1 to 38) in order to change any parameters associated with that object (pins, ect)

4) When the settings are correct select 0 to exit,

5) If no file was found under the name "AHF_mice_subjects.jsn" the program will let you know it was unable to load a configuration file and will create one for you. Add a mouse via one of the two provided options (RFID Reader or tag number)

6) After adding mouse/mice, you should see a dictionary print out of your current trial training settings. Along with a prompt to "Please edit the values now"
    

8) After confirming, If everything was done correctly you should see the prompt 'Waiting for a mouse..."
  At this time feel free to test your current settings and change them subsequently if needed!
