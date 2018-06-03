//
//  ScrollViewController.swift
//  LetsGo
//
//  Created by Никита on 21/04/2018.
//  Copyright © 2018 Никита. All rights reserved.
//

import UIKit

class UserPhotoScrollController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PhotoScrollView.isPagingEnabled = true
        let photosNum = UserController.user.user_photos.count
        PhotoScrollView.contentSize = CGSize(width: PhotoScrollView.bounds.width * CGFloat(photosNum), height: PhotoScrollView.bounds.height)
        PhotoScrollView.showsHorizontalScrollIndicator = false
        loadphotos()
    }
    
    @IBAction func swipeBack(_ sender: UISwipeGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var PhotoScrollView: UIScrollView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        loadphotos()
        print("subviews=", PhotoScrollView.subviews.count)
    }
    func loadphotos(){
        for view in PhotoScrollView.subviews {
            view.removeFromSuperview()
        }
        let images = UserController.user.user_photos
        let w = PhotoScrollView.bounds.width
        let h = PhotoScrollView.bounds.height
        for i in 0..<images.count {
            let imageView = UIImageView()
            let x = self.view.frame.size.width * CGFloat(i)
            imageView.frame = CGRect(x: x, y: 0, width: w, height: h)
            imageView.contentMode = .scaleAspectFit
            imageView.image = images[i]
            PhotoScrollView.contentSize.width = PhotoScrollView.frame.size.width * CGFloat(i + 1)
            PhotoScrollView.addSubview(imageView)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

