//
//  ViewController.swift
//  GenericsInSwift
//
//  Created by Dona Maria Peter on 28/02/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let answer = self.additionOfTwoValues(v1:  8, v2: Int(8.16))
        print(answer)
        
        
        let doubleAnswer = self.additionOfTwoDoubles(v1: 8, v2: 8.16)
        print(doubleAnswer)
        
        
        //Generic
        
        let generic1 = self.additionUsingGeneric(v1: 8, v2: 8)
        print(generic1)
        
        let generic2 = self.additionUsingGeneric(v1: 8, v2: 8.16)
        print(generic2)
        
    }
// Integer
    
    
    func additionOfTwoValues(v1: Int, v2: Int) -> Int{
        let answer = v1 + v2
        return answer
    }

    
    //Double
    
    func additionOfTwoDoubles(v1: Double, v2: Double) -> Double{
        let answer = v1 + v2
        return answer
    }
    
    
    //Generic

    func additionUsingGeneric<T: Numeric>(v1: T, v2: T) ->T{
        return v1 + v2
    }
}

