//
//  ViewController.swift
//  TestImageResize
//
//  Created by ivy on 16/10/11.
//  Copyright © 2016年 ivy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resizeImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func resizeImage(){

        //注意: 用了Image Asset调整,就不要再用下面的代码了
        let origin = UIImage(named: "ivy")

        let dealOne = origin?.resizableImage(withCapInsets: UIEdgeInsets(top:30, left:30, bottom:30, right:30), resizingMode: .stretch)
        
       imageView.image = dealOne
    }


}

