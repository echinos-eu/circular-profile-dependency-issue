// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: MyPatient
Parent: Patient
Description: "An example profile of the Patient resource."
* contained only MyPatientChild
* name 1..* MS

Profile: MyPatientChild
Parent: MyPatient
Description: "An example profile of the Patient resource."
* name 1..1 MS