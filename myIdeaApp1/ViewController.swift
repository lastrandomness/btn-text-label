//
//  ViewController.swift
//  myIdeaApp1
//
//  Created by TikTak on 1/9/19.
//  Copyright © 2019 TikTak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var fsize = 10
    enum action {
        case small
        case large
    }
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myText: UITextField!
    @IBAction func largerBtn(_ sender: Any) {
        txtToLabel()
        fsize = fsize + 3
        myLabel.font = UIFont(name: myLabel.font.fontName, size: CGFloat(update(xFont:.large)))
        print("fsize = \(fsize)")
    }
    @IBAction func blueBtn(_ sender: Any) {
        txtToLabel()
        myLabel.textColor = UIColor.blue
        
    }
    
    @IBAction func smallerBtn(_ sender: Any) {
        txtToLabel()
        
        //var fontSizeSaved = largerF(xFont:10)
        myLabel.font = UIFont(name: myLabel.font.fontName, size:CGFloat(update(xFont:.small)))
        //CGFloat(largerF(xFont:10))
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func txtToLabel() {
        myLabel.text = myText.text
    }
    func update(xFont:action)->Int {
        if (xFont == .small && fsize >= 1){
        fsize -= 3
            
    }
        if(xFont == .large){
            fsize += 3
        }
return fsize
    

}
}
