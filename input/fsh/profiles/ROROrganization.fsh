Profile: ROROrganization
Parent: fr-organization
Id: ror-organization
Description: "Profil créé dans le cadre du ROR pour décrire les organismes du domaine sanitaire, médico-social et social immatriculés dans le FINESS et les organisations internes"

/* Références*/
* partOf only Reference(fr-organization or ROROrganization)

/* Données techniques */
* meta.lastUpdated 1..1
* meta.tag ^slicing.discriminator.type = #value
* meta.tag ^slicing.discriminator.path = "url"
* meta.tag ^slicing.rules = #open
* meta.tag ^slicing.description = "Slicing pour gérer le code région définissant la région source des données"
* meta.tag ^slicing.ordered = false
* meta.tag contains
    codeRegion 0..1
* meta.tag[codeRegion] from $JDV-J237-RegionOM-ROR (required)

/* Données fonctionnelles */
* name ^short = "raisonSociale (EJ) : Raison sociale complète de l'entité juridique"
* name.extension ^slicing.discriminator.type = #value
* name.extension ^slicing.discriminator.path = "url"
* name.extension ^slicing.rules = #open
* name.extension contains
    ROROrganizationAdditionalName named ror-organization-additional-name 0..1
* name.extension[ror-organization-additional-name] ^short = "complementRaisonSociale (EJ) : Suite de la raison sociale, si elle existe"

* alias ^slicing.discriminator.type = #value
* alias ^slicing.discriminator.path = "id"
* alias ^slicing.rules = #open
* alias contains   
    OIName 0..1 and
    denomination 0..1 and
    additionalDenomination 0..1 and
    operationalName 0..1
* alias[OIName] ^short = "nomOI (OI) : Nom de l'organisation interne"
* alias[OIName].id = "OIName"
* alias[denomination] ^short = "denominationEG (EG) : Nom sous lequel l'entité géographique exerce son activité"
* alias[denomination].id = "denomination"
* alias[additionalDenomination] ^short = "complementDenominationEG (EG) : Suite de la dénomination de l'entité géographique, si elle existe"
* alias[additionalDenomination].id = "additionalDenomination"
* alias[operationalName].id = "operationalName"
* alias[operationalName] ^short = "nomOperationnel (EG) : Appellation communément utilisée par les acteurs de santé pour désigner l'entité géographique"

* identifier 0..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #open
* identifier contains
    idNatStruct 0..1 and
    numFINESS 0..1 and
    numSIREN 0..1 and
    numero_cabinet_RPPS 0..1 and
    numSIRET 0..1 and 
    identifierOI 0..1 and
    numero_cabinet_ADELI 0..1
* identifier[idNatStruct] ^short = "idNatstruct (EJ + EG) : Identification nationale définie dans le CI-SIS"
* identifier[idNatStruct].type 1..1
* identifier[idNatStruct].type.coding.code = $TRE-G07-TypeIdentifiantStructure#40 
* identifier[numFINESS] ^short = "numFINESS (EJ + EG) : Numéro FINESS"
* identifier[numFINESS].type 1..1
* identifier[numFINESS].type.coding.code = $TRE-G07-TypeIdentifiantStructure#1 
* identifier[numSIREN] ^short = "numSIREN (EJ) : numéro unique d'identification attribué à chaque entreprise par l'INSEE"
* identifier[numSIREN].type 1..1
* identifier[numSIREN].type.coding.code = $TRE-G07-TypeIdentifiantStructure#2 
* identifier[numero_cabinet_RPPS] ^short = "numEJ_RPPS_ADELI_Rang ou numEG_RPPS_ADELI_Rang"
* identifier[numero_cabinet_RPPS].type 1..1
* identifier[numero_cabinet_RPPS].type.coding.code = $TRE-G07-TypeIdentifiantStructure#4
* identifier[numSIRET] ^short = "numSIRET (EG) : numéro unique d'identification, attribué par l'INSEE, à chaque entité géographique"
* identifier[numSIRET].type 1..1
* identifier[numSIRET].type.coding.code = $TRE-G07-TypeIdentifiantStructure#3
* identifier[identifierOI] ^short = "identifiantOI (OI) : Identifiant de l'organisation interne, unique et persistant au niveau national"
* identifier[identifierOI].type 1..1
* identifier[identifierOI].type.coding.code = $TRE-R345-TypeIdentifiantAutre#42
* identifier[numero_cabinet_ADELI] ^short = "numEJ_RPPS_ADELI_Rang ou numEG_RPPS_ADELI_Rang"
* identifier[numero_cabinet_ADELI].type 1..1
* identifier[numero_cabinet_ADELI].type.coding.code = $TRE-G07-TypeIdentifiantStructure#0

// Slice déjà défini dans FrOrganization
* type 0..* 
* type contains
    statutJuridiqueINSEE 0..1 and
    sousEnsembleAgregatStatutJuridique 0..1 and
    categorieEtablissement 0..1 and
    sphParticipation 0..1 and
    OIType 0..1 and
    fonctionLieu 0..1
* type[statutJuridiqueINSEE] ^short = "statutJuridique (EJ) : Situation juridique de l’établissement"
* type[statutJuridiqueINSEE] from $JDV-J199-StatutJuridique-ROR (required)
* type[sousEnsembleAgregatStatutJuridique] ^short = "sousEnsembleAgregatStatutJuridique (EJ) : Deuxième niveau dans l’arborescence des statuts juridiques"
* type[sousEnsembleAgregatStatutJuridique] from $JDV-J200-SousEnsembleAgregatStatutJuridique-ROR (required)
* type[categorieEtablissement] ^short = "categorieEG (EG) : Cadre réglementaire dans lequel s'exerce l'activité de l'entité géographique"
* type[categorieEtablissement] from $JDV-J55-CategorieEG-ROR (required)
* type[sphParticipation] ^short = "modaliteParticipationSPH (EG) : Modalités de participation au service public hospitalier"
* type[sphParticipation] from $JDV-J202-ESPIC-ROR (required)
* type[OIType] ^short = "typeOI (OI) : Type d'organisation interne"
* type[OIType] from $JDV-J203-TypeOrganisationInterne-ROR (required)

* contact.name ^short  = "Nom (Contact) : Un nom de la personne ou du service à contacter"
* contact.extension ^slicing.discriminator.type = #value
* contact.extension ^slicing.discriminator.path = "url"
* contact.extension ^slicing.rules = #open
* contact.extension contains
    RORContactFunctionContact named ror-contact-function-contact 0..1 and
    RORContactDescription named ror-contact-description 0..1 and
    RORContactConfidentialityLevel named ror-contact-confidentiality-level 0..1
* contact.extension[ror-contact-function-contact] ^short = "fonctionContact (Contact) : Un titre, une position ou une fonction de la personne assurant le contact au sein de l'organisation"
* contact.extension[ror-contact-description] ^short = "description (Contact) : Une description du contact"
* contact.extension[ror-contact-confidentiality-level] ^short = "niveauConfidentialite (Contact) : Niveau de restriction de l'accès aux attributs de la classe Contact"
* contact.purpose ^short = "natureContact (Contact) : Un service ou un guichet assurant le contact au sein de l'organisation"
* contact.purpose from $JDV-J221-NatureContact-ROR (required)
* contact.telecom.value 1..1
* contact.telecom.value ^short = "adresseTelecom (Telecommunication) : Valeur de l'adresse de télécommunication dans le format induit par le canal de communication"
* contact.telecom.extension ^slicing.discriminator.type = #value
* contact.telecom.extension ^slicing.discriminator.path = "url"
* contact.telecom.extension ^slicing.rules = #open
* contact.telecom.extension contains
    RORTelecomConfidentialityLevel named ror-telecom-confidentiality-level 1..1 and
    RORTelecomUsage named ror-telecom-usage 0..1 and
    RORTelecomCommunicationChannel named ror-telecom-communication-channel 1..1
* contact.telecom.extension[ror-telecom-communication-channel] ^short = "Canal (Telecommunication) : Code spécifiant le canal ou la manière dont s'établit la communication"
* contact.telecom.extension[ror-telecom-usage] ^short = "utilisation (Telecommunication) : Utilisation du canal de communication"
* contact.telecom.extension[ror-telecom-confidentiality-level] ^short = "niveauConfidentialite (Telecommunication) : Niveau de restriction de l'accès aux attributs de la classe Télécommunication"

* address ^short = "adresseEJ (EJ) : Adresse géopostale du siège de l'entité juridique"
* address.postalCode ^short = "codePostal (Adresse) : Code Postal ou code postal spécifique CEDEX"
* address.city ^short = "localité (Adresse) : Localité ou Libellé du bureau distributeur CEDEX"
* address.extension ^slicing.discriminator.type = #value
* address.extension ^slicing.discriminator.path = "url"
* address.extension ^slicing.rules = #open
* address.extension[inseeCode] ^sliceName = "inseeCode"
* address.extension[inseeCode].valueCoding from $JDV-J230-CommuneOM-ROR (required)
* address.extension contains
    RORCalculatedDistance named ror-calculated-distance 0..1
* address.extension[ror-calculated-distance] ^short = "Eloignement calculé"
* address.line.extension contains
    iso21090-ADXP-careOf named careOf 0..1 and
    iso21090-ADXP-additionalLocator named additionalLocator 0..1 and
    iso21090-ADXP-houseNumber named houseNumber 0..1 and
    iso21090-ADXP-buildingNumberSuffix named buildingNumberSuffix 0..1 and
    iso21090-ADXP-streetNameType named streetNameType 0..1 and
    iso21090-ADXP-streetNameBase named streetNameBase 0..1 and
    iso21090-ADXP-streetNameBase named streetNameHamlet 0..1 and
    iso21090-ADXP-postBox named postalBox 0..1
* address.line.extension[careOf] ^short = "pointRemise (Adresse)"
* address.line.extension[additionalLocator] ^short = "complementPointGeographique (Adresse)"
* address.line.extension[houseNumber] ^short = "numeroVoie(Adresse)"
* address.line.extension[buildingNumberSuffix] ^short = "(Adresse)"
* address.line.extension[streetNameType] ^short = "typeVoie (Adresse)"
* address.line.extension[streetNameType].valueString from $JDV-J219-TypeVoie-ROR (required)
* address.line.extension[streetNameBase] ^short = "libelleVoie (Adresse)"
* address.line.extension[streetNameHamlet] ^short = "lieuDit (Adresse)"
* address.line.extension[postalBox] ^short = "mentionDistribution (Adresse)"

* telecom.value 1..1
* telecom ^short = "boiteLettreMSS (OffreOperationnelle) : Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à l’organisation interne"
* telecom.value 1..1
* telecom.value ^short = "adresseTelecom (Telecommunication) : Valeur de l'adresse de télécommunication dans le format induit par le canal de communication"
* telecom.extension ^slicing.discriminator.type = #value
* telecom.extension ^slicing.discriminator.path = "url"
* telecom.extension ^slicing.rules = #open
* telecom.extension contains 
    RORTelecomCommunicationChannel named ror-telecom-communication-channel 1..1 and
    RORTelecomUsage named ror-telecom-usage 0..1 and
    RORTelecomConfidentialityLevel named ror-telecom-confidentiality-level 1..1
* telecom.extension[ror-telecom-communication-channel] ^short = "canal (Telecommunication) : Code spécifiant le canal ou la manière dont s'établit la communication"
* telecom.extension[ror-telecom-usage] ^short = "utilisation (Telecommunication) : Utilisation du canal de communication"
* telecom.extension[ror-telecom-confidentiality-level] ^short = "niveauConfidentialite (Telecommunication) : Niveau de restriction de l'accès aux attributs de la classe Télécommunication"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    ROROrganizationPrice named ror-organization-price 0..* and
    RORTerritorialDivision named ror-territorial-division 0..* and
    ROROrganizationFinancialHelpType named ror-organization-financial-help-type 0..* and
    ROROrganizationAccomodationFamily named ror-organization-accomodation-family 0..1 and
    ROROrganizationNbPermanentSocialHelpPlace named ror-organization-nb-permanent-social-help-place 0..1 and
    ROROrganizationNbTemporarySocialHelpPlace named ror-organization-nb-temporary-social-help-place 0..1 and
    ROROrganizationAccessibilityLocation named ror-organization-accessibility-location 0..1 and
    ROROrganizationLevelRecourseORSAN named ror-organization-level-recourse-orsan 0..1 and
    ROROrganizationDropZone named ror-organization-drop-zone 0..1 and
    ROROrganizationReopeningDate named ror-organization-reopening-date 0..1 and
    ROROrganizationCreationDate named ror-organization-creation-date 0..1 and
    ROROrganizationClosingType named ror-organization-closing-type 0..1 and
    organization-period named organization-period 0..1 and
    RORMetaComment named ror-meta-comment 0..1 and
    RORMetaCreationDate named ror-meta-creation-date 1..1 and 
    ROROrganizationComment named ror-organization-comment 0..1
* extension[ror-organization-price] ^short = "Tarif"
* extension[ror-territorial-division] ^short = "territoireSante (EG) : Territoire(s) de santé où est située l'entité géographique"
* extension[ror-organization-financial-help-type] ^short = "aideFinanciere (EG) : Aide financière pour laquelle l'EG dispose d'une habilitation ou conventionnement"
* extension[ror-organization-accomodation-family] ^short = "hebergementFamille (EG) : Indique si l'établissement peut héberger les familles des personnes prises en charge"
* extension[ror-organization-nb-permanent-social-help-place] ^short = "nbPlaceAideSocialTemporaire (EG) : nombre de places temporaires dédiées à l'aide sociale dans l'établissement"
* extension[ror-organization-nb-temporary-social-help-place] ^short = "nbPlaceAideSocialPermanent (EG) : nombre de places permanentes dédiées à l'aide sociale dans l'établissement"
* extension[ror-organization-accessibility-location] ^short = "accessibiliteLieu (EG) : Précise dans quelle mesure les locaux sont conformes aux dispositions règlementaires relatives à l’accessibilité des établissements recevant du public"
* extension[ror-organization-level-recourse-orsan] ^short = "niveauRecoursORSAN (EG) : Hiérarchisation fonctionnelle de la mobilisation des établissements pour accueillir les patients après régulation par le SAMU"
* extension[ror-organization-drop-zone] ^short = "zonePoser (EG) : Précise l’existence d’une zone de poser pour hélicoptère sur le site concerné"
* extension[ror-organization-reopening-date] ^short = "datePrevisionnelleReouverture (OI)"
* extension[ror-organization-creation-date] ^short = "dateCreation (EJ) : Date de création de l'entité juridique"
* extension[ror-organization-closing-type] ^short = "typeFermeture (EJ + EG + OI) : Date prévisionnelle à partir de laquelle la prestation sera de nouveau assurée"
* extension[organization-period] ^short = "dateOuverture (EJ + OI) + dateFermeture (EJ + EG + OI)"
* extension[ror-meta-comment] ^short = "commentaire (Metadonnee)"
* extension[ror-meta-creation-date] ^short = "dateCreation (Metadonnee)"
* extension[ror-organization-comment] ^short = "commentaire (EG) : Commentaire qui permet à la structure de donner des informations complémentaires"
