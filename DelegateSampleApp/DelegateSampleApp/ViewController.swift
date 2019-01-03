//
//  ViewController.swift
//  DelegateSampleApp
//
//  Created by Yunjeong Goo on 2019. 1. 3..
//  Copyright © 2019년 Yunjeong Goo. All rights reserved.
//

import UIKit

//class ViewController: UIViewController, UIPickerViewDataSource {
class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView! {
        didSet {
            // pickerView에 대한 초기화 코드 작성.
             pickerView.dataSource = self
            // storyboard에서 pickerview를 오른쪽 클릭하고 datasource에서 연결할 수 있다.
            // 단, 이때에 UIPickerDataSource가 구현되지 않아도 컴파일 타임에 오류를 잡지 못하고, 런타임 오류가 발생한다.
            // storyboard 연결을 지양한다.
            
            pickerView.delegate = self
        }
    }
    
    let animals = ["사자", "호랑이", "말", "토끼", "뱀"]
    let fruits = ["사과", "배", "바나나"]

    
    //UIPickerView
    // pickerView에 데이터를 등록하는게 아니라, not set
    // PickerView가 데이터를 꺼내갈 수 있도록 '프로토콜'이 제공된다. -> DataSource -> UIPickerViewDataSource
    // PickerView의 상태에 관련된 '프로토콜'이 제공된다. -> Delegate -> UIPickerViewDelegate
    
    // POP(Protocol Oriented Programming)
    // Kotlin의 ExtensionFunction과 비슷한 기능.
    // 수평확장. 상속을 하지 않고 클래스를 확장한다.
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        pickerView.dataSource = self
        // 스위프트에서는 각 컴포넌트의 초기화를 캡슐화 할 수 있는 기능이 제공된다.
        // KVO - Key-Value Observing
        // -> 프로퍼티의 값이 변경되었음을 통보받는 방식.
        // kotlin의 by
        
    }
    
    // component : column의 개수
    // row : 각 column 별 줄의 개수
}

// 스위프트에서 extension을 코드를 정리하는 목적으로도 많이 쓰인다.
extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return 2
        } else {
            let selectedRow = pickerView.selectedRow(inComponent: 0)
            if selectedRow == 0 {
                return animals.count
            } else {
                return fruits.count
            }
        }
    }
    

}

extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            let arr = ["동물", "과일"]
            return arr[row]
        } else {
            let n = pickerView.selectedRow(inComponent: 0)
        
            if n == 0 {
                return animals[row]
            } else {
                return fruits[row]
            }
        }

    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            pickerView.reloadComponent(1)
            return
        }
        
        let n = pickerView.selectedRow(inComponent: 0)
        nameLabel.text = (n == 0) ? animals[row] : fruits[row]
        
    }
}

