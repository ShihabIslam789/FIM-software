
Write-Host ""
Write-Host "what would you like to do?"
Write-Host "A) Collect new Baselione?"
Write-Host  "B) Begin monitoring files with saved baseline?"

$response = Read-Host -Prompt "Please enter 'A' or 'B' "

 if ($response -eq "A".toUpper()) {
    # Calculate hash from the target files and store in baseline.txt
    Write-Host "Calculate hashes, make new baseline.txt" -ForegroundColor Cyan
 }
 elseif ($response -eq "B".ToUpper()) {
    # Begin monitoring files with saved baseline
    Write-Host "Read existing baseline.txt, start monitoring files." _ForegroundColor Yellow
 }
  # For each file, calculate the hash, and write to baseline.txt
  foreach ($f in $files) {
    $hash = Calculate-File-Hash $f.FullName
    "$($hash.Path)|$($hash.Hash)" | Out-File -FilePath .\baseline.txt -Append
}
