//
//  main.swift
//  TestRanking
//
//  Created by 이보한 on 2023/12/24.
//

/*
 
 학생들 N(1 <= N <= 100)명의 점수 M( 0 <= M <= 100)를 입력받아 등수를 구하는 프로그램을 작성하여라.
 - 점수가 같은 경우는 같은 등수로 인정한다.
 - 등수는 본인의 점수보다 큰 점수가 있을 경우 "학생수 + 1" 등으로 한다.
 
 ex <입력>
 5
 100 80 80 50 40
 
    <출력>
 1 2 3 4 5
 
 */

import Foundation

var students: Int = 6
var scores: [Int] = [100, 80, 90, 100, 50, 80] // 점수의 정수 배열

var ranking: [Int] // 등수의 정수 배열
ranking = [1]

for n in 1...students - 1 {
    var newrank = 1
    for j in 1...ranking.count {
        if scores[j - 1] > scores[n] {
            newrank += 1
        } else if scores[j - 1] < scores[n] {
            ranking[j - 1] += 1
        } else if scores[j - 1] == scores[n] {
            
        }
    }
    ranking.append(newrank)
}

print(ranking)
