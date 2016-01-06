/**
 *
 * Copyright (c) 2015, MarkNote. (MIT Licensed)
 * https://github.com/marknote/MarknoteParser
 */

import Foundation

class MoveGroup{
    
    var type:StoneType = .Black
    var sequence:Int = 0
    var name = ""
    var allMoves: [Move] = [Move]()
    
    
    func addMove(m:Move){
        m.groupName = name
        allMoves.append(m)
    }
    
    func caculateLiberty(occupied:[Location])->Int{
        var liberty = 0
        for m in allMoves {
            liberty += m.caculateLiberty(occupied)
        }
        return liberty
    }

}
