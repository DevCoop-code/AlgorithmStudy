#include <iostream>

using namespace std;

// Complete the isBalanced function below.
string isBalanced(string s) {
    char brackets[s.length() + 1];
    strcpy(brackets, s.c_str());
    
    int i = 0, j = s.length() - 1;
    for (i; i < j; i++, j--) {
        // cout << i << "] " << brackets[i] << endl;
        if ( (brackets[i] == '{') && (brackets[j] == '}') ) {
            continue;
        }
        else if ( (brackets[i] == '(') && (brackets[j] == ')') ) {
            continue;
        }
        else if ( (brackets[i] == '[') && (brackets[j] == ']') ) {
            continue;
        }
        else {
            return "NO";
        }
    }

    return "YES";
}

int main()
{
    int t;
    cin >> t;
    cin.ignore(numeric_limits<streamsize>::max(), '\n');

    for (int t_itr = 0; t_itr < t; t_itr++) {
        string s;
        getline(cin, s);

        string result = isBalanced(s);

        cout << result << endl;
    }

    return 0;
}