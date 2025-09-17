FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python3

CMD ["python3","-c","\
def isHappy(n): \n\
    arr = set() \n\
  while(1): \n\
    num = 0 \n\
    while(n > 0): \n\
      tmp = n % 10 \n\
      num += tmp*tmp \n\
      n //= 10 \n\
    if(num == 1): \n\
      return True \n\
    if num in arr: \n\
      return False \n\
    arr.add(num) \n\
    n = num \n\


print(isHappy(19)) \n\
print(isHappy(2)) \n\
"]