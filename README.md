# projectdev
זהו קובץ Jenkins Pipeline שמבצע את הפעולות הבאות עבור פרויקט GitHub. ה-Pipeline כולל את השלבים הבאים: Clone, Build, Publish HTML Report ו-Deploy. המטרה של קובץ זה היא אוטומציה של תהליך בניית והפצת הקוד.

שלבים ב-Pipeline
1. Clone Repository
שלב זה מבצע clone של הריפוזיטורי מ-GitHub לעבודה מקומית בסביבת Jenkins.
הוא משתמש בענף dev ומוריד את הקוד מכתובת ה-URL המצוינת:
bash
Copy
git branch: 'dev', url: 'https://github.com/jade23dy/projectdev.git'
2. Build
בשלב זה, מתבצע תהליך build של הפרויקט. כרגע, יש פקודת echo שמדפיסה הודעה "Building the project...".
זהו שלב שמייצג את תהליך הבנייה, שבו ניתן להריץ פקודות נוספות כמו התקנת תלויות או בניית קבצים.
3. Publish HTML Report
בשלב זה, נעשה ניסיון להריץ את הבדיקות או לבצע פעולה שמפרסמת דו"ח HTML.
גם כאן יש פקודת echo שמדפיסה "Running tests...", אך שלב זה בדרך כלל משמש להריץ את הבדיקות על הקוד ולפרסם את הדו"ח באם יש צורך.
4. Deploy
השלב האחרון הוא Deploy, שבו מבוצע פריסת הקוד לאתר היעד או לסביבה.
יש גם כאן פקודת echo שמדפיסה "Deploying application...", אך שלב זה בדרך כלל משמש להפעיל את תהליך ההפצה של הקוד.
כיצד להפעיל את ה-Pipeline
התקנת Jenkins:

יש להתקין את Jenkins על השרת ולהגדיר אותו כראוי.
ניתן להוריד את Jenkins מהאתר הרשמי: https://www.jenkins.io/.
הגדרת ה-Pipeline ב-Jenkins:

יש להוסיף את הקוד כ-Jenkins Pipeline (תוך כדי יצירת Job חדש ב-Jenkins).
תוכל להשתמש בקובץ ה-Pipeline הזה כחלק מה-git repository או להוסיף אותו ישירות לממשק של Jenkins.
הרצת ה-Pipeline:

ברגע שה-Pipeline מוגדר ומחובר לריפוזיטורי, ניתן להפעיל אותו ישירות דרך ממשק ה-Jenkins.
דרישות
Jenkins מותקן ומוגדר.
גישה לריפוזיטורי ב-GitHub עם הענף dev.
גישה לסביבה שתומכת בהפעלת הפלטים (למשל, שרת הפצה).

