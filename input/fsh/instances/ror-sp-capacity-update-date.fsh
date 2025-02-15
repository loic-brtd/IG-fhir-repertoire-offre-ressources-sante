Instance: ror-sp-capacity-update-date
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPCapacityUpdateDate"
* description = "Paramètre de recherche pour récupérer la date à jour de la capacité"
* code = #capacity-update-date
* base = #Location
* type = #date
* expression = "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity').extension(url='capacityUpdateDate').valueDateTime"
