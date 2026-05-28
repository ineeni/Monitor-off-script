# PowerShell script to turn off the monitor natively.
# Run this script using PowerShell.

# Delay to allow key/mouse release
Start-Sleep -Milliseconds 500

$signature = @'
[DllImport("user32.dll", CharSet = CharSet.Auto)]
public static extern int SendMessage(IntPtr hWnd, uint Msg, IntPtr wParam, IntPtr lParam);
'@

$type = Add-Type -MemberDefinition $signature -Name "Win32SendMessage" -Namespace "Win32" -PassThru

# HWND_BROADCAST = 0xffff
# WM_SYSCOMMAND = 0x0112
# SC_MONITORPOWER = 0xF170
# Power off = 2
$type::SendMessage([IntPtr]0xffff, 0x0112, [IntPtr]0xF170, [IntPtr]2)
