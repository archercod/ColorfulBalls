//
//  MyOwnView.swift
//  ColorfulBalls
//
//  Created by Marcin Pietrzak on 23.03.2017.
//  Copyright © 2017 Marcin Pietrzak. All rights reserved.
//

import UIKit

class MyOwnView: UIImageView {

    init() {
        super.init(image: UIImage(named: "p-\(arc4random()%6)"))
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("")
    }
    
    func showMeAtPoint(point: CGPoint){
        self.center = point
        
        self.alpha = 0
        
        UIView.animate(withDuration: 0.5, animations: {
            self.alpha = 1
        }, completion: {
            (b:Bool)-> Void in
            self.hideMeAtPoint(point: point)
        })
    }
    
    func hideMeAtPoint(point: CGPoint){
        UIView.animate(withDuration: 0.5, animations: {
            self.alpha = 0
            self.bounds = CGRect(x: 0, y: 0, width: 0, height: 0)
        }, completion: {
            (b:Bool)-> Void in
            self.removeFromSuperview()
        })
    }

    
}
