#!/bin/bash
echo "Welcome to the Enhanced Medical Expert System"
echo "Enter your symptoms separated by commas (fever, sore_throat, cough, headache, cold, stomach_pain, fatigue, nausea):"
read symptoms

# Convert to lowercase for case-insensitive matching
symptoms_lower=$(echo "$symptoms" | tr '[:upper:]' '[:lower:]')

echo ""
echo "Medical Recommendations:"
echo "========================="

# Initialize counter for recommendations
recommendation_count=0

if [[ "$symptoms_lower" == *"fever"* ]]; then
    echo " Take fever reducer medication (paracetamol/ibuprofen)"
    echo "  - Monitor temperature every 4 hours"
    echo "  - Stay hydrated with water and electrolytes"
    ((recommendation_count++))
fi

if [[ "$symptoms_lower" == *"sore_throat"* ]]; then
    echo " Gargle with warm saltwater 3 times daily"
    echo "  - Use throat lozenges for temporary relief"
    echo "  - Avoid cold drinks and smoking"
    ((recommendation_count++))
fi

if [[ "$symptoms_lower" == *"cough"* ]]; then
    echo " Drink warm fluids like tea with honey"
    echo "  - Use cough syrup as directed"
    echo "  - Use a humidifier in your room"
    ((recommendation_count++))
fi

if [[ "$symptoms_lower" == *"headache"* ]]; then
    echo " Rest in a dark, quiet room"
    echo "  - Apply cold compress to forehead"
    echo "  - Consider pain relief medication if severe"
    ((recommendation_count++))
fi

if [[ "$symptoms_lower" == *"cold"* ]]; then
    echo " Get plenty of rest and sleep"
    echo "  - Use saline nasal spray for congestion"
    echo "  - Take vitamin C supplements"
    ((recommendation_count++))
fi

if [[ "$symptoms_lower" == *"stomach_pain"* ]]; then
    echo " Avoid solid foods for few hours"
    echo "  - Drink clear fluids (water, broth)"
    echo "  - Apply warm compress to abdomen"
    ((recommendation_count++))
fi

if [[ "$symptoms_lower" == *"fatigue"* ]]; then
    echo " Ensure 7-8 hours of quality sleep"
    echo "  - Maintain balanced diet with iron-rich foods"
    echo "  - Practice light exercise like walking"
    ((recommendation_count++))
fi

if [[ "$symptoms_lower" == *"nausea"* ]]; then
    echo " Drink ginger tea or peppermint tea"
    echo "  - Eat small, frequent meals"
    echo "  - Avoid strong smells and fatty foods"
    ((recommendation_count++))
fi

echo "========================="
if [ $recommendation_count -eq 0 ]; then
    echo "No specific symptoms recognized."
    echo "General Advice: Consult a healthcare professional for proper diagnosis."
else
    echo "Total recommendations provided: $recommendation_count"
    echo "Note: If symptoms persist for more than 3 days, consult a doctor."
fi


