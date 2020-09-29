# Temporary Linux commands (Private Repo로 이동 예정)
1. 시스템 날짜 & 시각
```.bash
$ date #mon day h m year
$ date -d '-10day'# 확인해보기
$ date -s '10dayago' # 확인해보기
$ timedatectl #timedatecontrol
$ cal
$ cal -m #월요일~순서로
$ cal -j # Julian일자 형식 출력
$ cal -y #그 해 전체 달력
```
2. 시스템 사용자 정보
```.bash
$ logname #log in name
$ users #default: 1.consoleenv & 2.terminal
$ who
$ who -i # idle time과 함께 사용자 출력
$ who -m # who 명령을 실행한 사용자
$ who -q #사용자 명&수 출력
$ who -W, -T #각 사용자의 메시지 설정 상태
```
3. 리눅스 시스템 정보

```.bash
$ ls
$ ls -l
$ ls -a
$ ls -al
```
