import UIKit

class SingletonClass {
    static let shared = SingletonClass()
    
    func foo() -> Bool {
        return false
    }
    
    static func bar() -> Bool {
        return true
    }
    
    final func boo() -> Bool {
        return true
    }
    
    class func far() -> Bool {
        return false
    }
}

class OverrideSingletonClass: SingletonClass {
    override func foo() -> Bool {
        return true
    }
    
    override class func far() -> Bool {
        return true
    }

// IDE shows error
//    override func bar() -> Bool {
//        return false
//    }
//
// IDE shows error
//    override func boo() -> Bool {
//        return false
//    }
}

class AnotherOverrideSingletonClass: SingletonClass {
    override func foo() -> Bool {
        return true
    }
}

// IDE shows error
//let a = SingletonClass.foo()
let b = SingletonClass.bar()

// IDE shows error
//let c = SingletonClass.boo()
let d = SingletonClass.far()

let osc = OverrideSingletonClass()
let ncff = OverrideSingletonClass.far()
// IDE shows error
//let cff = osc.far()
let aosc = AnotherOverrideSingletonClass()
// IDE shows error
//let acff = aosc.far()
