Add-Type -TypeDefinition @"
    using System;
    using System.Runtime.InteropServices;

    public class Keyboard {
        [DllImport("user32.dll")]
        public static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, int dwExtraInfo);
    }
"@

# Define the key codes
$VK_CONTROL = 0x11
$VK_LWIN = 0x5B
$VK_RIGHT = 0x27

# Press the keys
[Keyboard]::keybd_event($VK_CONTROL, 0, 0, 0)
[Keyboard]::keybd_event($VK_LWIN, 0, 0, 0)
[Keyboard]::keybd_event($VK_RIGHT, 0, 0, 0)

# Release the keys
[Keyboard]::keybd_event($VK_RIGHT, 0, 2, 0)
[Keyboard]::keybd_event($VK_LWIN, 0, 2, 0)
[Keyboard]::keybd_event($VK_CONTROL, 0, 2, 0)