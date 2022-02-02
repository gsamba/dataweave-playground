%dw 2.0
output json
---
payload
    filter((n, index) -> (n mod 5) == 0)