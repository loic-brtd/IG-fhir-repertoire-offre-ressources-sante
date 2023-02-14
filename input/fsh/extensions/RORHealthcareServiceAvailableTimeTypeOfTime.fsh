Extension: RORHealthcareServiceAvailableTimeTypeOfTime
Id: ror-healthcareservice-available-time-type-of-time
Description: "Extension créée dans le cadre du ROR"
* ^context[0].type = #element
* ^context[=].expression = "HealthcareService.availableTime"
* ^context[+].type = #element
* ^context[=].expression = "PractitionerRole.availableTime"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $JDV-J41-TypeHoraire-ROR (required)
* value[x] ^binding.description = "Type of time"