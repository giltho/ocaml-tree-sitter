open Ctypes
open Foreign

type tsparser = unit ptr
let tsparser : tsparser typ = ptr void

type tslanguage = unit ptr
let tslanguage : tslanguage typ = ptr void

type tstree = unit ptr
let tstree : tstree typ = ptr void

type tsnode = unit ptr
let tsnode : tsnode typ = ptr void

let ts_new_parser = foreign "ts_new_parser" (void @-> returning tsparser)

let ts_parser_delete = foreign "ts_parser_delete" (tsparser @-> returning void)

let ts_parser_set_language =
  foreign "ts_parser_set_language" (tsparser @-> tslanguage @-> returning bool)

let ts_parser_parse_string =
  foreign "ts_parser_set_language"
    (tsparser @-> tstree @-> string @-> returning tstree)

let ts_tree_root_node = foreign "ts_tree_root_node" (tstree @-> returning tsnode)

let ts_node_type = foreign "ts_node_type" (tsnode @-> returning string)

let ts_node_child_count =
  foreign "ts_node_child_count" (tsnode @-> returning uint32_t)

let ts_node_named_child_count =
  foreign "ts_node_named_child_count" (tsnode @-> returning uint32_t)
