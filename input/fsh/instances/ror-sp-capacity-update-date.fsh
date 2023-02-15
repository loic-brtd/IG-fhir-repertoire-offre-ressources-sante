Instance: ror-sp-capacity-update-date
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPCapacityUpdateDate"

* date = "2023-01-12T14:27:51+01:00"

* description = "Paramètre de recherche pour récupérer la date à jour de la capacité"
* code = #capacity-update
* base = #Location
* type = #date
* expression = "Location.extension.where(url='http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ror-supported-capacity').extension(url='CapacityUpdateDate').valueDateTime"