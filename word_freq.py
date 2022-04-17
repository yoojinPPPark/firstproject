#!/bin/python
#실행시 2개의 파라미터를 받음(영문 txt파일명, 정수)

def word_preprocess(word):
        word = word.lower()
        symbols = ['!','.',',','?']
        for symbol in symbols:
                word = word.replace(symboal, '')

        return word

import sys

if __name__=='__main__':

        token_idx = {}
        name = sys.argv[1]
        f=open(name, 'r')
        for line in f.readlines():
                line = line.strip()
                for word in line.split():
                        word=word_preprocess(word)
                        if word not in token_idx:
                                if word != '':
                                        token_idx[word] = len(token_idx) + 1
#token_dix.values()는 index, 단어를 key에 저장 - dictionary 생성

sortDict = sorted(token_idx.items(), key=lambda x:(x[1]), reverse=True)
#dictionary value가 큰 순서대로 정렬시켜야함

num = sys.argv[2]
final = num-1
dict(list(sortDict.items())[0:final])

for key, value in sortDict.items():
        print(key, value)

#화면에 count 수의 내림차순으로 보여주고 종료
#보여주는 화면에서 word는 왼쪽정렬/ count는 오른쪽정렬
