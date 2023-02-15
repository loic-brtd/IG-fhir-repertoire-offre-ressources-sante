Extension: RORAvailableTimeEffectiveOpeningClosingDate
Id: ror-available-time-effective-opening-closing-date
Description: "Extension créée dans le cadre du ROR "
* ^context[0].type = #element
* ^context[=].expression = "HealthcareService.availableTime"
* ^context[+].type = #element
* ^context[=].expression = "PractitionerRole.availableTime"
* url = "http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ror-available-time-effective-opening-closing-date" (exactly)
* value[x] only Period