//
//  BaiSo7ViewController.swift
//  BaiKiemTraUI
//
//  Created by Vu Nam Ha on 29/06/2022.
//

import UIKit
// Thiết kế cho IP 11 Promax
class BaiSo7ViewController: UIViewController {
    
    let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .brown
        return view
    } ()
    let menuView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    } ()
    let homeImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "1")
        return image
    } ()
    
    let logoImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "2")
        return image
    } ()
    
    let bellImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "3")
        return image
    } ()
    
    let logoLabel: UILabel = {
           let label = UILabel()
           label.text = "fleet"
        label.textColor = .black
        label.font = .systemFont(ofSize: 22, weight: .bold)
           return label
       } ()
    
    let avartarImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "7")
        return image
    } ()
    
    let menuImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "3")
        return image
    } ()
    
    let menu1Label: UILabel = {
           let label = UILabel()
           label.text = "Stays"
        label.textColor = .black
        label.font = .systemFont(ofSize: 18, weight: .bold)
           return label
       } ()
    
    let menu2Label: UILabel = {
           let label = UILabel()
           label.text = "Flights"
        label.textColor = .black
        label.font = .systemFont(ofSize: 18, weight: .bold)
           return label
       } ()
    
    let menu3Label: UILabel = {
           let label = UILabel()
           label.text = "Cars"
        label.textColor = .black
        label.font = .systemFont(ofSize: 18, weight: .bold)
           return label
       } ()
    
    let menu4Label: UILabel = {
           let label = UILabel()
           label.text = "Things to do"
        label.textColor = .black
        label.font = .systemFont(ofSize: 18, weight: .bold)
           return label
       } ()
    
    let locationLabel: UILabel = {
           let label = UILabel()
           label.text = "Location"
        label.textColor = .black
        label.font = .systemFont(ofSize: 24, weight: .bold)
           return label
       } ()
    
    let locationTextField: UITextField = {
           let TF = UITextField()
        TF.placeholder = "Where are you going?"
           return TF
       } ()
    
    let searchButton: UIButton = {
           let BT = UIButton()
        BT.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
           return BT
       } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(containerView)
        view.addSubview(logoImage)
        view.addSubview(logoLabel)
        view.addSubview(bellImage)
        view.addSubview(avartarImage)
        view.addSubview(menuImage)
        view.addSubview(menuView)
        containerView.addSubview(homeImage)
        view.addSubview(menu1Label)
        view.addSubview(menu2Label)
        view.addSubview(menu3Label)
        view.addSubview(menu4Label)
        view.addSubview(locationLabel)
        view.addSubview(locationTextField)
        view.addSubview(searchButton)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        setUpView()
    }
    
    func setUpView() {
        view.backgroundColor = .white
        logoImage.frame = CGRect(x: 20, y: 50, width: 40, height: 40)
        logoLabel.frame = CGRect(x: 70, y: 50, width: 100, height: 40)
        bellImage.frame = CGRect(x: 230, y: 60, width: 20, height: 20)
        avartarImage.frame = CGRect(x: 265, y: 50, width: 40, height: 40)
        avartarImage.contentMode = .scaleAspectFill
        avartarImage.clipsToBounds = true
        avartarImage.layer.cornerRadius = 20
        containerView.frame = CGRect(x: 10, y: 120, width: view.bounds.maxX-20, height: view.bounds.maxY-125)
        menuView.frame = CGRect(x: 15, y: 720, width: view.bounds.maxX - 30, height: 165)
        menuView.layer.cornerRadius = 10
        menuView.clipsToBounds = true
        containerView.clipsToBounds = true
        containerView.layer.cornerRadius = 20
        homeImage.frame = containerView.bounds
        homeImage.contentMode = .scaleAspectFill
        view.bringSubviewToFront(menuView)
        
        menu1Label.frame = CGRect(x: 25, y: 725, width: 80, height: 40)
        menu2Label.frame = CGRect(x: 100, y: 725, width: 100, height: 40)
        menu3Label.frame = CGRect(x: 190, y: 725, width: 80, height: 40)
        menu4Label.frame = CGRect(x: 270, y: 725, width: 150, height: 40)
        locationLabel.frame = CGRect(x: 25, y: 800, width: 200, height: 40)
        locationTextField.frame = CGRect(x: 25, y: 830, width: 250, height: 40)
        locationTextField.font = .systemFont(ofSize: 20, weight: .bold)
        searchButton.frame = CGRect(x: 300, y: 800, width: 100, height: 50)
        view.bringSubviewToFront(menu1Label)
        view.bringSubviewToFront(menu2Label)
        view.bringSubviewToFront(menu3Label)
        view.bringSubviewToFront(menu4Label)
        view.bringSubviewToFront(locationLabel)
        view.bringSubviewToFront(locationTextField)
        view.bringSubviewToFront(searchButton)
    }
    
    
}
