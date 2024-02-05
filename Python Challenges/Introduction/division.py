#Using - Python 3
#The provided code stub reads two integers, a and b, from STDIN. 
#Add logic to print two lines. The first line should contain the result of integer 
#division, a//b . The second line should contain the result of float division, a/b 

if __name__ == '__main__':
    a = int(input())
    b = int(input())
    
    div = a // b
    div2 = a / b
    
    print(div)
    print(div2)