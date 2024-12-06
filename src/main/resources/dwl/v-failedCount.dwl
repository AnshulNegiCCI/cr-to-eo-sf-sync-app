%dw 2.0
output application/java
---
vars.failedCount + sizeOf(payload.items filter $.successful == false)