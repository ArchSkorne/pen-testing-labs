param(
  [Parameter(Mandatory=$true)][string]$Title,
  [Parameter(Mandatory=$false)][string]$Source = 'copilot-browser',
  [Parameter(Mandatory=$false)][string]$Tags = ''
)

$now = Get-Date -Format yyyy-MM-dd
$slug = ($Title -replace '[^a-zA-Z0-9\- ]','' -replace ' ','-').ToLower()
$filename = "${now}-${slug}.md"
$dir = Join-Path -Path (Resolve-Path .).Path -ChildPath 'browser-chats'
if (-not (Test-Path $dir)) { New-Item -Path $dir -ItemType Directory | Out-Null }

# Prompt for transcript paste
Write-Host "Paste the chat transcript below. Finish with Ctrl+Z then Enter." -ForegroundColor Cyan
$transcript = [Console]::In.ReadToEnd()

$tagsArray = if ($Tags) { $Tags -split ',' | ForEach-Object { $_.Trim() } } else { @() }
$tagsYaml = $tagsArray | ForEach-Object { "  - $_" } | Out-String

$content = "---`n"
$content += "title: \"$Title\"`n"
$content += "date: $now`n"
$content += "source: $Source`n"
$content += "participants:`n  - you`n  - copilot`n"
$content += "summary: \"PLACEHOLDER - short summary here\"`n"
$content += "tags:`n"
if ($tagsArray.Count -gt 0) { $content += $tagsYaml } else { $content += "  - uncategorized`n" }
$content += "---`n`n"

$content += "# Conversation`n`n" + $transcript + "`n`n# Actions / To-dos`n`n- [ ] Add items from the chat`n`n# Links`n`n"

$path = Join-Path $dir $filename
Set-Content -Path $path -Value $content -Encoding UTF8
Write-Host "Saved chat to $path" -ForegroundColor Green
