%dw 2.0
output json
---
payload groupBy ((item, index) -> item.dayOfWeek)