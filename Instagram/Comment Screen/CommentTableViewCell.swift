//
//  CommentTableViewCell.swift
//  Instagram
//
//  Created by USER on 2018/12/20.
//  Copyright © 2018年 仙台東部不動産. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import SVProgressHUD


class CommentTableViewCell: UITableViewCell {
    @IBOutlet weak var userProfileimage: UIImageView!
    
    @IBOutlet weak var commentTextField: UITextField!
    // 投稿ボタンをタップしたときに呼ばれるメソッド
    @IBAction func commentButton(_ sender: UIButton) {
        
        // postDataに必要な情報を取得しておく
        let name = Auth.auth().currentUser?.displayName
        
        // 辞書を作成してFirebaseに保存する
        let postRef = Database.database().reference().child(Const.PostPath)
        let postDic = ["comment": commentTextField.text!]
        postRef.childByAutoId().setValue(postDic)
        
        // HUDで投稿完了を表示する
        SVProgressHUD.showSuccess(withStatus: "投稿しました")
        
        // 全てのモーダルを閉じる
        UIApplication.shared.keyWindow?.rootViewController?.dismiss(animated: true, completion: nil)
        }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
