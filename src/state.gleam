import types.{type Moves, type Player}
import square.{type Square}
import position.{type Position, Position}
import rank.{type Rank, Eight, Five, Four, One, Seven, Six, Three, Two}
import file.{type File, A, B, C, D, E, F, G, H}
import gleam/map.{type Map}
import gleam/option.{type Option, None, Some}
import gleam/list

const list_of_files: List(File) = [A, B, C, D, E, F, G, H]

const list_of_ranks: List(Rank) = [
  One,
  Two,
  Three,
  Four,
  Five,
  Six,
  Seven,
  Eight,
]

pub type Moveable {
  Moveable(
    player: Player,
    moves: Option(Moves),
    after: Option(fn(types.MoveData) -> Nil),
  )
}

pub type ClickMode {
  RightClick(highlighted: List(Position))
  LeftClick(selected: Option(Position), targeted: List(Position))
}

pub type State {
  State(
    // TODO: pieces: Map(Int, types.PlayerPiece),
    // TODO: click_mode: ClickMode,
    // TODO: moves: Moves,
    squares: Map(Int, Square),
    // TODO: replace squares
    moveable: Moveable,
    selected_square: Option(Square),
  )
}

const list_of_starting_position_moves = []

pub fn starting_position_board() -> State {
  let map_of_starting_position_moves =
    map.from_list(list_of_starting_position_moves)
  let list_of_pieces: List(#(Int, option.Option(types.PlayerPiece))) = [
    #(
      0,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Rook,
        player: types.White,
      )),
    ),
    #(
      1,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Knight,
        player: types.White,
      )),
    ),
    #(
      2,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Bishop,
        player: types.White,
      )),
    ),
    #(
      3,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Queen,
        player: types.White,
      )),
    ),
    #(
      4,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.King,
        player: types.White,
      )),
    ),
    #(
      5,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Bishop,
        player: types.White,
      )),
    ),
    #(
      6,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Knight,
        player: types.White,
      )),
    ),
    #(
      7,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Rook,
        player: types.White,
      )),
    ),
    #(
      8,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Pawn(None),
        player: types.White,
      )),
    ),
    #(
      9,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Pawn(None),
        player: types.White,
      )),
    ),
    #(
      10,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Pawn(None),
        player: types.White,
      )),
    ),
    #(
      11,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Pawn(None),
        player: types.White,
      )),
    ),
    #(
      12,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Pawn(None),
        player: types.White,
      )),
    ),
    #(
      13,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Pawn(None),
        player: types.White,
      )),
    ),
    #(
      14,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Pawn(None),
        player: types.White,
      )),
    ),
    #(
      15,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Pawn(None),
        player: types.White,
      )),
    ),
    #(16, None),
    #(17, None),
    #(18, None),
    #(19, None),
    #(20, None),
    #(21, None),
    #(22, None),
    #(23, None),
    #(24, None),
    #(25, None),
    #(26, None),
    #(27, None),
    #(28, None),
    #(29, None),
    #(30, None),
    #(31, None),
    #(32, None),
    #(33, None),
    #(34, None),
    #(35, None),
    #(36, None),
    #(37, None),
    #(38, None),
    #(39, None),
    #(40, None),
    #(41, None),
    #(42, None),
    #(43, None),
    #(44, None),
    #(45, None),
    #(46, None),
    #(47, None),
    #(
      48,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Pawn(None),
        player: types.Black,
      )),
    ),
    #(
      49,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Pawn(None),
        player: types.Black,
      )),
    ),
    #(
      50,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Pawn(None),
        player: types.Black,
      )),
    ),
    #(
      51,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Pawn(None),
        player: types.Black,
      )),
    ),
    #(
      52,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Pawn(None),
        player: types.Black,
      )),
    ),
    #(
      53,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Pawn(None),
        player: types.Black,
      )),
    ),
    #(
      54,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Pawn(None),
        player: types.Black,
      )),
    ),
    #(
      55,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Pawn(None),
        player: types.Black,
      )),
    ),
    #(
      56,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Rook,
        player: types.Black,
      )),
    ),
    #(
      57,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Knight,
        player: types.Black,
      )),
    ),
    #(
      58,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Bishop,
        player: types.Black,
      )),
    ),
    #(
      59,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Queen,
        player: types.Black,
      )),
    ),
    #(
      60,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.King,
        player: types.Black,
      )),
    ),
    #(
      61,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Bishop,
        player: types.Black,
      )),
    ),
    #(
      62,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Knight,
        player: types.Black,
      )),
    ),
    #(
      63,
      Some(types.PlayerPiece(
        moved: False,
        piece: types.Rook,
        player: types.Black,
      )),
    ),
  ]

  let squares =
    list.fold(
      list_of_pieces,
      map.new(),
      fn(map, index_and_piece) {
        case
          map.get(
            map_of_starting_position_moves,
            position.from_int(index_and_piece.0),
          )
        {
          Ok(moves_to_play) -> {
            map
            |> map.insert(
              index_and_piece.0,
              square.Square(
                position: Position(
                  file: {
                    let assert Ok(file) =
                      list.at(list_of_files, index_and_piece.0 % 8)
                    file
                  },
                  rank: {
                    let assert Ok(rank) =
                      list.at(list_of_ranks, index_and_piece.0 / 8)
                    rank
                  },
                ),
                player_piece: index_and_piece.1,
                moves_to_play: moves_to_play,
                status: None,
              ),
            )
          }
          Error(_) -> {
            map
            |> map.insert(
              index_and_piece.0,
              square.Square(
                position: Position(
                  file: {
                    let assert Ok(file) =
                      list.at(list_of_files, index_and_piece.0 % 8)
                    file
                  },
                  rank: {
                    let assert Ok(rank) =
                      list.at(list_of_ranks, index_and_piece.0 / 8)
                    rank
                  },
                ),
                player_piece: index_and_piece.1,
                moves_to_play: None,
                status: None,
              ),
            )
          }
        }
      },
    )

  let moveable = Moveable(player: types.White, moves: None, after: None)

  State(squares, moveable, None)
}
