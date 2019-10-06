#Juggling algorithm
#Time Complexity : O(n)


def solution(a, k)
  temp=0
  len=a.length
  if len>0  #checking if array is empty 
    if k>len         #if rotation is greater than length of array we do modulo
      k%=len
    end
      #Algorithm Logic
      for i in 0...gcd(len,k)
        temp=a[len-i-1]
        j=len-i-1
        while(true)
          p=j-k
          if p<0
            p+=len
          end
          if p==len-i-1
            break
          end
          a[j]=a[p]
          j=p
        end
        a[j]=temp
      end
  end
  return a
end


#Function for finding GCD
def gcd(x,y)
  if y==0
    return x
  else
    return gcd(y,x%y)
  end
end