//
//  CommentViewController.swift
//  Instagram
//
//  Created by USER on 2018/12/23.
//  Copyright © 2018年 仙台東部不動産. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import SVProgressHUD

class CommentViewController: UIViewController
{
    @IBOutlet weak var navigationBar: UINavigationBar!
    @IBOutlet weak var imageProfile: UIImageView!
    @IBOutlet weak var commentText: UITextView!
    
    var postArray: [PostData] = []
    
    // DatabaseのobserveEventの登録状態を表す
    var observing = false
   
    @IBAction func buckButton_clicked(_ sender: Any) {
        commentText.resignFirstResponder()
        dismiss(animated: true, completion: nil)


    }
}
