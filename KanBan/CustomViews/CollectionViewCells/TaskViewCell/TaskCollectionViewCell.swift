//
//  TaskCollectionViewCell.swift
//  KanBan
//
//  Created by Sei Mouk on 5/11/24.
//

import UIKit

class TaskCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "TaskCollectionViewCell"
    
    @IBOutlet weak var deadlineLabel: UILabel!
    @IBOutlet weak var taskTitleLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(_ task: Task) {
        
        if let deadline = task.deadline {
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .short
            
            deadlineLabel.text = "Deadline:" + dateFormatter.string(from: deadline)
        } else {
            deadlineLabel.text = "No deadline"
        }

        taskTitleLabel.text = task.title
    }
    

}
