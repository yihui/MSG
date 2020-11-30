# 加州伯克利分校录取数据四瓣图
data("UCBAdmissions")
colnames(UCBAdmissions) = c("男性", "女性")
rownames(UCBAdmissions) = c("录取", "拒绝")
fourfoldplot(UCBAdmissions, mfcol = c(2, 3)) # 2 行 3 列排版
