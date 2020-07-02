from PIL import Image
from networkx.drawing.tests.test_pylab import plt
from wordcloud import WordCloud
from konlpy.tag import Twitter
from collections import Counter
import numpy as np
from matplotlib import rc


mask = np.array(Image.open('/content/joy.png'))
text = open('/content/kakao.txt').read()
wc = WordCloud(background_color="white", max_words=20000, mask=mask, max_font_size=300).generate(text)
wc.to_file('test.png')
wc = WordCloud(font_path='./font/BMDOHYEON_ttf.ttf', background_color="white", max_words=20000, mask=mask,max_font_size=300)
file = open('/content/kakao.txt', 'r')
lists = file.readlines()
file.close()

twitter = Twitter()
morphs = []

rc('font', family='NanumBarunGothic')


wordcloud = WordCloud(
    font_path = '/content/CookieRun Regular.ttf',    # 맥에선 한글폰트 설정 잘해야함.
    background_color='white',                             # 배경 색깔 정하기
    colormap = 'Accent_r',                                # 폰트 색깔 정하기
    width = 800,
    height = 800
)

wordcloud_words = wordcloud.generate_from_frequencies(words)
array = wordcloud.to_array()
print(type(array)) # numpy.ndarray
print(array.shape) # (800, 800, 3)

fig = plt.figure(figsize=(10, 10))
plt.imshow(array, interpolation="bilinear")
plt.axis('off')
plt.show()
fig.savefig('business_anlytics_worldcloud.png')
for sentence in lists:
    morphs.append(twitter.pos(sentence))
print(morphs)

noun_adj_adv_list=[]
for sentence in morphs :
    for word, tag in sentence :
        if tag in ['Noun'] and ("것" not in word) and ("내" not in word)and ("나" not in word)and ("수"not in word) and("게"not in word)and("말"not in word):
            noun_adj_adv_list.append(word)

print(noun_adj_adv_list)
count = Counter(noun_adj_adv_list)

words = dict(count.most_common())

