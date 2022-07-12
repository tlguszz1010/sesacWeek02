//
//  ViewController.swift
//  sesacWeek02
//
//  Created by 박시현 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    
    @IBOutlet weak var textLabel1: UILabel!
    @IBOutlet weak var textLabel2: UILabel!
    @IBOutlet weak var textLabel3: UILabel!
    @IBOutlet weak var textLabel4: UILabel!
    @IBOutlet weak var textLabel5: UILabel!
    @IBOutlet weak var textLabel6: UILabel!
    @IBOutlet weak var textLabel7: UILabel!
    @IBOutlet weak var textLabel8: UILabel!
    @IBOutlet weak var textLabel9: UILabel!
    
    @IBOutlet weak var navigationBar: UINavigationBar!
    
    var cnt1 : Int = 0
    var cnt2 : Int = 0
    var cnt3 : Int = 0
    var cnt4 : Int = 0
    var cnt5 : Int = 0
    var cnt6 : Int = 0
    var cnt7 : Int = 0
    var cnt8 : Int = 0
    var cnt9 : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button1.imageView?.contentMode = .scaleAspectFit
        button2.imageView?.contentMode = .scaleAspectFit
        button3.imageView?.contentMode = .scaleAspectFit
        button4.imageView?.contentMode = .scaleAspectFit
        button5.imageView?.contentMode = .scaleAspectFit
        button6.imageView?.contentMode = .scaleAspectFit
        button7.imageView?.contentMode = .scaleAspectFit
        button8.imageView?.contentMode = .scaleAspectFit
        button9.imageView?.contentMode = .scaleAspectFit
        
        textLabel1.text = "행복해 \(cnt1)"
        textLabel2.text = "사랑해 \(cnt2)"
        textLabel3.text = "좋아해 \(cnt3)"
        textLabel4.text = "당황해 \(cnt4)"
        textLabel5.text = "속상해 \(cnt5)"
        textLabel6.text = "우울해 \(cnt6)"
        textLabel7.text = "심심해 \(cnt7)"
        textLabel8.text = "시무룩해 \(cnt8)"
        textLabel9.text = "궁금해 \(cnt9)"
        
        textLabel1.textAlignment = .center
        textLabel2.textAlignment = .center
        textLabel3.textAlignment = .center
        textLabel4.textAlignment = .center
        textLabel5.textAlignment = .center
        textLabel6.textAlignment = .center
        textLabel7.textAlignment = .center
        textLabel8.textAlignment = .center
        textLabel9.textAlignment = .center
        
        navigationBar.shadowImage = UIImage()
        
        // 코드로 이미지 설정하기
        // let image = UIImage(named: "sesac_slime6")?.withRenderingMode(.alwaysOriginal)
        // button1.setImage(image, for: .normal)
        
        // 애플 시스템 심볼 쓰고 싶을 때
        // let systemImage = UIImage(systemName: <#T##String#>)
        
    }
    
    @IBAction func button1Clicked(_ sender: UIButton) {
        cnt1 += 1
        textLabel1.text = "행복해 \(cnt1)"
        showAlertController()
    }
    @IBAction func button2Clicked(_ sender: UIButton) {
        cnt2 += 1
        textLabel2.text = "사랑해 \(cnt2)"
        showAlertController()
    }
    @IBAction func button3Clicked(_ sender: UIButton) {
        cnt3 += 1
        textLabel3.text = "좋아해 \(cnt3)"
        showAlertController()
    }
    @IBAction func button4Clicked(_ sender: UIButton) {
        cnt4 += 1
        textLabel4.text = "당황해 \(cnt4)"
    }
    @IBAction func button5Clicked(_ sender: UIButton) {
        cnt5 += 1
        textLabel5.text = "속상해 \(cnt5)"
    }
    @IBAction func button6Clicked(_ sender: UIButton) {
        cnt6 += 1
        textLabel6.text = "우울해 \(cnt6)"
    }
    @IBAction func button7Clicked(_ sender: UIButton) {
        cnt7 += 1
        textLabel7.text = "심심해 \(cnt7)"
    }
    @IBAction func button8Clicked(_ sender: UIButton) {
        cnt8 += 1
        textLabel8.text = "시무룩해 \(cnt8)"
    }
    @IBAction func button9Clicked(_ sender: UIButton) {
        cnt9 += 1
        textLabel9.text = "궁금해 \(cnt9)"
    }
    
    func showAlertController() {
        // 1. 흰색 바탕 만들기 : UIAlertController, 글씨 넣어주기
        let alert = UIAlertController(title: nil, message: "여기는 메시지가 들어갑니다", preferredStyle: .actionSheet) // actionSheet일때는 보통 타이틀을 안쓴다
        
        
        // 2. 버튼 만들어주기
        let ok = UIAlertAction(title: "확인", style: .destructive, handler: nil)
        let cancel = UIAlertAction(title: "취소버튼입니다.", style: .cancel, handler: nil)
        let web = UIAlertAction(title: "새 창으로 열기", style: .default, handler: nil)
        let copy = UIAlertAction(title: "복사하기", style: .default, handler: nil)
        
        // 3. 버튼을 하나로 합쳐주는 작업 (1 + 2)
        alert.addAction(copy)
        alert.addAction(web)
        alert.addAction(cancel)
        alert.addAction(ok)
        
        // 4. 띄워주기
        present(alert, animated: true, completion: nil)
    }

}

