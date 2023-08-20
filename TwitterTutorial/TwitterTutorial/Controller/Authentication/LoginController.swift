//
//  File.swift
//  TwitterTutorial
//
//  Created by Jisoo HAM on 2023/08/21.
//

import UIKit

class LoginController : UIViewController {
    
    //MARK: - Properties
    
    private let logoImageView: UIImageView = {
        
    }
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    //MARK: - Selectors
    
    //MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .twitterBlue
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.isHidden = true
    }
}
