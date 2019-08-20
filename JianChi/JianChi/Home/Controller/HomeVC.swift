//
//  ViewController.swift
//  JianChi
//
//  Created by Ryan on 2019/8/20.
//  Copyright © 2019 Daoxiang Deng. All rights reserved.
//

import UIKit
import Parchment

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstViewController = UIViewController()
        let secondViewController = UIViewController()
        firstViewController.view.backgroundColor = UIColor.orange
        secondViewController.view.backgroundColor = UIColor.purple
        let viewControllers = [firstViewController, secondViewController]
        let pagingViewController = FixedPagingViewController(viewControllers: viewControllers)
        
        // Make sure you add the PagingViewController as a child view
        // controller and constrain it to the edges of the view.
        addChild(pagingViewController)
        view.addSubview(pagingViewController.view)
        
        
        pagingViewController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pagingViewController.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            pagingViewController.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            pagingViewController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            pagingViewController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ])
        
        
        pagingViewController.didMove(toParent: self)
    }


}

