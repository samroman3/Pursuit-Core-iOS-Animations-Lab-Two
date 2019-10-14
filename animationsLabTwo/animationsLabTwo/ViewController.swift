//
//  ViewController.swift
//  animationsLabTwo
//
//  Created by Sam Roman on 10/14/19.
//  Copyright © 2019 Sam Roman. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    //MARK: View Outlets
    
    lazy var viewOne: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    lazy var viewTwo: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    
    lazy var viewThree: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    lazy var viewFour: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    
    
    //MARK: Constraints
    private func setUpViewOneConstraints(){
           viewOne.translatesAutoresizingMaskIntoConstraints = false
           NSLayoutConstraint.activate([
            viewOneCenterYConstraint,
            viewOne.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -150),
               viewOne.widthAnchor.constraint(equalToConstant: 50),
               viewOne.heightAnchor.constraint(equalToConstant: 50)
           ])
       }
    
    lazy var viewOneCenterYConstraint: NSLayoutConstraint = {
        self.viewOne.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200)
    }()
    
    private func setUpViewTwoConstraints(){
              viewTwo.translatesAutoresizingMaskIntoConstraints = false
              NSLayoutConstraint.activate([
               viewTwoCenterYConstraint,
               viewTwo.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -55),
                  viewTwo.widthAnchor.constraint(equalToConstant: 50),
                  viewTwo.heightAnchor.constraint(equalToConstant: 50)
              ])
          }
       
       lazy var viewTwoCenterYConstraint: NSLayoutConstraint = {
           self.viewTwo.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200)
       }()
       
    
    
    
    //MARK: View Methods
    
    

    //MARK: Private Methods
    private func addSubViews(){
        view.addSubview(viewOne)
        view.addSubview(viewTwo)
        view.addSubview(viewThree)
        view.addSubview(viewFour)
    }
    
    override func viewDidLoad() {
        addSubViews()
        setUpViewOneConstraints()
        setUpViewTwoConstraints()
        view.backgroundColor = .white
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

