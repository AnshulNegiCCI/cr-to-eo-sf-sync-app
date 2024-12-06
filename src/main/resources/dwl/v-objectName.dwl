%dw 2.0
output application/json
---
upper(payload[0]) ++ payload[1 to -1]
