# df-mod3-sdm
##PowerShell commands for working with Files and Folders
-mkdir can be used to make directories to store forensic files and information in 
-cd is used to navigate through the files you are examining or copying
-use dir and ls to list contents
-copy files to subolders using copy
-move files using the move commnad
-delete items using the del command *NEVER THE ORIGINAL FORENSIC FILES*

##Working With File Contents
-Get-WinEvents -ListLog can be used to display the contents of windows log files
-Using the > redirect character can be used to write contents to files as they are read
-Add-Content can be used to write to the end of a file for notes or notating
-Get-Content can be used to read the contents of a file
-Select-String can be used to search a file for specific strings of characters you could be looking for
-You can use -MaxEvents to limit the ammount of items selected from log files 

##Permissions 
-The command 
    $accessRule = New-Object System.Security.AccessControl.FileSystemAccessRule("username", "FullControl", "Allow")
    can be used to write specific access control rules to files/ folders
-If you read a file location into a variable, you can then set the path to read only to aboid overwriting the contents:
    $Folder = Get-Item -Path 'C:\Path\to\your\folder'
    $Folder.Attributes += 'ReadOnly'

##Scripted Reusable Task
-In the ps1 file "ScriptedReusableTask" we will do the following:
-Copy a folder and its contents to a backup
-Redirect windows logs to a txt file in the backup folder
-Make that backup read only