Instance: ror-sp-healthcareservice-equipment-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORHealthcareServiceEquipmentType"
* description = "Paramètre de recherche décrivant le type d'équipement de l'offre opérationnelle"
* code = #equipment-type
* base = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url = 'http://interop.esante.gouv.fr/ig/fhir/ror30/StructureDefinition/ror-healthcareservice-equipement').extension(url = 'equipmentType').valueCodeableConcept"