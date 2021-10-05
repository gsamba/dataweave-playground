%dw 2.0
output json
var secondLevel = payload.secondLevel
var thirdLevel = secondLevel.thirdLevel
---
{
    "descendant": payload..id,
    "multivalue": payload.*id,
    "multivalueSecondLevel": secondLevel.*id,
    "multivalueThirdLevel": thirdLevel.*id,
    "allTheIds" : payload..*id
}