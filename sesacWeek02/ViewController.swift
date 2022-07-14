//
//  ViewController.swift
//  sesacWeek02
//
//  Created by 박시현 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var buttonList: [UIButton]!
    @IBOutlet var labelList: [UILabel]!
    
    
    @IBOutlet weak var navigationBar: UINavigationBar!
    
    var idx = 0
    var cnt = 0
    var cntDic : [String:Int] = ["행복해" : 0, "사랑해" : 0, "좋아해" : 0, "당황해" : 0, "속상해" : 0, "우울해" : 0, "심심해" : 0, "시무룩해" : 0, "궁금해" : 0]
    // 그냥 var로 선언하면 할당하는 순서가 꼬여서 발생한 문제? lazy키워드를 통해 다 할당하고나서 data에 최초 접근시 할당하도록 ? - 좀더 찾아보기
    lazy var labelText = Array(cntDic.keys)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for label in labelList {
            // 텍스트 가운데 정렬
            label.textAlignment = .center
            label.text = labelText[idx] + " \(cnt)"
            idx += 1
        }
        
        
        navigationBar.shadowImage = UIImage()

        // textLabel1.text = setUserNickname()
        // view.backgroundColor = example().0
        // button1.setImage(UIImage(named: example().2), for: .normal)
        
        // 코드로 이미지 설정하기
        // let image = UIImage(named: "sesac_slime6")?.withRenderingMode(.alwaysOriginal)
        // button1.setImage(image, for: .normal)
        
        // 애플 시스템 심볼 쓰고 싶을 때
        // let systemImage = UIImage(systemName: <#T##String#>)
        
    }
    
    // 배경색, 레이블, 이미지
//    func example() -> (UIColor, String, String) {
//        let color: [UIColor] = [.yellow, .red, .blue]
//        let image: [String] = ["sesac_slime6", "sesac_slime7", "sesac_slime8", "sesac_slime5"]
//        return (color.randomElement()!, "고래밥", image.randomElement()!)
//    }
//
//    func setUserNickname() -> String {
//        let nickName = ["고래밥", "칙촉", "격투가"]
//        let select = nickName.randomElement()!
//        return "저는 \(select)입니다"
//    }
    
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        // showAlertController()
        
        // 클릭했을 때 cntDic 카운트 관리하는 변수에 값 업데이트
        cntDic[labelText[sender.tag]]! += 1
        
        // 클릭했을 때 딕셔너리 값을 레이블에 반영하는 것 생각해보기
        labelList[sender.tag].text = labelText[sender.tag] + " \(cntDic[labelText[sender.tag]]!)"
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

