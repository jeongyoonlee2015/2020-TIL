package main

import "fmt"

var globalA = 5 //함수 밖에서는 'var' 키워드를 입력해야함.
				// 꼭 형을 명시하지 않아도 됨
func main() {
    var a string = "goorm"
    fmt.Println(a)

    var b int = 10
    fmt.Println(b)

    var d = true
    fmt.Println(d)

    var e int
    fmt.Println(e)

    f := "short"
    fmt.Println(f)
	
	fmt.Println(globalA)
}
