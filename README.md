# Install
no need 

# Example
## run as root
```
pi@raspberry:~/scripts $ sudo bash ./ck_swap_x86.sh
[Info]  Run as root now.
---------------------------------------------------------------------
User    PID     SWAP    Process
---------------------------------------------------------------------
pi       1004    0M      /run/user/1000/menu-cached-:0
root     101     0M      [mpt/0]
pi       1026    0M      <defunct>
pi       1027    0M      -bash
pi       1040    0M      /usr/lib/gvfs/gvfs-udisks2-volume-monitor
root     1055    0M      --no-debug
pi       1065    0M      /usr/lib/gvfs/gvfs-gphoto2-volume-monitor
pi       1069    0M      /usr/lib/gvfs/gvfs-afc-volume-monitor
pi       1074    0M      /usr/lib/gvfs/gvfs-mtp-volume-monitor
pi       1078    0M      /usr/lib/gvfs/gvfs-goa-volume-monitor
```  
## run as normal user
```
pi@raspberry:~/scripts $ bash ./ck_swap_x86.sh
[Warring]       Not run as root now. Some information may missing. If you want to get full info,pls run it with root user
---------------------------------------------------------------------
User    PID     SWAP    Process
---------------------------------------------------------------------
pi       1004    0M      /run/user/1000/menu-cached-:0
root     101     0M      [mpt/0]
pi       1026    0M      <defunct>
pi       1027    0M      -bash
pi       1040    0M      /usr/lib/gvfs/gvfs-udisks2-volume-monitor
pi       1065    0M      /usr/lib/gvfs/gvfs-gphoto2-volume-monitor
pi       1069    0M      /usr/lib/gvfs/gvfs-afc-volume-monitor
pi       1074    0M      /usr/lib/gvfs/gvfs-mtp-volume-monitor
pi       1078    0M      /usr/lib/gvfs/gvfs-goa-volume-monitor
pi       1099    0M      /org/gtk/gvfs/exec_spaw/0
pi@raspberry:~/scripts $
```  
