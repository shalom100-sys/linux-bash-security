#include <stdio.h>

int main() {
    // הסיסמה ומזהה המשתמש הנכונים ששמורים במערכת
    int correct_uid = 999;
    int correct_password = 1234;

    // משתנים ריקים שתוכן הקלט מהמשתמש יישמר בתוכם
    int input_user_id;
    int input_password;

    printf("--- Cybersecurity Access Control System ---\n");

    // 1. קליטת מזהה המשתמש (User ID)
    printf("Enter your User ID: ");
    scanf("%d", &input_user_id); // שים לב ל-& לפני שם המשתנה!

    // 2. קליטת הסיסמה (Password)
    printf("Enter your Password: ");
    scanf("%d", &input_password); // שים לב ל-& לפני שם המשתנה!

    printf("\nScanning login credentials...\n");

    // 3. בדיקת תנאי ה-if וה-else (לוגיקה משולבת)
    if (input_user_id == correct_uid) {
        if (input_password == correct_password) {
            printf("[SUCCESS] Access Granted. Welcome Admin.\n");
        } else {
            printf("[ALERT] Access Denied: Wrong Password!\n");
        }
    } else {
        printf("[ALERT] Access Denied: Unknown User ID!\n");
    }

    return 0;
}
