//
//  OpenChatViewController.swift
//  Nav&TabBarByCode
//
//  Created by zaehorang on 2023/08/11.
//

import UIKit

class OpenChatViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeUI()
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
            firstLabel.text = "Open Chat"
            firstLabel.textColor = .white
            firstLabel.font = UIFont.boldSystemFont(ofSize: 20)
            
            navigationBar.addSubview(firstLabel)
        }
        
    }
    
    
    
    
    
}
