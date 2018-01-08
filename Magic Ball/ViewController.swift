//
//  ViewController.swift
//  Magic Ball
//
//  Created by Macbook Air on 1/6/18.
//  Copyright © 2018 Xi Xia. All rights reserved.
//

import UIKit

class RoundedButton: UIButton{
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = (1/UIScreen.main.nativeScale)*3
        layer.borderColor = tintColor.cgColor
        
        layer.cornerRadius = frame.height/2
        
        titleLabel?.adjustsFontForContentSizeCategory=true
        
        
    }
}

class ViewController: UIViewController {
    
    var randomAnswerIndex: Int = 0

    @IBOutlet weak var askButton: RoundedButton!
    @IBOutlet weak var ballView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadAnswerForBall (){
        randomAnswerIndex = Int(arc4random_uniform(5))+1
        ballView.image = UIImage(named:"ball\(randomAnswerIndex)")
    }

    @IBAction func askButton(_ sender: RoundedButton) {
        loadAnswerForBall()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        askButton.sendActions(for: .touchUpInside)
    }
}

