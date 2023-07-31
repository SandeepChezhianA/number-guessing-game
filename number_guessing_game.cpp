#include <iostream>
#include <cmath>
#include <cstdlib>

using namespace std; 


int main(){
    int guess;
    int secretNum = rand() % 10;
    

    cout << "Enter your guess:  " << endl; 
    cin >> guess; 

    int count = 1;

    while (guess != secretNum){
        if (guess > secretNum){
            cout << "Enter a smaller number: " << endl; 
            cin >> guess;
            count++; 
        } else if (guess < secretNum){
            cout << "Enter a larger number: " << endl; 
            cin >> guess; 
            count++;
        } else if (guess == secretNum){
            count++;
            break;
        }
    }
    cout << "The number was " << guess << endl; 
    cout << "You took " << count << " attempts!" << endl;
    return 0;
}