//
//  ViewController.swift
//  Tiktok
//
//  Created by Bakdaulet Zhaparov on 19.02.2023.
//

import SnapKit
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var tableView = UITableView()
    private var videoLinks: [String] = ["https://www.instagram.com/reel/CoiPrY7gtUz/?igshid=NzAzN2Q1NTE=",
        "https://www.instagram.com/reel/Co2Wipqoejy/?igshid=NzAzN2Q1NTE=",
        "https://www.instagram.com/reel/Co2Wipqoejy/?igshid=NzAzN2Q1NTE=",
        "https://www.instagram.com/reel/Co2Wipqoejy/?igshid=NzAzN2Q1NTE="]
    
    @objc func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videoLinks.count
    }
    
    @objc(tableView:cellForRowAtIndexPath:) func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return VideoTableViewCell(link: videoLinks[indexPath.row])
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.height
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isPagingEnabled = true
        tableView.showsVerticalScrollIndicator = false
        
        view.addSubview(tableView)
        
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
               
        }
        
        let blackView = UIView()
        
        blackView.backgroundColor = .gray
        view.addSubview(blackView)
        blackView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.height.equalTo(80) 
        }
        
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        
        let btn1 = UIButton()
        btn1.setImage(UIImage(named: "home") , for: .normal)
        let btn2 = UIButton()
        btn2.setImage(UIImage(named: "search") , for: .normal)
        let btn3 = UIButton()
        btn3.setImage(UIImage(named: "logo") , for: .normal)
        let btn4 = UIButton()
        btn4.setImage(UIImage(named: "inbox") , for: .normal)
        let btn5 = UIButton()
        btn5.setImage(UIImage(named: "profile") , for: .normal)
        // Do any additional setup after loading the view.
        
        stackView.addArrangedSubview(btn1)
        stackView.addArrangedSubview(btn2)
        stackView.addArrangedSubview(btn3)
        stackView.addArrangedSubview(btn4)
        stackView.addArrangedSubview(btn5)

        view.addSubview(stackView)
        
        stackView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview().inset(20)
            make.height.equalTo(60)
            
        }
    }


}

