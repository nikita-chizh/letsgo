//
//  ViewController.swift
//  LetsGo
//
//  Created by Никита on 20/04/2018.
//  Copyright © 2018 Никита. All rights reserved.
//

import UIKit

class UserViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        avatar.isUserInteractionEnabled = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var nameField: UILabel!
    @IBOutlet weak var infoField: UILabel!
    @IBOutlet weak var bdateField: UILabel!
    @IBOutlet weak var avatar: UIImageView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        nameField.text = UserController.user.name
        infoField.text = UserController.user.info
        bdateField.text = UserController.user.birthDate
    }
    
    //MARK:
    //работа с фото
    @IBAction func addPhoto(_ sender: Any) {
        // UIImagePickerController is a view controller that lets a user pick media from their photo library.
        let imagePickerController = UIImagePickerController()
        
        // Only allow photos to be picked, not taken.
        imagePickerController.sourceType = .photoLibrary
        
        // Make sure ViewController is notified when the user picks an image.
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController){
        // Dismiss the picker if the user canceled.
        dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        // The info dictionary may contain multiple representations of the image. You want to use the original.
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        
        // Set photoImageView to display the selected image.
        avatar.image = selectedImage
        //добавим в массив юзеров
        UserController.user.user_photos.append(selectedImage)
        print(UserController.user.user_photos.count)
        // Dismiss the picker.
        dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

