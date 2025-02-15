//
//  ViewController.swift
//  animationsLabTwo
//
//  Created by Sam Roman on 10/14/19.
//  Copyright © 2019 Sam Roman. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    
    //MARK: Offset Defaults
    var offsetYAnchor = -200
    
    
    
    //MARK: View Outlets
    
    
    
    lazy var viewOne: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "tennisBall")
        view.tag = 1
        return view
    }()
    
    lazy var viewTwo: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "tennisBall")
        view.tag = 2
        return view
    }()
    
    
    lazy var viewThree: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "tennisBall")
        view.tag = 3
        return view
    }()
    
    lazy var viewFour: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "tennisBall")
        view.tag = 4
        return view
    }()
    
    //MARK: Button Outlets
    lazy var linear: UIButton = {
        let button = UIButton()
        button.setTitle("Linear", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.tag = 1
        button.addTarget(self, action: #selector(disappearButton(sender:)), for: .touchUpInside)
        return button
    }()
    
    lazy var easeIn: UIButton = {
        let button = UIButton()
        button.setTitle("Ease In", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.tag = 2
        button.addTarget(self, action: #selector(disappearButton(sender:)), for: .touchUpInside)
        return button
    }()
    
    lazy var easeOut: UIButton = {
        let button = UIButton()
        button.setTitle("Ease Out", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.tag = 3
        button.addTarget(self, action: #selector(disappearButton(sender:)), for: .touchUpInside)
        return button
    }()
    
    lazy var easeInOut: UIButton = {
        let button = UIButton()
        button.setTitle("In/Out", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.tag = 4
        button.addTarget(self, action: #selector(disappearButton(sender:)), for: .touchUpInside)
        return button
    }()
    
    lazy var animateButton: UIButton = {
        let button = UIButton()
        button.setTitle("Animate", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(animatePressed(sender:)), for: .touchUpInside)
        return button
    }()
    
    lazy var resetButton: UIButton = {
        let button = UIButton()
        button.setTitle("Reset", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(resetPressed(sender:)), for: .touchUpInside)
        return button
    }()
    
    
    
    
    //MARK: Button StackView & Constraints
    
    lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [linear, easeIn, easeOut, easeInOut])
        stack.axis = .horizontal
        stack.alignment = .center
        stack.distribution = .fillProportionally
        stack.spacing = 5.0
        stack.isUserInteractionEnabled = true
        return stack
    }()
    
    private func constrainButtonStackView() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            stackView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100),
            stackView.heightAnchor.constraint(equalToConstant: 50),
            stackView.widthAnchor.constraint(equalTo: self.view.widthAnchor),
        ])
    }
    
    private func constrainResetButton(){
        resetButton.translatesAutoresizingMaskIntoConstraints = false
           resetButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -170).isActive = true
           resetButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 400).isActive = true
        
    }
    
    
    private func constrainAnimateButton(){
        animateButton.translatesAutoresizingMaskIntoConstraints = false
           animateButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 160).isActive = true
           animateButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 400).isActive = true
        
    }
    
   
    
    
    //MARK: View Constraints
    private func setUpViewOneConstraints(){
           viewOne.translatesAutoresizingMaskIntoConstraints = false
           NSLayoutConstraint.activate([
            viewOneCenterYConstraint,
            viewOne.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -170),
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
               viewTwo.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -75),
                  viewTwo.widthAnchor.constraint(equalToConstant: 50),
                  viewTwo.heightAnchor.constraint(equalToConstant: 50)
              ])
          }
       
       lazy var viewTwoCenterYConstraint: NSLayoutConstraint = {
           self.viewTwo.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200)
       }()
       
    private func setUpViewThreeConstraints(){
             viewThree.translatesAutoresizingMaskIntoConstraints = false
             NSLayoutConstraint.activate([
              viewThreeCenterYConstraint,
              viewThree.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 40),
                 viewThree.widthAnchor.constraint(equalToConstant: 50),
                 viewThree.heightAnchor.constraint(equalToConstant: 50)
             ])
         }
      
      lazy var viewThreeCenterYConstraint: NSLayoutConstraint = {
          self.viewThree.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200)
      }()
      
      private func setUpViewFourConstraints(){
                viewFour.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                 viewFourCenterYConstraint,
                 viewFour.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 170),
                    viewFour.widthAnchor.constraint(equalToConstant: 50),
                    viewFour.heightAnchor.constraint(equalToConstant: 50)
                ])
            }
         
         lazy var viewFourCenterYConstraint: NSLayoutConstraint = {
             self.viewFour.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200)
         }()
         
    
    
    private func setAllConstraints(){
        constrainButtonStackView()
        constrainResetButton()
        constrainAnimateButton()
        setUpViewOneConstraints()
        setUpViewTwoConstraints()
        setUpViewThreeConstraints()
        setUpViewFourConstraints()
        
        
    }
    
    
    
    //MARK: View Methods
   func linearAction(){
        UIImageView.transition(with: viewOne, duration: 2.0, options: [.curveLinear], animations: {
            self.viewOneCenterYConstraint.constant = 300
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    func easeInAction(){
        UIImageView.transition(with: viewOne, duration: 2.0, options: [.curveEaseIn], animations: {
            self.viewTwoCenterYConstraint.constant = 300
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    func easeOutAction(){
        UIImageView.transition(with: viewOne, duration: 2.0, options: [.curveEaseOut], animations: {
            self.viewThreeCenterYConstraint.constant = 300
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    func easeInOutAction(){
           UIImageView.transition(with: viewOne, duration: 2.0, options: [.curveEaseOut], animations: {
               self.viewFourCenterYConstraint.constant = 300
               self.view.layoutIfNeeded()
           }, completion: nil)
       }
    
    
    //MARK: Button Methods
    
    
    @objc func disappearButton(sender: UIButton) {
      let arr = [viewOne, viewTwo, viewThree ,viewFour]
          for i in arr{
              if i.tag == sender.tag && !i.isHidden{
                  i.isHidden = true
              }else if i.tag == sender.tag && i.isHidden  {
                  i.isHidden = false
              }
          }
      }
    
    @objc func resetPressed(sender: UIButton){
        self.viewOneCenterYConstraint.constant = -200
        self.viewTwoCenterYConstraint.constant = -200
        self.viewThreeCenterYConstraint.constant = -200
        self.viewFourCenterYConstraint.constant = -200
    }
    
    @objc func animatePressed(sender: UIButton){
        linearAction()
        easeInAction()
        easeOutAction()
        easeInOutAction()
    }
       
    
    

    //MARK: Private Methods
    private func addSubViews(){
        view.addSubview(stackView)
        view.addSubview(viewOne)
        view.addSubview(viewTwo)
        view.addSubview(viewThree)
        view.addSubview(viewFour)
        view.addSubview(resetButton)
        view.addSubview(animateButton)
        
    }
    
    override func viewDidLoad() {
        addSubViews()
        setAllConstraints()
        view.backgroundColor = .white
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

