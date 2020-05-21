//
//  SignUpViewController.swift
//  Catering
//
//  Created by Miki Kuromoto on 2020/05/21.
//  Copyright © 2020 Sky-Angel. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet private weak var nameTextField: UITextField!
        @IBOutlet private weak var emailTextField: UITextField!
        @IBOutlet private weak var passwordTextField: UITextField!
        @IBAction private func didTapSignUpButton() {
            // あとで実装
            let email = emailTextField.text ?? ""
            let password = passwordTextField.text ?? ""
            let name = nameTextField.text ?? ""
            signUp(email: email, password: password, name: name)
        }
    @IBAction func SignUpButton(_ sender: UIButton) {
    }
    private func showErrorIfNeeded(_ errorOrNil: Error?) {
        // エラーがなければ何もしません
          guard let error = errorOrNil else { return }
          let message = "エラーが起きました" // ここは後述しますが、とりあえず固定文字列
          let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
          alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
          present(alert, animated: true, completion: nil)
        }
        private func signUp(email: String, password: String, name: String) {
          Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
              guard let self = self else { return }
              if let user = result?.user {
                  self.updateDisplayName(name, of: user)
              }
              self.showError(error)
          }
        }
        private func updateDisplayName(_ name: String, of user: User) {
            let request = user.createProfileChangeRequest()
            request.displayName = name
            request.commitChanges() { [weak self] error in
                guard let self = self else { return }
                if error != nil {
                    self.sendEmailVerification(to: user)
                }
                self.showError(error)
            }
        }
        private func sendEmailVerification(to user: User) {
            user.sendEmailVerification() { [weak self] error in
                guard let self = self else { return }
                if error != nil {
                    self.showSignUpCompletion()
                }
                self.showError(error)
            }
        }
        private func showSignUpCompletion() {
            // 完了したことを表示する
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
