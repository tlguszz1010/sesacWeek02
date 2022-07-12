//
//  secondViewController.swift
//  sesacWeek02
//
//  Created by 박시현 on 2022/07/11.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet var buttonList: [UIButton]!
    
    @IBOutlet var labelList: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var idx:[String] = ["ddd", "sddd", "dasf", "asdfas", "zzzz", "asdfasdf", "asdfdsaf", "Dasf", "adsf"]
        
        var x = 0
        // Do any additional setup after loading the view.
        for i in labelList {
            i.text = idx[x]
            x += 1
        }
//        for i in buttonList {
//            i.setTitle =
//        }
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        
    }
    
    

}
