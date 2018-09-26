a<- matrix(, nrow = 5, ncol = 5)
for(x in 1:5)
{
  a[x,2]<- "|"
  a[x,4]<- "|"
}
for(x in c(1,3,5))
{
  a[2,x]<- "--"
  a[4,x]<- "--"
}
a
c<- 0
repeat{
  if(c %% 2 == 0)
  {
    cat("A的回合\n")
    stepr<- readline("請輸入1~9中的一個數字:")
    stepn<- as.numeric(stepr)
    x<- (stepn-1) %/% 3
    y<- (stepn-1) %% 3
    if(is.na(a[2*x+1,2*y+1]))
    {
      a[2*x+1,2*y+1]<- "O"
      a
      c<- c+1
      View(a)
    }else
    {
      cat("那裡已經被下過了\n")
      next
    }
  }else
  {
    cat("B的回合\n")
    stepr<- readline("請輸入1~9中的一個數字:")
    stepn<- as.numeric(stepr)
    x<- (stepn-1) %/% 3
    y<- (stepn-1) %% 3
    if(is.na(a[2*x+1,2*y+1]))
    {
      a[2*x+1,2*y+1]<- "X"
      a
      c<- c+1
      View(a)
    }else
    {
      cat("那裡已經被下過了\n")
      next
    }
  }
  
  k<- 0
  l<- 0
  m<- 0
  n<- 0
  for(x in 1:3)
  {
    k<- 0
    l<- 0
    for(y in 1:3)
    {
      if(is.na(a[2*x-1,2*y-1]) == F)
      {
        if(grepl("O", a[2*x-1,2*y-1]))
        {
          k<- k+1
        }
        if(grepl("X", a[2*x-1,2*y-1]))
        {
          k<- k-1
        }
      }
      if(is.na(a[2*y-1,2*x-1]) == F)
      {
        if(grepl("O", a[2*y-1,2*x-1]))
        {
          l<- l+1
        }
        if(grepl("X", a[2*y-1,2*x-1]))
        {
          l<- l-1
        }
      }
    }
    if(k == 3 || l == 3)
    {
      cat("A獲勝\n")
      break
    }else if(k == -3 || l == -3)
    {
      cat("B獲勝\n")
      break
    }
    if(is.na(a[2*x-1,2*x-1]) == F)
    {  
      if(grepl("O", a[2*x-1,2*x-1]))
      {
        m<- m+1
      }
      if(grepl("X", a[2*x-1,2*x-1]))
      {
        m<- m-1
      }
    }  
    if(is.na(a[2*x-1,(3-(2*x-1))*2-1]) == F)
    {
      if(grepl("O", a[2*x-1,(3-(2*x-1))*2-1]))
      {
        n<- n+1
      }
      if(grepl("X", a[2*x-1,(3-(2*x-1))*2-1]))
      {
        n<- n-1
      }
    }
  }
  if(k == 3 || l == 3)
  {
    break
  }else if(k == -3 || l == -3)
  {
    break
  }else if(m == 3 || n == 3)
  {
    cat("A獲勝\n")
    break
  }else if(m == -3 || n == -3)
  {
    cat("B獲勝\n")
    break
  }
}