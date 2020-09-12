vector_of_random_numbers = runif(n=1000, min =-10, max=10)
#1/a. The output is giving in total 1000 numbers, and all of these random
#numbers are between the range of -10 and 10.
#1.b
mean(vector_of_random_numbers)

#2
name = readline(prompt = "Input your name: ")
age =  readline(prompt = "Input your age: ")
print(paste("Your name is", name, "and your age is", age))

#3
path_to_go = readline(prompt="Enter the path")
setwd(path_to_go)

#4
ls()

#5
vector_of_0_to_150 = 0:150
mean(vector_of_0_to_150)
vector_of_trues_false_logical = c(vector_of_0_to_150%%3 ==0)
vector_of_numbers_divisible_by_3 = vector_of_0_to_150[vector_of_trues_false_logical]
mean(vector_of_numbers_divisible_by_3)

#6
vector_of_10_integers = runif(n=10, min =-50, max=50)
sum(vector_of_10_integers)
mean(vector_of_10_integers)
prod(vector_of_10_integers)

#7
initial = as.numeric(readline(prompt = "Input initial number: "))
final = as.numeric(readline(prompt = "Input final number: "))
denom = as.numeric(readline(prompt ="Input denom number: "))
vector_of_all_numbers = initial:final
vector_of_divisible = vector_of_all_numbers[vector_of_all_numbers%%denom == 0]
sum(vector_of_divisible)
mean(vector_of_divisible)
prod(vector_of_divisible)

#Math with R Q1
number_for_square_root = readline(prompt = "Input your number: ")
sqrt(as.numeric(number_for_square_root))
#We cannot use R to calculate the square root of -1, because the square root
#of -1 is an imaginary number and the number for functions with square root
#should be greater or equal to 0. 

#2.
number_for_exponential = readline(prompt = "Input your number: ")
exp(as.numeric(number_for_exponential))

#3.
number_for_natural_log = readline(prompt = "Input your number: ")
log10(as.numeric(number_for_natural_log))

#Calculus Questions
#1. 
#This statement is true, because if a function is continuously increasing, 
#its first derivative must always be positive. The probability therefore has
#probability 1 that it must be non-negative.

#2.
#a. The domain is x>=-1.
#b. The domain is all real numbers.

