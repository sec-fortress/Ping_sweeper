#!/bin/bash

if [ "$1" == "" ]
then
    echo "You forgot an IP address!"
    echo "Syntax: ./ipsweep.sh 192.168.7"
    echo "//xD"
else
    output_file="ipsweep.txt"
    
    echo "Running IP sweep..."
    
    # Perform IP sweep and save the output to a text file
    for host in $(seq 1 254); do
        ping -c 1 $1.$host | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" >> "$output_file" &
    done
    
    wait # Wait for all background processes to finish
    
    echo "IP sweep completed. Results saved to $output_file"
    
    echo "Displaying IP sweep results:"
    
    # Display the contents of the output file
    cat "$output_file"
    
    echo "Running Nmap scan on all IP addresses..."
    
    # Perform an Nmap scan on all IP addresses from the output file and print the results to the screen
    nmap -iL "$output_file" -sCV -T4 -v 
    
    echo "Nmap scan completed."
fi
