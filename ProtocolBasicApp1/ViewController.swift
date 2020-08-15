//
//  ViewController.swift
//  ProtocolBasicApp1
//
//  Created by 松島優希 on 2020/08/15.
//  Copyright © 2020 松島優希. All rights reserved.
//

import UIKit

//プロトコルを宣言する。
class ViewController: UIViewController,CatchProtocol {
    
    
    @IBOutlet weak var label: UILabel!
    
    var count:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func catchData(count: Int) {
        
        label.text = String(count)
    }

    @IBAction func next(_ sender: Any) {
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextVC = segue.destination as! NextViewController
        
        nextVC.delegate = self
        
    }
    
}

