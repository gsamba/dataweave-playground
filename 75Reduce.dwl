%dw 2.0
output json
---
payload reduce ((item, accumulator = {}) -> accumulator ++ ((item.name): item.id))