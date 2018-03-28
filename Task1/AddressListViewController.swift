//
//  ViewController.swift
//  Task1
//
//  Created by TechLanb.4 on 2018/03/03.
//  Copyright © 2018年 TechLanb.4. All rights reserved.
//

import UIKit
import Contacts

class AddressListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    // 連絡先一覧格納用ディクショナリ
    var addressDictionary: Dictionary<String, Dictionary<String, String>> = [:]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // NavigationBarのタイトルを設定
        self.navigationItem.title = "連絡先一覧"
        
        // address.plistから連絡先一覧を取得
        let path = Bundle.main.path(forResource: "Address", ofType: "plist")
        addressDictionary = NSDictionary(contentsOfFile: path!) as! Dictionary<String, Dictionary<String, String>>
        
        // 自作セルをテーブルビューに登録する。
        let addressCell = UINib(nibName: "AddressTableViewCell", bundle: nil)
        tableView.register(addressCell, forCellReuseIdentifier: "AddressCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        
        // ログ出力１
        print("1")
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        // ログ出力2
        print("2")
        
        // 通常は引数のセクションで分岐して値を返却する
        return addressDictionary.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // ログ出力3
        print("3")
        
        // セルを取得する
        let cell = tableView.dequeueReusableCell(withIdentifier: "AddressCell", for: indexPath) as! AddressTableViewCell
        
        // アドレス帳から取得した氏名をラベルに設定する
        let address = addressDictionary["address" + String(indexPath.row)]
        cell.address?.text = address?["name"]
        
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    // セルが選択された時に呼び出される
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // 選択したユーザのメールアドレスと電話番号をアドレス帳から取得
        let address = addressDictionary["address" + String(indexPath.row)]
        let mail = address?["mail"]
        let tel = address?["tel"]
        
        let vc = AddressDetailViewController(mail: mail!, tel: tel!)
        self.navigationController?.pushViewController(vc, animated: true)
    }


}

