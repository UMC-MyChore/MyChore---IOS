//
//  ChoreAddMainViewController.swift
//  MyChore
//
//  Created by 경유진 on 2023/07/28.
//

import UIKit

import SnapKit

class ChoreAddMainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        initNavigation()
        setUpView()
        setConstraints()
    }
    
    // 네비게이션바
    func initNavigation() {
        let backButton = UIBarButtonItem(image: UIImage(named: "icon_back"), style: .plain, target: self, action: #selector(backMainPage))
        backButton.tintColor = UIColor.mcGrey800
        
        let titleLabel = UILabel()
        titleLabel.text = "집안일 추가"
        titleLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        
        let doneButton = UIBarButtonItem(title: "완료", style: .done, target: self, action: #selector(sendData))
        
        
        self.navigationItem.leftBarButtonItem = backButton
        self.navigationItem.titleView = titleLabel
        self.navigationItem.rightBarButtonItem = doneButton
        self.navigationItem.rightBarButtonItem?.tintColor = UIColor.mcMainGreen
    }
    
    @objc func backMainPage() {
        print("페이지 pop") // pop 표시
    }
    
    @objc func sendData() {
        print("페이지 pop")
    }
    
    lazy var choreNameLabel: UILabel = {
        let choreNameLabel = UILabel()
        choreNameLabel.text = "집안일 이름"
        choreNameLabel.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        choreNameLabel.textColor = UIColor.mcGrey800
        return choreNameLabel
    }()
    
    lazy var choreTextField: UITextField = {
        let choreTextField = UITextField()
        //choreTextField.placeholder = "입력하세요"
        choreTextField.tintColor = UIColor.mcSubGreen100
        choreTextField.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        choreTextField.clearButtonMode = UITextField.ViewMode.whileEditing
        return choreTextField
    }()
    
    lazy var textUnderLineView: UIView = {
        let textUnderLineView = UIView()
        textUnderLineView.backgroundColor = UIColor.mcSubGreen400
        return textUnderLineView
    }()
    
    lazy var firstLine: UIView = {
        let firstLine = UIView()
        firstLine.backgroundColor = UIColor.mcGrey100
        return firstLine
    }()
    
    lazy var placeIconView: UIImageView = {
        let placeIconView = UIImageView()
        placeIconView.image = UIImage(named: "icon_place")
        return placeIconView
    }()
    
    lazy var placeLabel: UILabel = {
        let placeLabel = UILabel()
        placeLabel.text = "장소"
        placeLabel.font = UIFont.systemFont(ofSize: 20)
        return placeLabel
    }()
    
    let placeButton: UIButton = {
        let placeButton = UIButton()
        placeButton.backgroundColor = UIColor.mcGrey200
        placeButton.layer.cornerRadius = 10.0
        
        placeButton.setTitle("거실", for: .normal)
        placeButton.setTitleColor(UIColor.mcGrey800, for: .normal)
        
        return placeButton
    }()
    
    lazy var placeButton1 = placeButton
    
    lazy var secondLine: UIView = {
        let secondLine = UIView()
        secondLine.backgroundColor = UIColor.mcGrey100
        return secondLine
    }()
    
    lazy var furnitureIconView: UIImageView = {
        let furnitureIconView = UIImageView()
        furnitureIconView.image = UIImage(named: "icon_furniture")
        return furnitureIconView
    }()
    
    lazy var furnitureLabel: UILabel = {
        let furnitureLabel = UILabel()
        furnitureLabel.text = "가구"
        furnitureLabel.font = UIFont.systemFont(ofSize: 20)
        return furnitureLabel
    }()
    
    lazy var thirdLine: UIView = {
        let thirdLine = UIView()
        thirdLine.backgroundColor = UIColor.mcGrey100
        return thirdLine
    }()
    
    lazy var dateIconView: UIImageView = {
        let dateIconView = UIImageView()
        dateIconView.image = UIImage(named: "icon_date")
        return dateIconView
    }()
    
    lazy var dateLabel: UILabel = {
        let dateLabel = UILabel()
        dateLabel.text = "날짜"
        dateLabel.font = UIFont.systemFont(ofSize: 20)
        return dateLabel
    }()
    
    lazy var datePicker: UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.preferredDatePickerStyle = .compact
        datePicker.locale = Locale(identifier: "ko-KR")
        datePicker.datePickerMode = .date
        //datePicker.Color = UIColor.mcSubGreen100
        datePicker.tintColor = UIColor.mcMainGreen
        return datePicker
    }()
    
    lazy var fourthLine: UIView = {
        let fourthLine = UIView()
        fourthLine.backgroundColor = UIColor.mcGrey100
        return fourthLine
    }()
    
    lazy var alarmIconView: UIImageView = {
        let alarmIconView = UIImageView()
        alarmIconView.image = UIImage(named: "icon_alarm")
        return alarmIconView
    }()
    
    lazy var alarmLabel: UILabel = {
        let alarmLabel = UILabel()
        alarmLabel.text = "알림"
        alarmLabel.font = UIFont.systemFont(ofSize: 20)
        return alarmLabel
    }()
    
    lazy var fifthLine: UIView = {
        let fifthLine = UIView()
        fifthLine.backgroundColor = UIColor.mcGrey100
        return fifthLine
    }()
    
    lazy var repeatIconView: UIImageView = {
        let repeatIconView = UIImageView()
        repeatIconView.image = UIImage(named: "icon_repeat")
        return repeatIconView
    }()
    
    lazy var repeatLabel: UILabel = {
        let repeatLabel = UILabel()
        repeatLabel.text = "반복"
        repeatLabel.font = UIFont.systemFont(ofSize: 20)
        return repeatLabel
    }()
    
    lazy var sixthLine: UIView = {
        let sixthLine = UIView()
        sixthLine.backgroundColor = UIColor.mcGrey100
        return sixthLine
    }()
    
    lazy var managerIconView: UIImageView = {
        let managerIconView = UIImageView()
        managerIconView.image = UIImage(named: "icon_manager")
        return managerIconView
    }()
    
    lazy var managerLabel: UILabel = {
        let managerLabel = UILabel()
        managerLabel.text = "담당자"
        managerLabel.font = UIFont.systemFont(ofSize: 20)
        return managerLabel
    }()
    
    lazy var seventhLine: UIView = {
        let seventhLine = UIView()
        seventhLine.backgroundColor = UIColor.mcGrey100
        return seventhLine
    }()
    
    func setUpView() {
        view.addSubview(choreNameLabel)
        view.addSubview(choreTextField)
        view.addSubview(textUnderLineView)
        view.addSubview(firstLine)
        view.addSubview(placeIconView)
        view.addSubview(placeLabel)
        view.addSubview(placeButton1)
        view.addSubview(secondLine)
        view.addSubview(furnitureIconView)
        view.addSubview(furnitureLabel)
        view.addSubview(thirdLine)
        view.addSubview(dateIconView)
        view.addSubview(dateLabel)
        view.addSubview(datePicker)
        view.addSubview(fourthLine)
        view.addSubview(alarmIconView)
        view.addSubview(alarmLabel)
        view.addSubview(fifthLine)
        view.addSubview(repeatIconView)
        view.addSubview(repeatLabel)
        view.addSubview(sixthLine)
        view.addSubview(managerIconView)
        view.addSubview(managerLabel)
        view.addSubview(seventhLine)
    }
    
    func setConstraints() {
        choreNameLabel.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(20)
            make.left.equalTo(self.view.safeAreaLayoutGuide).offset(24)
        }
        choreTextField.snp.makeConstraints { make in
            make.top.equalTo(choreNameLabel.snp.bottom).offset(14)
            make.left.equalTo(self.view.safeAreaLayoutGuide).offset(26)
            make.right.equalTo(self.view.safeAreaLayoutGuide).offset(-63)
        }
        textUnderLineView.snp.makeConstraints { make in
            make.height.equalTo(2)
            make.top.equalTo(choreTextField.snp.bottom).offset(6)
            make.left.equalTo(self.view.safeAreaLayoutGuide).offset(25)
            make.right.equalTo(self.view.safeAreaLayoutGuide).offset(-23)
        }
        firstLine.snp.makeConstraints { make in
            make.height.equalTo(2)
            make.top.equalTo(textUnderLineView.snp.bottom).offset(16)
            make.left.equalTo(self.view.safeAreaLayoutGuide).offset(24)
            make.right.equalTo(self.view.safeAreaLayoutGuide).offset(-24)
        }
        placeIconView.snp.makeConstraints { make in
            make.height.width.equalTo(32)
            make.top.equalTo(firstLine.snp.bottom).offset(16)
            make.left.equalTo(self.view.safeAreaLayoutGuide).offset(16)
        }
        placeLabel.snp.makeConstraints { make in
            make.centerY.equalTo(placeIconView.snp.centerY)
            make.left.equalTo(placeIconView.snp.right).offset(8)
        }
        placeButton1.snp.makeConstraints { make in
            make.height.equalTo(38)
            make.width.equalTo(72)
            make.top.equalTo(placeIconView.snp.bottom).offset(11)
            make.left.equalTo(self.view.safeAreaLayoutGuide).offset(24)
        }
        secondLine.snp.makeConstraints { make in
            make.height.equalTo(2)
            make.top.equalTo(placeButton1.snp.bottom).offset(18)
            make.left.equalTo(self.view.safeAreaLayoutGuide).offset(24)
            make.right.equalTo(self.view.safeAreaLayoutGuide).offset(-24)
        }
        furnitureIconView.snp.makeConstraints { make in
            make.height.width.equalTo(32)
            make.top.equalTo(secondLine.snp.bottom).offset(16)
            make.left.equalTo(self.view.safeAreaLayoutGuide).offset(16)
        }
        furnitureLabel.snp.makeConstraints { make in
            make.centerY.equalTo(furnitureIconView.snp.centerY)
            make.left.equalTo(furnitureIconView.snp.right).offset(8)
        }
        thirdLine.snp.makeConstraints { make in
            make.height.equalTo(2)
            make.top.equalTo(furnitureIconView.snp.bottom).offset(14)
            make.left.equalTo(self.view.safeAreaLayoutGuide).offset(24)
            make.right.equalTo(self.view.safeAreaLayoutGuide).offset(-24)
        }
        dateIconView.snp.makeConstraints { make in
            make.height.width.equalTo(32)
            make.top.equalTo(thirdLine.snp.bottom).offset(16)
            make.left.equalTo(self.view.safeAreaLayoutGuide).offset(16)
        }
        dateLabel.snp.makeConstraints { make in
            make.centerY.equalTo(dateIconView.snp.centerY)
            make.left.equalTo(dateIconView.snp.right).offset(8)
        }
        datePicker.snp.makeConstraints { make in
            make.centerY.equalTo(dateIconView.snp.centerY)
            make.right.equalTo(self.view.safeAreaLayoutGuide).offset(-24)
        }
        fourthLine.snp.makeConstraints { make in
            make.height.equalTo(2)
            make.top.equalTo(dateIconView.snp.bottom).offset(14)
            make.left.equalTo(self.view.safeAreaLayoutGuide).offset(24)
            make.right.equalTo(self.view.safeAreaLayoutGuide).offset(-24)
        }
        alarmIconView.snp.makeConstraints { make in
            make.height.width.equalTo(32)
            make.top.equalTo(fourthLine.snp.bottom).offset(16)
            make.left.equalTo(self.view.safeAreaLayoutGuide).offset(16)
        }
        alarmLabel.snp.makeConstraints { make in
            make.centerY.equalTo(alarmIconView.snp.centerY)
            make.left.equalTo(alarmIconView.snp.right).offset(8)
        }
        fifthLine.snp.makeConstraints { make in
            make.height.equalTo(2)
            make.top.equalTo(alarmIconView.snp.bottom).offset(14)
            make.left.equalTo(self.view.safeAreaLayoutGuide).offset(24)
            make.right.equalTo(self.view.safeAreaLayoutGuide).offset(-24)
        }
        repeatIconView.snp.makeConstraints { make in
            make.height.width.equalTo(32)
            make.top.equalTo(fifthLine.snp.bottom).offset(16)
            make.left.equalTo(self.view.safeAreaLayoutGuide).offset(16)
        }
        repeatLabel.snp.makeConstraints { make in
            make.centerY.equalTo(repeatIconView.snp.centerY)
            make.left.equalTo(repeatIconView.snp.right).offset(8)
        }
        sixthLine.snp.makeConstraints { make in
            make.height.equalTo(2)
            make.top.equalTo(repeatIconView.snp.bottom).offset(14)
            make.left.equalTo(self.view.safeAreaLayoutGuide).offset(24)
            make.right.equalTo(self.view.safeAreaLayoutGuide).offset(-24)
        }
        managerIconView.snp.makeConstraints { make in
            make.height.width.equalTo(32)
            make.top.equalTo(sixthLine.snp.bottom).offset(16)
            make.left.equalTo(self.view.safeAreaLayoutGuide).offset(16)
        }
        managerLabel.snp.makeConstraints { make in
            make.centerY.equalTo(managerIconView.snp.centerY)
            make.left.equalTo(managerIconView.snp.right).offset(8)
        }
        seventhLine.snp.makeConstraints { make in
            make.height.equalTo(2)
            make.top.equalTo(managerIconView.snp.bottom).offset(14)
            make.left.equalTo(self.view.safeAreaLayoutGuide).offset(24)
            make.right.equalTo(self.view.safeAreaLayoutGuide).offset(-24)
        }
    }
}

import SwiftUI

struct ViewControllerRepresentable: UIViewControllerRepresentable {
    typealias UIViewControllerType = ChoreAddMainViewController //뷰 컨트롤러 이름
    
    func makeUIViewController(context: Context) -> ChoreAddMainViewController {
            return ChoreAddMainViewController() // 뷰컨트롤러 이름
        }

        func updateUIViewController(_ uiViewController: ChoreAddMainViewController, context: Context) {
        }
}

@available(iOS 16.0.0, *)
struct ViewPreview: PreviewProvider {
    static var previews: some View {
            ViewControllerRepresentable()
    }
}
