//
//  ViewController.swift
//  snapkitTests
//
//  Created by 김기영 on 2021/08/21.
//

import UIKit
import SnapKit
import Then

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        setUpView()
    }
    
    let titleLabel1 = UILabel().then {
        $0.text = "뭐든지"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 40, weight: .bold)
    }
    let titleLabel2 = UILabel().then {
        $0.text = "물어볼램"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 40, weight:     .bold)
    }
    
    let idField = UITextField().then {
        $0.textColor = .black
        $0.backgroundColor = .lightGray
        $0.placeholder = " 아이디를 입력해주세요."
        $0.layer.borderWidth = 0.5
        $0.layer.cornerRadius = 0
        $0.layer.borderColor = UIColor.black.cgColor
    }
    
    let psField = UITextField().then {
        $0.textColor = .black
        $0.backgroundColor = UIColor(red: 240/250, green: 241/250, blue: 241/250, alpha: 1)
        $0.placeholder = " 비밀번호를 입력해주세요."
        $0.layer.borderColor = UIColor.black.cgColor
        $0.layer.borderWidth = 0.5
        $0.layer.cornerRadius = 0
    }
    
    let idDeleteBtn = UIButton().then {
        $0.setImage(UIImage(systemName: "xmark.circle"), for: .normal)
    }
    let psDeleteBtn = UIButton().then {
        $0.setImage(UIImage(systemName: "xmark.circle"), for: .normal)
    }
    let errorLabel = UILabel().then {
        $0.text = "아이디나 비밀번호가 알맞지 않습니다."
        $0.textColor = .red
        $0.font = UIFont.systemFont(ofSize: 18)
    }
    
    let signUpLabel = UILabel().then {
        $0.text = "회원가입 하러 가기 ->"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 15)
        
    }
    
    let loginBtn = UIButton().then {
        $0.backgroundColor = .green
        $0.setTitle("로그인", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.layer.borderWidth = 0.5
        $0.layer.borderColor = UIColor.black.cgColor
        $0.layer.cornerRadius = 0
        
    }
    
    let signUpBtn = UIButton().then {
        $0.backgroundColor = .white
        $0.setTitle("Gram", for: .normal)
        $0.setTitleColor(.blue, for: .normal)
    }
    
    func setUpView() {
        self.view.addSubview(titleLabel1)
        self.view.addSubview(titleLabel2)
        self.view.addSubview(idField)
        self.view.addSubview(psField)
        self.view.addSubview(idDeleteBtn)
        self.view.addSubview(psDeleteBtn)
        self.view.addSubview(errorLabel)
        self.view.addSubview(signUpLabel)
        self.view.addSubview(loginBtn)
        self.view.addSubview(signUpBtn)
        
        titleLabel1.snp.makeConstraints {
            $0.top.equalToSuperview().offset(80)
            $0.leading.equalToSuperview().offset(30)
            $0.height.equalTo(46.67)
        }
        
        titleLabel2.snp.makeConstraints {
            $0.top.equalTo(self.titleLabel1.snp.bottom).offset(1.33)
            $0.leading.equalToSuperview().offset(30)
            $0.height.equalTo(46.67)
        }
        idField.snp.makeConstraints {
            $0.top.equalTo(self.titleLabel2.snp.bottom).offset(90)
            $0.leading.equalToSuperview().offset(30)
            $0.height.equalTo(54)
            $0.trailing.equalToSuperview().offset(-30)
        }
        psField.snp.makeConstraints {
            $0.top.equalTo(self.idField.snp.bottom).offset(10)
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().offset(-30)
            $0.height.equalTo(54)
        }
        
        idDeleteBtn.snp.makeConstraints {
            $0.width.height.equalTo(20)
            $0.trailing.equalToSuperview().offset(-42)
            $0.bottom.equalTo(self.psField.snp.top).offset(-26)
        }
        
        psDeleteBtn.snp.makeConstraints {
            $0.width.height.equalTo(20)
            $0.trailing.equalToSuperview().offset(-42)
            $0.top.equalTo(self.idField.snp.bottom).offset(26)
        }
        
        errorLabel.snp.makeConstraints {
            $0.top.equalTo(self.psField.snp.bottom).offset(7)
            $0.centerX.equalTo(self.view)
        }
        
        loginBtn.snp.makeConstraints {
            $0.top.equalTo(self.errorLabel.snp.bottom).offset(55.67)
            $0.trailing.equalToSuperview().offset(-30)
            $0.leading.equalToSuperview().offset(30)
            $0.height.equalTo(70)
        }
        signUpLabel.snp.makeConstraints {
            $0.top.equalTo(self.loginBtn.snp.bottom).offset(56.7)
            $0.trailing.equalTo(self.signUpBtn.snp.leading).offset(-10)
        }
        signUpBtn.snp.makeConstraints {
            $0.trailing.equalToSuperview().offset(-112)
            $0.top.equalTo(self.loginBtn.snp.bottom).offset(49)
            
        }
    }
}


#if DEBUG
import SwiftUI
struct ViewControllerRepresentable: UIViewControllerRepresentable {
    
func updateUIViewController(_ uiView: UIViewController,context: Context) {
        // leave this empty
}
@available(iOS 13.0.0, *)
func makeUIViewController(context: Context) -> UIViewController{
    ViewController()
    }
}
@available(iOS 13.0, *)
struct ViewControllerRepresentable_PreviewProvider: PreviewProvider {
    static var previews: some View {
        Group {
            ViewControllerRepresentable()
                .ignoresSafeArea()
                .previewDisplayName("Preview")
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
        }
        
    }
} #endif
