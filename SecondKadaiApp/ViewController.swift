//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by Tomoo Motoki on 2017/06/07.
//  Copyright © 2017年 monaldo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // TextFieldのアウトレットを定義
    @IBOutlet weak var usrName: UITextField!
    
    // Buttonのactionを定義
    @IBAction func enterName(_ sender: Any) {
        
        // TextFieldのValueの有無により表示する項目を決定
        if usrName.text != "" {
            self.performSegue(withIdentifier: "nextSegue", sender: nil)
        } else {
            alertMessage()
        }
    }
    
    // 次ページからの戻りとTextFieldのリセット
    @IBAction func unwind(segue: UIStoryboardSegue) {
        usrName.text = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        usrName.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // SayHelloViewControllerへ名前を渡す
        let sayHelloViewController:SayHelloViewController = segue.destination as! SayHelloViewController
        sayHelloViewController.usrName = usrName.text
    }

    func textFieldShouldReturn(_ usrName: UITextField) -> Bool {
        usrName.resignFirstResponder()
        return true
    }
    
    // アラートメッセージを表示
    func alertMessage() {
        let alert = UIAlertController(title: "ご確認ください！", message: "名前が正しく入力されていません。", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }

}

