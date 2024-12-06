%dw 2.0
output application/java
---
vars.successfulCount + sizeOf(payload.items filter $.successful == true)