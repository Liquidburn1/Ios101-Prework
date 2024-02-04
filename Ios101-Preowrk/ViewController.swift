//
//  ViewController.swift
//  Ios101-Preowrk
//
//  Created by Hassan Ali Qadir on 2/3/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
        
        // Randomly change the position of the button
        let randomX = CGFloat.random(in: 0...(view.frame.width - sender.frame.width))
            let randomY = CGFloat.random(in: (view.frame.height / 2)...(view.frame.height - sender.frame.height))
            sender.frame.origin = CGPoint(x: randomX, y: randomY)
       
        
        func changeColor() -> UIColor{

                let red = CGFloat.random(in: 0...1)
                let green = CGFloat.random(in: 0...1)
                let blue = CGFloat.random(in: 0...1)

                return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
            }
    }
    
}

