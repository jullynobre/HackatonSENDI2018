//
//  HistoryViewController.swift
//  hackatonApp
//
//  Created by Jully Nobre on 18/11/18.
//  Copyright © 2018 Jully Nobre. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

    @IBOutlet weak var pointsView: UIView!
    
    @IBOutlet weak var pointsTableView: UITableView!
    
    let cellItendifier = "occurrencyCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loadPointsView()
        
        self.pointsTableView.register(UINib.init(nibName: "OccurrencyTableViewCell", bundle: nil), forCellReuseIdentifier: self.cellItendifier)
        self.pointsTableView.rowHeight = 75
        self.pointsTableView.delegate = self
        self.pointsTableView.dataSource = self
    }
    func loadPointsView() {
        let view = UINib(nibName: "PointsView", bundle: .main).instantiate(withOwner: nil, options: nil).first as! PointsView
        view.frame = self.pointsView.bounds
        self.pointsView.addSubview(view)
    }

}

extension HistoryViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.cellItendifier, for: indexPath) as! OccurrencyTableViewCell
        return cell
    }
    
    
}
