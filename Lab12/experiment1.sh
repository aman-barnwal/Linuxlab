#!/bin/bash
echo "Welcome to the Medical Expert System"
echo "Enter your symptoms (fever, sore_throat, cough, headache, cold, stomach_pain):"
read symptoms

if [[ "$symptoms" == *"fever"* ]]; then
    echo "Recommendation: Take fever reducer medication and rest."
fi
if [[ "$symptoms" == *"sore_throat"* ]]; then
    echo "Recommendation: Gargle with warm saltwater and stay hydrated."
fi
if [[ "$symptoms" == *"cough"* ]]; then
    echo "Recommendation: Drink warm fluids and take cough syrup."
fi
if [[ "$symptoms" == *"headache"* ]]; then
    echo "Recommendation: Rest in a quiet room and consider pain relief medication."
fi
if [[ "$symptoms" == *"cold"* ]]; then
    echo "Recommendation: Get plenty of rest and use decongestants if needed."
fi
if [[ "$symptoms" == *"stomach_pain"* ]]; then
    echo "Recommendation: Avoid solid foods initially and drink clear fluids."
fi

if [[ "$symptoms" != *"fever"* && "$symptoms" != *"sore_throat"* && "$symptoms" != *"cough"* && "$symptoms" != *"headache"* && "$symptoms" != *"cold"* && "$symptoms" != *"stomach_pain"* ]]; then
    echo "General Recommendation: Consult a doctor for accurate diagnosis."
fi

