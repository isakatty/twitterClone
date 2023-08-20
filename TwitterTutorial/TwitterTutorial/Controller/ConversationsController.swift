//
//  ConversationsController.swift
//  TwitterTutorial
//
//  Created by Jisoo HAM on 2023/08/20.
//

import UIKit

class ConversationsController: UIViewController{
    
    // MARK: - Properties
    
    // MARK: - LifeCycle
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    //MARK: - Helpers
    func configureUI() {
        view.backgroundColor = .white
        navigationItem.title = "Messages"
        
    }
}
