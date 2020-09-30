# Temporary Linux commands (Private Repo로 이동 예정)

### 리눅스의 부팅과정
* LILO(Linux Loader)
  * 커널을 메모리에 적재
  * 리눅스 부팅하려면 반드시 LILO 필요
* init 
  * init은 모든 프로세스의 최상의 부모 프로세스
  * 커널이 제일 먼저 실행시키는 프로세스이므로 무조건 PID 1
    > 부모프로세스: 프로세스가 다른 프로세스를 새로 실행시키면 실행시킨 프로세스

1. 시스템 날짜 & 시각
```.bash
$ date #mon day h m year
$ date MMddhhmmyyyyss
$ date -date '-10day'# 확인해보기
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
$ w # 시스템에 로그인한 사용자와 현재 무엇을 하는지 출력
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
$ echo -e Have a good time. "\n" Nice good day. # -e:이스케이프 문자 사용 가능(\b:백스페이스, \n:줄바꿈, \\:역슬래시 출력 등)
$ which 
# 명령어가 존재하는 디렉터리 경로 확인 which echo -> /usr/bin/echo 출력 
# find와의 차이점 : which는 환경 변수에 설정되어 있는 실행 경로(path)만 검색
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

### 실습
* 지금까지 사용한 모든 명령들의 목록 출력 : history
* 수행했던 라인번호 3의 명령을 다시 실행 : !3
* 사용한 명령들 중 라인번호 5번만 삭제 : history –d 5
* 수행했던 명령들을 한꺼번에 모두 삭제 : history -c
