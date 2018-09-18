# 猜數字遊戲
# 基本功能
# 1. 請寫一個由"電腦隨機產生"不同數字的四位數(1A2B遊戲)
# 2. 玩家可"重覆"猜電腦所產生的數字，並提示猜測的結果(EX:1A2B)
# 3. 一旦猜對，系統可自動計算玩家猜測的次數

# 額外功能：每次玩家輸入完四個數字後，檢查玩家的輸入是否正確(錯誤檢查)

ans<- sample(0:9, size = 4)
c<- 0
repeat{
  guess<- readline("請輸入四個不重複的數字:")
  intermediate<- strsplit(guess, split = "")
  guessi<- as.vector(intermediate[[1]])
  a<- 0
  b<- 0
  c<- c+1
  d<- 0
  for(x in 1:4)
  {
    if(d == 1)
    {
      break
    }else
    {
      for(y in 1:4)
      {
        if(y == x)
        {
          next
        }else if(guessi[x] == guessi[y])
        {
          cat("所以我不是說了不要重複了嗎")
          c<- c-1
          d<- 1
          break
        }else
        {
          next
        }
      }  
    }  
  }  
  for(x in 1:4)
  {
    if(as.integer(guessi[x]) == ans[x])
    {
      a<- a+1
    }else
    {
      for(y in 1:4)
      {
        if(as.integer(guessi[x]) == ans[y])
        {
          b<- b+1
          break
        }else
        {
          next
        }
      }
    }
  }
  if(d == 1)
  {
    next
  }else 
  {
    cat(a, "A", b, "B\n")
    if(a == 4)
    {
      cat("恭喜你猜對了\n")
      break
    }else if(c == 10)
    {
      cat("你太遜了\n")
      break
    }else
    {
      cat("你猜了", c, "次")
      next
    }
  }  
}