# Ping_sweeper

# IP Sweep and Nmap Scan Script

This script performs an IP sweep and an Nmap scan on a range of IP addresses, The **ipsweep.sh** performs only an ip sweep while **ipsweep_upg.sh** performs a port scan using nmap.
You can tweak it, to your desired results!!

## Prerequisites

- Bash shell
- Nmap

## Usage

```bash
./ipsweep.sh <IP-address-prefix>
```
Replace <IP-address-prefix> with the first three octets of the IP address range you want to scan.

For example, to scan the range 192.168.7.1 to 192.168.7.254, run:
`./ipsweep.sh 192.168.7` OR `ipsweep_upg.sh 192.168.7`
  
The script will save the IP sweep results to a file called ipsweep.txt and perform an Nmap scan on all the discovered IP addresses.

Output
The IP sweep results will be displayed on the screen and saved to the ipsweep.txt file. The Nmap scan results will be printed to the screen.

Disclaimer
Use this script responsibly and only on networks you have permission to scan.
  
