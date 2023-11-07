; Sample patient information
(deftemplate patient
  (slot name (type STRING) (default "Unknown"))
  (slot age (type INTEGER) (default unknown))
  (slot gender (type SYMBOL) (default unknown))
  (slot sexual-activity (type SYMBOL) (default unknown))
  (slot pregnancies (type INTEGER) (default unknown))
  (slot first-intercourse-age (type INTEGER) (default unknown))
)

; Sample data for patient information
(deffacts initial-patient-data
  (patient (name "Alice") (age 30) (gender female) (sexual-activity yes) (pregnancies 2) (first-intercourse-age 18))
  (patient (name "Eve") (age 28) (gender female) (sexual-activity yes) (pregnancies 1) (first-intercourse-age 20))
  (patient (name "Charlie") (age 35) (gender male) (sexual-activity no))
)

; Define more facts with patient information and symptoms

; Example of a patient with symptoms
(deffacts patient-with-symptoms
  (patient (name "Bob") (age 25) (gender female) (sexual-activity yes) (pregnancies 0) (first-intercourse-age 22))
  (symptom (name "Bob") (type bleeding-between-periods))
  (symptom (name "Bob") (type pelvic-pain))
  (symptom (name "Bob") (type unusual-vaginal-discharge))
  ; Add more symptoms here
)

; Define risk factors for cervical cancer
(deffacts risk-factors
  (risk (name "Alice") (type smoking))
  (risk (name "Alice") (type HPV-infection))
  (risk (name "Eve") (type family-history))
  (risk (name "Charlie") (type none))
  ; Add more risk factors here
)
