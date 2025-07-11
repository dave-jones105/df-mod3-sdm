##copy contents of a sample evidence folder to a backup
$fromFolder = ".\SampleData"
$toFolder = ".\SampleDataBackup"
Copy-Item -Path $fromFolder -Destination $toFolder -Recurse

##Get windows logs and redirect them into a new text file in the backup folder
Get-WinEvent -ListLog * > $toFolder\Logs.txt

##Make the backup folder and contents read only
Get-ChildItem $toFolder -Recurse -File | ForEach-Object {
    $_.IsReadOnly = $true
}