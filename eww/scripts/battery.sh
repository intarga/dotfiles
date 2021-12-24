acpi=`acpi`

percent=`acpi | cut -d',' -f 2 | sed s/%// | cut -c 2-`
state=`acpi | cut -d',' -f 1 | cut -c 12-`

if [ $state = "Charging" ]; then
    icon="🔌"
elif [ $state = "Discharging" ]; then
    icon="🔋"
    if [ $percent -lt 10 ]; then
        icon="🪫"
    fi
elif [ $state = "Charged" ]; then
    icon="💡"
else
    icon="?"
fi

echo "(box :orientation \"v\" :valign \"end\" :space-evenly false (label :text \"$percent\") (label :text \"$icon\") (label :text \"~\"))"
