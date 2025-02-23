# フォルダパスを指定(このスクリプトがおいてあるフォルダ)
$folderPath = $PSScriptRoot

# リネームに使用する正規表現パターンと置換文字列を指定
$pattern = "your-pattern"
$replacement = "your-replacement"

# フォルダ内の全ファイルを取得
$files = Get-ChildItem -Path $folderPath

# 各ファイルをリネーム
foreach ($file in $files) {
    if($file.Name.Contains("meari"))
    {
        $parts = $file.Name -split "_"
        $f_name = $parts[4] -split "\."
        $fname = $f_name[0]
        $parts[3] = "n"
        $parts[4] = $fname + "Ari.png"
        $shin_name = $parts -join "_"
        Write-Output $shin_name

        # ファイルをリネーム
        Rename-Item -Path $file.FullName -NewName $shin_name
    }
}