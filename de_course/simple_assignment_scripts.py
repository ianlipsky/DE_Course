# book = float(input())
# counter = book
# n = 0

# while n + 1 <= 9:
#     counter += book
#     print(round(counter, 2), end=' ')
#     n += 1


# num = int(input())
# n = 1
# s = 0

# while n <= num:
#     s += 1 / n
#     n += 1

# print(round(s, 3))

# num = 1
# counter = 0

# while num != 0:
#     num = int(input())
#     counter += num

# print(counter)

# string = input()
# altered_string = ''

# while string.find("--") > 0:
#     altered_string = string.replace("--", "-")
    
# print(altered_string)

# num = list(map(int, input()))
# iterations_number = len(num)
# counter = 1
# index = 0

# while index < iterations_number:
#     counter *= num[index]
#     index += 1

# print(counter)

# num = int(input())
# counter1 = 1
# counter2 = 0

# n = 0

# while n != num:
#     counter1, counter2 = counter2, (counter1 + counter2)
#     print(counter2, end=' ')
#     n += 1

# num = int(input())
# counter = 1
# n = 3

# while num >= n:
#     counter *= 2
#     n += 3

# print(counter)

num = int(input())
n = 0
result = 1000

while n != num:
    result *= 1.05
    n += 1
print(round(result, 2))