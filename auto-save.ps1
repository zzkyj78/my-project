  while ($true) {
      Start-Sleep -Seconds 30
      cd C:\my-project
      git add .
      $changes = git status --porcelain
      if ($changes) {
          git commit -m "auto save"
          git push
          Write-Host "saved!"
      }
  }