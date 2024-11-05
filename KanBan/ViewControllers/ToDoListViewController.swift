//
//  ToDoListViewController.swift
//  KanBan
//
//  Created by Sei Mouk on 5/11/24.
//

import UIKit


var TO_DO_LIST: [Task] = []

class ToDoListViewController: UIViewController {
    
    private let itemsPerRow: CGFloat = (2)
    
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        TO_DO_LIST.append(Task(id: 1, title: "Complete iOS app UI", description: "Finalize the UI components for the new iOS app.", status: 0, deadline: Date(timeIntervalSince1970: 1700000000)))
        TO_DO_LIST.append(Task(id: 1, title: "Complete iOS app UI", description: "Finalize the UI components for the new iOS app.", status: 0, deadline: nil))
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        registerCells()
    }
    
    private func registerCells() {
        collectionView.register(UINib(nibName: TaskCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: TaskCollectionViewCell.identifier)
    }
}

extension ToDoListViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return TO_DO_LIST.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TaskCollectionViewCell.identifier, for: indexPath) as! TaskCollectionViewCell
        
        let toDoTask = TO_DO_LIST[indexPath.row]
        
        cell.setup(toDoTask)
        
        return cell
    }
    
}
