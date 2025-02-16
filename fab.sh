#!/bin/bash

# פונקציה שבודקת אם מספר שייך לסדרת פיבונאצי
is_fibonacci() {
    num=$1
    a=0
    b=1

    while [ $a -le $num ]; do
        if [ $a -eq $num ]; then
            echo "$num is a Fibonacci number"
            return 0
        fi
        temp=$((a + b))
        a=$b
        b=$temp
    done

    echo "$num is NOT a Fibonacci number"
    return 1
}

# מספר לבדיקה (ניתן לשנות בהתאם לצורך)
NUM_TO_CHECK=21

# הרצת הפונקציה ושמירת הפלט בקובץ HTML
RESULT=$(is_fibonacci $NUM_TO_CHECK)

echo "<h1>$RESULT</h1>" > output.html
