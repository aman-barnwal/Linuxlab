  PS3="Select option: "
  select option in "Start" "Stop" "Status" "Exit"
  do
      case $REPLY in
          1) echo "Starting...";;
          2) echo "Stopping...";;
          3) echo "Status: Running";;
          4) break;;
          *) echo "Invalid option";;
      esac
  done
  
