#/bin/bash
#===========================================================================================================================================
#
#          FILE: awk_extract_lines.sh.sh
# 
# REQUIREMENTS: create all_input file that contains the name of the differents files (file1, file2, ..) that you want to extract lines. Here i=5=m means the beginning of the line and i<=NR-5 means the end of the lines in the each input file. Put this script in the same fold/directory with all_input file and diffrents files.
# AUTHOR: KANKİNOU SELONOU GAUTİER 
# CREATED: 25-04-2022 
#===========================================================================================================================================


while read -r file_name;
do

         awk '{l[NR] = $0} END {for (i=5; i<=NR-5; i++) print l[i]}' $file_name >>output_selonou.csv
done < all_input
