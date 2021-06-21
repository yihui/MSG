# 加州伯克利分校录取数据四瓣图
data("UCBAdmissions")
dimnames(UCBAdmissions) <-
  list(`录取情况` = c("录取", "拒绝"),
       `性别`= c("男性", "女性"),
       `院系` = LETTERS[1:6])
fourfoldplot(UCBAdmissions, mfcol = c(2, 3)) # 2 行 3 列排版
