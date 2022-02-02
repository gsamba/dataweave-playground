%dw 2.0
output json
var weekdays = [
  "mon",
  "tue",
  "wed",
  "thu",
  "fri",
  "sat",
  "sun"
]
// dayOfWeek is a value from 1 to 7
fun toWeekDay(date : String) : String = weekdays[(date as LocalDateTime).dayOfWeek - 1]
---
payload map ((item, index) -> {
  (item),
  "day":toWeekDay(item.datetime)
}) filter ((item, index) -> item.organizer contains  "Ross")