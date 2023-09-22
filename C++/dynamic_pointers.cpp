/* An Array From Input
The code provided calculates the largest element of the array nums and outputs it.
Complete the code to declare the nums array and take the array elements as input.
The array can be of any variable size, so the first input should be the size of the array, followed by its elements.

Sample Input
4
12
7
9
34

Sample Output
34

Explanation
The first input number (4) represents the size of the array, the next 4 numbers are the elements. The maximum value is 34.
Declare a dynamic array and take each element as input in a loop.
*/

#include <iostream>
using namespace std;

int main() {
    int n;
    cin >> n; //size of the array
    //your code goes here
    int *nums = new int[n];

    int max = nums[0];
    for(int i=0; i<n; i++) {
        cin >> nums[i];
        if(nums[i]>max)
            max = nums[i];
    }
    cout << max;
    delete[] nums;
}