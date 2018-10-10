wordcloud(freqFrame$Var1,freqFrame$Freq,
          min.freq=3,
          random.order=TRUE,random.color=TRUE, 
          rot.per=.1, colors=rainbow(length(row.names(freqFrame))),
          ordered.colors=FALSE,use.r.layout=FALSE,
          fixed.asp=TRUE)
urls<- readLines("url.txt")
urls[1]<- "/member_illust.php?mode=medium&illust_id=71122433"
alltag<- data.frame()
urls[40]<- "/member_illust.php?mode=medium&illust_id=71119181"
urls[79]<- "/member_illust.php?mode=medium&illust_id=71119079"
urls[119]<- "/member_illust.php?mode=medium&illust_id=71115999"
urls[120]<- "/member_illust.php?mode=medium&illust_id=71115982"
for(x in 1:120)
{
  url<- paste0("https://www.pixiv.net", urls[x])
  dat<- read_html(url)
  rdat<- html_nodes(dat, xpath = "//body/div/div/div/div/div/div/div/span/ul/li/a[2]")
  ssrdat<- html_text(rdat)
  ssrdat<- as.data.frame(ssrdat)
  alltag<- rbind.fill(alltag, ssrdat)
}

freqFrame = as.data.frame(table(alltag))
wordcloud(freqFrame$alltag,freqFrame$Freq,
          scale=c(5,0.5),min.freq=1,max.words=50,
          random.order=FALSE, random.color=TRUE, 
          rot.per=0, colors=brewer.pal(8, "Dark2"),
          ordered.colors=FALSE,use.r.layout=FALSE,
          fixed.asp=TRUE)