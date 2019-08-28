*****This Guide Assumes You Have Already Succesfully Installed AutoHeadFix and its Dependancies*****
1) To start AutoHeadFix use the following command **sudo python3 __main__2.py**

2) At the prompt, select a AHF task configuration file or create your own. To create your own configration file simply enter 0 and follow the prompts on screen to set various parameters.

3) The Task settings screen displays your current settings (options 1 thru 38) (retrived from the corresponding jsn)
    At the screeen you my select any number (1 to 38) in order to change any parameters associated with that object (pins, ect)

4) When the settings are correct select 0 to exit,

5) If no file was found under the name "AHF_mice_subjects.jsn" the program will let you know it was unable to load a configuration file and will create one for you. Add a mouse via one of the two provided options (RFID Reader or tag number)

6) After adding mouse/mice, you should see a dictionary print out of your current trial training settings. Along with a prompt to "Please edit the values now" At this point you may open up the newly created jsn file "AHF_mice_fillable_subjects.jsn" and edit any values you feel neccesary. When finished it is **Crucial** that you rename the file. 

6.5) When renaming the file you **must** remove the word 'fillable' EXAMPLE: navigate to the AutoHeadFix folder
    Type the following command into terminal: **sudo cp AHF_mice_fillable_subjects.jsn AHF_mice_subjects.jsn**
    

7) After copying the file correctly, proceed back to autoheadfix window and press enter

8) If everything was done correclty you should see the promot 'Waiting for a mouse..."
  At this time feel free to test your current settings and change them subsequently if needed!
