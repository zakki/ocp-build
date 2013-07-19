


type env
type plist = (string * env) list


val empty_env : env

val set_global : string -> plist -> unit

val bool_of_plist : plist -> bool
val plist_of_bool : bool -> plist

val strings_of_plist : plist -> string list
val plist_of_strings : string list -> plist

val string_of_plist : plist -> string
val plist_of_string : string -> plist

val set : env -> string -> plist -> env
val get : env list -> string -> plist
val get_with_default : env list -> string -> plist -> plist
val get_local : env list -> string -> plist
val get_local_with_default : env list -> string -> plist -> plist

val set_bool : env -> string -> bool -> env
val get_bool : env list -> string -> bool
val get_bool_with_default : env list -> string -> bool -> bool

val set_strings : env -> string -> string list -> env
val get_strings : env list -> string -> string list
val get_strings_with_default : env list -> string -> string list -> string list

val set_string : env -> string -> string -> env
val get_string : env list -> string -> string
val get_string_with_default : env list -> string -> string -> string

val set_path : env -> string -> string -> env
val get_path : env list -> string -> string
val get_path_with_default : env list -> string -> string -> string

val is_already_installed : env list -> bool

type 'a source_option = {
  get : env list -> 'a;
  set : 'a -> unit;
}

val new_bool_option : string -> bool -> bool source_option
val new_strings_option : string -> string list -> string list source_option
val new_string_option : string -> string -> string source_option

val true_value : plist
val false_value : plist
