#!/bin/bash
# Complete example integrating all three concepts

# Interactive user input
read -p "Enter customer ID: " customer_id

# Input validation
if [[ ! "$customer_id" =~ ^[0-9]+$ ]]; then
    echo "Error: Invalid customer ID"
    exit 1
fi

# Parse and process data from database
result=$(mysql -u root -p -N -e "
    SELECT o.order_id, p.product_name, o.quantity 
    FROM orders o 
    JOIN products p ON o.product_id = p.id 
    WHERE o.customer_id = $customer_id
" sales_db)

# Process the data
echo "Customer $customer_id Order History:"
echo "$result" | awk '{printf "Order: %-6s Product: %-20s Qty: %s\n", $1, $2, $3}'

