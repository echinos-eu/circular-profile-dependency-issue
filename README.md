## Repo to demonstrate 2 Snapshot Generation Issues

- Circular Dependency:    
  Error generating Snapshot: Circular snapshot references detected; cannot generate snapshot (stack = [http://example.org/StructureDefinition/MyPatient]) (this usually arises from a problem in the differential)
- wrong type slice matching:    
  Error @ Medication.contained[0]/*Medication/TestChildInstance*/.ingredient[0].item.ofType(CodeableConcept).coding[0] (line 22, col16): This element is not allowed by the profile http://hl7.org/fhir/StructureDefinition/Reference|4.0.1    
  Error @ Medication.contained[0]/*Medication/TestChildInstance*/.ingredient[0].item.ofType(CodeableConcept) (line 20, col12): This element does not match any known slice  defined in the profile http://example.org/StructureDefinition/medicationChild and slicing is CLOSED: Medication.contained[0]/*Medication/TestChildInstance*/.ingredient[0].item.ofType(CodeableConcept): Does not match slice 'itemReference' (discriminator: $this.empty())    
  Error @ Medication.contained[0]/*Medication/TestChildInstance*/.ingredient[0].item.ofType(CodeableConcept) (line 19, col10): The Profile 'http://example.org/StructureDefinition/medicationChild' definition allows for the type Reference but found type CodeableConcept    

To reproduce:
java -jar ~/.fhir/validators/validator_cli.jar fsh-generated/resources -ig fsh-generated/resources
