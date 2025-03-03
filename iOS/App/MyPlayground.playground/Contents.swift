import UIKit

var str = "Hello, playground"

class User {
    let name: String
    let age: Int
    
    // 부모의 모든 필드를 초기화하는 초기화 메소드
    required init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

// 부모의 초기화 메소드를 호출해야 한다.
// 부모의 초기화 메소드를 암묵적으로 호출한다. - 인자 없는 초기화 메소드

class Admin : User {
    let password: String
    
    // 실패 가능한 초기화 메소드
    //  - 다른 언어에서 초기화 메소드에서 실패를 전달하는 방법
    //    => 예외
    //  + Swift는 실패 가능한 초기화 메소드를 제공한다. - init?
    init(name: String, age: Int, password: String) {
        self.password = password
        super.init(name: name, age: age)
    }
    
    required init(name: String, age: Int) {
        self.password = ""
        super.init(name: name, age: age)
    }
//    init(password: String) {
//
//        self.password = password
//
//        // 부모의 지정 초기화 메소드를 호출하기 전에 반드시 자신의 필드를 초기화 해야 한다.
//        // 부모의 지정 초기화 메소드를 반드시 호출해야 한다.
//        super.init(name: "Tom", age: 42)
//    }
    
//    초기화 메소드를 제공하지 않는 경우, 부모의 지정 초기화 메소드를 상속 받는다.
}

class Color {
    let red: Int
    let green: Int
    let blue: Int
    
    init(red: Int, green: Int, blue: Int) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    // 편의 초기화 메소드
    //  => 자신의 지정 초기화 메소드를 호출하는 초기화 메소드
    convenience init(rgb: Int) {
        let red = rgb >> 16 & 0xff
        let green = rgb >> 8 & 0xff
        let blue = rgb & 0xff
        
        self.init(red: red, green: green, blue: blue)
    }
}

class HSBColor : Color {
    
}

// Log
var n = 42
var color = Color(rgb: 0xffffff)

// weak: 참조 계수를 증감하지 않는다.
//    => 댕글링 포인터의 문제가 생길 수 있다.
//    => Autoniling: 객체가 파괴될 경우 객체의 포인터를 nil로 변경해준다.
//    => 성능의 저하가 발생할 수 있다.

var f: (Int) -> Int = { [weak color] arg in
    if let color = color {
        print(color)
    }
    
    // n: Capture
    return arg + n
}

/*
var f2: (Int) -> Int = { [unowned color] arg in
    print(color)
    
    // n: Capture
    return arg + n
}
*/

// AnyObject -> Reference Type
// Any       -> Value Type
