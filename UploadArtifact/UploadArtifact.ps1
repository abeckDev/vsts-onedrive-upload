#
# UploadArtifact.ps1
#

# Requirements: https://www.powershellgallery.com/packages/OneDrive/1.0.3
# PowerShell 5.0 or higher 
# Install-Module -Name OneDrive -Scope CurrentUser

# GUI way
$authentication = Get-ODAuthentication -ClientID "9b072ee0-d954-4eae-bfe6-d9a7e8472776"
$AuthCode = $authentication.access_token
Get-ODChildItems -AccessToken $AuthCode -Path "/"


### Sample Code
#
#[CmdletBinding(DefaultParameterSetName = 'None')]
#param(
#	[string][Parameter(Mandatory=$true)] $variable1, 
#	[string] $variable2
#)
#
#Write-Host "Starting UploadArtifact"
#
##Run Save-Module -Name VstsTaskSdk -Path .\ for get the Powershell VSTS SDK
## see https://github.com/Microsoft/vsts-task-lib/tree/master/powershell/Docs
##Trace-VstsEnteringInvocation $MyInvocation
#
#try {
#Write-Host "variable 1: "$variable1
#Write-Host "variable 2: "$variable2
#
#
#} catch {
#
#} finally {
#	#Trace-VstsLeavingInvocation $MyInvocation
#}
#
#Write-Host "Ending UploadArtifact"