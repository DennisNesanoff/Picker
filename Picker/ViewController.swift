//
//  ViewController.swift
//  Picker
//
//  Created by Dennis Nesanoff on 17.10.2019.
//  Copyright © 2019 Dennis Nesanoff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    let picker = UIPickerView()
    let datePicker = UIDatePicker()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        picker.center = view.center
        datePicker.center = view.center
        datePicker.datePickerMode = .time
        
//        picker.dataSource = self
//        picker.delegate = self
        
        view.addSubview(datePicker)
        
        datePicker.addTarget( self, action: #selector(datePickerChanged), for: .valueChanged)
    }
    
    @objc func datePickerChanged() {
        print("Date is \(datePicker.date)")
    }
}

//extension ViewController: UIPickerViewDataSource {
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 1
//    }
//
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return 30
//    }
//}
//
//extension ViewController: UIPickerViewDelegate {
//
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        let title = "Row is \(row + 1)"
//        return title
//    }
//}
