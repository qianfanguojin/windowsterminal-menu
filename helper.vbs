Set shell = WScript.CreateObject("Shell.Application")
     executable = WSCript.Arguments(0)
     folder = WScript.Arguments(1)
     If Wscript.Arguments.Count > 2 Then
         profile = WScript.Arguments(2)
         ' 0 at the end means to run this command silently
         shell.ShellExecute "powershell", "Start-Process \""" & executable & "\"" -ArgumentList \""-p \""\""" & profile & "\""\"" -d \""\""" & folder & "\""\"" \"" ", "", "runas", 0
     Else
         ' 0 at the end means to run this command silently
         shell.ShellExecute "powershell", "Start-Process \""" & executable & "\"" -ArgumentList \""-d \""\""" & folder & "\""\"" \"" ", "", "runas", 0
     End If
    
