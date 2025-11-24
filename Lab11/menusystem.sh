#!/bin/bash

# Function definitions
show_date() {
    echo "Current date and time: $(date)"
}

show_calendar() {
    echo "Current month calendar:"
    cal
}

show_disk_usage() {
    echo "Disk usage:"
    df -h
}

show_memory_info() {
    echo "Memory information:"
    free -h
}

# Main menu
while true; do
    echo ""
    echo "=== SYSTEM INFORMATION MENU ==="
    echo "1. Show current date and time"
    echo "2. Show calendar"
    echo "3. Show disk usage"
    echo "4. Show memory information"
    echo "5. Exit"
    echo ""
    
    read -p "Please select an option (1-5): " choice
    
    case $choice in
        1)
            show_date
            ;;
        2)
            show_calendar
            ;;
        3)
            show_disk_usage
            ;;
        4)
            show_memory_info
            ;;
        5)
            echo "Goodbye!"
            break
            ;;
        *)
            echo "Invalid option! Please enter a number between 1-5."
            ;;
    esac
    
    read -p "Press Enter to continue..."
    clear
done

