//
//  ViewController.swift
//  CollectionViewTest
//
//  Created by lpiem on 13/03/2020.
//  Copyright © 2020 lpiem. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    enum SectionData: CaseIterable{
        case first
        case second
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return SectionData.allCases.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Color.allCases.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: UICollectionViewCell
        
        switch SectionData.allCases[indexPath.section] {
        case .first:
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BigCell", for: indexPath)
        case .second:
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        }
        cell.backgroundColor = Color.allCases[indexPath.item].uiColor
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch SectionData.allCases[indexPath.section] {
        case .first:
            return .init(width: 50, height: 50)
        case .second:
            return .init(width: 200, height: 200)
        }
    }

}

