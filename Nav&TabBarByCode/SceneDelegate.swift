//
//  SceneDelegate.swift
//  Nav&TabBarByCode
//
//  Created by zaehorang on 2023/08/11.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    // 첫 화면이 뜨기 전에, 탭바를 내장시키기
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
 
            guard let windowScene = (scene as? UIWindowScene) else { return }
            window = UIWindow(frame: windowScene.coordinateSpace.bounds)
            window?.windowScene = windowScene
        
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
        
        
        // 기본루트뷰를 탭바컨트롤러로 설정⭐️⭐️⭐️
        window?.rootViewController = tabBarVC
        window?.makeKeyAndVisible()
        }


    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

