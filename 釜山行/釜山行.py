
# coding: utf-8

# In[16]:


import os,sys
import jieba,codecs,math
import jieba.posseg as pseg

names={}           #姓名字典
relationships={}   #关系字典
lineNames=[]       #每段内任务关系

jieba.load_userdict("E:/练习/暑假/釜山行/dict.txt")              #加载字典
with codecs.open("E:/练习/暑假/釜山行/busan.txt","r","utf-8") as f:
    for line in f.readlines():
        poss=pseg.cut(line)                                   #分词并返回该词词性
        lineNames.append([])                                   #为读入的一段添加任务名称列表
        for w in poss:
            if w.flag!="nr" or len(w.word)<2:                 #当分词长度小于2或该词词性不为nr时认为该词不为人名
                continue
            lineNames[-1].append(w.word)   #为当前段的环境增加一个人物
            if names.get(w.word) is None:
                names[w.word]=0
                relationships[w.word]={}
            names[w.word]+=1
for name,times in names.items():
    print(name,times)
    
for line in lineNames:   #对于每一段
    for name1 in line:
        for name2 in line:
            if name1==name2:
                continue
            if relationships[name1].get(name2) is None:      #若两人尚未同时出现则新建项
                relationships[name1][name2]=1
            else:
                relationships[name1][name2]=relationships[name1][name2]+1
                
with codecs.open("E:/练习/暑假/釜山行/busan_node.txt","w","gbk") as f:
    f.write("Id Label Weight\r\n")
    for name,times in names.items():
        f.write(name+" "+name+" "+str(times)+"\r\n")
        
with codecs.open("E:/练习/暑假/釜山行/busan_edge.txt","w","gbk")as f:
    f.write("Source Target Weight\r\n")
    for name,edges in relationships.items():
        for v,w in edges.items():
            if w > 3:
                f.write(name+" "+v+" "+str(w)+"\r\n")
        

