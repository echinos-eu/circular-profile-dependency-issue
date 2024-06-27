Profile: MedicationProfile
Parent: Medication
Id: medication
* contained only MedicationProfile
* ingredient MS
  // * item[x] 1..1 MS
  // * itemCodeableConcept MS
  // * itemReference MS
  * itemReference only Reference(Medication)

Profile: MedicationProfileChild
Parent: MedicationProfile
Id: medicationChild
* ingredient
  * itemReference 0..0

Instance: TestInstance
InstanceOf: MedicationProfile
Usage: #example
* contained[+] = TestChildInstance
* ingredient[+].itemReference = Reference(TestChildInstance)

Instance: TestChildInstance
InstanceOf: MedicationProfileChild
Usage: #inline
* ingredient[+]
  * itemCodeableConcept
    * coding = http://test.de/CodeSystem#R01AC01 "Natriumcromoglicat"