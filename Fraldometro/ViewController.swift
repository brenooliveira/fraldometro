//
//  ViewController.swift
//  Fraldometro
//
//  Created by Breno Oliveira on 29/09/15.
//
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var picker:UIPickerView!
    @IBOutlet weak var lblAge: UILabel!
    
    let months = ["1 - 3", "4 - 6", "7 - 9", "9 - 12"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 229/255.0, green: 82/255.0, blue: 102/255.0, alpha: 1.0)
        picker.delegate = self
        picker.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return months.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return months[row]
    }

}

