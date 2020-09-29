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
$ whoami
$ who am i
```
3. 리눅스 시스템 정보
```.bash
$ uname
$ uname -a #모든 정보 확인
$ uname -m #machine
$ uname -s #OS 
$ uname -sv #OS name, version date
$ hostname
$ arch # hardware information
$ env # 환경변수
$ echo # 문자열 표준 출력
$ echo Have a good time
$ echo -e Have a good time. "\n" Nice good day.
$ which # 명령어가 존재하는 디렉터리 경로 확인
$ which echo
$ which cp
$ which mv
$ history
$ ![no. line] 
$ histroy -d 100 #100번 줄 명령어 다시실행
$ history -c
```
4. 디렉터리와 파일 관리
```.bash
$ ls
$ ls -F #루트 디렉터리와 심볼릭링크 파일 확인
$ ls -l
$ ls -a
$ ls -al
```
5. 디렉터리 관리 명령어
```.bash
$ pwd

```
