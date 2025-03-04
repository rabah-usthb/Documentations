import matplotlib.pyplot as plt
import numpy as np

plt.subplot(1,2,1)
cellText_1 = [["21","test","-0.32"] , ["latex" , "zaki" , "test"]]
rowLabels_1 = ["row_1","row_2"]
colLabels_1 = ["col_1","col_2","col_3"]
table_1 = plt.table(fontsize=12,cellText=cellText_1,rowLabels=rowLabels_1,colLabels=colLabels_1,cellLoc = 'left',loc='best')
table_1.auto_set_column_width ([0,2])
plt.axis('off')
plt.title(r"tab$_1$")

plt.subplot(1,2,2)
cellText_2 = [["1921","Lyna"] , ["analysis" , "numerical"]]
colLabels_2 = ["col_1","col_2"]
table_2 = plt.table(cellText=cellText_2,colLabels=colLabels_2,cellLoc = 'center',loc='left')
table_2.scale(xscale = 1 , yscale = 1.75)
table_2.set_fontsize(40)
table_2.auto_set_font_size()

plt.title(r"tab$_2$")

plt.suptitle(r"figure$_1$")

plt.show()
