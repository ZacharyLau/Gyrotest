//
//  ViewController.swift
//  Gyrotest
//
//  Created by Zachary Kanzhe Liu on 2018-05-13.
//  Copyright © 2018 Zachary Kanzhe Liu. All rights reserved.
//

//unit tool

//gyro



import UIKit
//gyroscope package
import CoreMotion


class ViewController: UIViewController {

    //init motion manager
    //var motion = CMMotionManager()
    let m = gfunction()
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {

        m.staticUpper = 0.033
        m.StaticLower = -0.033
        m.goodResetLower = -0.30
        m.goodActionUpper = 0.30
        m.formConstrainPitch = 65.0
        m.quantity = 5
        
//        m.labelx = labelx
//        m.labely = labely
//        m.labelz = labelz
//
        m.setUpdateInterval(time: 0.02)
        m.startRecord()
       
        print("set finished")

        
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBOutlet weak var labelx: UILabel!
    @IBOutlet weak var labely: UILabel!
    @IBOutlet weak var labelz: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!

    
    @IBAction func buttonAction(_ sender: UIButton) {
        
      
            if sender==button1{
                labelx.text = "0"
                labely.text = "0"
                labelz.text = "0"
            }

    }

    @IBAction func button2Action(_ sender: UIButton) {
        
        if sender==button2{
            labelx.text = "0"
            labely.text = "0"
            labelz.text = "0"
            let l = functions()
            print("number from function: " , l.number(string: "yolo"))
        }

    }
}

