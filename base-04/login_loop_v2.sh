#!/bin/bash
# Base 4 – Controlled Access Script
# This script demonstrates controlled authentication logic using
# functions, a loop (command loop), exit codes, and progressive delays.
# The goal is to limit login attempts and discourage brute-force behavior.

# Valid credentials (defined once, used by the logic)
USER_OK="roy"
PASS_OK="1234"

# Maximum number of allowed attempts
max_attempts=3

# Counter for failed attempts
attempts=0

# Credential check function
# This function performs a logical check only.
# It does not print output — it returns a status code.
check_credentials() {
    local input_user="$1"
    local input_pass="$2"

    if [ "$input_user" = "$USER_OK" ] && [ "$input_pass" = "$PASS_OK" ]; then
        return 0   # Success
    else
        return 1   # Logical failure
    fi
}

# Main command loop
# Acts as the gatekeeper (threshold conditions) for system access
while [ "$attempts" -lt "$max_attempts" ]; do
    echo "Enter username:"
    read username

    echo "Enter password:"
    read -s password
    echo

    # Call the security function with user input
    if check_credentials "$username" "$password"; then
        echo "Access granted"
        exit 0
    else
        attempts=$((attempts + 1))
        echo "Access denied "

        # Progressive delay:
        # Minimal delay on first failure,
        # increasing non-linearly to slow down automated attacks
        sleep $((attempts ** 2 - 1))
    fi
done

# Reached maximum attempts
echo "  Access blocked."
exit 1

