
link : https://itsfoss.com/could-not-get-lock-error/
commad This will show you the id of the process running apt or apt-get
ps aux | grep -i apt 

command this will kill process

sudo kill <process_id>

Check if the process was killed by running the ‘ps aux | grep -i apt’ command. If it is still running, force kill it with SIGKILL signal:

sudo kill -9 <process_id>

Another, easier way would be to use the killall command. This will kill all the instances of a running program:

sudo killall apt apt-get
