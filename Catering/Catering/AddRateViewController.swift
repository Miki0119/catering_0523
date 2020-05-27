//
//  AddRateViewController.swift
//  Catering
//
//  Created by Miki Kuromoto on 2020/05/25.
//  Copyright © 2020 Sky-Angel. All rights reserved.
//

import UIKit

class AddRateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToAddRate(_ sender: Any) {
    //ボタンなどのtapアクション
            self.performSegue(withIdentifier: "toSegueViewController", sender: nil)
        }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "AddRateControllerに遷移する際のsegue identifier" {
                let nextVC = segue.destination as! AddRateViewController
                nextVC.beforeVCInput = self.myTextField.text
            }
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
