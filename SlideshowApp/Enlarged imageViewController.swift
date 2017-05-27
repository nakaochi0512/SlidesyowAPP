//
//  Enlarged imageViewController.swift
//  SlideshowApp
//
//  Created by 米住直親 on 2017/05/27.
//  Copyright © 2017年 naochika.yonezumi. All rights reserved.
//

import UIKit

class EnlargedimageViewController: UIViewController {
    @IBOutlet weak var imageViewEn: UIImageView!
    var viewName:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
       
        imageViewEn.image = UIImage(named:viewName)
        
        
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    

}
