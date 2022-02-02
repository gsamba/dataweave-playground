%dw 2.0
output json
fun isOddNum(a) = a mod 2
---
isOdd(payload.value)