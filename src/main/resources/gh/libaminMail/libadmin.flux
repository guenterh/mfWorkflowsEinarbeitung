"https://www.swissbib.ch/mapportal.json"|
//"https://'libadmin':'j$aHH#43'@admin.swissbib.ch/libadmin/api/formeta/green.formeta" |
open-http(encoding="UTF-8")|
//"/home/swissbib/Schreibtisch/green.formeta.txt" |
//open-file |
//as-formeta-records |
//decode-formeta|
read-json |
morph("/usr/local/swissbib/mfWorkflows/src/main/resources/gh/libadminMail/libadminMail.xml")|
split-entities|
//encode-formeta (style="multiline") |
//encode-literals |
encode-json |
write("mails.for.silvia.json");