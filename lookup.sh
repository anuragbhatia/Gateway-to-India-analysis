#!/bin/bash


# Simple bash script to dump routes belonging to Indian ASNs"


cat Indian-ASN.txt | while read asn

	do

	grep -w "$asn" rrc01.txt |grep -v "::" > Indian-Networks-IPv4-routes.txt
	grep -w "$asn" rrc01.txt |grep "::" > Indian-Networks-IPv6-routes.txt

	done


 
