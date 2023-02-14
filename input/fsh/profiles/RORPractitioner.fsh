Profile: RORPractitioner
Parent: Practitioner
Id: ror-practitioner
Description: "Extension créée dans le cadre du ROR"
* id 1..
* meta 1..
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains 
    $mailboxMSS named mailBoxMSS 0..*
* extension[mailBoxMSS] ^isModifier = false
* identifier 1..1
* name.suffix 0..1
* name.suffix from $StructureDefinition (required)
* telecom 0..1
* telecom.extension ^slicing.discriminator.type = #value
* telecom.extension ^slicing.discriminator.path = "url"
* telecom.extension ^slicing.rules = #open
* telecom.extension contains 
    RORTelecomUsage named usage 0..1 and
    RORConfidentialityLevel named ConfidentialityLevel 1..
* telecom.extension[usage] ^isModifier = false
* telecom.system 1..
* telecom.system from $JDV-J225-CanalCommunication-ROR (required)
* telecom.value 1..