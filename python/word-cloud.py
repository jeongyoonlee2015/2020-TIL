from PIL import Image
import numpy as np
from konlpy.tag import Twitter
from collections import Counter
from wordcloud import WordCloud
import matplotlib.pyplot as plt
# import nltk
# from nltk.corpus import stopwords

# text = "/Users/jeongyoonlee/Desktop/kakao.txt"
text = open('/Users/jeongyoonlee/Desktop/kakao.txt').read()

wordcloud = WordCloud(background_color="white", font_path='/Users/jeongyoonlee/Desktop/CookieRun Regular.ttf', max_font_size=100).generate(text)
# mask = np.array(Image.open('/Desktop/joy.png'))

twitter = Twitter()
morphs = []

for sentence in text:
    morphs.append(twitter.pos(sentence))
    print(morphs)

noun_adj_adv_list = []
for sentence in morphs :
    for word, tag in sentence :
        if tag in ['Noun'] and ("것" not in word) and ("내" not in word)and ("나" not in word)and ("수"not in word) and("게"not in word)and("말"not in word):
            noun_adj_adv_list.append(word)

print(noun_adj_adv_list)

count = Counter(noun_adj_adv_list)
words = dict(count.most_common())

array = wordcloud.to_array()
print(type(array)) # numpy.ndarray
print(array.shape) # (800, 800, 3)

fig = plt.figure(figsize=(10, 10))
plt.imshow(wordcloud, interpolation='bilinear')
plt.axis('off')
plt.show()
plt.savefig("wordcloud.png")
