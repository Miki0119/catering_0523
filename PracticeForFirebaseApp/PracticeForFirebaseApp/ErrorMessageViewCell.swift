//
//  ErrorMessageViewCell.swift
//  PracticeForFirebaseApp
//
//  Created by Miki Kuromoto on 2020/05/21.
//  Copyright © 2020 Sky-Angel. All rights reserved.
//

import UIKit

private func showErrorIfNeeded(_ errorOrNil: Error?) {
    // エラーがなければ何もしません
    guard let error = errorOrNil else { return }
    
    let message = "エラーが起きました" // ここは後述しますが、とりあえず固定文字列
    let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    present(alert, animated: true, completion: nil)
}

class ErrorMessageViewCell: UICollectionViewCell {
    
}
