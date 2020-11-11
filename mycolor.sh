sym="*_*"
textColor=30
stringColor=40


for ((m = 1; m < 8; m++)) do
    for (( a = 0; a < 16; a++ )) do
        if [ $stringColor -eq 48 ] ; then
            let "stringColor = 100"
        fi
        for ((i = 0; i < 16; i++)) do
            if [ $textColor -eq 38 ] ; then
                let "textColor = 89"
            fi
            echo -e -n "\e[${m};${textColor};${stringColor}m $sym \e[0m"
            let "textColor += 1"
        done
        let "textColor = 30"
        let "stringColor += 1"
        echo 
    done
    echo
done
