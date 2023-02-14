Extension: RORHealthcareServicePatientType
Id: ror-healthcareservice-patient-type
Description: "Extension créée dans le cadre du ROR"
* ^context.type = #element
* ^context.expression = "HealthcareService"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    supportedPatientInfo 0..* and
    ageRange 1..1
* extension[supportedPatientInfo].value[x] 1..
* extension[supportedPatientInfo].value[x] only CodeableConcept
* extension[supportedPatientInfo].value[x] from $JDV-J29-PublicPrisEnCharge-ROR (required)
* extension[supportedPatientInfo].value[x] ^binding.description = "Supported patient type"
* extension[ageRange].value[x] 1..
* extension[ageRange].value[x] only Range
* extension[ageRange].value[x].low 1..
* extension[ageRange].value[x].high 1..