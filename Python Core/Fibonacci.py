"""
The Fibonacci sequence is one of the most famous formulas in mathematics.
Each number in the sequence is the sum of the two numbers that precede it.
For example, here is the Fibonacci sequence for 10 numbers, starting from 0: 0,1,1,2,3,5,8,13,21,34.

Write a program to take N (variable num in code template) positive numbers as input,
and recursively calculate and output the first N numbers of the Fibonacci sequence (starting from 0).

Sample Input
6

Sample Output
0
1
1
2
3
5
"""

num = int(input())


def fibonacci(n):
    if n == 1:
        return 0
    elif n == 2 or n == 3:
        return 1
    else:
        return fibonacci(n-1) + fibonacci(n-2)


for i in range(1, num + 1):
    print(fibonacci(i))
