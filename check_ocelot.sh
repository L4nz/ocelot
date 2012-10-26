#
# Small script to start ocelot if it isn't running.
# Why printing to /dev/null. Because empty statements makes bash cry.

PID=`pgrep ocelot`;
if [ "$(pgrep ocelot)" ]
    then
        echo "do nothing" > /dev/null
    else
        /home/tracker/ocelot/ocelot >> /home/tracker/ocelot.log &
        echo "start ocelot" > /dev/null
fi

