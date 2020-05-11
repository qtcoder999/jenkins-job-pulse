echo '\n\n\n\n\n\t\t\t###########   Initialize variables   ###########\n\n\n\n\n\t\t'


export PATH=$PATH:/Applications/XAMPP/xamppfiles/bin/ # Set path

DATE_WITH_TIME=`date "+%d-%B-%Y-%I-%M-%p"` # Date in this formate 18-April-2020-07-06-AM

NEW_DB_FILE_PATH='/Users/a1xu8lll/Desktop/pulse-backup/pulse-'${DATE_WITH_TIME}'.sql'




echo '\n\n\n\n\n\t\t\t###########   Take SQL DB Dump   ###########\n\n\n\n\n\t\t'



mysqldump -u root -p pulse > $NEW_DB_FILE_PATH





echo '\n\n\n\n\n\t\t\t###########  Replace locahost with new URL   ###########\n\n\n\n\n\t\t'



NEW_URL='creational-pass.000webhostapp.com/pulse'

sed -i '' 's+localhost/pulse+'$NEW_URL'+g' $NEW_DB_FILE_PATH


echo '\n\n\n\n\n'


