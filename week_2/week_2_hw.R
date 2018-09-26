library(rvest)
url<- "https://www.pixiv.net/tags.php?tag=%E8%89%A6%E3%81%93%E3%82%8C"
dat<- read_html(url)
dat
rdat<- html_nodes(dat, ".image-item")
rdat
srdat<- html_attr(html_nodes(dat, ".image-item a"), 'href')
srdat
ssrdat<- html_text(rdat)
ssrdat

for(x in 1:9)
{
  cat(ssrdat[x], "\n", srdat[3*x-2], "\n",  srdat[3*x], "\n")
}