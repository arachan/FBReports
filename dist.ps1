# ここに転がっているfbclient.dllのpath
$path=Convert-Path .
$path=$path+"\fbclient.dll"

# Firebird本体にあるfbclient.dllのpath
$fb=${env:ProgramFiles(x86)}+"\Firebird\Firebird_3_0\fbclient.dll"

# Reports読込
$rpt=cat .\FBReports.rdlx

# ConnectStringのCLIENTの部分をここにあるfbclient.dllの場所に書き換え
$rpt=$rpt.Replace('CLIENT={C:\Program Files (x86)\Firebird\Firebird_3_0\fbclient.dll}',"CLIENT={$path}")

# Firebird本体にあるfbclinet.dllに書換
# $rpt.ReplaceReplace('CLIENT={C:\Program Files (x86)\Firebird\Firebird_3_0\fbclient.dll}',"CLIENT={$fb}")

Out-File -InputObject $rpt -Encoding utf8 -FilePath .\FBReports1.rdlx