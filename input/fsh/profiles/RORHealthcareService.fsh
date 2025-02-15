Profile: RORHealthcareService
Parent: HealthcareService
Id: ror-healthcareservice
Description: "Profil créé dans le cadre du ROR pour décrire les prestations que peut réaliser une structure et qui permettent de répondre au besoin de santé d'une personne"

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
* identifier 1..1
* identifier ^short = "identifiantOffre (OffreOperationnelle) : Identifiant de l'offre, unique et persistant au niveau national"
* name ^short = "nomOffre (OffreOpérationnelle) : Dénomination sous laquelle l'offre est identifiée par le porteur d'offre"
* category 0..1
* category ^short = "typeOffre (OffreOperationnelle) : Permet de distinguer les offres et de les classer en fonction de leur nature particulière"
* category from $JDV-J238-TypeOffre-ROR (required)
* type 1..1
* type ^short = "champActivite (OffreOperationnelle) : Domaine dans lequel s'inscrit l'offre"
* type from $JDV-J20-ChampActivite-ROR (required)
* comment ^short = "commentaire (Metadonnee) : Commentaire qui peut être associé à chaque objet"

* availableTime 0..1
* availableTime ^short = "horaire (OffreOperationnelle) : heureDebut + heureFin"
* availableTime.extension ^slicing.discriminator.type = #value
* availableTime.extension ^slicing.discriminator.path = "url"
* availableTime.extension ^slicing.rules = #open
* availableTime.extension contains
    RORAvailableTimeTypeOfTime named ror-available-time-type-of-time 0..1 and 
    RORAvailableTimeEffectiveOpeningClosingDate named ror-available-time-effective-opening-closing-date 0..1 and
    RORAvailableTimeNumberDaysofWeek named ror-available-time-number-days-of-week 0..1
* availableTime.extension[ror-available-time-type-of-time] ^short = "typePlageHoraire (Horaire) : apporte un contexte à la plage horaire définie par la suite"
* availableTime.extension[ror-available-time-effective-opening-closing-date] ^short = "debutDateEffective + finDateEffective (Horaire)"
* availableTime.extension[ror-available-time-number-days-of-week] ^short = "jourSemaine (Horaire) : Numéro du jour dans la semaine"

* telecom.value 1..1
* telecom ^short = "boiteLettreMSS (OffreOperationnelle) : Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à l’offre opérationnelle"
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

* characteristic 1..*
* characteristic ^slicing.discriminator.type = #value
* characteristic ^slicing.discriminator.path = "url"
* characteristic ^slicing.rules = #open
* characteristic contains
    receptionType 0..1 and
    careMode 1..1 and
    receptionModality 0..* and
    managementType 0..* and
    specificAct 0..* and
    outsideOfficeAct 0..* and
    takingCareSpeciality 0..* and
    annualOpening 0..1 and
    ressourceProfession 0..* and
    specificCompetence 0..* and
    expertiseLevel 0..* and
    temporalityStopService 0..1
* characteristic[receptionType] ^short = "temporaliteAccueil (OffreOperationnelle) : Précision sur le mode de prise en charge"
* characteristic[receptionType] from $JDV-J30-TemporaliteAccueil-ROR (required)
* characteristic[careMode] ^short = "modePriseEnCharge (OffreOperationnelle) : Caractérise l'hébergement ainsi que le niveau de technicité et d'intensité des soins"
* characteristic[careMode] from $JDV-J19-ModePriseEnCharge-ROR (required)
* characteristic[receptionModality] ^short = "modaliteAccueil (OffreOperationnelle) : Permet de préciser le mode de prise en charge géographiquement"
* characteristic[receptionModality] from $JDV-J226-ModaliteAccueil-ROR (required)
* characteristic[managementType] ^short = "modeGestion (OffreOperationnelle) : Mode d’intervention des aides à domicile en fonction de la nature de la relation contractuelle"
* characteristic[managementType] from $JDV-J26-ModeGestion-ROR (required)
* characteristic[specificAct] ^short = "acteSpecifique (OffreOperationnelle) : Action menée par un ou plusieurs acteur(s) de santé dans le cadre d’une activité"
* characteristic[specificAct] from $JDV-J16-ActeSpecifique-ROR (required)
* characteristic[outsideOfficeAct] ^short = "acteRealiseHorsCabinet (OffreOperationnelle) : Permet de décrire l’offre de santé des médecins libéraux réalisée en dehors du cabinet, au sein d’un établissement"
* characteristic[outsideOfficeAct] from $JDV-J16-ActeSpecifique-ROR (required)
* characteristic[takingCareSpeciality] ^short = "specialisationPriseEnCharge (OffreOperationnelle) : Regroupement de troubles, de pathologies ou de déficiences qui nécessitent la mobilisation d'expertises, de compétences et/ou d'équipements spécifiques"
* characteristic[takingCareSpeciality] from $JDV-J35-SpecialisationDePriseEnCharge-ROR (required)
* characteristic[annualOpening] ^short = "ouvertureAnnuelle (OffreOperationnelle) : Nombre de jours maximum dans l’année au cours desquels la prestation peut être proposée par l'établissement"
* characteristic[annualOpening] from $JDV-J28-OuvertureAnnuelle-ROR (required)
* characteristic[ressourceProfession] ^short = "professionRessource (OffreOperationnelle) : Traduit la mobilisation de métiers qui constituent un facteur différenciant dans la réalisation de la prestation"
* characteristic[ressourceProfession] from $JDV-J186-ProfessionRessource-ROR (required)
* characteristic[specificCompetence] ^short = "competenceSpecifique (OffreOperationnelle) : Capacité ou connaissance reconnue qui permet ou facilite l’accueil d’une personne"
* characteristic[specificCompetence] from $JDV-J33-CompetenceSpecifique-ROR (required)
* characteristic[expertiseLevel] ^short = "niveauExpertise (OffreOperationnelle) : Niveau de ressources humaines et matérielles engagées dans la réalisation de l'offre"
* characteristic[expertiseLevel] from $JDV-J227-NiveauExpertise-ROR (required)
* characteristic[temporalityStopService] ^short = "typeFermeture (OffreOperationnelle) : Temporalité d'arrêt de réalisation de la prestation"
* characteristic[temporalityStopService] from $JDV-J185-TypeFermeture-ROR (required)

* specialty 1..*
* specialty ^slicing.discriminator.type = #value 
* specialty ^slicing.discriminator.path = "url" 
* specialty ^slicing.rules = #open
* specialty contains
    operationalActivity 1..1 and
    operationalActivityFamily 0..1
* specialty[operationalActivity] ^short = "activiteOperationnelle (ActiviteOperationnelle) : ensemble cohérent d’actions et de pratiques mises en œuvre pour répondre aux besoins en Santé de la personne"
* specialty[operationalActivity] from $JDV-J17-ActiviteOperationnelle-ROR
* specialty[operationalActivityFamily] ^short = "familleActiviteOperationnelle (ActiviteOperationnelle) : regroupement cohérent d’activités délivrées dans le cadre d'une prestation, répondant à un besoin de la personne"
* specialty[operationalActivityFamily] from $JDV-J51-FamilleActiviteOperationnelle-ROR

* notAvailable ^slicing.discriminator.type = #value 
* notAvailable ^slicing.discriminator.path = "url" 
* notAvailable ^slicing.rules = #open
* notAvailable contains
    closingDate 0..1 and
    previsionalReopeningDate 0..1
* notAvailable[closingDate] ^short = "dateFermeture (OffreOperationnelle) : Date effective à partir de laquelle la prestation n'est plus assurée"
* notAvailable[previsionalReopeningDate] ^short = "DatePrevisionnelleReouverture (OffreOperationnelle) : date prévisionnelle à partir de laquelle la prestation sera de nouveau assurée"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    RORTerritorialDivision named ror-territorial-division 0..* and
    RORHealthcareServiceSensitiveUnit named ror-healthcareservice-sensitive-unit 1..1 and
    RORHealthcareServiceNoConsentHabilitation named ror-healthcareservice-no-consent-habilitation 0..1 and
    RORHealthcareServicePsychiatricSector named ror-healthcareservice-psychiatric-sector 0..* and
    RORCalculatedDistance named RORCalculatedDistance 0..1 and
    RORHealthcareServicePatientType named ror-healthcareservice-patient-type 1..1 and
    RORHealthcareServiceContact named ror-healthcareservice-contact 0..* and
    RORMetaCreationDate named ror-meta-creation-date 1..1
* extension[ror-territorial-division] ^short = "zoneIntervention (OffreOperationnelle) : Périmètre géographique dans lequel habitent les personnes pouvant être prises en charge pour la prestation décrite"
* extension[ror-healthcareservice-sensitive-unit] ^short = "uniteSensible (OffreOperationnelle) : Permet de signaler que toutes les informations de description d'une offre sont confidentielles"
* extension[ror-healthcareservice-no-consent-habilitation] ^short = "habilitationAuxSoinsSansConsentement (OffreOperationnelle) : permet d'identifier les offres pour lesquelles un établissement est autorisé à prendre en charge des patients sans leur consentement"
* extension[ror-healthcareservice-psychiatric-sector] ^short = "secteurPsychiatrique (OffreOperationnelle) : aire géographique à laquelle sont rattachées des structures de relais et de soins qui prennent en charge des patients résidants sur ce secteur"
* extension[ror-healthcareservice-patient-type] ^short = "publicPrisEnCharge (Patientele) : Ensemble de personnes qui présentent des caractéristiques psychologiques, intellectuelles, physiques, psycho-motrices, comportementales leur permettant de bénéficier de la prestation décrite"
* extension[ror-healthcareservice-contact] ^short = "contact (OffreOperationnelle) : Personne ou service qui agit comme point de contact auprès d'une autre personne ou d'un autre service"
* extension[ror-meta-creation-date] ^short = "dateCreation (Metadonnee)"
