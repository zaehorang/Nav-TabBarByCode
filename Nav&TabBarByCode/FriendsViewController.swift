//
//  FriendsViewController .swift
//  Nav&TabBarByCode
//
//  Created by zaehorang on 2023/08/11.
//

import UIKit

class FriendsViewController: UIViewController {
    
    // 로그인 여부에 관련된 참/거짓 저장하는 속성
    var isLoggedIn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeUI()
    }
    
    // 다음화면을 띄우는 더 정확한 시점 ⭐️⭐️⭐️ -> 뷰가 뜬 다음에 로그인 상황 판단하기
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // ⭐️ 로그인이 되어있지 않다면 로그인화면 띄우기
        if !isLoggedIn {
            let vc = LoginViewController()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: false, completion: nil)
        }
        
    }
    
    // 네비게이션 바를 코드로 설정하기
    func makeUI() {
        view.backgroundColor = .gray
        
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.backgroundColor = .black
        navigationController?.navigationBar.standardAppearance = navigationBarAppearance
        navigationController?.navigationBar.scrollEdgeAppearance = navigationBarAppearance
        navigationController?.navigationBar.tintColor = .white
        
        navigationItem.scrollEdgeAppearance = navigationBarAppearance
        navigationItem.standardAppearance = navigationBarAppearance
        navigationItem.compactAppearance = navigationBarAppearance
        
        navigationController?.setNeedsStatusBarAppearanceUpdate()
        
        navigationController?.navigationBar.isTranslucent = false
        
        // 네비게이션 바에 label 추가하기
        if let navigationBar = self.navigationController?.navigationBar {
            let firstFrame = CGRect(x: 10, y: 0, width: navigationBar.frame.width/2, height: 60)
            
            let firstLabel = UILabel(frame: firstFrame)
            firstLabel.text = "Friedns"
            firstLabel.textColor = .white
            firstLabel.font = UIFont.boldSystemFont(ofSize: 20)
            
            navigationBar.addSubview(firstLabel)
        }
        
    }
    
    
    
}
