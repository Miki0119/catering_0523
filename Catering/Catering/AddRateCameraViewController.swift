//
//  AddRateCameraViewController.swift
//  Catering
//
//  Created by Miki Kuromoto on 2020/05/27.
//  Copyright © 2020 Sky-Angel. All rights reserved.
//

import UIKit

class AddRateCameraViewController: UIViewController , UINavigationControllerDelegate , UIImagePickerControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var pictureImage: UIImageView!
    
    //カメラを起動するタップを実行
    @IBAction func cameraButtonAction(_ sender: Any) {
        //カメラかフォトライブラリどちらから画像を取得するか選択
        let alertController = UIAlertController(title: "Please confirm", message: "Choose your Photo", preferredStyle: .actionSheet)
        
        //カメラが利用可能かチェック
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            //カメラを起動するための選択肢を定義
            let cameraAction = UIAlertAction(title: "Camera", style: .default, handler: { (action) in
                //カメラを起動
                let imagePickerController = UIImagePickerController()
                imagePickerController.sourceType = .camera
                imagePickerController.delegate = self
                self.present(imagePickerController, animated: true, completion: nil)
            })
            alertController.addAction(cameraAction)
        }
            
        
        //フォトライブラリが利用可能かチェック
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            //フォトライブラリを起動するための選択肢を定義
            let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default, handler: { (action) in
                //フォトライブラリを起動
                let imagePickerController = UIImagePickerController()
                imagePickerController.sourceType = .photoLibrary
                imagePickerController.delegate = self
                self.present(imagePickerController, animated: true, completion: nil)
            })
            alertController.addAction(photoLibraryAction)
        }
    
        //キャンセルの選択肢を定義
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        //iPadで落ちてしまう対策
        alertController.popoverPresentationController?.sourceView = view
        
        //選択肢を画面に表示
        present(alertController, animated: true, completion: nil)
    }
        
        //(1)撮影が終わったときに呼ばれるdelegateメソッド
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
            //(2)撮影した画像を配置したpictureImageに渡す
            pictureImage.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
            //（３）モーダルビューを閉じる
            dismiss(animated: true, completion: nil)
        }
    }
    
    @IBOutlet weak var pictureImage2: UIImageView!
   
    //2カメラを起動するタップを実行
    @IBAction func cameraButtonAction2(_ sender: Any) {
        //カメラかフォトライブラリどちらから画像を取得するか選択
            let alertController = UIAlertController(title: "Please confirm", message: "Choose your Photo", preferredStyle: .actionSheet)
            
            //カメラが利用可能かチェック
            if UIImagePickerController.isSourceTypeAvailable(.camera){
                //カメラを起動するための選択肢を定義
                let cameraAction = UIAlertAction(title: "Camera", style: .default, handler: { (action) in
                    //カメラを起動
                    let imagePickerController = UIImagePickerController()
                    imagePickerController.sourceType = .camera
                    imagePickerController.delegate = self
                    self.present(imagePickerController, animated: true, completion: nil)
                })
                alertController.addAction(cameraAction)
            }
                
            
            //フォトライブラリが利用可能かチェック
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                //フォトライブラリを起動するための選択肢を定義
                let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default, handler: { (action) in
                    //フォトライブラリを起動
                    let imagePickerController = UIImagePickerController()
                    imagePickerController.sourceType = .photoLibrary
                    imagePickerController.delegate = self
                    self.present(imagePickerController, animated: true, completion: nil)
                })
                alertController.addAction(photoLibraryAction)
            }
        
            //キャンセルの選択肢を定義
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            alertController.addAction(cancelAction)
            
            //iPadで落ちてしまう対策
            alertController.popoverPresentationController?.sourceView = view
            
            //選択肢を画面に表示
            present(alertController, animated: true, completion: nil)
        }
        
    
                //(1)撮影が終わったときに呼ばれるdelegateメソッド
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
                    //(2)撮影した画像を配置したpictureImage2に渡す
                    pictureImage2.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
                    //（３）モーダルビューを閉じる
                    dismiss(animated: true, completion: nil)
                }
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


