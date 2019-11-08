type tsparser
val tsparser : tsparser Ctypes.typ

type tslanguage
val tslanguage : tslanguage Ctypes.typ

type tstree
val tstree : tstree Ctypes.typ

type tsnode
val tsnode : tsnode Ctypes.typ

val ts_new_parser : unit -> tsparser
val ts_parser_delete : tsparser -> unit
val ts_parser_set_language : tsparser -> tslanguage -> bool
val ts_parser_parse_string : tsparser -> tstree -> string -> tstree
val ts_tree_root_node : tstree -> tsnode
val ts_node_type : tsnode -> string
val ts_node_child_count : tsnode -> Unsigned.uint32
val ts_node_named_child_count : tsnode -> Unsigned.uint32