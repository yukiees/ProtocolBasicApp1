//
//  NextViewController.swift
//  ProtocolBasicApp1
//
//  Created by 松島優希 on 2020/08/15.
//  Copyright © 2020 松島優希. All rights reserved.
//

import UIKit

protocol CatchProtocol{
    //規則を決める
    func catchData(count:Int)
}

class NextViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    
    var count:Int = 0
    
    var delegate:CatchProtocol?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func plus(_ sender: Any) {
        
        count = count + 1
        counterLabel.text = String(count)
        
    }
    
    @IBAction func back(_ sender: Any) {
        
        //デリゲートメソッドを任せたクラスで発動させる。
        delegate?.catchData(count: count)
        dismiss(animated: true, completion: nil)
    }
    

}
