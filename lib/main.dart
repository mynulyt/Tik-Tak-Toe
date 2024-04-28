import 'package:flutter/material.dart';
import 'package:tik_tok_toe/Enum/box_stat_enum.dart';
import 'package:tik_tok_toe/Enum/games_state.dart';

import 'Widgets/bos_state_to_icon.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isCrossTurn = true;
  GameState gameState = GameState.GameContinue;

// first Row
  BoxState a = BoxState.empty;

  BoxState b = BoxState.empty;

  BoxState c = BoxState.empty;

  //second Row
  BoxState d = BoxState.empty;

  BoxState e = BoxState.empty;

  BoxState f = BoxState.empty;

  //Third Row
  BoxState g = BoxState.empty;

  BoxState h = BoxState.empty;

  BoxState i = BoxState.empty;

  void ResetGame() {
    setState(() {
      // first Row
      a = BoxState.empty;

      b = BoxState.empty;

      c = BoxState.empty;

      //second Row
      d = BoxState.empty;

      e = BoxState.empty;

      f = BoxState.empty;

      //Third Row
      g = BoxState.empty;

      h = BoxState.empty;

      i = BoxState.empty;
      //resetGameSate
      gameState = GameState.GameContinue;
    });
  }

  void gameScoreUpate() {
    //first row
    if (a == b && b == c && a != BoxState.empty) {
      if (a == BoxState.circle) {
        gameState = GameState.circleWon;
      } else {
        gameState = GameState.crossWon;
      }
    }
    //second row
    if (d == e && e == f && d != BoxState.empty) {
      if (d == BoxState.circle) {
        gameState = GameState.circleWon;
      } else {
        gameState = GameState.crossWon;
      }
    }
    //third row

    if (g == h && h == i && g != BoxState.empty) {
      if (g == BoxState.circle) {
        gameState = GameState.circleWon;
      } else {
        gameState = GameState.crossWon;
      }
    }
    //first colum

    if (a == d && d == g && a != BoxState.empty) {
      if (a == BoxState.circle) {
        gameState = GameState.circleWon;
      } else {
        gameState = GameState.crossWon;
      }
    }
    //second colum

    if (b == e && e == h && b != BoxState.empty) {
      if (b == BoxState.circle) {
        gameState = GameState.circleWon;
      } else {
        gameState = GameState.crossWon;
      }
    }

    //third colum

    if (c == f && f == i && c != BoxState.empty) {
      if (c == BoxState.circle) {
        gameState = GameState.circleWon;
      } else {
        gameState = GameState.crossWon;
      }
    }
    //right slope

    if (a == e && e == i && a != BoxState.empty) {
      if (a == BoxState.circle) {
        gameState = GameState.circleWon;
      } else {
        gameState = GameState.crossWon;
      }
    }
    //left slope

    if (c == e && e == g && c != BoxState.empty) {
      if (c == BoxState.circle) {
        gameState = GameState.circleWon;
      } else {
        gameState = GameState.crossWon;
      }
    }

    if (a != BoxState.empty &&
        b != BoxState.empty &&
        c != BoxState.empty &&
        d != BoxState.empty &&
        e != BoxState.empty &&
        f != BoxState.empty &&
        g != BoxState.empty &&
        h != BoxState.empty &&
        i != BoxState.empty &&
        gameState == GameState.GameContinue) {
      gameState = GameState.draw;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Tik Tac Toe',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Center(
                      child: Text(
                        "Turn: ${isCrossTurn ? "Cross" : "Circle"}",
                        style: TextStyle(fontSize: 40),
                      ),
                    )),
                Expanded(
                  flex: 8,
                  child: GridView.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 6.0,
                    crossAxisSpacing: 6.0,
                    children: [
                      //First Row
                      InkWell(
                        onTap: () {
                          print("a tapped");
                          setState(() {
                            if (a == BoxState.empty) {
                              if (isCrossTurn) {
                                a = BoxState.cross;
                              } else {
                                a = BoxState.circle;
                              }
                              isCrossTurn = !isCrossTurn;
                              gameScoreUpate();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.green,
                          child: BoxStateToIcon(boxState: a),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("b tapped");
                          setState(() {
                            if (b == BoxState.empty) {
                              if (isCrossTurn) {
                                b = BoxState.cross;
                              } else {
                                b = BoxState.circle;
                              }
                              isCrossTurn = !isCrossTurn;
                              gameScoreUpate();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.green,
                          child: BoxStateToIcon(boxState: b),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("c tapped");
                          setState(() {
                            if (c == BoxState.empty) {
                              if (isCrossTurn) {
                                c = BoxState.cross;
                              } else {
                                c = BoxState.circle;
                              }
                              isCrossTurn = !isCrossTurn;
                              gameScoreUpate();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.green,
                          child: BoxStateToIcon(boxState: c),
                        ),
                      ),
                      //Second Row
                      InkWell(
                        onTap: () {
                          print("d tapped");
                          setState(() {
                            if (d == BoxState.empty) {
                              if (isCrossTurn) {
                                d = BoxState.cross;
                              } else {
                                d = BoxState.circle;
                              }
                              isCrossTurn = !isCrossTurn;
                              gameScoreUpate();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.green,
                          child: BoxStateToIcon(boxState: d),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("e tapped");
                          setState(() {
                            if (e == BoxState.empty) {
                              if (isCrossTurn) {
                                e = BoxState.cross;
                              } else {
                                e = BoxState.circle;
                              }
                              isCrossTurn = !isCrossTurn;
                              gameScoreUpate();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.green,
                          child: BoxStateToIcon(boxState: e),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("f tapped");
                          setState(() {
                            if (f == BoxState.empty) {
                              if (isCrossTurn) {
                                f = BoxState.cross;
                              } else {
                                f = BoxState.circle;
                              }
                              isCrossTurn = !isCrossTurn;
                              gameScoreUpate();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.green,
                          child: BoxStateToIcon(boxState: f),
                        ),
                      ),
                      // Third Row
                      InkWell(
                        onTap: () {
                          print("g tapped");
                          setState(() {
                            if (g == BoxState.empty) {
                              if (isCrossTurn) {
                                g = BoxState.cross;
                              } else {
                                g = BoxState.circle;
                              }
                              isCrossTurn = !isCrossTurn;
                              gameScoreUpate();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.green,
                          child: BoxStateToIcon(boxState: g),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("h tapped");
                          setState(() {
                            if (h == BoxState.empty) {
                              if (isCrossTurn) {
                                h = BoxState.cross;
                              } else {
                                h = BoxState.circle;
                              }
                              isCrossTurn = !isCrossTurn;
                              gameScoreUpate();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.green,
                          child: BoxStateToIcon(boxState: h),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("i tapped");
                          setState(() {
                            if (i == BoxState.empty) {
                              if (isCrossTurn) {
                                i = BoxState.cross;
                              } else {
                                i = BoxState.circle;
                              }
                              isCrossTurn = !isCrossTurn;
                              gameScoreUpate();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.green,
                          child: BoxStateToIcon(boxState: i),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            gameState != GameState.GameContinue
                ? Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.greenAccent.withOpacity(0.8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            gameState == GameState.circleWon
                                ? "Circle Won"
                                : gameState == GameState.crossWon
                                    ? "Cross Won"
                                    : "Draw",
                            style: TextStyle(fontSize: 44.0),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () => ResetGame(), child: Text("Reset"))
                      ],
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
