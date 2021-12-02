//
//  ResultTableViewCell.swift
//  Go_Racing_MIKH
//
//  Created by user on 04.11.2021.
//

import UIKit

class ResultTableViewCell: UITableViewCell {

    @IBOutlet weak var namePlayer: UILabel!
    @IBOutlet weak var gameResult: UILabel!
    @IBOutlet weak var timeResult: UILabel!
        
         func tableView (_ tableView: UITableView, cellForRowAt IndexPath: IndexPath)->UITableViewCell{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "row", for: IndexPath) as! ResultTableViewCell
        
        cell.namePlayer.text = results[IndexPath.row].playerName
        cell.gameResult.text = results[IndexPath.row].resultGame
        cell.timeResult.text = results[IndexPath.row].timeGame
        return cell
    }
}
