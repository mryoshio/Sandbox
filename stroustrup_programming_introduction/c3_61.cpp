#include "std_lib_facilities.h"

int main() {

    string f_name;
    string other_name;
    char friend_gender = 0;
    int age;

    cout << "Enter the name of the person you want write to ";
    cin >> f_name;

    cout << "Dear, " << f_name << "\n";
    cout << "How are you? I am file.\n";

    cout << "other friend's name: ";
    cin >> other_name;
    cout << "have you seen " << other_name << " lately?\n";

    cout << "gender: ";
    cin >> friend_gender;
    if (friend_gender == 'm') {
        cout << "If you see " << other_name << " please ask him to call me\n";
    } else {
        cout << "If you see " << other_name << " please ask her to call me\n";
    }

    cout << "age: ";
    cin >> age;
    cout << "I hear you just had a birthday and you are age yeard old.\n";
    if (age <= 0 || 110 <= age) {
        simple_error("you're kidding!");
    }
    if (age < 12) {
        cout << "Next year you will be age+1";
    } else if (age == 17) {
        cout << "Next year you will be able to vote";
    } else if (age >= 70) {
        cout << "I hope you are enjoying retirement";
    }
    cout << "Yours sincerly\n";
    cout << "\n\n";
    cout << "Taro Yamada\n";
}
