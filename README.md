# mongo-backup
Backup a cloud hosted mongo database on a schedule (Mac OSx)

There are 2 parts to this repo: 

1. A shell script using mongodump to connect to a remote MongoDB and back it up
2. A plist file to schedule the script to run every day on Mac OSx

## Setup
1. Edit dbbackup.plist file, making sure to set a valid WorkingDirectory path replacing the [user] with your specific user path
2. Place dbbackup.plist file in /Library/LaunchDaemons/ folder
3. Edit mongobackup.sh file, replacing [user] [host] [port] [mongodb username] [mongodb password] with your specific values
4. In a terminal run the following command to schedule backup regardless on whether machine is logged in or restarted

`bash
sudo launchctl load -w /Library/LaunchDaemons/dbbackup.plist
`

### Enjoy free backups! 

To check if your bash file works run it manually in a terminal

`bash
sh mongobackup.sh
`
