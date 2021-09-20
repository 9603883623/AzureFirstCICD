//
//  ViewController.swift
//  Practise
//
//  Created by Chandrasekhar Meka on 01/09/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       let abv = SomeClass()
        abv.addElement(element: SomeA())
    }


}


class SomeA: SomeProtocol{
    func bla() {
        print("A123")
    }
    
    
}



protocol SomeProtocol: AnyObject {
    func bla()
}

class SomeClass {

    var protocols = [SomeProtocol]()

    func addElement(element: SomeProtocol) {
        self.protocols.append(element)
    }
}
