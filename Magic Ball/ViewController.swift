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
        layer.borderWidth = 1/UIScreen.main.nativeScale
        layer.borderColor = UIColor.white.cgColor
    }
}

class ViewController: UIViewController {

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


}

