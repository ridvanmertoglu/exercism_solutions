//Solution goes in Sources

import Foundation

class Hamming {
    
    class func compute(_ base:String, against:String) ->Int? {
        var count : Int?;
        var index1 : String.Index;
        var index2 : String.Index;
        if base.characters.count != against.characters.count{
            return  count;
        }
        else{
            count = 0;
            if base.isEmpty {
                return count;
            }
            for i in 0...(base.characters.count-1){
                index1=base.index(base.startIndex, offsetBy: i);
                index2=base.index(against.startIndex, offsetBy: i);
                if base.characters[index1] != against.characters[index2] {
                    count! += 1;
                }
            }
            
            return count;
        }
    }
}
