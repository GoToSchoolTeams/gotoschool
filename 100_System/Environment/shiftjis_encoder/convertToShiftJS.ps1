$target = $args[0]
$target_files = Get-ChildItem $target
foreach ($f in $target_files) {
    $content = Get-Content -Encoding UTF8 $f.FullName
    Set-Content -Path $f.FullName -Value $content -Encoding Ascii
}
