### hw_1_question


########################################################### Task 1

# 查看內建資料集: 鳶尾花(iris)資料集
iris

# 使用dim(), 回傳iris的列數與欄數
dim(iris)

# 使用head() 回傳iris的前六列
head(iris)

# 使用tail() 回傳iris的後六列
tail(iris)

# 使用str() 
str(iris)

# 使用summary() 查看iris敘述性統計、類別型資料概述。
summary(iris)

########################################################### Task 2

# 使用for loop 印出九九乘法表
# Ex: (1x1=1 1x2=2...1x9=9 ~ 9x1=9 9x2=18... 9x9=81)
# 方形
NineCrossNine<- matrix(1:81, nrow = 9)
for(x in 1:9)
{
  for(y in 1:9)
  {
    NineCrossNine[x,y]<- x*y
  }
}
print(NineCrossNine)

# 列表式
for(x in 1:9)
{
  for(y in 1:9)
  {
    cat(x, "X", y, "=", x*y, "\n")
  }
}

########################################################### Task 3

# 使用sample(), 產出10個介於10~100的整數，並存在變數 nums
nums<- sample(10:100, size = 10)

# 查看nums
nums

# 1.使用for loop 以及 if-else，印出大於50的偶數，並提示("偶數且大於50": 數字value)
# 2.特別規則：若數字為66，則提示("太66666666666了")並中止迴圈。
for(x in 1:50)
{
  if(2*x < 50)
  {
    next
  }
  else if(2*x == 66)
  {
    cat("偶數且大於50:", 2*x, "\n", "太66666666666了吧", "\n")
    break
  }
  else
  {
    cat("偶數且大於50:", 2*x, "\n")
  }
}
########################################################### Task 4

# 請寫一段程式碼，能判斷輸入之西元年分 year 是否為閏年
year<- scan(text = "1234")
if((year/100)-floor(year/100) == 0)
{
  cat("不是閏年\n")
}else if(((year/4)-floor(year/4) == 0) && ((year/100)-floor(year/100) != 0))
{
  cat("是閏年\n")
}else
{
  cat("不是閏年\n")
}



a<- strsplit("12345", split = "")
b<- as.vector(a[[1]])
b[3]