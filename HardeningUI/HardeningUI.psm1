# +++++++++++++++++++++++++++++++++++++++
# + Define Module configuration
$Script:ModulePath = $PSScriptRoot

# +++++++++++++++++++++++++++++++++++++++
# + Get powershell files
$Public = @( Get-ChildItem -Path "$ModulePath\Public\*.ps1" -ErrorAction SilentlyContinue )
$Private = @( Get-ChildItem -Path "$ModulePath\Private\*.ps1" -ErrorAction SilentlyContinue )

# +++++++++++++++++++++++++++++++++++++++
# + Dot source all powershell function
@($Public + $Private) | ForEach-Object {
    Try
    {
        Write-Verbose "Load $($_.FullName)"
        . $_.FullName
    }
    Catch
    {
        write-Error -Message "Failed to import function $($_.FullName): $($_.Exception.Message)"
    }
}