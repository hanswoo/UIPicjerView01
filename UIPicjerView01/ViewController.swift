//
//  ViewController.swift
//  UIPicjerView01
//
//  Created by D7702_10 on 2018. 4. 19..
//  Copyright © 2018년 jik. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate,
UIPickerViewDataSource{
    

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var mypic: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //ViewController delegate 연결
        mypic.delegate = self
        mypic.dataSource = self
    }
    //UIPickerViewDataSource method
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        if component == 0 {
            return 10
        }else {
            return 50
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        if component == 0{
            return "1st component \(row)"
        }else{
            return "2nd component \(row)"
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        myLabel.text = "comp = \(component) row = \(row)"
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

