Instance: ror-sp-capacity-update-date
InstanceOf: SearchParameter
Usage: #definition
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-capacity-update-date"
* name = "RORSPCapacityUpdateDate"
* status = #active
* description = "Paramètre de recherche pour récupérer la date à jour de la capacité"
* code = #capacity-update
* base = #Location
* type = #date
* expression = "Location.extension.where(url='http://esante.gouv.fr/fhir/ror/StructureDefinition/ror-supported-capacity').extension(url='CapacityUpdateDate').valueDateTime"