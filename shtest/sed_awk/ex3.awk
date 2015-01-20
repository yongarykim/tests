BEGIN {
	printf "%-22s%s\n", "NAME", "DISTRICT"
	print "-----------------------------------------------"
}
/west/{count++}
{printf "%s %s\t\t%-15s\n", $3, $4, $1 | "sort +1"}
END {
	close "sort +1"
	printf " The number of sales persons in the western"
	printf "region is "count"."}
