#!/bin/bash
# dateformat dd-mm-yyyy

website=$CLOCKWISE'/'
logincw=$website'/index.php?naam='$USERNAME'&wwoord='$PASSWORD'&inlogknop=Login'
enddate=$1
startdate=$2
curl --cookie-jar cookies.txt $logincw -H 'Connection: keep-alive' -H 'Cookie: PHPSESSID=iq85ttuk9a6he4negaa5m7fsq6; CWLOGINID=0'
excel=$website'rapportages/querywizzard.php?versturen=versturen&f%5Bstatus%5D=A&f%5Btijdseenheid%5D=uur&5Bgem_tarief%5D=ja&f%5Borganisatieid%5D=158&f%5Bper_periode%5D=per_maand&f%5Bper_projectsoort%5D=ja&f%5Bper_resource%5D=ja&f%5Bprint_export%5D=ja&f%5Bprint_projectmanager%5D=ja&f%5Bprint_projectsoort%5D=ja&f%5Bprint_resource_uren%5D=ja&f%5Bprint_urenstatus%5D=ja&f%5Bprint_weeknr%5D=ja&f%5Bspecificatie%5D=onfacturabel&f%5Bstruct_s%5D=ja&f%5Btarief%5D=ja&f%5Btariefnaam%5D=ja&cwtblexport=1&cwtblexport_type=xlsx&cwtblexport_name=table.xlsx'
curl -s -b cookies.txt $excel -o clockwise.xlsx
vd clockwise.xlsx
rm clockwise.xlsx
rm cookies.txt
