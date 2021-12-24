acpi=`acpi`

percent=`acpi | cut -d',' -f 2 | sed s/%// | cut -c 2-`
state=`acpi | cut -d',' -f 1 | cut -c 12-`

if [ $state = "Charging" ]; then
    icon=""
elif [ $state = "Discharging" ]; then
    if [ $percent -gt 80 ]; then
        icon=""
    elif [ $percent -gt 60 ]; then
        icon=""
    elif [ $percent -gt 40 ]; then
        icon=""
    elif [ $percent -gt 20 ]; then
        icon=""
    else
        icon=""
    fi
elif [ $state = "Full" ]; then
    icon=""
else
    icon="?"
fi

echo "(box :orientation \"v\" :valign \"end\" :space-evenly false (label :text \"$percent\") (label :class \"siji\" :text \"$icon\") (label :text \"~\"))"
# icon="🔌"
# icon="🔋"
# icon="🪫"
# icon="💡"
