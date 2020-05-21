//
//  SignInViewController.swift
//  Catering
//
//  Created by Miki Kuromoto on 2020/05/21.
//  Copyright © 2020 Sky-Angel. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
   
    @IBOutlet private weak var emailTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    
    @IBAction private func didTapSignInButton() {
            let email = emailTextField.text ?? ""
            let password = passwordTextField.text ?? ""
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] result, error in
                guard let self = self else { return }
                if let user = result?.user {
                    // サインイン後の画面へ
                }
                self.showErrorIfNeeded(error)
            }
        }
    @IBAction func SignIn(_ sender: Any) {
    }
    private func showErrorIfNeeded(_ errorOrNil: Error?) {
        // エラーがなければ何もしません
            guard let error = errorOrNil else { return }
            let message = errorMessage(of: error) // エラーメッセージを取得
            let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        private func errorMessage(of error: Error) -> String {
          var message = "エラーが発生しました"
          guard let errcd = AuthErrorCode(rawValue: (error as NSError).code) else {
              return message
          }
          switch errcd {
            case .networkError: message = "ネットワークに接続できません"
            case .userNotFound: message = "ユーザが見つかりません"
            case .invalidEmail: message = "不正なメールアドレスです"
            case .emailAlreadyInUse: message = "このメールアドレスは既に使われています"
            case .wrongPassword: message = "入力した認証情報でサインインできません"
            case .userDisabled: message = "このアカウントは無効です"
            case .weakPassword: message = "パスワードが脆弱すぎます"
            // これは一例です。必要に応じて増減させてください
            default: break
          }
          return message
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
