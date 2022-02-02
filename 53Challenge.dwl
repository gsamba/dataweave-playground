%dw 2.0
output json
var result = {"status" : "ok"}
---
message:
result.status match  {
    case "ok" -> "Request successfully processed."
    else -> "Please try again later."
}


// with if-lese

%dw 2.0
output json
var result = {"status" : "ok"}
---
message:
if(result.status == "ok")
    "Request successfully processed."
else 
    "Please try again later."
