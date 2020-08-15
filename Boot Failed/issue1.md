

## “dev/sda1: clean, …” This message appears after I startup my laptop, then it won't continue booting

1 [StackOverFlow](https://askubuntu.com/questions/882385/dev-sda1-clean-this-message-appears-after-i-startup-my-laptop-then-it-w?fbclid=IwAR0bUiGmrGwJwAAVX8ntgK_YonpWI_kLsYqKJlrEJ7HaKh4aklKb5uBlMko)

![](https://i.imgur.com/FMel4DA.png)

# Step #1

Lets first check your file system for errors.

To check the file system on your Ubuntu partition...

-   boot to the GRUB menu
-   choose Advanced Options
-   choose Recovery mode
-   choose Root access
-   at the # prompt, type  `sudo fsck -f /`
-   repeat the fsck command if there were errors
-   type  `reboot`

If for some reason you can't do the above...

-   boot to a Ubuntu Live DVD/USB
-   start  `gparted`  and determine which /dev/sdaX is your Ubuntu partition
-   quit  `gparted`
-   open a  `terminal`  window
-   type  `sudo fsck -f /dev/sdaX`  # replacing X with the number you found earlier
-   repeat the fsck command if there were errors
-   type  `reboot`

# Step #2

If step #1 doesn't fix your problem, then do this...

-   boot to the GRUB menu
-   choose Advanced Options
-   choose Recovery mode
-   choose Root access
-   at the # prompt, type:
    -   `sudo blkid`
    -   `sudo cat /etc/fstab`
-   edit your question to include the output from the two previous commands
-   type  `reboot`

# Step #3

pending fix here...

# Step #4

If you dual-boot with Windows, then do this in Windows...

-   open the Power control panel
-   click on  `change what the power buttons do`
-   click on  `change options that are unavailable`
-   uncheck  `fast start`
-   close the Power control panel
-   open an administrative command prompt window
-   type  `powercfg /h off`  _(turns off hibernation)_
-   type  `chkdsk /f c:`
-   approve that chkdsk runs at next boot time
-   reboot Windows