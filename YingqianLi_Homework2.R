#Question 1
a = as.numeric(readline(prompt = "Input number a: "))
b = as.numeric(readline(prompt = "Input number b: "))
c = as.numeric(readline(prompt = "Input number c: "))
is_pythagorean = a*a+b*b ==c*c
if(is_pythagorean==TRUE){
  print(paste(TRUE))
}
if(is_pythagorean==FALSE){
  print(paste(FALSE))
}
is_pythagorean

#Question 2
n = 100
N = numeric()
for(n in 100:1000){
  if(sum((n%%(2:(n-1))==0))==0){
    N = append(N,n)
  }
}
sort(N, decreasing = TRUE)
#bonus part
is_prime = function(n) {
  if(sum((n%%(2:(n-1))==0))==0){
    print("n is a prime")
  }
  else print("a is not a prime")
}
is_prime(n)

#Question 3
Blend = matrix (nrow = 3,ncol =3)
colnames(Blend) = c("Wine", "Vodka", "Lemon Juice")
rownames(Blend) = c("A", "B", "C")
Blend["A",'Wine'] = 20
Blend["A",'Vodka'] = 30
Blend["A",'Lemon Juice'] = 50
Blend["B",'Wine'] = 30
Blend["B",'Vodka'] = 20
Blend["B",'Lemon Juice'] = 60
Blend["C",'Wine'] = 30
Blend["C",'Vodka'] = 30
Blend["C",'Lemon Juice'] = 32

Price = matrix (nrow = 3,ncol =1)
colnames(Price) = ("Price")
rownames(Price) = c("Wine", "Vodka", "Lemon Juice")
Price['Wine', "Price"] = 5
Price['Vodka', "Price"] = 45
Price['Lemon Juice', "Price"] = 10
#Question 3a
Price_of_blend_A = Blend[1,1]*Price[1,1]+Blend[1,2]*Price[2,1]+Blend[1,3]*Price[3,1]
Price_of_blend_B = Blend[2,1]*Price[1,1]+Blend[2,2]*Price[2,1]+Blend[2,3]*Price[3,1]
Price_of_blend_C = Blend[3,1]*Price[1,1]+Blend[3,2]*Price[2,1]+Blend[3,3]*Price[3,1]
#Question 3b
Total_price = 10*Price_of_blend_A+4*Price_of_blend_B+5*Price_of_blend_C 



      
      