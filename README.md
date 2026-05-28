# Monitor-off-script

A collection of utility scripts to turn off computer monitors on Windows, featuring a custom delay to prevent immediate wake-up from keyboard/mouse release events.

## Features
- **AutoHotkey (AHK) Scripts**: Bind to the **F24** key to easily turn off the monitor from any application.
  - Supports both AHK v1 (`monitor_off_v1.ahk`) and AHK v2 (`monitor_off_v2.ahk`).
- **Native PowerShell/Batch Scripts**: Turn off the monitor without installing any third-party tools by simply running `monitor_off.bat`.

## Scripts

### 1. AutoHotkey Scripts (Recommended for Hotkeys)
- **AHK v2**: [monitor_off_v2.ahk](monitor_off_v2.ahk)
- **AHK v1**: [monitor_off_v1.ahk](monitor_off_v1.ahk)

By default, the script binds to the **F24** key. When triggered, it waits for 500ms to allow key release, and then sends the `WM_SYSCOMMAND` message to turn off the display.

### 2. Native Scripts (No Installation Required)
- **Batch Launcher**: [monitor_off.bat](monitor_off.bat)
- **PowerShell Script**: [monitor_off.ps1](monitor_off.ps1)

Double-click `monitor_off.bat` to execute the PowerShell script which invokes the `SendMessage` Win32 API natively.

## Credits & Acknowledgments
Special thanks to **DaneBlood** for the idea!


