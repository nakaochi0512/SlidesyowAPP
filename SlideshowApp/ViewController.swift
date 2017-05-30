//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 米住直親 on 2017/05/27.
//  Copyright © 2017年 naochika.yonezumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mobeonButton: UIButton!
    @IBOutlet weak var remobeBotton: UIButton!
    @IBOutlet weak var displayView: UIImageView!
    @IBOutlet weak var playbuttonObject: UIButton!
    var viewset = ["DSC_0001.JPG","DSC_0002.JPG","DSC_0003.JPG"]
    var i:Int = 0
    let timer_sec:Float = 0.0
    var timer:Timer?
 
    

    override func viewDidLoad() {
        super.viewDidLoad()
        imageview()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let enlargedimageViewController:EnlargedimageViewController = segue.destination as! EnlargedimageViewController
        enlargedimageViewController.viewName = viewset[i]
        if timer != nil{
            self.timer?.invalidate()
            playbuttonObject.setTitle("再生", for: .highlighted)
            playbuttonObject.setTitle("再生", for: .normal)
            
    }
    }
    @IBAction func unwind(unwindSegue: UIStoryboardSegue ){
    }
    
    //進むボタン
    @IBAction func moveOn(_ sender: UIButton) {
        moveonin()
    }
    //戻るボタン
    @IBAction func reMove(_ sender: Any) {
        if i > 0 {
            i -= 1
            imageview()
        }else{
            i = viewset.count  - 1
            imageview()
        }
    }

    //スタート・ストップボタン
    @IBAction func playStop(_ sender: Any) {
        if timer != nil{
            self.timer?.invalidate()
            self.timer = nil
            mobeonButton.isEnabled = true
            remobeBotton.isEnabled = true
            playbuttonObject.setTitle("再生", for: .highlighted)
            playbuttonObject.setTitle("再生", for: .normal)
            
            
            
        }else if timer == nil{
            mobeonButton.isEnabled = false
            remobeBotton.isEnabled = false
            playbuttonObject.setTitle("一時停止", for:.highlighted)
            playbuttonObject.setTitle("一時停止", for: .normal)
            
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target:self, selector:#selector(moveonin), userInfo: nil, repeats: true)
        }
    }
    
    func imageview(){
      
        displayView.image = UIImage(named: viewset[i])
        
    }
    func moveonin(){
        if i < viewset.count-1{
            i += 1
            imageview()
        }else{
            i = 0
            imageview()
        }
    }
}
