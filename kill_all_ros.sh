$(ps aux | grep -ie ros | awk '{print "kill -9 " $2}')
