Connect-VIServer $args[0]

<#
Saw the idea on Jonathan Medd's blog, he gets initial credit :)
http://www.jonathanmedd.net/2012/02/managing-vcenter-plugins-with-powercli.html

Adapted it slightly here for URLs to help with changing IP addresses
#>

$ExtensionManager = Get-View ExtensionManager
$ExtensionManager.ExtensionList | Select-Object @{Name='Description';Expression={$_.Description.Label}},@{Name='URL';Expression={$_.Server[0].Url}} | Sort-Object Description