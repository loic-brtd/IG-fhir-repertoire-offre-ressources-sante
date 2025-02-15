Extension: ROROrganizationPrice
Id: ror-organization-price
Description: "Extension créée dans le cadre du ROR pour permettre de définir les tarifs des prestations et services d'une entité géographique."
* ^context.type = #element
* ^context.expression = "Organization"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    priceType 1..1 and
    priceUnit 1..1 and
    amount 1..1 and
    startDate 0..1 and
    under60 1..1 and
    deliveryIncluded 0..* and
    othersDeliveryIncluded 0..* and
    residentialType 1..1 and
    specialPrice 0..1 and
    welcomeType 1..1 and
    mealDeliveryName 0..1 and
    dependencyLevel 1..1 and
    humanHelpPriceName 0..1 and
    managementType 1..1 and
    otherAdditionalServiceName 1..1 and
    additionalServiceName 0..1
* extension[priceType].value[x] only CodeableConcept
* extension[priceType].valueCodeableConcept from $JDV-J36-TypeTarif-ROR (required)
* extension[priceUnit].value[x] only CodeableConcept
* extension[priceUnit].valueCodeableConcept from $JDV-J205-UnitePrix-ROR (required)
* extension[amount].value[x] only Money
* extension[startDate].value[x] only dateTime
* extension[under60].value[x] only boolean
* extension[deliveryIncluded].value[x] only CodeableConcept
* extension[deliveryIncluded].valueCodeableConcept from $JDV-J206-PrestationNonObligatoireIncluse-ROR (required)
* extension[othersDeliveryIncluded].value[x] only string
* extension[residentialType].value[x] only CodeableConcept
* extension[residentialType].valueCodeableConcept from $JDV-J32-TypeHabitation-ROR (required)
* extension[specialPrice].value[x] only CodeableConcept
* extension[specialPrice].valueCodeableConcept from $JDV-J39-ConditionTarifaire-ROR (required)
* extension[welcomeType].value[x] only CodeableConcept
* extension[welcomeType].valueCodeableConcept from $JDV-J30-TemporaliteAccueil-ROR (required)
* extension[mealDeliveryName].value[x] only string
* extension[dependencyLevel].value[x] only CodeableConcept
* extension[dependencyLevel].valueCodeableConcept from $JDV-J27-GroupeTarifaireDependance-ROR (required)
* extension[humanHelpPriceName].value[x] only string
* extension[managementType].value[x] only CodeableConcept
* extension[managementType].valueCodeableConcept from $JDV-J26-ModeGestion-ROR (required)
* extension[otherAdditionalServiceName].value[x] only string 
* extension[additionalServiceName].value[x] only CodeableConcept
* extension[additionalServiceName].valueCodeableConcept from $JDV-J206-PrestationNonObligatoireIncluse-ROR (required)
