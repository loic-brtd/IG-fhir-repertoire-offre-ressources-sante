Instance: ror-sp-temporality-capacity
InstanceOf: SearchParameter
Usage: #definition
* status = #active 
* name = "RORSPTemporalityCapacity"
* description = "Paramètre de recherche pour récupérer le moment où la capacité sera effective"
* code = #temporality-capacity
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ror-supported-capacity').extension(url='temporalityCapacity').valueCode"