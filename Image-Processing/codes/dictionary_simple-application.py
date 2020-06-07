import numpy as np

KaKao_daily_ending_prices = {'2016-02-19' : 92600, '2016-02-20' : 92400, '2016-02-17' : 92100, '2016-02-16' : 94300, '2016-02-15' : 92300}
print("키:인덱스 // 카카오 주식 예제")
date = input("날짜를 입력하세요: ")
print(KaKao_daily_ending_prices[date])
