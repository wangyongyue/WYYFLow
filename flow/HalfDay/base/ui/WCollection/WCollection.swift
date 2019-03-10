//
//  WCollection.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/9.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class WCollection: UICollectionView ,UICollectionViewDelegate,UICollectionViewDataSource{

    var array = Array<WModel>()
    var block:selectCell?
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        
        self.backgroundColor = UIColor.clear
        
        self.delegate = self
        self.dataSource = self
        for value in Global().registryCollectionCells{
            
            register(value)
        }
    }
    init(_ flowLayout:WFlowLayout) {
        self.init()
        self.collectionViewLayout = flowLayout
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func numberOfItems(inSection section: Int) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return array.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let model = array[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: model.blidView!, for: indexPath) as! WCollectionCell
        cell.setModel(model)
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        self.block?(indexPath.row)
    }
    func register(_ cellClass:AnyClass){
        let className:String=NSStringFromClass(cellClass).components(separatedBy: ".").last!
        self.register(cellClass, forCellWithReuseIdentifier: className)
    }
    func didSelect(_ callBack:@escaping selectCell){
        block = callBack
        
    }
    func reload(_ arr:Array<WModel>){
        self.array = arr
        self.reloadData()
    }
}
