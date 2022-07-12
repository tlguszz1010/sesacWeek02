//
//  SegmentViewController.swift
//  sesacWeek02
//
//  Created by 박시현 on 2022/07/12.
//

import UIKit

//enum musicType: Int {
//    case all = 0
//    case korea = 1
//    case other = 2
//}
class SegmentViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentControlValuedChanged(segmentControl)
        // Do any additional setup after loading the view.
    }
    

    @IBAction func segmentControlValuedChanged(_ sender: UISegmentedControl) {
        
//        if segmentControl.selectedSegmentIndex == musicType.all.rawValue {
//
//        } else if segmentControl.selectedSegmentIndex == musicType.korea.rawValue {
//
//        }
                    
        if segmentControl.selectedSegmentIndex == 0 {
            resultLabel.text = "첫번째 세그먼트 선택"
        } else if segmentControl.selectedSegmentIndex == 1 {
            resultLabel.text = "두번째 세그먼트 선택"
        } else if segmentControl.selectedSegmentIndex == 2 {
            resultLabel.text = "세번째 세그먼트 선택"
        } else {
            resultLabel.text = "오류"
        }
    }
    

}
