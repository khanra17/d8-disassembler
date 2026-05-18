Import-Module (Join-Path $PSScriptRoot "..\utils.psm1")

function Patch {
    param([string]$Content)

    $Content = $Content -replace '#define V8_JUMP_TABLE_INFO_BOOL true', @"
#define V8_JUMP_TABLE_INFO_BOOL false
"@

    return $Content
}
