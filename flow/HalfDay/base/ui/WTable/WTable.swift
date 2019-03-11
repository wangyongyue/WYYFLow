//
//  WTable.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/9.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

typealias selectCell = (_ index:Int) -> ()

class WTable: UITableView,UITableViewDataSource,UITableViewDelegate{

    var array = Array<WModel>()
    var block:selectCell?
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        
        self.backgroundColor = UIColor.clear
        self.delegate = self
        self.dataSource = self
        self.separatorStyle = .none
        self.rowHeight = UITableView.automaticDimension
        self.estimatedRowHeight = 50.0
        
        for value in Global().registryCells{
            
            register(value)
        }
        
    }
    override func numberOfRows(inSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = array[indexPath.row]
        let cell = self.dequeueReusableCell(withIdentifier: model.blidView!, for: indexPath) as! WCell
        cell.selectionStyle = .none
        cell.setModel(model)
        return cell
    
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        block?(indexPath.row)
    }
    
    func register(_ cellClass:AnyClass){
        let className:String=NSStringFromClass(cellClass).components(separatedBy: ".").last!
        self.register(cellClass, forCellReuseIdentifier: className)
    }
    func didSelect(_ callBack:@escaping selectCell){
        block = callBack
        
    }
    func reload(_ arr:Array<WModel>){
        
        array = arr
        self.reloadData()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
    
}

