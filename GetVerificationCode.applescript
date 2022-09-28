-- Works for macOS Monterey 12.6
-- and probably will work for a while
-- until Uni Leiden switches it up of course

set targetSender to "noreply@leidenuniv.nl"
set targetSubject to "Verification code for Leiden University"

tell application "Mail"
	-- evaluate all unread messages
	set candidateMessages to (messages of inbox whose read status is false)
	-- loop over messages in reverse order to get the most recent one in case there's multiple
	repeat with aMsg in reverse of candidateMessages
		if (aMsg's sender is targetSender) and (aMsg's subject is targetSubject) then
			set theMsg to aMsg
			set theContent to theMsg's content
			-- we need this to delete the message later
			set theAccount to account of mailbox of theMsg
		end if
	end repeat
end tell

try
	set firstLine to (do shell script "echo " & quoted form of theContent & " | head -n 1")
	-- e.g., "Verification code for Leiden University additional authentication is: xxxxxx."
	set verificationCode to (do shell script "echo " & quoted form of firstLine & " | cut -d ':' -f 2")
	-- e.g., " xxxxxx."
	set result to characters 2 through 7 of verificationCode as string
	-- e.g., "xxxxxx"
	set the clipboard to result
	-- let user know they can now paste the code
	do shell script "afplay /System/Library/Sounds/Blow.aiff"
	-- move mail to trash
	tell application "Mail"
		set mailbox of theMsg to mailbox "Trash" of theAccount
	end tell
on error
	display notification "No verification code found in email." with title "VC assistant" sound name "Tink"
end try
