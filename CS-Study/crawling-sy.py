import requests
from bs4 import BeautifulSoup
import pandas as pd

### 특정단어와 특정기간으로 블로그 검색하기

url = 'https://search.naver.com/search.naver'
hrd = {'User-Agent': 'Mozilla/5.0', 'referer': 'http://naver.com'}      # 해당 hrd를 requests.get모듈의 headers 인자로 넘기면
                                                                        # 서버에게 외부 프로그램이 아닌 정상적인 형태로 접근하는 것처럼 보임.
words = input("키워드 입력:")        # 키워드 입력해서 블로그 검색
year = 6
tre = []

for yea in range(year):
    years = ['2012', '2013', '2014', '2015', '2016', '2017']
    ye = years[yea]
    fm = '0101'
    tm = '1231'

    param = { 'where': 'post', 'query': words,
          'date_from': ye+fm, 'date_to': ye+tm, 'date_option': '8'}

    resp = requests.get(url, params=param, headers=hrd)

    print(resp.url)

### 검색된 블로그 URL 크롤링

    soup = BeautifulSoup(resp.text, 'html.parser')    # resp.text엔 html 소스코드가 들어 있음.

# 검색된 블로그 언급 량 가져오기

    trend = soup.select("span.title_num")
    tr = list(trend[0])                     # trend자체가 list[0]이어서 쪼개주기 위해 list 해줌
    tr = list(tr[0])                        # [1-10/ 건수]도 건수만 불러오기 위해 다시 list 해줌
    trend = "".join(tr[7:-1])               # list해준 tr에서 필요한 부분만 추출한 후 공백으로 합쳐줌

    print(format(trend))

    tre.append(trend)

result = {'Trend':tre}
df = pd.DataFrame(result, index=['2012','2013','2014','2015','2016','2017'])

print(df)

df.to_csv("Trend.csv", mode='a', header=False, index=True)      # 결과 csv로 저장, mode ='a' 이어서 저장,


#writer = pd.ExcelWriter('Trend.xlsx')
#df.to_excel(writer, sheet_name='trend')
#writer.save()
#df.to_csv("블로그 크롤링.csv", encoding='cp949')
