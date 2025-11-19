 = '<token>'
 = @{ dni = '27427864' } | ConvertTo-Json
 = @{ Authorization = "Bearer " }
 = 'https://api.json.pe/api'

Invoke-RestMethod -Method Post -Uri "/dni" -Headers  -ContentType 'application/json' -Body  | ConvertTo-Json -Depth 5
