  read -p "Enter your name: " name          # Prompt with input
  read -s -p "Password: " pass             # Silent input (for passwords)
  read -t 10 -p "Quick response: " answer  # Timeout after 10 seconds
  read -n 1 -p "Continue? (y/n): " choice  # Read single character
  
