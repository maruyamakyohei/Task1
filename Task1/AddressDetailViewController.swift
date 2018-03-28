//
//  AddressDetailViewController.swift
//  Task1
//
//  Created by TechLanb.4 on 2018/03/12.
//  Copyright © 2018年 TechLanb.4. All rights reserved.
//

import UIKit

class AddressDetailViewController: UIViewController {

    // MARK: - IBOutlet
    @IBOutlet weak var mailLabel: UILabel!

    // MARK: - IBOutlet
    @IBOutlet weak var telLabel: UILabel!
    
    // 前画面で選択したユーザのメールアドレス
    var selectMail: String = ""
    
    // 前画面で選択したユーザの電話番号
    var selectTel: String = ""
    
    // MARK: - Initializer
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
    }
    
    init(mail: String, tel: String) {
        selectMail = mail
        selectTel = tel
        
        super.init(nibName: nil, bundle: nil)
    }
    
    convenience init() {
        self.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // NavigationBarのタイトルを設定
        self.navigationItem.title = "連絡先詳細"
        
        mailLabel.text = selectMail
        telLabel.text = selectTel
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
