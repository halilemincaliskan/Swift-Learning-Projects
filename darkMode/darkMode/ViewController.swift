//
//  ViewController.swift
//  darkMode
//
//  Created by Halil on 1.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var switchButton: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func switchAction(_ sender: Any) {
        if switchButton.isOn {
            view.backgroundColor = UIColor.systemBackground
            titleLabel.text = "Light Side"
            titleLabel.textColor = UIColor.black
            imageView.image = UIImage(named: "light-side")
            switchButton.setOn(true, animated: true)
        } else {
            view.backgroundColor = UIColor.darkGray
            titleLabel.text = "Dark Side"
            titleLabel.textColor = UIColor.white
            imageView.image = UIImage(named: "dark-side")
            switchButton.setOn(false, animated: true)
        }
    }
    
}

