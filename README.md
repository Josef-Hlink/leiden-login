leiden-login
============

Follow the instructions (**<5 min**) to never have to deal with copying and pasting verification codes again.

The only prerequisites are that you are on macOS and use the default Mail app to receive emails.


demo
----

<fig>
<img src="https://github.com/Josef-Hlink/leiden-login/blob/main/assets/demo.gif" width="960" height="600" alt="User logs in, gets a verification email and can paste the code immediately. The message is then automatically moved to trash."/>
</fig>

As you can see, this should save you roughly 10 seconds when compared to manually copy-pasting, plus it keeps your inbox from being cluttered with countless verification codes.


instructions
------------

### step 1

Download the script and move (`mv`) it to the the directory specified below.
To do this just open a new terminal window and type the following two commands.

```bash
$ cd Downloads/
$ mv GetVerificationCode.applescript /Users/yourusername/Library/Application\ Scripts/com.apple.mail/
```

### step 2

Go to preferences of the Mail app, and navigate to the "rules" tab.
You will only see the "News From Apple" rule, you can leave that unchecked.

<fig>
<img src="https://github.com/Josef-Hlink/leiden-login/blob/main/assets/rules-tab.png" width="960" alt="Rules tab of the Mail app's preferences."/>
</fig>

### step 3

Click on "Add Rule", you should see this window pop up.

<fig>
<img src="https://github.com/Josef-Hlink/leiden-login/blob/main/assets/add-rule.png" width="960" alt="Add Rule dialog."/>
</fig>

Now you can simply fill in the forms to make it look like this:

<fig>
<img src="https://github.com/Josef-Hlink/leiden-login/blob/main/assets/rule-config.png" width="960" alt="Desired configuration for the new rule."/>
</fig>

For the people who want to copy-paste:

```
noreply@leidenuniv.nl
```

```
Verification code for Leiden University
```

### step 4

Select the action to perform an applescript (the one you downloaded).
If the script doesn't show up in this select menu, you can also just open the *magic* location in Finder.

<fig>
<img src="https://github.com/Josef-Hlink/leiden-login/blob/main/assets/script-location.png" width="960" alt="Applescript location."/>
</fig>

Congrats, if you log in to Brightspace every day, you will start saving time in a month :)
