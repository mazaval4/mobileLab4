//
//  ViewController.swift
//  Lab4
//
//  Created by mazaval4 on 3/1/17.
//  Copyright © 2017 mazaval4. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource{

    
    var array =  ["School","Travel","Hike"]

    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var desc: UITextField!
    @IBOutlet weak var addressTitle: UITextField!
    @IBOutlet weak var addressStreet: UITextField!
    @IBOutlet weak var elevation: UITextField!
    @IBOutlet weak var latitude: UITextField!
    @IBOutlet weak var longitude: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        elevation.keyboardType = UIKeyboardType.numberPad;
        latitude.keyboardType = UIKeyboardType.numberPad;
        longitude.keyboardType = UIKeyboardType.numberPad;
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {      
        return array[row];
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return array.count;
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1;
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

