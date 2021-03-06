Function Get-Settings {

    [CmdletBinding()]
    Param()

    Begin
        {Write-Verbose "$($MyInvocation.MyCommand.Name):: Function started"} 

    Process
    {
        Write-Verbose "$($MyInvocation.MyCommand.Name):: Loading Settings"

        $ini = @{}

        # Location where the files are kept
        $Settings = @{
            "SaltRepo"    = "https://repo.saltstack.com/windows/dependencies"
            "SaltDir"     = "C:\salt"
            "PythonDir"   = "C:\Python27"
            "ScriptsDir"  = "C:\Python27\Scripts"
            "DownloadDir" = "$env:Temp\DevSalt"
            }
        $ini.Add("Settings", $Settings)

        # Prerequisite software
        $Prerequisites = @{
            "NSIS" = "nsis-3.0b1-setup.exe"
        }
        $ini.Add("Prerequisites", $Prerequisites)

        # Location of programs on 64 bit Windows
        $64bitPaths = @{
            "NSISDir" = "C:\Program Files (x86)\NSIS"
        }
        $ini.Add("64bitPaths", $64bitPaths)

        # Location of programs on 32 bit Windows
        $32bitPaths = @{
            "NSISDir" = "C:\Program Files\NSIS"
        }
        $ini.Add("32bitPaths", $32bitPaths)

        # Filenames for 64 bit Windows
        $64bitPrograms = @{
            "PyCrypto"   = "pycrypto-2.6.1-cp27-none-win_amd64.whl"
            "Python"     = "python-2.7.12.amd64.msi"
            "PyWin"      = "pypiwin32-219-cp27-none-win_amd64.whl"
            "PyZMQ"      = "pyzmq-14.7.0-cp27-none-win_amd64.whl"
        }
        $ini.Add("64bitPrograms", $64bitPrograms)

        # Filenames for 32 bit Windows
        $32bitPrograms = @{
            "PyCrypto"   = "pycrypto-2.6.1-cp27-none-win32.whl"
            "Python"     = "python-2.7.12.msi"
            "PyWin"      = "pypiwin32-219-cp27-none-win32.whl"
            "PyZMQ"      = "pyzmq-14.7.0-cp27-none-win32.whl"
        }
        $ini.Add("32bitPrograms", $32bitPrograms)

        # DLL's for 64 bit Windows
        $64bitDLLs = @{
            "Libeay"     = "libeay32.dll"
            "SSLeay"     = "ssleay32.dll"
            "OpenSSLLic" = "OpenSSL_License.txt"
            "libsodium"  = "libsodium.dll"
            "msvcr"      = "msvcr120.dll"
        }
        $ini.Add("64bitDLLs", $64bitDLLs)

        # DLL's for 32 bit Windows
        $32bitDLLs = @{
            "Libeay"     = "libeay32.dll"
            "SSLeay"     = "ssleay32.dll"
            "OpenSSLLic" = "OpenSSL_License.txt"
            "libsodium"  = "libsodium.dll"
            "msvcr"      = "msvcr120.dll"
        }
        $ini.Add("32bitDLLs", $32bitDLLs)

        Write-Verbose "$($MyInvocation.MyCommand.Name):: Finished Loading Settings"
        Return $ini
    }
    End
        {Write-Verbose "$($MyInvocation.MyCommand.Name):: Function ended"}
}
