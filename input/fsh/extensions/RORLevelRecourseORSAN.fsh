Extension: RORLevelRecourseORSAN
Id: ror-level-recours-orsan
Description: "Extension créée dans le cadre du ROR pour décrire une hiérarchisation fonctionnelle de la mobilisation des établissements pour accueillir les patients après régulation par le SAMU."
* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only CodeableConcept
* value[x] from $JDV-J204-NiveauRecoursORSAN-ROR (required)