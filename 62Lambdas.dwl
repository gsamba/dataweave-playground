%dw 2.0
output json
var isOddNum = (a) -> (a mod 2) == 1
---
isOddNum(payload.value)