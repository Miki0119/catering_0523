//
//  SearchViewController.swift
//  Catering
//
//  Created by Miki Kuromoto on 2020/05/28.
//  Copyright © 2020 Sky-Angel. All rights reserved.
//

import UIKit
import MapKit

class SearchViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Text Fieldのdelegate通知先を設定
        inputText.delegate = self
    }
    
    @IBOutlet weak var inputText: UITextField!
    
    @IBOutlet weak var dispMap: MKMapView!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //キーボードを閉じる(1)
        textField.resignFirstResponder()
        
        // 入力された文字を取り出す（２）
        if let searchKey = textField.text {
            // 入力された文字をデバックエリアに表示（３）
            print(searchKey)
        }
        
        // デフォルト動作を行うのでtrueを返す
        return true
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
