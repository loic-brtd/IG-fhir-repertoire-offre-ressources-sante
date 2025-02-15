Extension: RORAvailableTimeTypeOfTime
Id: ror-available-time-type-of-time
Description: "Extension créée dans le cadre du ROR pour apporter un contexte à la plage horaire définie par la suite. Un planning peut être constitué de plusieurs plages horaires du même type ou de type différent."
* ^context[0].type = #element
* ^context[=].expression = "HealthcareService.availableTime"
* ^context[+].type = #element
* ^context[=].expression = "PractitionerRole.availableTime"
* value[x] only CodeableConcept 
* valueCodeableConcept from $JDV-J41-TypeHoraire-ROR (required)
