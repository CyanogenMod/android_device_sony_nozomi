# LMU AS3676 Configuration for Chargemon
dev=/sys/class/leds
echo 20000 > $dev/lcd-backlight/max_current
echo 2000 > $dev/red/max_current
echo 2000 > $dev/green/max_current
echo 2000 > $dev/blue/max_current
