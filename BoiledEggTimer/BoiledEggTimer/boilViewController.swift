//
//  boilViewController.swift
//  BoiledEggTimer
//
//  Created by Halil on 15.02.2022.
//

import UIKit

class boilViewController: UIViewController {

    @IBOutlet weak var boilLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    var boilType = ""
    var seconds = 0
    var currentSeconds = 0
    var timer = Timer()
    var isTimerRunning = false
    
    func alarm() {
       let defaultAction = UIAlertAction(title: "Okay",
                            style: .default) { (action) in
       }
       
       let alert = UIAlertController(title: "Finished",
             message: "Your Egg Boiled!",
             preferredStyle: .alert)
       alert.addAction(defaultAction)
            
       self.present(alert, animated: true) {
          // The alert was presented
       }
    }
    
    func runTimer() {
         timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(boilViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    @objc func updateTimer() {
        if currentSeconds < 1 {
            timer.invalidate()
            alarm()
        } else {
            currentSeconds -= 1
            timeLabel.text = timeString(time: TimeInterval(currentSeconds))
        }
    }
    func timeString(time:TimeInterval) -> String {
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format:"%02i:%02i", minutes, seconds)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        boilLabel.text = boilType
        timeLabel.text = timeString(time: TimeInterval(seconds))
    }
    
    @IBAction func boilBtnTapped(_ sender: Any) {
        runTimer()
    }
    @IBAction func resetBtnTapped(_ sender: Any) {
        timer.invalidate()
        timeLabel.text = timeString(time: TimeInterval(seconds))
        currentSeconds = seconds
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
