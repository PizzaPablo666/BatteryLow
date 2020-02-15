# BatteryLow
BatteryLow CHARGE! 

For using BatteryLow simply add trigger.sh to your startup applications or autostart.

Example.
I am using WindowMaker which has autostart file. When I type 
```
startx
```
after login, the window manager will be executed, and my autostart file will work at that moment.
So I put THIS code
```
exec /PATH/TO/TRIGGER.SH &

```
to my autostart or startup applications with (&) for it work in the background.

And don't forget to change the PATH in trigger.sh . (path to batterylow.sh)

Thanks for using :)
