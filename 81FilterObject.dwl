%dw 2.0
output json
---
payload filterObject ((value, key, index) -> value != false and !(key contains "secret"))