//
//  ViewController.swift
//  BoiledEggTimer
//
//  Created by Halil on 13.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var boilSegment: UISegmentedControl!
    @IBOutlet weak var boilButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func noOption() {
       let defaultAction = UIAlertAction(title: "Okay",
                            style: .default) { (action) in
       }
       
       let alert = UIAlertController(title: "Alert!",
             message: "Please select a boil option.",
             preferredStyle: .alert)
       alert.addAction(defaultAction)
            
       self.present(alert, animated: true) {
       }
    }
    var boilType = ""
    var seconds = 0
    @IBAction func boilClicked(_ sender: Any){
        if (boilSegment.selectedSegmentIndex == 0){
            boilType = "Soft"
            seconds = 4*60
        } else if (boilSegment.selectedSegmentIndex == 1){
            boilType = "Normal"
            seconds = 5*60
        } else if (boilSegment.selectedSegmentIndex == 2){
            boilType = "Coddled"
            seconds = 6*60
            //for test
            //seconds = 5
        } else {
            boilType = "Error"
        }
        if (boilType != "Error"){
            performSegue(withIdentifier: "boilSegue", sender: self)
        }else {
            noOption()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let destinationVC = segue.destination as! boilViewController
            destinationVC.boilType = boilType
            destinationVC.seconds = seconds
            destinationVC.currentSeconds = seconds
        }
}
