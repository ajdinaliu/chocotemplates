﻿#$tools = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
#. (Join-Path $tools PSCollectServerInfo.ps1) $env:computername

$psFile = Join-Path "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" '__NAME__.ps1'
#$psArgs = $env:computername

Start-ChocolateyProcessAsAdmin "& `'$psFile`'"