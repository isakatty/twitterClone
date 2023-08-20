//
//  MainTabController.swift
//  TwitterTutorial
//
//  Created by Jisoo HAM on 2023/08/20.
//

import UIKit

class MainTabController: UITabBarController {
    
    // MARK: - Properties
    
    
    let button = UIButton(type: .system)
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.backgroundColor = .systemGray5
        configureViewControllers()
        configureUI()
    }
    //MARK: - 123
    @objc func actionButtonTapped() {
        
    }
    
    //MARK: - Helpers
    
    func configureUI(){
        button.tintColor = .white
        button.backgroundColor = .twitterBlue
        button.setImage(UIImage(named: "new_tweet"), for: .normal)
        button.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
        
        view.addSubview(button)
        
        button.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingBottom: 64, paddingRight: 16, width: 56, height: 56)
        button.layer.cornerRadius = 56/2
        
    }
    
    // RootVC를 main으로 설정한 뒤에, 각 탭바에 들어갈 놈들을 여기에 만들어줌. -> 그동안 우리는 sceneDelegate에 만들어줬었는데
    func configureViewControllers() {
        
        let feed = FeedController()
        let nav1 = templateNavigationController(image: UIImage(named: "home_unselected")!, rootViewController: feed)
        
        let explore = ExploreController()
        let nav2 = templateNavigationController(image: UIImage(named: "search_unselected")!, rootViewController: explore)
        
        let notifications = NotificationsController()
        let nav3 = templateNavigationController(image: UIImage(named: "like_unselected")!, rootViewController: notifications)
        
        let conversations = ConversationsController()
        let nav4 = templateNavigationController(image: UIImage(named: "ic_mail_outline_white_2x-1")!, rootViewController: conversations)
        
        viewControllers = [nav1, nav2, nav3, nav4]
    }
    
    // navigationController를 하나씩 넣어준다면 그건 너무 비효율적인 코드임. 그러니 하드코딩을 피하기 위해서 이렇게 함수를 만들어서 사용할거ㅑㅇ
    func templateNavigationController(image: UIImage, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = image
        nav.navigationBar.barTintColor = .white
        return nav
    }
}
