#!/bin/bash

PS3="Please select an option (1-5): "

select option in "Show date" "Show calendar" "Show disk usage" "Show memory" "Exit"
do
    case $REPLY in
        1)
            echo "Current date and time: $(date)"
            ;;
        2)
            echo "Current month calendar:"
            cal
            ;;
        3)
            echo "Disk usage:"
            df -h
            ;;
        4)
            echo "Memory information:"
            free -h
            ;;
        5)
            echo "Goodbye!"
            break
            ;;
        *)
            echo "Invalid option!"
            ;;
    esac
    echo ""
done

