//
//  LoginViewController.swift
//  Nav&TabBarByCode
//
//  Created by zaehorang on 2023/08/13.
//

import UIKit

class LoginViewController: UIViewController {
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.titleLabel?.textColor = .white
        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        setupAutoLayout()
    }
    
    func setupAutoLayout() {
        view.addSubview(loginButton)
        
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        loginButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 45).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }
    
    // 버튼 누르면 동작하는 코드 ===> 로그인하면, 디스미스 (탭바가 더 아래에 깔려있음)
    @objc  func loginButtonTapped() {
        
        // 전화면의 isLoggedIn속성에 접근하기 ⭐️
        if let presentingVC = presentingViewController { // 옵셔널 바인딩
            let tabBarCon = presentingVC as! UITabBarController   // 탭바에 접근하기
            let nav = tabBarCon.viewControllers?[0] as! UINavigationController  // 네비게이션바에 접근하기
            let firstVC = nav.viewControllers[0] as! FriendsViewController  // FriendsVC에 접근하기
            firstVC.isLoggedIn.toggle()  // 로그인 되었다고 상태 변화시키기 (실제 앱에서 이렇게 구현할 일은 없음)
        }
        
        dismiss(animated: true, completion: nil)
        
    }
    
}
