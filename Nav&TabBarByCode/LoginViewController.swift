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
    
    @objc  func loginButtonTapped() {
        // 탭바컨트롤러의 생성
        let tabBarVC = UITabBarController()
        
        // 첫번째 화면은 네비게이션컨트롤러로 만들기 (기본루트뷰 설정)
        let vc1 = UINavigationController(rootViewController: FriendsViewController())
        let vc2 = UINavigationController(rootViewController: ChatsViewController())
        let vc3 = UINavigationController(rootViewController: OpenChatViewController())
        let vc4 = UINavigationController(rootViewController: ShoppingViewController())
        let vc5 = UINavigationController(rootViewController: MoreViewController())
        
        
        // 탭바로 사용하기 위한 뷰 컨트롤러들 설정
        tabBarVC.setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: false)
        tabBarVC.modalPresentationStyle = .fullScreen
        tabBarVC.tabBar.backgroundColor = .black
        tabBarVC.tabBar.tintColor = .white
        
        // 탭바 이미지 설정 (이미지는 애플이 제공하는 것으로 사용)
        guard let items = tabBarVC.tabBar.items else { return }
        
        items[0].image = UIImage(systemName: "person")
        items[1].image = UIImage(systemName: "message")
        items[2].image = UIImage(systemName: "plus.message.fill")
        items[3].image = UIImage(systemName: "bag")
        items[4].image = UIImage(systemName: "square.grid.3x3.topright.filled")
        
        // 프리젠트로 탭바를 띄우기
        present(tabBarVC, animated: true, completion: nil)
    }
    
}
