//
//  SayHelloViewController.swift
//  SecondKadaiApp
//
//  Created by Tomoo Motoki on 2017/06/08.
//  Copyright © 2017年 monaldo. All rights reserved.
//

import UIKit

class SayHelloViewController: UIViewController {
    
    var usrName:String? = ""
    
    @IBOutlet weak var helloText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let name: String = usrName!
        helloText.text = "こんにちは、\(name)さん"
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
