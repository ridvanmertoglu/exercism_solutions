//Solution goes in Sources

import Foundation

struct Queens: CustomStringConvertible {
  enum InitError: Error {
    case incorrectNumberOfCoordinates, invalidCoordinates, sameSpace
  }

  var white: [Int]
  var black: [Int]

  init(white: [Int] = [0, 3], black: [Int] = [7, 3]) throws {
    if white == black { throw InitError.sameSpace }
    if white.count != black.count { throw InitError.incorrectNumberOfCoordinates }
    if (white.contains { $0 < 0 || $0 > 8 }) || (black.contains { $0 < 0 || $0 > 8 }) {
      throw InitError.invalidCoordinates
    }

    self.white = white
    self.black = black
  }

  var canAttack: Bool {
    var dx = abs(white[0] - black[0])
    var dy = abs(white[1] - black[1])
    return dx == 0 || dy == 0 || dx == dy
  }

  var description: String {
    var board = Array(repeating: "_", count: 8).map { _ in Array(repeating: "_", count: 8) }
    board[white[0]][white[1]] = "W"
    board[black[0]][black[1]] = "B"
    return board.map { $0.joined(separator: " ") }.joined(separator:"\n")
  }
}
