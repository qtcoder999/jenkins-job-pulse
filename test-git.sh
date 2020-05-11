ls -alh

PATH="/usr/local/opt/inetutils/libexec/gnubin:$PATH"

DATE_WITH_TIME=`date "+%d-%B-%Y-%I-%M-%p"` # Date in this formate 18-April-2020-07-06-AM


HOST='files.000webhost.com'
USER='creational-pass'
PASSWD='12345678'

ftp -i -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD






mkdir test-$DATE_WITH_TIME

cd test-$DATE_WITH_TIME

mput *

rename wp-config-test-server.php wp-config.php






quit
END_SCRIPT
exit 0

