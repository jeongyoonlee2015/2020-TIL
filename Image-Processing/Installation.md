# Find Installation Errors
## Error of 1st try
> qt.qpa.plugin: Could not find the Qt platform plugin "cocoa" in "" This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.

## 2nd Installation
Install: Python 3.7.7.and Check <br>
```> python3```

Install: Homebrew <br>
```> /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"```

Install: opencv<br>
```> brew install opencv``` <br>
``` > Updating Homebrew...```<br>
```
Warning: opencv 4.2.0_3 is already installed and up-to-date
To reinstall 4.2.0_3, run `brew reinstall opencv`
```
<br>

Linker Flag <br>
```
> brew install pkg-config
> pkg-config --cflags --libs opencv
```
```
No package 'opencv' found
```

```
> brew install opencv@2
```


```
> brew install opencv3
Warning: opencv 4.2.0_3 is already installed and up-to-date
To reinstall 4.2.0_3, run `brew reinstall opencv`
```


```
> cd /usr/local/Cellar/opencv
jeongyoonlee@ijeong-yun-ui-MacBookPro-108 opencv % > ls
4.2.0_3
```

## Result
Pycharm > Exists > virtualenv > 'opt > anaconda3 > bin > python' <br>
In Anaconda-Navigator > Environments > (Play button) > Open Terminal > Install opencv
```
> pip install opencv-python

```
