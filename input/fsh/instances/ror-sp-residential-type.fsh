Instance: ror-sp-residential-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPResidentialType"
* description = "Paramètre de recherche pour récupérer le type d'habitation"
* code = #residential-type
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ror-residential-capacity').extension(url='residentialType').valueCodeableConcept"