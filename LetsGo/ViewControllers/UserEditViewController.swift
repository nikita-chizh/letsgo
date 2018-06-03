//
//  UserEditViewController.swift
//  LetsGo
//
//  Created by Никита on 20/04/2018.
//  Copyright © 2018 Никита. All rights reserved.
//

import UIKit

class UserEditViewController: UIViewController {
    //Кнопки и действия редактирования
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var infoField: UITextField!
    @IBOutlet weak var dateField: UIDatePicker!
    var dateFormatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.dateField.datePickerMode = .date
        self.dateField.date = NSDate.init(timeIntervalSinceNow: 0) as Date
        dateFormatter.dateFormat = "MM/dd/yyyy"
    }
    
    @IBAction func saveInfo(_ sender: Any) {
        UserController.user.name = nameField.text!
        UserController.user.info = infoField.text!
        UserController.user.birthDate = dateFormatter.string(from: dateField.date)
        print("DATE=", UserController.user.birthDate)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func canselEdit(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
