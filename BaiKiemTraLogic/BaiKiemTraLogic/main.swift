//
//  main.swift
//  BaiKiemTraLogic
//
//  Created by Vu Nam Ha on 28/06/2022.
//

import Foundation

// Bài 1: Nhập vào 1 số n và in ra các số nguyên tố nhỏ hơn n
//
// Hàm check 1 số có phải số nguyên tố
//func checkSoNT(so: Int) -> Bool {
//    var count: Int = 0
//    if so < 2 {
//        return false
//    }
//
//    for i in 1...so {
//        if so % i == 0 {
//            count += 1
//        }
//    }
//
//    if count == 2 {
//        return true
//    }
//    else {
//        return false
//    }
//}
//
//print("Nhập số nguyên n: ")
//let number: Int = Int(readLine() ?? "") ?? 0
//
//if number <= 2 {
//    print("Không có số nguyên tố nào < \(number)")
//} else {
//    print("Các số nguyên tố < \(number): ", terminator: "")
//    for i in 2...number-1 {
//        if checkSoNT(so: i) == true {
//            print("\(i),", terminator: "")
//        }
//
//    }
//    print()
//}


//// Bài 2: Nhập vào 1 số và kiểm tra xem số đó có phải số amstrong hay không.
//var number: Int = 0
//var total: Int = 0
//var temp = 0
//
//print("Nhập 1 số nguyên: ", terminator: "")
//number = Int(readLine() ?? "") ?? 0
//
//// đếm số chữ số
//var number1 = number
//var n = 1                       // n: số chữ số
//while (number1 / 10 != 0) {
//    n += 1
//    number1 = number1 / 10
//}
//
//// tính tổng các lũy thừa
//for i in 1...n {
//    temp = (number/tinhLuyThua(so: 10, luyThua: n-i)) % 10
//    total += tinhLuyThua(so: temp, luyThua: n)
//}
//
//if total == number {
//    print("Đây là số Amstrong.")
//} else {
//    print("Đây không phải số Amstrong")
//}
//
//// Hàm tính lũy thừa 1 số
//func tinhLuyThua(so: Int, luyThua: Int) -> Int {
//  var result = 1
//    for _ in 0..<luyThua {
//    result *= so
//  }
//  return result
//}








// Bài 3: Viết chương trình nhập vào ngày, tháng, năm. In ra ngày hôm sau của ngày nhập vào đó. Yêu cầu người dùng nhập lại nếu dữ liệu nhập vào không hợp lệ

//var date: Int = 0
//var month: Int = 0
//var year: Int = 0
//
//repeat {
//print("Nhập ngày: ", terminator: "")
//date = Int(readLine() ?? "") ?? 0
//} while (date < 1 || date > 31)
//
//repeat {
//print("Nhập tháng: ", terminator: "")
//month = Int(readLine() ?? "") ?? 0
//} while (month < 1 || month > 12)
//
//repeat {
//print("Nhập năm: ", terminator: "")
//year = Int(readLine() ?? "") ?? 0
//} while (year < 0)
//
//
//if month == 12 && date == 31 {
//    print("Ngày hôm sau là: 01/01/\(year+1)")
//} else if (month==1 && date==31) || (month==2 && date==28) || (month==3 && date==31) || (month==4 && date==30) || (month==5 && date==31) || (month==6 && date==30)||(month==7 && date==31) || (month==8 && date==31) || (month==9 && date==30) || (month==10 && date==31) || (month==11 && date==30) {
//    print("Ngày hôm sau là: 01/\(month+1)/\(year)")
//
//} else {
//    print("Ngày hôm sau là: \(date+1)/\(month)/\(year)")
//}


// Bài 4: Nhập n từ bàn phím. In ra dãy số fibonacci gồm n số (n>=2).
//var n:Int = 0
//var temp: Int = 0
//var arrFibonaci:[Int] = [0,1]
//
//repeat {
//    print("Nhập số n: ", terminator: "")
//    n = Int(readLine() ?? "") ?? 0
//} while (n<2)
//
//if n == 2 {
//    print("Dãy fibonaci gồm 2 số: \(arrFibonaci)")
//} else {
//    for i in 3...n {
//        arrFibonaci.append(temp+arrFibonaci.last!)
//        temp = arrFibonaci[i-2]
//    }
//    print("Dãy fibonaci: \(arrFibonaci)")
//}

// Bài 5: 
