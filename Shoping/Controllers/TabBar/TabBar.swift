//
//  TabBar.swift
//  Shoping
//
//  Created by mjeed on 10/12/2023.
//

import UIKit


class TabBar: UITabBar {

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        addBoders(UIColor(named: "TabBarColor")!, width: 1)
        applyCornerRadius(20)
        
    }
    
    // تحديد الزاوية المنحنية
    private func applyCornerRadius(_ width: CGFloat) {
        self.layer.cornerRadius = width
        // جعل الزاوية المنحنية تطبق على الحواف العليا والسفلية فقط
        self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        // تمكين خاصية masksToBounds لتطبيق التقطيع
        self.layer.masksToBounds = true

    }
    
    // إضافة حدود
    private func addBoders(_ color: UIColor , width: CGFloat) {
        self.layer.borderWidth = width //  تعديل عرض الحدود حسب الحاجة
        self.layer.borderColor = color.cgColor //  تعديل لون الحدود حسب الحاجة

    }
    

    
}
