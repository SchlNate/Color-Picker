//
//  PickerViewController.swift
//  Color Picker
//
//  Created by Nathan Schlechte on 11/12/17.
//  Copyright © 2017 Nathan Schlechte. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var colorPicker: UIPickerView!
    var current = 0
    var colors = [Color]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colors += [Color(name: "Red", systemColor: UIColor.red),
                   Color(name: "Orange", systemColor: UIColor.orange),
                   Color(name: "Yellow", systemColor: UIColor.yellow),
                   Color(name: "Green", systemColor: UIColor.green),
                   Color(name: "Blue", systemColor: UIColor.blue),
                   Color(name: "Purple", systemColor: UIColor.purple)]
        colorLabel.text = colors[current].name
        self.view.backgroundColor = colors[current].systemColor
        colorPicker.selectRow(current, inComponent: current, animated: true)
        

        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        current = row
        colorLabel.text = colors[current].name
        self.view.backgroundColor = colors[current].systemColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
