//
//  ViewController.swift
//  ColorfulBalls
//
//  Created by Marcin Pietrzak on 23.03.2017.
//  Copyright © 2017 Marcin Pietrzak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gestrec = UITapGestureRecognizer(target: self, action: #selector(self.viewTapped(gs:)))
        self.view.addGestureRecognizer(gestrec)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    func viewTapped(gs:UITapGestureRecognizer) {
       let position = gs.location(in: self.view)
        
        print(position)
        
        let iv = MyOwnView()
        
        self.view.addSubview(iv)
        iv.showMeAtPoint(point: position)
    }
    
    
}

