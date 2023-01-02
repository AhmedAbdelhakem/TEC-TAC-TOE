class Player {
  static const x = "X";
  static const o = "O";
  static const empty = "";
}

class Game {
  static final boardlenth = 9;
  static final blocSize = 100.0;

  List<String>? board;

  static List<String>? initGameBoard() =>
      List.generate(boardlenth, (index) => Player.empty);

  bool winnerCheck(String player, int index, List<int> scoardboard, int girdSize){
    int row = index~/ 3;
    int col = index % 3;
    int score = player =="X" ? 1:-1;

    scoardboard[row]+=score;
    scoardboard[girdSize + col]+=score;
    if(row == col) scoardboard[2*girdSize] += score;
    if(girdSize -1 -col == row) scoardboard[2*girdSize +1] += score;
    if(scoardboard.contains(3) || scoardboard.contains(-3)){
      return true;
    }
    return false;
  }
}
