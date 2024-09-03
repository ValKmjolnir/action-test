%struct.std.str.str = type { i8*, i64, i64 }
%struct.std.io.fs = type {}
%struct.std.io.io = type { i32 }
%struct.err.span.span = type { i64, i64, i64, i64, %struct.std.str.str }
%struct.err.report.file_lines = type { %struct.std.str.str*, i64, i64 }
%struct.err.report.report = type { %struct.std.str.str, %struct.err.report.file_lines, i64 }
%struct.cli.cli_option = type { i1, i1, i1, i1, i1, i1, i8*, i8* }
%struct.lexer.token = type { i64, %struct.std.str.str*, %struct.err.span.span* }
%struct.lexer.vec_token = type { %struct.lexer.token*, i64, i64 }
%struct.lexer.lexer = type { %struct.err.report.report*, %struct.lexer.vec_token*, i64, %struct.std.str.str, i64, i64 }
%struct.ast.ast.ast = type { i64, %struct.err.span.span* }
%struct.ast.ast.ptr_vec = type { i8**, i64, i64 }
%struct.ast.ast.root = type { %struct.ast.ast.ast, %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec }
%struct.ast.ast.ast_unary_operator = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_binary_operator = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_type_convert = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_identifier = type { %struct.ast.ast.ast, %struct.std.str.str }
%struct.ast.ast.ast_nil_literal = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_number_literal = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_string_literal = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_char_literal = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_bool_literal = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_call_index = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_call_func_args = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_get_field = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_ptr_get_field = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_init_pair = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_initializer = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_call_path = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_call = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_assignment = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_type_def = type { %struct.ast.ast.ast, %struct.ast.ast.ast_identifier*, i64 }
%struct.ast.ast.ast_enum_decl = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_struct_field = type { %struct.ast.ast.ast, %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_type_def* }
%struct.ast.ast.ast_struct_decl = type { %struct.ast.ast.ast, %struct.ast.ast.ptr_vec, %struct.std.str.str }
%struct.ast.ast.ast_param = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_param_list = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_func_decl = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_impl = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_use_stmt = type { %struct.ast.ast.ast, %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec }
%struct.ast.ast.ast_definition = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_cond_stmt = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_if_stmt = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_match_case = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_match_stmt = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_while_stmt = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_for_stmt = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_in_stmt_expr = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_ret_stmt = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_continue_stmt = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_break_stmt = type { %struct.ast.ast.ast }
%struct.ast.ast.ast_code_block = type { %struct.ast.ast.ast }
%struct.ast.dumper.ast_dumper = type { %struct.std.str.str }
%struct.parser.parser = type { %struct.err.report.report*, %struct.lexer.vec_token*, %struct.ast.ast.root*, i64 }

@const.str.0 = private unnamed_addr constant [36 x i8] c"std::str::get: index out of range\0a\0a\00"
@const.str.1 = private unnamed_addr constant [2 x i8] c"\0a\00"
@const.str.2 = private unnamed_addr constant [8 x i8] c"\1b[91;1m\00"
@const.str.3 = private unnamed_addr constant [8 x i8] c"\1b[92;1m\00"
@const.str.4 = private unnamed_addr constant [8 x i8] c"\1b[36;1m\00"
@const.str.5 = private unnamed_addr constant [8 x i8] c"\1b[93;1m\00"
@const.str.6 = private unnamed_addr constant [9 x i8] c"\1b[0m\1b[1m\00"
@const.str.7 = private unnamed_addr constant [5 x i8] c"\1b[0m\00"
@const.str.8 = private unnamed_addr constant [8 x i8] c"Error: \00"
@const.str.9 = private unnamed_addr constant [22 x i8] c"failed to load file <\00"
@const.str.10 = private unnamed_addr constant [39 x i8] c">, check if it exists and is readable\0a\00"
@const.str.11 = private unnamed_addr constant [4 x i8] c" | \00"
@const.str.12 = private unnamed_addr constant [5 x i8] c"^^^^\00"
@const.str.13 = private unnamed_addr constant [7 x i8] c"  --> \00"
@const.str.14 = private unnamed_addr constant [7 x i8] c"Warn: \00"
@const.str.15 = private unnamed_addr constant [27 x i8] c"colgm compiler version 0.2\00"
@const.str.16 = private unnamed_addr constant [17 x i8] c"\0acolgm <option>\0a\00"
@const.str.17 = private unnamed_addr constant [9 x i8] c"option:\0a\00"
@const.str.18 = private unnamed_addr constant [39 x i8] c"   -h,   --help           | get help.\0a\00"
@const.str.19 = private unnamed_addr constant [42 x i8] c"   -v,   --version        | get version.\0a\00"
@const.str.20 = private unnamed_addr constant [24 x i8] c"\0acolgm [option] <file>\0a\00"
@const.str.21 = private unnamed_addr constant [51 x i8] c"   -l,   --lex            | view analysed tokens.\0a\00"
@const.str.22 = private unnamed_addr constant [39 x i8] c"   -a,   --ast            | view ast.\0a\00"
@const.str.23 = private unnamed_addr constant [51 x i8] c"   -s,   --sema           | view semantic result.\0a\00"
@const.str.24 = private unnamed_addr constant [39 x i8] c"         --mir            | view mir.\0a\00"
@const.str.25 = private unnamed_addr constant [39 x i8] c"         --sir            | view sir.\0a\00"
@const.str.26 = private unnamed_addr constant [47 x i8] c"   -L,   --library <path> | add library path.\0a\00"
@const.str.27 = private unnamed_addr constant [45 x i8] c"         --dump-lib       | view libraries.\0a\00"
@const.str.28 = private unnamed_addr constant [7 x i8] c"file:\0a\00"
@const.str.29 = private unnamed_addr constant [41 x i8] c"   <filename>             | input file.\0a\00"
@const.str.30 = private unnamed_addr constant [34 x i8] c"                __              \0a\00"
@const.str.31 = private unnamed_addr constant [34 x i8] c"    _________  / /___ _____ ___ \0a\00"
@const.str.32 = private unnamed_addr constant [34 x i8] c"   / ___/ __ \5c/ / __ \60/ __ \60__ \5c\0a\00"
@const.str.33 = private unnamed_addr constant [34 x i8] c"  / /__/ /_/ / / /_/ / / / / / /\0a\00"
@const.str.34 = private unnamed_addr constant [34 x i8] c"  \5c___/\5c____/_/\5c__, /_/ /_/ /_/ \0a\00"
@const.str.35 = private unnamed_addr constant [35 x i8] c"              /____/            \0a\0a\00"
@const.str.36 = private unnamed_addr constant [8 x i8] c"ver  : \00"
@const.str.37 = private unnamed_addr constant [40 x i8] c"repo : https://github.com/colgm/colgm\0a\0a\00"
@const.str.38 = private unnamed_addr constant [8 x i8] c"input <\00"
@const.str.39 = private unnamed_addr constant [20 x i8] c" -h> to get help.\0a\0a\00"
@const.str.40 = private unnamed_addr constant [17 x i8] c"[tok_null      ]\00"
@const.str.41 = private unnamed_addr constant [17 x i8] c"[tok_num       ]\00"
@const.str.42 = private unnamed_addr constant [17 x i8] c"[tok_str       ]\00"
@const.str.43 = private unnamed_addr constant [17 x i8] c"[tok_ch        ]\00"
@const.str.44 = private unnamed_addr constant [17 x i8] c"[tok_id        ]\00"
@const.str.45 = private unnamed_addr constant [17 x i8] c"[tok_true      ]\00"
@const.str.46 = private unnamed_addr constant [17 x i8] c"[tok_false     ]\00"
@const.str.47 = private unnamed_addr constant [17 x i8] c"[tok_use       ]\00"
@const.str.48 = private unnamed_addr constant [17 x i8] c"[tok_enum      ]\00"
@const.str.49 = private unnamed_addr constant [17 x i8] c"[tok_for       ]\00"
@const.str.50 = private unnamed_addr constant [17 x i8] c"[tok_forindex  ]\00"
@const.str.51 = private unnamed_addr constant [17 x i8] c"[tok_foreach   ]\00"
@const.str.52 = private unnamed_addr constant [17 x i8] c"[tok_while     ]\00"
@const.str.53 = private unnamed_addr constant [17 x i8] c"[tok_var       ]\00"
@const.str.54 = private unnamed_addr constant [17 x i8] c"[tok_struct    ]\00"
@const.str.55 = private unnamed_addr constant [17 x i8] c"[tok_pub       ]\00"
@const.str.56 = private unnamed_addr constant [17 x i8] c"[tok_impl      ]\00"
@const.str.57 = private unnamed_addr constant [17 x i8] c"[tok_func      ]\00"
@const.str.58 = private unnamed_addr constant [17 x i8] c"[tok_match     ]\00"
@const.str.59 = private unnamed_addr constant [17 x i8] c"[tok_break     ]\00"
@const.str.60 = private unnamed_addr constant [17 x i8] c"[tok_continue  ]\00"
@const.str.61 = private unnamed_addr constant [17 x i8] c"[tok_return    ]\00"
@const.str.62 = private unnamed_addr constant [17 x i8] c"[tok_if        ]\00"
@const.str.63 = private unnamed_addr constant [17 x i8] c"[tok_elsif     ]\00"
@const.str.64 = private unnamed_addr constant [17 x i8] c"[tok_else      ]\00"
@const.str.65 = private unnamed_addr constant [17 x i8] c"[tok_nil       ]\00"
@const.str.66 = private unnamed_addr constant [17 x i8] c"[tok_lparen    ]\00"
@const.str.67 = private unnamed_addr constant [17 x i8] c"[tok_rparen    ]\00"
@const.str.68 = private unnamed_addr constant [17 x i8] c"[tok_lbracket  ]\00"
@const.str.69 = private unnamed_addr constant [17 x i8] c"[tok_rbracket  ]\00"
@const.str.70 = private unnamed_addr constant [17 x i8] c"[tok_lbrace    ]\00"
@const.str.71 = private unnamed_addr constant [17 x i8] c"[tok_rbrace    ]\00"
@const.str.72 = private unnamed_addr constant [17 x i8] c"[tok_semi      ]\00"
@const.str.73 = private unnamed_addr constant [17 x i8] c"[tok_op_and    ]\00"
@const.str.74 = private unnamed_addr constant [17 x i8] c"[tok_op_or     ]\00"
@const.str.75 = private unnamed_addr constant [17 x i8] c"[tok_comma     ]\00"
@const.str.76 = private unnamed_addr constant [17 x i8] c"[tok_dot       ]\00"
@const.str.77 = private unnamed_addr constant [17 x i8] c"[tok_ellipsis  ]\00"
@const.str.78 = private unnamed_addr constant [17 x i8] c"[tok_quesmark  ]\00"
@const.str.79 = private unnamed_addr constant [17 x i8] c"[tok_colon     ]\00"
@const.str.80 = private unnamed_addr constant [17 x i8] c"[tok_coloncolon]\00"
@const.str.81 = private unnamed_addr constant [17 x i8] c"[tok_add       ]\00"
@const.str.82 = private unnamed_addr constant [17 x i8] c"[tok_sub       ]\00"
@const.str.83 = private unnamed_addr constant [17 x i8] c"[tok_mul       ]\00"
@const.str.84 = private unnamed_addr constant [17 x i8] c"[tok_div       ]\00"
@const.str.85 = private unnamed_addr constant [17 x i8] c"[tok_rem       ]\00"
@const.str.86 = private unnamed_addr constant [17 x i8] c"[tok_floater   ]\00"
@const.str.87 = private unnamed_addr constant [17 x i8] c"[tok_bit_and   ]\00"
@const.str.88 = private unnamed_addr constant [17 x i8] c"[tok_bit_or    ]\00"
@const.str.89 = private unnamed_addr constant [17 x i8] c"[tok_bit_xor   ]\00"
@const.str.90 = private unnamed_addr constant [17 x i8] c"[tok_op_not    ]\00"
@const.str.91 = private unnamed_addr constant [17 x i8] c"[tok_eq        ]\00"
@const.str.92 = private unnamed_addr constant [17 x i8] c"[tok_addeq     ]\00"
@const.str.93 = private unnamed_addr constant [17 x i8] c"[tok_subeq     ]\00"
@const.str.94 = private unnamed_addr constant [17 x i8] c"[tok_muleq     ]\00"
@const.str.95 = private unnamed_addr constant [17 x i8] c"[tok_diveq     ]\00"
@const.str.96 = private unnamed_addr constant [17 x i8] c"[tok_remeq     ]\00"
@const.str.97 = private unnamed_addr constant [17 x i8] c"[tok_floatereq ]\00"
@const.str.98 = private unnamed_addr constant [17 x i8] c"[tok_bit_and_eq]\00"
@const.str.99 = private unnamed_addr constant [17 x i8] c"[tok_bit_or_eq ]\00"
@const.str.100 = private unnamed_addr constant [17 x i8] c"[tok_bit_xor_eq]\00"
@const.str.101 = private unnamed_addr constant [17 x i8] c"[tok_cmp_eq    ]\00"
@const.str.102 = private unnamed_addr constant [17 x i8] c"[tok_neq       ]\00"
@const.str.103 = private unnamed_addr constant [17 x i8] c"[tok_less      ]\00"
@const.str.104 = private unnamed_addr constant [17 x i8] c"[tok_leq       ]\00"
@const.str.105 = private unnamed_addr constant [17 x i8] c"[tok_grt       ]\00"
@const.str.106 = private unnamed_addr constant [17 x i8] c"[tok_geq       ]\00"
@const.str.107 = private unnamed_addr constant [17 x i8] c"[tok_arrow     ]\00"
@const.str.108 = private unnamed_addr constant [17 x i8] c"[tok_wide_arrow]\00"
@const.str.109 = private unnamed_addr constant [17 x i8] c"[tok_eof       ]\00"
@const.str.110 = private unnamed_addr constant [17 x i8] c"[unknown token ]\00"
@const.str.111 = private unnamed_addr constant [22 x i8] c"index out of bounds: \00"
@const.str.112 = private unnamed_addr constant [2 x i8] c"[\00"
@const.str.113 = private unnamed_addr constant [6 x i8] c"lexer\00"
@const.str.114 = private unnamed_addr constant [2 x i8] c"]\00"
@const.str.115 = private unnamed_addr constant [25 x i8] c" delete lexer::filename\0a\00"
@const.str.116 = private unnamed_addr constant [21 x i8] c" delete lexer::toks\0a\00"
@const.str.117 = private unnamed_addr constant [5 x i8] c"true\00"
@const.str.118 = private unnamed_addr constant [6 x i8] c"false\00"
@const.str.119 = private unnamed_addr constant [4 x i8] c"use\00"
@const.str.120 = private unnamed_addr constant [5 x i8] c"enum\00"
@const.str.121 = private unnamed_addr constant [4 x i8] c"for\00"
@const.str.122 = private unnamed_addr constant [9 x i8] c"forindex\00"
@const.str.123 = private unnamed_addr constant [8 x i8] c"foreach\00"
@const.str.124 = private unnamed_addr constant [6 x i8] c"while\00"
@const.str.125 = private unnamed_addr constant [4 x i8] c"var\00"
@const.str.126 = private unnamed_addr constant [7 x i8] c"struct\00"
@const.str.127 = private unnamed_addr constant [4 x i8] c"pub\00"
@const.str.128 = private unnamed_addr constant [5 x i8] c"impl\00"
@const.str.129 = private unnamed_addr constant [5 x i8] c"func\00"
@const.str.130 = private unnamed_addr constant [6 x i8] c"match\00"
@const.str.131 = private unnamed_addr constant [6 x i8] c"break\00"
@const.str.132 = private unnamed_addr constant [9 x i8] c"continue\00"
@const.str.133 = private unnamed_addr constant [7 x i8] c"return\00"
@const.str.134 = private unnamed_addr constant [3 x i8] c"if\00"
@const.str.135 = private unnamed_addr constant [6 x i8] c"elsif\00"
@const.str.136 = private unnamed_addr constant [5 x i8] c"else\00"
@const.str.137 = private unnamed_addr constant [4 x i8] c"nil\00"
@const.str.138 = private unnamed_addr constant [4 x i8] c"and\00"
@const.str.139 = private unnamed_addr constant [3 x i8] c"or\00"
@const.str.140 = private unnamed_addr constant [2 x i8] c"+\00"
@const.str.141 = private unnamed_addr constant [3 x i8] c"+=\00"
@const.str.142 = private unnamed_addr constant [2 x i8] c"-\00"
@const.str.143 = private unnamed_addr constant [3 x i8] c"-=\00"
@const.str.144 = private unnamed_addr constant [2 x i8] c"*\00"
@const.str.145 = private unnamed_addr constant [3 x i8] c"*=\00"
@const.str.146 = private unnamed_addr constant [2 x i8] c"/\00"
@const.str.147 = private unnamed_addr constant [3 x i8] c"/=\00"
@const.str.148 = private unnamed_addr constant [2 x i8] c"%\00"
@const.str.149 = private unnamed_addr constant [3 x i8] c"%=\00"
@const.str.150 = private unnamed_addr constant [2 x i8] c"~\00"
@const.str.151 = private unnamed_addr constant [3 x i8] c"~=\00"
@const.str.152 = private unnamed_addr constant [2 x i8] c"^\00"
@const.str.153 = private unnamed_addr constant [3 x i8] c"^=\00"
@const.str.154 = private unnamed_addr constant [2 x i8] c"=\00"
@const.str.155 = private unnamed_addr constant [3 x i8] c"==\00"
@const.str.156 = private unnamed_addr constant [2 x i8] c"<\00"
@const.str.157 = private unnamed_addr constant [3 x i8] c"<=\00"
@const.str.158 = private unnamed_addr constant [2 x i8] c">\00"
@const.str.159 = private unnamed_addr constant [3 x i8] c">=\00"
@const.str.160 = private unnamed_addr constant [2 x i8] c"!\00"
@const.str.161 = private unnamed_addr constant [3 x i8] c"!=\00"
@const.str.162 = private unnamed_addr constant [2 x i8] c"&\00"
@const.str.163 = private unnamed_addr constant [3 x i8] c"&=\00"
@const.str.164 = private unnamed_addr constant [3 x i8] c"&&\00"
@const.str.165 = private unnamed_addr constant [2 x i8] c"|\00"
@const.str.166 = private unnamed_addr constant [3 x i8] c"|=\00"
@const.str.167 = private unnamed_addr constant [3 x i8] c"||\00"
@const.str.168 = private unnamed_addr constant [3 x i8] c"0x\00"
@const.str.169 = private unnamed_addr constant [20 x i8] c"invalid hex number.\00"
@const.str.170 = private unnamed_addr constant [3 x i8] c"0o\00"
@const.str.171 = private unnamed_addr constant [20 x i8] c"invalid oct number.\00"
@const.str.172 = private unnamed_addr constant [34 x i8] c"get <eof> when generating string.\00"
@const.str.173 = private unnamed_addr constant [35 x i8] c"should only contain one character.\00"
@const.str.174 = private unnamed_addr constant [6 x i8] c"<eof>\00"
@const.str.175 = private unnamed_addr constant [3 x i8] c" [\00"
@const.str.176 = private unnamed_addr constant [2 x i8] c":\00"
@const.str.177 = private unnamed_addr constant [5 x i8] c" -> \00"
@const.str.178 = private unnamed_addr constant [4 x i8] c"] \22\00"
@const.str.179 = private unnamed_addr constant [2 x i8] c"\22\00"
@const.str.180 = private unnamed_addr constant [3 x i8] c"  \00"
@const.str.181 = private unnamed_addr constant [9 x i8] c"root -> \00"
@const.str.182 = private unnamed_addr constant [13 x i8] c"identifier: \00"
@const.str.183 = private unnamed_addr constant [8 x i8] c"use -> \00"
@const.str.184 = private unnamed_addr constant [8 x i8] c"module\0a\00"
@const.str.185 = private unnamed_addr constant [12 x i8] c"import-all\0a\00"
@const.str.186 = private unnamed_addr constant [18 x i8] c"import-specified\0a\00"
@const.str.187 = private unnamed_addr constant [11 x i8] c"type-def [\00"
@const.str.188 = private unnamed_addr constant [6 x i8] c"] -> \00"
@const.str.189 = private unnamed_addr constant [17 x i8] c"struct-field -> \00"
@const.str.190 = private unnamed_addr constant [14 x i8] c"struct-decl [\00"
@const.str.191 = private unnamed_addr constant [6 x i8] c"parse\00"
@const.str.192 = private unnamed_addr constant [21 x i8] c" delete parse::root\0a\00"
@const.str.193 = private unnamed_addr constant [26 x i8] c"expected identifier here.\00"
@const.str.194 = private unnamed_addr constant [22 x i8] c"expected number here.\00"
@const.str.195 = private unnamed_addr constant [22 x i8] c"expected string here.\00"
@const.str.196 = private unnamed_addr constant [18 x i8] c"unexpected token \00"
@const.str.197 = private unnamed_addr constant [7 x i8] c" here.\00"
@const.str.198 = private unnamed_addr constant [6 x i8] c"colgm\00"
@const.str.199 = private unnamed_addr constant [16 x i8] c" source file: \22\00"
@const.str.200 = private unnamed_addr constant [17 x i8] c" library path: \22\00"
@const.str.201 = private unnamed_addr constant [22 x i8] c" library path: <none>\00"
@const.str.202 = private unnamed_addr constant [3 x i8] c"-h\00"
@const.str.203 = private unnamed_addr constant [7 x i8] c"--help\00"
@const.str.204 = private unnamed_addr constant [3 x i8] c"-v\00"
@const.str.205 = private unnamed_addr constant [10 x i8] c"--version\00"
@const.str.206 = private unnamed_addr constant [3 x i8] c"-l\00"
@const.str.207 = private unnamed_addr constant [6 x i8] c"--lex\00"
@const.str.208 = private unnamed_addr constant [3 x i8] c"-a\00"
@const.str.209 = private unnamed_addr constant [6 x i8] c"--ast\00"
@const.str.210 = private unnamed_addr constant [3 x i8] c"-s\00"
@const.str.211 = private unnamed_addr constant [7 x i8] c"--sema\00"
@const.str.212 = private unnamed_addr constant [3 x i8] c"-L\00"
@const.str.213 = private unnamed_addr constant [10 x i8] c"--library\00"
@const.str.214 = private unnamed_addr constant [7 x i8] c"Error:\00"
@const.str.215 = private unnamed_addr constant [22 x i8] c" missing library path\00"
@const.str.216 = private unnamed_addr constant [24 x i8] c" invalid library path <\00"
@const.str.217 = private unnamed_addr constant [11 x i8] c"--dump-lib\00"
@const.str.218 = private unnamed_addr constant [6 x i8] c"--mir\00"
@const.str.219 = private unnamed_addr constant [6 x i8] c"--sir\00"
@const.str.220 = private unnamed_addr constant [20 x i8] c" invalid argument: \00"
@const.str.221 = private unnamed_addr constant [26 x i8] c" no source file specified\00"

define i64 @std.str.str.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.std.str.str, %struct.std.str.str* null, i64 1
  %1 = ptrtoint %struct.std.str.str* %0 to i64
  ret i64 %1
}
define i64 @std.io.fs.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.std.io.fs, %struct.std.io.fs* null, i64 1
  %1 = ptrtoint %struct.std.io.fs* %0 to i64
  ret i64 %1
}
define i64 @std.io.io.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.std.io.io, %struct.std.io.io* null, i64 1
  %1 = ptrtoint %struct.std.io.io* %0 to i64
  ret i64 %1
}
define i64 @err.span.span.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.err.span.span, %struct.err.span.span* null, i64 1
  %1 = ptrtoint %struct.err.span.span* %0 to i64
  ret i64 %1
}
define i64 @err.report.file_lines.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.err.report.file_lines, %struct.err.report.file_lines* null, i64 1
  %1 = ptrtoint %struct.err.report.file_lines* %0 to i64
  ret i64 %1
}
define i64 @err.report.report.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.err.report.report, %struct.err.report.report* null, i64 1
  %1 = ptrtoint %struct.err.report.report* %0 to i64
  ret i64 %1
}
define i64 @cli.cli_option.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.cli.cli_option, %struct.cli.cli_option* null, i64 1
  %1 = ptrtoint %struct.cli.cli_option* %0 to i64
  ret i64 %1
}
define i64 @lexer.token.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.lexer.token, %struct.lexer.token* null, i64 1
  %1 = ptrtoint %struct.lexer.token* %0 to i64
  ret i64 %1
}
define i64 @lexer.vec_token.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.lexer.vec_token, %struct.lexer.vec_token* null, i64 1
  %1 = ptrtoint %struct.lexer.vec_token* %0 to i64
  ret i64 %1
}
define i64 @lexer.lexer.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.lexer.lexer, %struct.lexer.lexer* null, i64 1
  %1 = ptrtoint %struct.lexer.lexer* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast, %struct.ast.ast.ast* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ptr_vec.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ptr_vec* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.root.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.root, %struct.ast.ast.root* null, i64 1
  %1 = ptrtoint %struct.ast.ast.root* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_unary_operator.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_unary_operator, %struct.ast.ast.ast_unary_operator* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_unary_operator* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_binary_operator.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_binary_operator, %struct.ast.ast.ast_binary_operator* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_binary_operator* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_type_convert.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_type_convert, %struct.ast.ast.ast_type_convert* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_type_convert* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_identifier.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_identifier, %struct.ast.ast.ast_identifier* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_identifier* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_nil_literal.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_nil_literal, %struct.ast.ast.ast_nil_literal* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_nil_literal* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_number_literal.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_number_literal, %struct.ast.ast.ast_number_literal* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_number_literal* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_string_literal.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_string_literal, %struct.ast.ast.ast_string_literal* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_string_literal* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_char_literal.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_char_literal, %struct.ast.ast.ast_char_literal* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_char_literal* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_bool_literal.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_bool_literal, %struct.ast.ast.ast_bool_literal* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_bool_literal* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_call_index.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_call_index, %struct.ast.ast.ast_call_index* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_call_index* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_call_func_args.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_call_func_args, %struct.ast.ast.ast_call_func_args* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_call_func_args* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_get_field.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_get_field, %struct.ast.ast.ast_get_field* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_get_field* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_ptr_get_field.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_ptr_get_field, %struct.ast.ast.ast_ptr_get_field* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_ptr_get_field* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_init_pair.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_init_pair, %struct.ast.ast.ast_init_pair* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_init_pair* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_initializer.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_initializer, %struct.ast.ast.ast_initializer* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_initializer* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_call_path.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_call_path, %struct.ast.ast.ast_call_path* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_call_path* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_call.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_call, %struct.ast.ast.ast_call* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_call* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_assignment.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_assignment, %struct.ast.ast.ast_assignment* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_assignment* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_type_def.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_type_def, %struct.ast.ast.ast_type_def* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_type_def* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_enum_decl.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_enum_decl, %struct.ast.ast.ast_enum_decl* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_enum_decl* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_struct_field.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_struct_field, %struct.ast.ast.ast_struct_field* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_struct_field* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_struct_decl.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_struct_decl, %struct.ast.ast.ast_struct_decl* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_struct_decl* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_param.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_param, %struct.ast.ast.ast_param* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_param* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_param_list.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_param_list, %struct.ast.ast.ast_param_list* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_param_list* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_func_decl.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_func_decl, %struct.ast.ast.ast_func_decl* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_func_decl* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_impl.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_impl, %struct.ast.ast.ast_impl* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_impl* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_use_stmt.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_use_stmt, %struct.ast.ast.ast_use_stmt* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_use_stmt* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_definition.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_definition, %struct.ast.ast.ast_definition* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_definition* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_cond_stmt.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_cond_stmt, %struct.ast.ast.ast_cond_stmt* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_cond_stmt* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_if_stmt.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_if_stmt, %struct.ast.ast.ast_if_stmt* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_if_stmt* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_match_case.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_match_case, %struct.ast.ast.ast_match_case* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_match_case* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_match_stmt.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_match_stmt, %struct.ast.ast.ast_match_stmt* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_match_stmt* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_while_stmt.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_while_stmt, %struct.ast.ast.ast_while_stmt* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_while_stmt* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_for_stmt.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_for_stmt, %struct.ast.ast.ast_for_stmt* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_for_stmt* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_in_stmt_expr.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_in_stmt_expr, %struct.ast.ast.ast_in_stmt_expr* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_in_stmt_expr* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_ret_stmt.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_ret_stmt, %struct.ast.ast.ast_ret_stmt* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_ret_stmt* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_continue_stmt.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_continue_stmt, %struct.ast.ast.ast_continue_stmt* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_continue_stmt* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_break_stmt.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_break_stmt, %struct.ast.ast.ast_break_stmt* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_break_stmt* %0 to i64
  ret i64 %1
}
define i64 @ast.ast.ast_code_block.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.ast.ast_code_block, %struct.ast.ast.ast_code_block* null, i64 1
  %1 = ptrtoint %struct.ast.ast.ast_code_block* %0 to i64
  ret i64 %1
}
define i64 @ast.dumper.ast_dumper.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.ast.dumper.ast_dumper, %struct.ast.dumper.ast_dumper* null, i64 1
  %1 = ptrtoint %struct.ast.dumper.ast_dumper* %0 to i64
  ret i64 %1
}
define i64 @parser.parser.__size__() alwaysinline {
entry:
  %0 = getelementptr %struct.parser.parser, %struct.parser.parser* null, i64 1
  %1 = ptrtoint %struct.parser.parser* %0 to i64
  ret i64 %1
}
define %struct.std.str.str* @std.str.str.__alloc__() alwaysinline {
entry:
  %0 = call i64 @std.str.str.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.std.str.str*
  ret %struct.std.str.str* %2
}
define %struct.std.io.fs* @std.io.fs.__alloc__() alwaysinline {
entry:
  %0 = call i64 @std.io.fs.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.std.io.fs*
  ret %struct.std.io.fs* %2
}
define %struct.std.io.io* @std.io.io.__alloc__() alwaysinline {
entry:
  %0 = call i64 @std.io.io.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.std.io.io*
  ret %struct.std.io.io* %2
}
define %struct.err.span.span* @err.span.span.__alloc__() alwaysinline {
entry:
  %0 = call i64 @err.span.span.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.err.span.span*
  ret %struct.err.span.span* %2
}
define %struct.err.report.file_lines* @err.report.file_lines.__alloc__() alwaysinline {
entry:
  %0 = call i64 @err.report.file_lines.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.err.report.file_lines*
  ret %struct.err.report.file_lines* %2
}
define %struct.err.report.report* @err.report.report.__alloc__() alwaysinline {
entry:
  %0 = call i64 @err.report.report.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.err.report.report*
  ret %struct.err.report.report* %2
}
define %struct.cli.cli_option* @cli.cli_option.__alloc__() alwaysinline {
entry:
  %0 = call i64 @cli.cli_option.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.cli.cli_option*
  ret %struct.cli.cli_option* %2
}
define %struct.lexer.token* @lexer.token.__alloc__() alwaysinline {
entry:
  %0 = call i64 @lexer.token.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.lexer.token*
  ret %struct.lexer.token* %2
}
define %struct.lexer.vec_token* @lexer.vec_token.__alloc__() alwaysinline {
entry:
  %0 = call i64 @lexer.vec_token.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.lexer.vec_token*
  ret %struct.lexer.vec_token* %2
}
define %struct.lexer.lexer* @lexer.lexer.__alloc__() alwaysinline {
entry:
  %0 = call i64 @lexer.lexer.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.lexer.lexer*
  ret %struct.lexer.lexer* %2
}
define %struct.ast.ast.ast* @ast.ast.ast.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast*
  ret %struct.ast.ast.ast* %2
}
define %struct.ast.ast.ptr_vec* @ast.ast.ptr_vec.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ptr_vec.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ptr_vec*
  ret %struct.ast.ast.ptr_vec* %2
}
define %struct.ast.ast.root* @ast.ast.root.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.root.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.root*
  ret %struct.ast.ast.root* %2
}
define %struct.ast.ast.ast_unary_operator* @ast.ast.ast_unary_operator.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_unary_operator.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_unary_operator*
  ret %struct.ast.ast.ast_unary_operator* %2
}
define %struct.ast.ast.ast_binary_operator* @ast.ast.ast_binary_operator.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_binary_operator.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_binary_operator*
  ret %struct.ast.ast.ast_binary_operator* %2
}
define %struct.ast.ast.ast_type_convert* @ast.ast.ast_type_convert.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_type_convert.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_type_convert*
  ret %struct.ast.ast.ast_type_convert* %2
}
define %struct.ast.ast.ast_identifier* @ast.ast.ast_identifier.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_identifier.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_identifier*
  ret %struct.ast.ast.ast_identifier* %2
}
define %struct.ast.ast.ast_nil_literal* @ast.ast.ast_nil_literal.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_nil_literal.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_nil_literal*
  ret %struct.ast.ast.ast_nil_literal* %2
}
define %struct.ast.ast.ast_number_literal* @ast.ast.ast_number_literal.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_number_literal.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_number_literal*
  ret %struct.ast.ast.ast_number_literal* %2
}
define %struct.ast.ast.ast_string_literal* @ast.ast.ast_string_literal.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_string_literal.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_string_literal*
  ret %struct.ast.ast.ast_string_literal* %2
}
define %struct.ast.ast.ast_char_literal* @ast.ast.ast_char_literal.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_char_literal.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_char_literal*
  ret %struct.ast.ast.ast_char_literal* %2
}
define %struct.ast.ast.ast_bool_literal* @ast.ast.ast_bool_literal.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_bool_literal.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_bool_literal*
  ret %struct.ast.ast.ast_bool_literal* %2
}
define %struct.ast.ast.ast_call_index* @ast.ast.ast_call_index.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_call_index.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_call_index*
  ret %struct.ast.ast.ast_call_index* %2
}
define %struct.ast.ast.ast_call_func_args* @ast.ast.ast_call_func_args.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_call_func_args.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_call_func_args*
  ret %struct.ast.ast.ast_call_func_args* %2
}
define %struct.ast.ast.ast_get_field* @ast.ast.ast_get_field.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_get_field.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_get_field*
  ret %struct.ast.ast.ast_get_field* %2
}
define %struct.ast.ast.ast_ptr_get_field* @ast.ast.ast_ptr_get_field.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_ptr_get_field.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_ptr_get_field*
  ret %struct.ast.ast.ast_ptr_get_field* %2
}
define %struct.ast.ast.ast_init_pair* @ast.ast.ast_init_pair.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_init_pair.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_init_pair*
  ret %struct.ast.ast.ast_init_pair* %2
}
define %struct.ast.ast.ast_initializer* @ast.ast.ast_initializer.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_initializer.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_initializer*
  ret %struct.ast.ast.ast_initializer* %2
}
define %struct.ast.ast.ast_call_path* @ast.ast.ast_call_path.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_call_path.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_call_path*
  ret %struct.ast.ast.ast_call_path* %2
}
define %struct.ast.ast.ast_call* @ast.ast.ast_call.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_call.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_call*
  ret %struct.ast.ast.ast_call* %2
}
define %struct.ast.ast.ast_assignment* @ast.ast.ast_assignment.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_assignment.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_assignment*
  ret %struct.ast.ast.ast_assignment* %2
}
define %struct.ast.ast.ast_type_def* @ast.ast.ast_type_def.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_type_def.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_type_def*
  ret %struct.ast.ast.ast_type_def* %2
}
define %struct.ast.ast.ast_enum_decl* @ast.ast.ast_enum_decl.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_enum_decl.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_enum_decl*
  ret %struct.ast.ast.ast_enum_decl* %2
}
define %struct.ast.ast.ast_struct_field* @ast.ast.ast_struct_field.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_struct_field.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_struct_field*
  ret %struct.ast.ast.ast_struct_field* %2
}
define %struct.ast.ast.ast_struct_decl* @ast.ast.ast_struct_decl.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_struct_decl.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_struct_decl*
  ret %struct.ast.ast.ast_struct_decl* %2
}
define %struct.ast.ast.ast_param* @ast.ast.ast_param.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_param.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_param*
  ret %struct.ast.ast.ast_param* %2
}
define %struct.ast.ast.ast_param_list* @ast.ast.ast_param_list.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_param_list.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_param_list*
  ret %struct.ast.ast.ast_param_list* %2
}
define %struct.ast.ast.ast_func_decl* @ast.ast.ast_func_decl.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_func_decl.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_func_decl*
  ret %struct.ast.ast.ast_func_decl* %2
}
define %struct.ast.ast.ast_impl* @ast.ast.ast_impl.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_impl.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_impl*
  ret %struct.ast.ast.ast_impl* %2
}
define %struct.ast.ast.ast_use_stmt* @ast.ast.ast_use_stmt.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_use_stmt.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_use_stmt*
  ret %struct.ast.ast.ast_use_stmt* %2
}
define %struct.ast.ast.ast_definition* @ast.ast.ast_definition.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_definition.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_definition*
  ret %struct.ast.ast.ast_definition* %2
}
define %struct.ast.ast.ast_cond_stmt* @ast.ast.ast_cond_stmt.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_cond_stmt.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_cond_stmt*
  ret %struct.ast.ast.ast_cond_stmt* %2
}
define %struct.ast.ast.ast_if_stmt* @ast.ast.ast_if_stmt.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_if_stmt.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_if_stmt*
  ret %struct.ast.ast.ast_if_stmt* %2
}
define %struct.ast.ast.ast_match_case* @ast.ast.ast_match_case.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_match_case.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_match_case*
  ret %struct.ast.ast.ast_match_case* %2
}
define %struct.ast.ast.ast_match_stmt* @ast.ast.ast_match_stmt.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_match_stmt.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_match_stmt*
  ret %struct.ast.ast.ast_match_stmt* %2
}
define %struct.ast.ast.ast_while_stmt* @ast.ast.ast_while_stmt.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_while_stmt.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_while_stmt*
  ret %struct.ast.ast.ast_while_stmt* %2
}
define %struct.ast.ast.ast_for_stmt* @ast.ast.ast_for_stmt.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_for_stmt.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_for_stmt*
  ret %struct.ast.ast.ast_for_stmt* %2
}
define %struct.ast.ast.ast_in_stmt_expr* @ast.ast.ast_in_stmt_expr.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_in_stmt_expr.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_in_stmt_expr*
  ret %struct.ast.ast.ast_in_stmt_expr* %2
}
define %struct.ast.ast.ast_ret_stmt* @ast.ast.ast_ret_stmt.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_ret_stmt.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_ret_stmt*
  ret %struct.ast.ast.ast_ret_stmt* %2
}
define %struct.ast.ast.ast_continue_stmt* @ast.ast.ast_continue_stmt.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_continue_stmt.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_continue_stmt*
  ret %struct.ast.ast.ast_continue_stmt* %2
}
define %struct.ast.ast.ast_break_stmt* @ast.ast.ast_break_stmt.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_break_stmt.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_break_stmt*
  ret %struct.ast.ast.ast_break_stmt* %2
}
define %struct.ast.ast.ast_code_block* @ast.ast.ast_code_block.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.ast.ast_code_block.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.ast.ast_code_block*
  ret %struct.ast.ast.ast_code_block* %2
}
define %struct.ast.dumper.ast_dumper* @ast.dumper.ast_dumper.__alloc__() alwaysinline {
entry:
  %0 = call i64 @ast.dumper.ast_dumper.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.ast.dumper.ast_dumper*
  ret %struct.ast.dumper.ast_dumper* %2
}
define %struct.parser.parser* @parser.parser.__alloc__() alwaysinline {
entry:
  %0 = call i64 @parser.parser.__size__()
  %1 = call i8* @malloc(i64 %0)
  %2 = bitcast i8* %1 to %struct.parser.parser*
  ret %struct.parser.parser* %2
}

declare i8* @malloc(i64 %s.param)
declare i8* @realloc(i8* %s.param, i64 %size.param)
declare void @free(i8* %s.param)
declare i8* @memcpy(i8* %dst.param, i8* %src.param, i64 %size.param)
declare i32 @open(i8* %file.param, i32 %flags.param)
declare i64 @read(i32 %fd.param, i8* %buf.param, i64 %nbytes.param)
declare i64 @write(i32 %fd.param, i8* %buf.param, i64 %count.param)
declare i32 @close(i32 %fd.param)
declare void @exit(i32 %code.param)
declare i64 @strlen(i8* %src.param)
declare i32 @strcmp(i8* %left.param, i8* %right.param)

define i1 @streq(i8* %left.param, i8* %right.param) {
entry:
  %left = alloca i8*
  %right = alloca i8*
  %_3.real = alloca i32
  store i8* %left.param, i8** %left
  store i8* %right.param, i8** %right
  %0 = load i8*, i8** %left
  %1 = load i8*, i8** %right
  %2 = call i32 @strcmp(i8* %0, i8* %1)
  %3 = getelementptr i32, i32* %_3.real, i32 0 ; %_3.real -> %3
  store i32 %2, i32* %3
  %4 = load i32, i32* %3
  %5 = icmp eq i32 %4, 0
  ret i1 %5
}

define i8* @itoa(i64 %num.param, i8* %buf.param, i64 %base.param) {
entry:
  %num = alloca i64
  %buf = alloca i8*
  %base = alloca i64
  %i.29 = alloca i64
  %tmp_bit.51 = alloca i8
  %s_begin.89 = alloca i64
  %s_end.90 = alloca i64
  %s_mid.92 = alloca i64
  %tmp.108 = alloca i8
  %_0.real = alloca i1
  store i64 %num.param, i64* %num
  store i8* %buf.param, i8** %buf
  store i64 %base.param, i64* %base
  %0 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %0
  %1 = load i64, i64* %base
  %2 = icmp slt i64 %1, 2
  store i1 %2, i1* %0
  br i1 %2, label %label.d, label %label.8

label.8:			; or.false
  %3 = load i64, i64* %base
  %4 = icmp sgt i64 %3, 16
  store i1 %4, i1* %0
  br label %label.d

label.d:			; or.true
  %5 = load i1, i1* %0
  br i1 %5, label %label.10, label %label.18

label.10:			; cond.true
  %6 = load i8*, i8** %buf
  %7 = getelementptr i8, i8* %6, i64 0
  store i8 0, i8* %7
  %8 = load i8*, i8** %buf
  ret i8* %8

label.place_holder.16:
  br label %label.1a

label.18:			; cond.false
  br label %label.1a

label.1a:			; branch.end
  %9 = load i64, i64* %num
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %label.1e, label %label.29

label.1e:			; cond.true
  %11 = load i8*, i8** %buf
  %12 = getelementptr i8, i8* %11, i64 0
  store i8 48, i8* %12
  %13 = load i8*, i8** %buf
  %14 = getelementptr i8, i8* %13, i64 1
  store i8 0, i8* %14
  %15 = load i8*, i8** %buf
  ret i8* %15

label.place_holder.27:
  br label %label.2b

label.29:			; cond.false
  br label %label.2b

label.2b:			; branch.end
  store i64 0, i64* %i.29
  %16 = load i64, i64* %num
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %label.30, label %label.3c

label.30:			; cond.true
  %18 = load i64, i64* %i.29
  %19 = load i8*, i8** %buf
  %20 = getelementptr i8, i8* %19, i64 %18
  store i8 45, i8* %20
  %21 = load i64, i64* %i.29
  %22 = add i64 %21, 1
  store i64 %22, i64* %i.29
  %23 = load i64, i64* %num
  %24 = sub i64 0, %23
  store i64 %24, i64* %num
  br label %label.3e

label.3c:			; cond.false
  br label %label.3e

label.3e:			; branch.end
  br label %label.40

label.40:			; loop.entry
  %25 = load i64, i64* %num
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %label.44, label %label.69

label.44:			; loop.cond.true
  %27 = load i64, i64* %num
  %28 = load i64, i64* %base
  %29 = srem i64 %27, %28
  %30 = trunc i64 %29 to i8 ; i64 -> i8
  store i8 %30, i8* %tmp_bit.51
  %31 = load i8, i8* %tmp_bit.51
  %32 = icmp slt i8 %31, 10
  br i1 %32, label %label.4d, label %label.55

label.4d:			; cond.true
  %33 = load i64, i64* %i.29
  %34 = load i8*, i8** %buf
  %35 = getelementptr i8, i8* %34, i64 %33
  %36 = load i8, i8* %tmp_bit.51
  %37 = add i8 48, %36
  store i8 %37, i8* %35
  br label %label.5e

label.55:			; cond.false
  %38 = load i64, i64* %i.29
  %39 = load i8*, i8** %buf
  %40 = getelementptr i8, i8* %39, i64 %38
  %41 = load i8, i8* %tmp_bit.51
  %42 = add i8 97, %41
  %43 = sub i8 %42, 10
  store i8 %43, i8* %40
  br label %label.5e

label.5e:			; branch.end
  %44 = load i64, i64* %base
  %45 = load i64, i64* %num
  %46 = udiv i64 %45, %44
  store i64 %46, i64* %num
  %47 = load i64, i64* %i.29
  %48 = add i64 %47, 1
  store i64 %48, i64* %i.29
  br label %label.40

label.69:			; loop.exit
  %49 = load i64, i64* %i.29
  %50 = load i8*, i8** %buf
  %51 = getelementptr i8, i8* %50, i64 %49
  store i8 0, i8* %51
  store i64 0, i64* %s_begin.89
  %52 = load i64, i64* %i.29
  store i64 %52, i64* %s_end.90
  %53 = load i64, i64* %s_begin.89
  %54 = load i64, i64* %s_end.90
  %55 = add i64 %53, %54
  %56 = sdiv i64 %55, 2
  store i64 %56, i64* %s_mid.92
  store i64 0, i64* %i.29
  br label %label.78

label.78:			; loop.entry
  %57 = load i64, i64* %i.29
  %58 = load i64, i64* %s_mid.92
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %label.7d, label %label.9c

label.7d:			; loop.cond.true
  %60 = load i64, i64* %i.29
  %61 = load i8*, i8** %buf
  %62 = getelementptr i8, i8* %61, i64 %60
  %63 = load i8, i8* %62
  store i8 %63, i8* %tmp.108
  %64 = load i64, i64* %i.29
  %65 = load i8*, i8** %buf
  %66 = getelementptr i8, i8* %65, i64 %64
  %67 = load i64, i64* %s_end.90
  %68 = load i64, i64* %i.29
  %69 = sub i64 %67, %68
  %70 = sub i64 %69, 1
  %71 = load i8*, i8** %buf
  %72 = getelementptr i8, i8* %71, i64 %70
  %73 = load i8, i8* %72
  store i8 %73, i8* %66
  %74 = load i64, i64* %s_end.90
  %75 = load i64, i64* %i.29
  %76 = sub i64 %74, %75
  %77 = sub i64 %76, 1
  %78 = load i8*, i8** %buf
  %79 = getelementptr i8, i8* %78, i64 %77
  %80 = load i8, i8* %tmp.108
  store i8 %80, i8* %79
  %81 = load i64, i64* %i.29
  %82 = add i64 %81, 1
  store i64 %82, i64* %i.29
  br label %label.78

label.9c:			; loop.exit
  %83 = load i8*, i8** %buf
  ret i8* %83
}

define %struct.std.str.str* @std.str.str.new() {
entry:
  %res.1 = alloca %struct.std.str.str*
  %_1.real = alloca %struct.std.str.str*
  %0 = call %struct.std.str.str* @std.str.str.__alloc__()
  %1 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_1.real, i32 0 ; %_1.real -> %1
  store %struct.std.str.str* %0, %struct.std.str.str** %1
  %2 = load %struct.std.str.str*, %struct.std.str.str** %1
  store %struct.std.str.str* %2, %struct.std.str.str** %res.1
  %3 = load %struct.std.str.str*, %struct.std.str.str** %res.1
  %4 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %3, i32 0, i32 0
  store i8* null, i8** %4
  %5 = load %struct.std.str.str*, %struct.std.str.str** %res.1
  call void @std.str.str.init(%struct.std.str.str* %5)
  %6 = load %struct.std.str.str*, %struct.std.str.str** %res.1
  ret %struct.std.str.str* %6
}

define %struct.std.str.str @std.str.str.instance() {
entry:
  %res.1 = alloca %struct.std.str.str
  %_0.real = alloca %struct.std.str.str
  %0 = getelementptr %struct.std.str.str, %struct.std.str.str* %_0.real, i32 0 ; %_0.real -> %0
  store %struct.std.str.str zeroinitializer, %struct.std.str.str* %0
  %1 = load %struct.std.str.str, %struct.std.str.str* %0
  store %struct.std.str.str %1, %struct.std.str.str* %res.1
  call void @std.str.str.init(%struct.std.str.str* %res.1)
  %2 = load %struct.std.str.str, %struct.std.str.str* %res.1
  ret %struct.std.str.str %2
}

define void @std.str.str.init(%struct.std.str.str* %self.param) {
entry:
  %self = alloca %struct.std.str.str*
  %_3.real = alloca i8*
  store %struct.std.str.str* %self.param, %struct.std.str.str** %self
  %0 = load %struct.std.str.str*, %struct.std.str.str** %self
  %1 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %0, i32 0, i32 0
  %2 = call i8* @malloc(i64 256)
  %3 = getelementptr i8*, i8** %_3.real, i32 0 ; %_3.real -> %3
  store i8* %2, i8** %3
  %4 = load i8*, i8** %3
  store i8* %4, i8** %1
  %5 = load %struct.std.str.str*, %struct.std.str.str** %self
  %6 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %5, i32 0, i32 0
  %7 = load i8*, i8** %6
  %8 = getelementptr i8, i8* %7, i64 0
  store i8 0, i8* %8
  %9 = load %struct.std.str.str*, %struct.std.str.str** %self
  %10 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %9, i32 0, i32 1
  store i64 0, i64* %10
  %11 = load %struct.std.str.str*, %struct.std.str.str** %self
  %12 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %11, i32 0, i32 2
  store i64 256, i64* %12
  ret void 
}

define %struct.std.str.str @std.str.str.copy_instance(%struct.std.str.str* %self.param) {
entry:
  %self = alloca %struct.std.str.str*
  %new_str.1 = alloca %struct.std.str.str
  %_0.real = alloca %struct.std.str.str
  %_6.real = alloca i8*
  store %struct.std.str.str* %self.param, %struct.std.str.str** %self
  %0 = getelementptr %struct.std.str.str, %struct.std.str.str* %_0.real, i32 0 ; %_0.real -> %0
  store %struct.std.str.str zeroinitializer, %struct.std.str.str* %0
  %1 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %0, i32 0, i32 0
  %2 = load %struct.std.str.str*, %struct.std.str.str** %self
  %3 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %2, i32 0, i32 2
  %4 = load i64, i64* %3
  %5 = call i8* @malloc(i64 %4)
  %6 = getelementptr i8*, i8** %_6.real, i32 0 ; %_6.real -> %6
  store i8* %5, i8** %6
  %7 = load i8*, i8** %6
  store i8* %7, i8** %1
  %8 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %0, i32 0, i32 1
  %9 = load %struct.std.str.str*, %struct.std.str.str** %self
  %10 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %9, i32 0, i32 1
  %11 = load i64, i64* %10
  store i64 %11, i64* %8
  %12 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %0, i32 0, i32 2
  %13 = load %struct.std.str.str*, %struct.std.str.str** %self
  %14 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %13, i32 0, i32 2
  %15 = load i64, i64* %14
  store i64 %15, i64* %12
  %16 = load %struct.std.str.str, %struct.std.str.str* %0
  store %struct.std.str.str %16, %struct.std.str.str* %new_str.1
  %17 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %new_str.1, i32 0, i32 0
  %18 = load i8*, i8** %17
  %19 = load %struct.std.str.str*, %struct.std.str.str** %self
  %20 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %19, i32 0, i32 0
  %21 = load i8*, i8** %20
  %22 = load %struct.std.str.str*, %struct.std.str.str** %self
  %23 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %22, i32 0, i32 1
  %24 = load i64, i64* %23
  %25 = call i8* @memcpy(i8* %18, i8* %21, i64 %24)
  %26 = getelementptr i8*, i8** %_6.real, i32 0 ; %_6.real -> %26
  store i8* %25, i8** %26
  %27 = load i8*, i8** %26
  %28 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %new_str.1, i32 0, i32 0
  %29 = load %struct.std.str.str*, %struct.std.str.str** %self
  %30 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %29, i32 0, i32 1
  %31 = load i64, i64* %30
  %32 = load i8*, i8** %28
  %33 = getelementptr i8, i8* %32, i64 %31
  store i8 0, i8* %33
  %34 = load %struct.std.str.str, %struct.std.str.str* %new_str.1
  ret %struct.std.str.str %34
}

define void @std.str.str.delete(%struct.std.str.str* %self.param) {
entry:
  %self = alloca %struct.std.str.str*
  store %struct.std.str.str* %self.param, %struct.std.str.str** %self
  %0 = load %struct.std.str.str*, %struct.std.str.str** %self
  %1 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %0, i32 0, i32 0
  %2 = load i8*, i8** %1
  call void @free(i8* %2)
  %3 = load %struct.std.str.str*, %struct.std.str.str** %self
  %4 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %3, i32 0, i32 0
  store i8* null, i8** %4
  %5 = load %struct.std.str.str*, %struct.std.str.str** %self
  %6 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %5, i32 0, i32 1
  store i64 0, i64* %6
  %7 = load %struct.std.str.str*, %struct.std.str.str** %self
  %8 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %7, i32 0, i32 2
  store i64 0, i64* %8
  ret void 
}

define i1 @std.str.str.empty(%struct.std.str.str* %self.param) {
entry:
  %self = alloca %struct.std.str.str*
  store %struct.std.str.str* %self.param, %struct.std.str.str** %self
  %0 = load %struct.std.str.str*, %struct.std.str.str** %self
  %1 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %0, i32 0, i32 1
  %2 = load i64, i64* %1
  %3 = icmp eq i64 %2, 0
  ret i1 %3
}

define void @std.str.str.clear(%struct.std.str.str* %self.param) {
entry:
  %self = alloca %struct.std.str.str*
  store %struct.std.str.str* %self.param, %struct.std.str.str** %self
  %0 = load %struct.std.str.str*, %struct.std.str.str** %self
  %1 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %0, i32 0, i32 0
  %2 = load i8*, i8** %1
  %3 = getelementptr i8, i8* %2, i64 0
  store i8 0, i8* %3
  %4 = load %struct.std.str.str*, %struct.std.str.str** %self
  %5 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %4, i32 0, i32 1
  store i64 0, i64* %5
  ret void 
}

define void @std.str.str.copy_const(%struct.std.str.str* %self.param, i8* %src.param) {
entry:
  %self = alloca %struct.std.str.str*
  %src = alloca i8*
  %len.1 = alloca i64
  %_2.real = alloca i64
  %_18.real = alloca i8*
  store %struct.std.str.str* %self.param, %struct.std.str.str** %self
  store i8* %src.param, i8** %src
  %0 = load i8*, i8** %src
  %1 = call i64 @strlen(i8* %0)
  %2 = getelementptr i64, i64* %_2.real, i32 0 ; %_2.real -> %2
  store i64 %1, i64* %2
  %3 = load i64, i64* %2
  %4 = add i64 %3, 0 ; i64 -> i64
  store i64 %4, i64* %len.1
  %5 = load i64, i64* %len.1
  %6 = load %struct.std.str.str*, %struct.std.str.str** %self
  %7 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %6, i32 0, i32 1
  %8 = load i64, i64* %7
  %9 = icmp uge i64 %5, %8
  br i1 %9, label %label.f, label %label.28

label.f:			; cond.true
  %10 = load %struct.std.str.str*, %struct.std.str.str** %self
  %11 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %10, i32 0, i32 0
  %12 = load i8*, i8** %11
  call void @free(i8* %12)
  %13 = load %struct.std.str.str*, %struct.std.str.str** %self
  %14 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %13, i32 0, i32 0
  %15 = load i64, i64* %len.1
  %16 = add i64 %15, 1
  %17 = call i8* @malloc(i64 %16)
  %18 = getelementptr i8*, i8** %_18.real, i32 0 ; %_18.real -> %18
  store i8* %17, i8** %18
  %19 = load i8*, i8** %18
  store i8* %19, i8** %14
  %20 = load %struct.std.str.str*, %struct.std.str.str** %self
  %21 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %20, i32 0, i32 1
  %22 = load i64, i64* %len.1
  %23 = add i64 %22, 1
  store i64 %23, i64* %21
  %24 = load %struct.std.str.str*, %struct.std.str.str** %self
  %25 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %24, i32 0, i32 2
  %26 = load i64, i64* %len.1
  %27 = add i64 %26, 1
  store i64 %27, i64* %25
  br label %label.2a

label.28:			; cond.false
  br label %label.2a

label.2a:			; branch.end
  %28 = load %struct.std.str.str*, %struct.std.str.str** %self
  %29 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %28, i32 0, i32 0
  %30 = load i8*, i8** %29
  %31 = load i8*, i8** %src
  %32 = load i64, i64* %len.1
  %33 = call i8* @memcpy(i8* %30, i8* %31, i64 %32)
  %34 = getelementptr i8*, i8** %_18.real, i32 0 ; %_18.real -> %34
  store i8* %33, i8** %34
  %35 = load i8*, i8** %34
  %36 = load %struct.std.str.str*, %struct.std.str.str** %self
  %37 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %36, i32 0, i32 0
  %38 = load i64, i64* %len.1
  %39 = load i8*, i8** %37
  %40 = getelementptr i8, i8* %39, i64 %38
  store i8 0, i8* %40
  %41 = load %struct.std.str.str*, %struct.std.str.str** %self
  %42 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %41, i32 0, i32 1
  %43 = load i64, i64* %len.1
  store i64 %43, i64* %42
  ret void 
}

define void @std.str.str.expand_capacity(%struct.std.str.str* %self.param) {
entry:
  %self = alloca %struct.std.str.str*
  %_13.real = alloca i8*
  store %struct.std.str.str* %self.param, %struct.std.str.str** %self
  %0 = load %struct.std.str.str*, %struct.std.str.str** %self
  %1 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %0, i32 0, i32 2
  %2 = load i64, i64* %1
  %3 = mul i64 %2, 2
  store i64 %3, i64* %1
  %4 = load %struct.std.str.str*, %struct.std.str.str** %self
  %5 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %4, i32 0, i32 0
  %6 = load %struct.std.str.str*, %struct.std.str.str** %self
  %7 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %6, i32 0, i32 0
  %8 = load i8*, i8** %7
  %9 = load %struct.std.str.str*, %struct.std.str.str** %self
  %10 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %9, i32 0, i32 2
  %11 = load i64, i64* %10
  %12 = call i8* @realloc(i8* %8, i64 %11)
  %13 = getelementptr i8*, i8** %_13.real, i32 0 ; %_13.real -> %13
  store i8* %12, i8** %13
  %14 = load i8*, i8** %13
  store i8* %14, i8** %5
  ret void 
}

define %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %self.param, i8 %ch.param) {
entry:
  %self = alloca %struct.std.str.str*
  %ch = alloca i8
  store %struct.std.str.str* %self.param, %struct.std.str.str** %self
  store i8 %ch.param, i8* %ch
  %0 = load %struct.std.str.str*, %struct.std.str.str** %self
  %1 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %0, i32 0, i32 1
  %2 = load i64, i64* %1
  %3 = load %struct.std.str.str*, %struct.std.str.str** %self
  %4 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %3, i32 0, i32 2
  %5 = load i64, i64* %4
  %6 = icmp eq i64 %2, %5
  br i1 %6, label %label.a, label %label.e

label.a:			; cond.true
  %7 = load %struct.std.str.str*, %struct.std.str.str** %self
  call void @std.str.str.expand_capacity(%struct.std.str.str* %7)
  br label %label.10

label.e:			; cond.false
  br label %label.10

label.10:			; branch.end
  %8 = load %struct.std.str.str*, %struct.std.str.str** %self
  %9 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %8, i32 0, i32 0
  %10 = load %struct.std.str.str*, %struct.std.str.str** %self
  %11 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %10, i32 0, i32 1
  %12 = load i64, i64* %11
  %13 = load i8*, i8** %9
  %14 = getelementptr i8, i8* %13, i64 %12
  %15 = load i8, i8* %ch
  store i8 %15, i8* %14
  %16 = load %struct.std.str.str*, %struct.std.str.str** %self
  %17 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %16, i32 0, i32 0
  %18 = load %struct.std.str.str*, %struct.std.str.str** %self
  %19 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %18, i32 0, i32 1
  %20 = load i64, i64* %19
  %21 = add i64 %20, 1
  %22 = load i8*, i8** %17
  %23 = getelementptr i8, i8* %22, i64 %21
  store i8 0, i8* %23
  %24 = load %struct.std.str.str*, %struct.std.str.str** %self
  %25 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %24, i32 0, i32 1
  %26 = load i64, i64* %25
  %27 = add i64 %26, 1
  store i64 %27, i64* %25
  %28 = load %struct.std.str.str*, %struct.std.str.str** %self
  ret %struct.std.str.str* %28
}

define %struct.std.str.str* @std.str.str.append_str(%struct.std.str.str* %self.param, %struct.std.str.str* %src.param) {
entry:
  %self = alloca %struct.std.str.str*
  %src = alloca %struct.std.str.str*
  %len.1 = alloca i64
  %index.5 = alloca i64
  %_15.real = alloca %struct.std.str.str*
  store %struct.std.str.str* %self.param, %struct.std.str.str** %self
  store %struct.std.str.str* %src.param, %struct.std.str.str** %src
  %0 = load %struct.std.str.str*, %struct.std.str.str** %src
  %1 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %0, i32 0, i32 1
  %2 = load i64, i64* %1
  %3 = add i64 %2, 0 ; i64 -> i64
  store i64 %3, i64* %len.1
  store i64 0, i64* %index.5
  br label %label.9

label.9:			; loop.entry
  %4 = load i64, i64* %index.5
  %5 = load i64, i64* %len.1
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %label.e, label %label.20

label.e:			; loop.cond.true
  %7 = load %struct.std.str.str*, %struct.std.str.str** %self
  %8 = load %struct.std.str.str*, %struct.std.str.str** %src
  %9 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %8, i32 0, i32 0
  %10 = load i64, i64* %index.5
  %11 = load i8*, i8** %9
  %12 = getelementptr i8, i8* %11, i64 %10
  %13 = load i8, i8* %12
  %14 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %7, i8 %13)
  %15 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_15.real, i32 0 ; %_15.real -> %15
  store %struct.std.str.str* %14, %struct.std.str.str** %15
  %16 = load %struct.std.str.str*, %struct.std.str.str** %15
  %17 = load i64, i64* %index.5
  %18 = add i64 %17, 1
  store i64 %18, i64* %index.5
  br label %label.9

label.20:			; loop.exit
  %19 = load %struct.std.str.str*, %struct.std.str.str** %self
  ret %struct.std.str.str* %19
}

define %struct.std.str.str* @std.str.str.append_i8_vec(%struct.std.str.str* %self.param, i8* %src.param) {
entry:
  %self = alloca %struct.std.str.str*
  %src = alloca i8*
  %len.1 = alloca i64
  %index.5 = alloca i64
  %_2.real = alloca i64
  %_13.real = alloca %struct.std.str.str*
  store %struct.std.str.str* %self.param, %struct.std.str.str** %self
  store i8* %src.param, i8** %src
  %0 = load i8*, i8** %src
  %1 = call i64 @strlen(i8* %0)
  %2 = getelementptr i64, i64* %_2.real, i32 0 ; %_2.real -> %2
  store i64 %1, i64* %2
  %3 = load i64, i64* %2
  store i64 %3, i64* %len.1
  store i64 0, i64* %index.5
  br label %label.a

label.a:			; loop.entry
  %4 = load i64, i64* %index.5
  %5 = load i64, i64* %len.1
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %label.f, label %label.1f

label.f:			; loop.cond.true
  %7 = load %struct.std.str.str*, %struct.std.str.str** %self
  %8 = load i64, i64* %index.5
  %9 = load i8*, i8** %src
  %10 = getelementptr i8, i8* %9, i64 %8
  %11 = load i8, i8* %10
  %12 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %7, i8 %11)
  %13 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_13.real, i32 0 ; %_13.real -> %13
  store %struct.std.str.str* %12, %struct.std.str.str** %13
  %14 = load %struct.std.str.str*, %struct.std.str.str** %13
  %15 = load i64, i64* %index.5
  %16 = add i64 %15, 1
  store i64 %16, i64* %index.5
  br label %label.a

label.1f:			; loop.exit
  %17 = load %struct.std.str.str*, %struct.std.str.str** %self
  ret %struct.std.str.str* %17
}

define void @std.str.str.pop(%struct.std.str.str* %self.param) {
entry:
  %self = alloca %struct.std.str.str*
  store %struct.std.str.str* %self.param, %struct.std.str.str** %self
  %0 = load %struct.std.str.str*, %struct.std.str.str** %self
  %1 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %0, i32 0, i32 1
  %2 = load i64, i64* %1
  %3 = icmp ugt i64 %2, 0
  br i1 %3, label %label.6, label %label.15

label.6:			; cond.true
  %4 = load %struct.std.str.str*, %struct.std.str.str** %self
  %5 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %4, i32 0, i32 1
  %6 = load i64, i64* %5
  %7 = sub i64 %6, 1
  store i64 %7, i64* %5
  %8 = load %struct.std.str.str*, %struct.std.str.str** %self
  %9 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %8, i32 0, i32 0
  %10 = load %struct.std.str.str*, %struct.std.str.str** %self
  %11 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %10, i32 0, i32 1
  %12 = load i64, i64* %11
  %13 = load i8*, i8** %9
  %14 = getelementptr i8, i8* %13, i64 %12
  store i8 0, i8* %14
  br label %label.17

label.15:			; cond.false
  br label %label.17

label.17:			; branch.end
  ret void 
}

define i8 @std.str.str.get(%struct.std.str.str* %self.param, i64 %index.param) {
entry:
  %self = alloca %struct.std.str.str*
  %index = alloca i64
  %report_info.7 = alloca i8*
  %_9.real = alloca i64
  store %struct.std.str.str* %self.param, %struct.std.str.str** %self
  store i64 %index.param, i64* %index
  %0 = load i64, i64* %index
  %1 = load %struct.std.str.str*, %struct.std.str.str** %self
  %2 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %1, i32 0, i32 1
  %3 = load i64, i64* %2
  %4 = icmp uge i64 %0, %3
  br i1 %4, label %label.8, label %label.19

label.8:			; cond.true
  %5 = getelementptr [36 x i8], [36 x i8]* @const.str.0, i64 0, i64 0
  store i8* %5, i8** %report_info.7
  %6 = load i8*, i8** %report_info.7
  %7 = load i8*, i8** %report_info.7
  %8 = call i64 @strlen(i8* %7)
  %9 = getelementptr i64, i64* %_9.real, i32 0 ; %_9.real -> %9
  store i64 %8, i64* %9
  %10 = load i64, i64* %9
  %11 = call i64 @write(i32 2, i8* %6, i64 %10)
  %12 = getelementptr i64, i64* %_9.real, i32 0 ; %_9.real -> %12
  store i64 %11, i64* %12
  %13 = load i64, i64* %12
  %14 = sub i64 0, 1
  %15 = trunc i64 %14 to i32 ; i64 -> i32
  call void @exit(i32 %15)
  br label %label.1b

label.19:			; cond.false
  br label %label.1b

label.1b:			; branch.end
  %16 = load %struct.std.str.str*, %struct.std.str.str** %self
  %17 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %16, i32 0, i32 0
  %18 = load i64, i64* %index
  %19 = load i8*, i8** %17
  %20 = getelementptr i8, i8* %19, i64 %18
  %21 = load i8, i8* %20
  ret i8 %21
}

define i1 @std.str.str.eq_const(%struct.std.str.str* %self.param, i8* %src.param) {
entry:
  %self = alloca %struct.std.str.str*
  %src = alloca i8*
  %_5.real = alloca i1
  store %struct.std.str.str* %self.param, %struct.std.str.str** %self
  store i8* %src.param, i8** %src
  %0 = load %struct.std.str.str*, %struct.std.str.str** %self
  %1 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %0, i32 0, i32 0
  %2 = load i8*, i8** %1
  %3 = load i8*, i8** %src
  %4 = call i1 @streq(i8* %2, i8* %3)
  %5 = getelementptr i1, i1* %_5.real, i32 0 ; %_5.real -> %5
  store i1 %4, i1* %5
  %6 = load i1, i1* %5
  ret i1 %6
}

define i1 @std.io.fs.exists(i8* %filename.param) {
entry:
  %filename = alloca i8*
  %fd.1 = alloca i32
  %_3.real = alloca i32
  store i8* %filename.param, i8** %filename
  %0 = load i8*, i8** %filename
  %1 = trunc i64 0 to i32 ; i64 -> i32
  %2 = call i32 @open(i8* %0, i32 %1)
  %3 = getelementptr i32, i32* %_3.real, i32 0 ; %_3.real -> %3
  store i32 %2, i32* %3
  %4 = load i32, i32* %3
  store i32 %4, i32* %fd.1
  %5 = load i32, i32* %fd.1
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %label.b, label %label.f

label.b:			; cond.true
  ret i1 0

label.place_holder.d:
  br label %label.11

label.f:			; cond.false
  br label %label.11

label.11:			; branch.end
  %7 = load i32, i32* %fd.1
  %8 = call i32 @close(i32 %7)
  %9 = getelementptr i32, i32* %_3.real, i32 0 ; %_3.real -> %9
  store i32 %8, i32* %9
  %10 = load i32, i32* %9
  ret i1 1
}

define i64 @readfile_into_string(i8* %filename.param, %struct.std.str.str* %dst.param) {
entry:
  %filename = alloca i8*
  %dst = alloca %struct.std.str.str*
  %fd.1 = alloca i32
  %buff.18 = alloca i8*
  %readcount.20 = alloca i64
  %index.25 = alloca i64
  %index.50 = alloca i64
  %_5.real = alloca i32
  %_12.real = alloca i8*
  %_17.real = alloca i64
  %_28.real = alloca %struct.std.str.str*
  store i8* %filename.param, i8** %filename
  store %struct.std.str.str* %dst.param, %struct.std.str.str** %dst
  %0 = load i8*, i8** %filename
  %1 = trunc i64 0 to i32 ; i64 -> i32
  %2 = trunc i64 32768 to i32 ; i64 -> i32
  %3 = or i32 %1, %2
  %4 = call i32 @open(i8* %0, i32 %3)
  %5 = getelementptr i32, i32* %_5.real, i32 0 ; %_5.real -> %5
  store i32 %4, i32* %5
  %6 = load i32, i32* %5
  store i32 %6, i32* %fd.1
  %7 = load i32, i32* %fd.1
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %label.e, label %label.14

label.e:			; cond.true
  %9 = load i32, i32* %fd.1
  %10 = sext i32 %9 to i64 ; i32 -> i64
  ret i64 %10

label.place_holder.12:
  br label %label.16

label.14:			; cond.false
  br label %label.16

label.16:			; branch.end
  %11 = call i8* @malloc(i64 1024)
  %12 = getelementptr i8*, i8** %_12.real, i32 0 ; %_12.real -> %12
  store i8* %11, i8** %12
  %13 = load i8*, i8** %12
  store i8* %13, i8** %buff.18
  %14 = load i32, i32* %fd.1
  %15 = load i8*, i8** %buff.18
  %16 = call i64 @read(i32 %14, i8* %15, i64 1023)
  %17 = getelementptr i64, i64* %_17.real, i32 0 ; %_17.real -> %17
  store i64 %16, i64* %17
  %18 = load i64, i64* %17
  store i64 %18, i64* %readcount.20
  store i64 0, i64* %index.25
  br label %label.25

label.25:			; loop.entry
  %19 = load i64, i64* %index.25
  %20 = load i64, i64* %readcount.20
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %label.2a, label %label.3a

label.2a:			; loop.cond.true
  %22 = load %struct.std.str.str*, %struct.std.str.str** %dst
  %23 = load i64, i64* %index.25
  %24 = load i8*, i8** %buff.18
  %25 = getelementptr i8, i8* %24, i64 %23
  %26 = load i8, i8* %25
  %27 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %22, i8 %26)
  %28 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_28.real, i32 0 ; %_28.real -> %28
  store %struct.std.str.str* %27, %struct.std.str.str** %28
  %29 = load %struct.std.str.str*, %struct.std.str.str** %28
  %30 = load i64, i64* %index.25
  %31 = add i64 %30, 1
  store i64 %31, i64* %index.25
  br label %label.25

label.3a:			; loop.exit
  br label %label.3c

label.3c:			; loop.entry
  %32 = load i64, i64* %readcount.20
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %label.40, label %label.63

label.40:			; loop.cond.true
  %34 = load i32, i32* %fd.1
  %35 = load i8*, i8** %buff.18
  %36 = call i64 @read(i32 %34, i8* %35, i64 1023)
  %37 = getelementptr i64, i64* %_17.real, i32 0 ; %_17.real -> %37
  store i64 %36, i64* %37
  %38 = load i64, i64* %37
  store i64 %38, i64* %readcount.20
  store i64 0, i64* %index.50
  br label %label.4a

label.4a:			; loop.entry
  %39 = load i64, i64* %index.50
  %40 = load i64, i64* %readcount.20
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %label.4f, label %label.5f

label.4f:			; loop.cond.true
  %42 = load %struct.std.str.str*, %struct.std.str.str** %dst
  %43 = load i64, i64* %index.50
  %44 = load i8*, i8** %buff.18
  %45 = getelementptr i8, i8* %44, i64 %43
  %46 = load i8, i8* %45
  %47 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %42, i8 %46)
  %48 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_28.real, i32 0 ; %_28.real -> %48
  store %struct.std.str.str* %47, %struct.std.str.str** %48
  %49 = load %struct.std.str.str*, %struct.std.str.str** %48
  %50 = load i64, i64* %index.50
  %51 = add i64 %50, 1
  store i64 %51, i64* %index.50
  br label %label.4a

label.5f:			; loop.exit
  br label %label.3c

label.63:			; loop.exit
  %52 = load i32, i32* %fd.1
  %53 = call i32 @close(i32 %52)
  %54 = getelementptr i32, i32* %_5.real, i32 0 ; %_5.real -> %54
  store i32 %53, i32* %54
  %55 = load i32, i32* %54
  %56 = load i8*, i8** %buff.18
  call void @free(i8* %56)
  ret i64 0
}

define %struct.std.io.io @std.io.io.stdin() {
entry:
  %_0.real = alloca %struct.std.io.io
  %0 = getelementptr %struct.std.io.io, %struct.std.io.io* %_0.real, i32 0 ; %_0.real -> %0
  store %struct.std.io.io zeroinitializer, %struct.std.io.io* %0
  %1 = getelementptr inbounds %struct.std.io.io, %struct.std.io.io* %0, i32 0, i32 0
  store i32 0, i32* %1
  %2 = load %struct.std.io.io, %struct.std.io.io* %0
  ret %struct.std.io.io %2
}

define %struct.std.io.io @std.io.io.stdout() {
entry:
  %_0.real = alloca %struct.std.io.io
  %0 = getelementptr %struct.std.io.io, %struct.std.io.io* %_0.real, i32 0 ; %_0.real -> %0
  store %struct.std.io.io zeroinitializer, %struct.std.io.io* %0
  %1 = getelementptr inbounds %struct.std.io.io, %struct.std.io.io* %0, i32 0, i32 0
  store i32 1, i32* %1
  %2 = load %struct.std.io.io, %struct.std.io.io* %0
  ret %struct.std.io.io %2
}

define %struct.std.io.io @std.io.io.stderr() {
entry:
  %_0.real = alloca %struct.std.io.io
  %0 = getelementptr %struct.std.io.io, %struct.std.io.io* %_0.real, i32 0 ; %_0.real -> %0
  store %struct.std.io.io zeroinitializer, %struct.std.io.io* %0
  %1 = getelementptr inbounds %struct.std.io.io, %struct.std.io.io* %0, i32 0, i32 0
  store i32 2, i32* %1
  %2 = load %struct.std.io.io, %struct.std.io.io* %0
  ret %struct.std.io.io %2
}

define %struct.std.io.io @std.io.io.out(%struct.std.io.io* %self.param, i8* %info.param) {
entry:
  %self = alloca %struct.std.io.io*
  %info = alloca i8*
  %_13.real = alloca i64
  store %struct.std.io.io* %self.param, %struct.std.io.io** %self
  store i8* %info.param, i8** %info
  %0 = load %struct.std.io.io*, %struct.std.io.io** %self
  %1 = getelementptr inbounds %struct.std.io.io, %struct.std.io.io* %0, i32 0, i32 0
  %2 = load i32, i32* %1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %label.7, label %label.e

label.7:			; cond.true
  %4 = load %struct.std.io.io*, %struct.std.io.io** %self
  %5 = getelementptr %struct.std.io.io, %struct.std.io.io* %4, i64 0
  %6 = load %struct.std.io.io, %struct.std.io.io* %5
  ret %struct.std.io.io %6

label.place_holder.c:
  br label %label.10

label.e:			; cond.false
  br label %label.10

label.10:			; branch.end
  %7 = load %struct.std.io.io*, %struct.std.io.io** %self
  %8 = getelementptr inbounds %struct.std.io.io, %struct.std.io.io* %7, i32 0, i32 0
  %9 = load i32, i32* %8
  %10 = load i8*, i8** %info
  %11 = load i8*, i8** %info
  %12 = call i64 @strlen(i8* %11)
  %13 = getelementptr i64, i64* %_13.real, i32 0 ; %_13.real -> %13
  store i64 %12, i64* %13
  %14 = load i64, i64* %13
  %15 = call i64 @write(i32 %9, i8* %10, i64 %14)
  %16 = getelementptr i64, i64* %_13.real, i32 0 ; %_13.real -> %16
  store i64 %15, i64* %16
  %17 = load i64, i64* %16
  %18 = load %struct.std.io.io*, %struct.std.io.io** %self
  %19 = getelementptr %struct.std.io.io, %struct.std.io.io* %18, i64 0
  %20 = load %struct.std.io.io, %struct.std.io.io* %19
  ret %struct.std.io.io %20
}

define %struct.std.io.io @std.io.io.out_ch(%struct.std.io.io* %self.param, i8 %info.param) {
entry:
  %self = alloca %struct.std.io.io*
  %info = alloca i8
  %buff.9 = alloca i8*
  %_8.real = alloca i8*
  %_18.real = alloca i64
  store %struct.std.io.io* %self.param, %struct.std.io.io** %self
  store i8 %info.param, i8* %info
  %0 = load %struct.std.io.io*, %struct.std.io.io** %self
  %1 = getelementptr inbounds %struct.std.io.io, %struct.std.io.io* %0, i32 0, i32 0
  %2 = load i32, i32* %1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %label.7, label %label.e

label.7:			; cond.true
  %4 = load %struct.std.io.io*, %struct.std.io.io** %self
  %5 = getelementptr %struct.std.io.io, %struct.std.io.io* %4, i64 0
  %6 = load %struct.std.io.io, %struct.std.io.io* %5
  ret %struct.std.io.io %6

label.place_holder.c:
  br label %label.10

label.e:			; cond.false
  br label %label.10

label.10:			; branch.end
  %7 = call i8* @malloc(i64 128)
  %8 = getelementptr i8*, i8** %_8.real, i32 0 ; %_8.real -> %8
  store i8* %7, i8** %8
  %9 = load i8*, i8** %8
  store i8* %9, i8** %buff.9
  %10 = load i8*, i8** %buff.9
  %11 = getelementptr i8, i8* %10, i64 0
  %12 = load i8, i8* %info
  store i8 %12, i8* %11
  %13 = load %struct.std.io.io*, %struct.std.io.io** %self
  %14 = getelementptr inbounds %struct.std.io.io, %struct.std.io.io* %13, i32 0, i32 0
  %15 = load i32, i32* %14
  %16 = load i8*, i8** %buff.9
  %17 = call i64 @write(i32 %15, i8* %16, i64 1)
  %18 = getelementptr i64, i64* %_18.real, i32 0 ; %_18.real -> %18
  store i64 %17, i64* %18
  %19 = load i64, i64* %18
  %20 = load i8*, i8** %buff.9
  call void @free(i8* %20)
  %21 = load %struct.std.io.io*, %struct.std.io.io** %self
  %22 = getelementptr %struct.std.io.io, %struct.std.io.io* %21, i64 0
  %23 = load %struct.std.io.io, %struct.std.io.io* %22
  ret %struct.std.io.io %23
}

define %struct.std.io.io @std.io.io.out_i64(%struct.std.io.io* %self.param, i64 %info.param) {
entry:
  %self = alloca %struct.std.io.io*
  %info = alloca i64
  %buff.9 = alloca i8*
  %_8.real = alloca i8*
  %_21.real = alloca i64
  store %struct.std.io.io* %self.param, %struct.std.io.io** %self
  store i64 %info.param, i64* %info
  %0 = load %struct.std.io.io*, %struct.std.io.io** %self
  %1 = getelementptr inbounds %struct.std.io.io, %struct.std.io.io* %0, i32 0, i32 0
  %2 = load i32, i32* %1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %label.7, label %label.e

label.7:			; cond.true
  %4 = load %struct.std.io.io*, %struct.std.io.io** %self
  %5 = getelementptr %struct.std.io.io, %struct.std.io.io* %4, i64 0
  %6 = load %struct.std.io.io, %struct.std.io.io* %5
  ret %struct.std.io.io %6

label.place_holder.c:
  br label %label.10

label.e:			; cond.false
  br label %label.10

label.10:			; branch.end
  %7 = call i8* @malloc(i64 128)
  %8 = getelementptr i8*, i8** %_8.real, i32 0 ; %_8.real -> %8
  store i8* %7, i8** %8
  %9 = load i8*, i8** %8
  store i8* %9, i8** %buff.9
  %10 = load i64, i64* %info
  %11 = load i8*, i8** %buff.9
  %12 = call i8* @itoa(i64 %10, i8* %11, i64 10)
  %13 = getelementptr i8*, i8** %_8.real, i32 0 ; %_8.real -> %13
  store i8* %12, i8** %13
  %14 = load i8*, i8** %13
  %15 = load %struct.std.io.io*, %struct.std.io.io** %self
  %16 = getelementptr inbounds %struct.std.io.io, %struct.std.io.io* %15, i32 0, i32 0
  %17 = load i32, i32* %16
  %18 = load i8*, i8** %buff.9
  %19 = load i8*, i8** %buff.9
  %20 = call i64 @strlen(i8* %19)
  %21 = getelementptr i64, i64* %_21.real, i32 0 ; %_21.real -> %21
  store i64 %20, i64* %21
  %22 = load i64, i64* %21
  %23 = call i64 @write(i32 %17, i8* %18, i64 %22)
  %24 = getelementptr i64, i64* %_21.real, i32 0 ; %_21.real -> %24
  store i64 %23, i64* %24
  %25 = load i64, i64* %24
  %26 = load i8*, i8** %buff.9
  call void @free(i8* %26)
  %27 = load %struct.std.io.io*, %struct.std.io.io** %self
  %28 = getelementptr %struct.std.io.io, %struct.std.io.io* %27, i64 0
  %29 = load %struct.std.io.io, %struct.std.io.io* %28
  ret %struct.std.io.io %29
}

define void @std.io.io.endln(%struct.std.io.io* %self.param) {
entry:
  %self = alloca %struct.std.io.io*
  %_9.real = alloca i64
  store %struct.std.io.io* %self.param, %struct.std.io.io** %self
  %0 = load %struct.std.io.io*, %struct.std.io.io** %self
  %1 = getelementptr inbounds %struct.std.io.io, %struct.std.io.io* %0, i32 0, i32 0
  %2 = load i32, i32* %1
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %label.6, label %label.10

label.6:			; cond.true
  %4 = load %struct.std.io.io*, %struct.std.io.io** %self
  %5 = getelementptr inbounds %struct.std.io.io, %struct.std.io.io* %4, i32 0, i32 0
  %6 = load i32, i32* %5
  %7 = getelementptr [2 x i8], [2 x i8]* @const.str.1, i64 0, i64 0
  %8 = call i64 @write(i32 %6, i8* %7, i64 1)
  %9 = getelementptr i64, i64* %_9.real, i32 0 ; %_9.real -> %9
  store i64 %8, i64* %9
  %10 = load i64, i64* %9
  br label %label.12

label.10:			; cond.false
  br label %label.12

label.12:			; branch.end
  ret void 
}

define %struct.std.io.io @std.io.io.red(%struct.std.io.io* %self.param) {
entry:
  %self = alloca %struct.std.io.io*
  %_3.real = alloca %struct.std.io.io
  store %struct.std.io.io* %self.param, %struct.std.io.io** %self
  %0 = load %struct.std.io.io*, %struct.std.io.io** %self
  %1 = getelementptr [8 x i8], [8 x i8]* @const.str.2, i64 0, i64 0
  %2 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %0, i8* %1)
  %3 = getelementptr %struct.std.io.io, %struct.std.io.io* %_3.real, i32 0 ; %_3.real -> %3
  store %struct.std.io.io %2, %struct.std.io.io* %3
  %4 = load %struct.std.io.io, %struct.std.io.io* %3
  %5 = load %struct.std.io.io*, %struct.std.io.io** %self
  %6 = getelementptr %struct.std.io.io, %struct.std.io.io* %5, i64 0
  %7 = load %struct.std.io.io, %struct.std.io.io* %6
  ret %struct.std.io.io %7
}

define %struct.std.io.io @std.io.io.green(%struct.std.io.io* %self.param) {
entry:
  %self = alloca %struct.std.io.io*
  %_3.real = alloca %struct.std.io.io
  store %struct.std.io.io* %self.param, %struct.std.io.io** %self
  %0 = load %struct.std.io.io*, %struct.std.io.io** %self
  %1 = getelementptr [8 x i8], [8 x i8]* @const.str.3, i64 0, i64 0
  %2 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %0, i8* %1)
  %3 = getelementptr %struct.std.io.io, %struct.std.io.io* %_3.real, i32 0 ; %_3.real -> %3
  store %struct.std.io.io %2, %struct.std.io.io* %3
  %4 = load %struct.std.io.io, %struct.std.io.io* %3
  %5 = load %struct.std.io.io*, %struct.std.io.io** %self
  %6 = getelementptr %struct.std.io.io, %struct.std.io.io* %5, i64 0
  %7 = load %struct.std.io.io, %struct.std.io.io* %6
  ret %struct.std.io.io %7
}

define %struct.std.io.io @std.io.io.cyan(%struct.std.io.io* %self.param) {
entry:
  %self = alloca %struct.std.io.io*
  %_3.real = alloca %struct.std.io.io
  store %struct.std.io.io* %self.param, %struct.std.io.io** %self
  %0 = load %struct.std.io.io*, %struct.std.io.io** %self
  %1 = getelementptr [8 x i8], [8 x i8]* @const.str.4, i64 0, i64 0
  %2 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %0, i8* %1)
  %3 = getelementptr %struct.std.io.io, %struct.std.io.io* %_3.real, i32 0 ; %_3.real -> %3
  store %struct.std.io.io %2, %struct.std.io.io* %3
  %4 = load %struct.std.io.io, %struct.std.io.io* %3
  %5 = load %struct.std.io.io*, %struct.std.io.io** %self
  %6 = getelementptr %struct.std.io.io, %struct.std.io.io* %5, i64 0
  %7 = load %struct.std.io.io, %struct.std.io.io* %6
  ret %struct.std.io.io %7
}

define %struct.std.io.io @std.io.io.orange(%struct.std.io.io* %self.param) {
entry:
  %self = alloca %struct.std.io.io*
  %_3.real = alloca %struct.std.io.io
  store %struct.std.io.io* %self.param, %struct.std.io.io** %self
  %0 = load %struct.std.io.io*, %struct.std.io.io** %self
  %1 = getelementptr [8 x i8], [8 x i8]* @const.str.5, i64 0, i64 0
  %2 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %0, i8* %1)
  %3 = getelementptr %struct.std.io.io, %struct.std.io.io* %_3.real, i32 0 ; %_3.real -> %3
  store %struct.std.io.io %2, %struct.std.io.io* %3
  %4 = load %struct.std.io.io, %struct.std.io.io* %3
  %5 = load %struct.std.io.io*, %struct.std.io.io** %self
  %6 = getelementptr %struct.std.io.io, %struct.std.io.io* %5, i64 0
  %7 = load %struct.std.io.io, %struct.std.io.io* %6
  ret %struct.std.io.io %7
}

define %struct.std.io.io @std.io.io.white(%struct.std.io.io* %self.param) {
entry:
  %self = alloca %struct.std.io.io*
  %_3.real = alloca %struct.std.io.io
  store %struct.std.io.io* %self.param, %struct.std.io.io** %self
  %0 = load %struct.std.io.io*, %struct.std.io.io** %self
  %1 = getelementptr [9 x i8], [9 x i8]* @const.str.6, i64 0, i64 0
  %2 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %0, i8* %1)
  %3 = getelementptr %struct.std.io.io, %struct.std.io.io* %_3.real, i32 0 ; %_3.real -> %3
  store %struct.std.io.io %2, %struct.std.io.io* %3
  %4 = load %struct.std.io.io, %struct.std.io.io* %3
  %5 = load %struct.std.io.io*, %struct.std.io.io** %self
  %6 = getelementptr %struct.std.io.io, %struct.std.io.io* %5, i64 0
  %7 = load %struct.std.io.io, %struct.std.io.io* %6
  ret %struct.std.io.io %7
}

define %struct.std.io.io @std.io.io.reset(%struct.std.io.io* %self.param) {
entry:
  %self = alloca %struct.std.io.io*
  %_3.real = alloca %struct.std.io.io
  store %struct.std.io.io* %self.param, %struct.std.io.io** %self
  %0 = load %struct.std.io.io*, %struct.std.io.io** %self
  %1 = getelementptr [5 x i8], [5 x i8]* @const.str.7, i64 0, i64 0
  %2 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %0, i8* %1)
  %3 = getelementptr %struct.std.io.io, %struct.std.io.io* %_3.real, i32 0 ; %_3.real -> %3
  store %struct.std.io.io %2, %struct.std.io.io* %3
  %4 = load %struct.std.io.io, %struct.std.io.io* %3
  %5 = load %struct.std.io.io*, %struct.std.io.io** %self
  %6 = getelementptr %struct.std.io.io, %struct.std.io.io* %5, i64 0
  %7 = load %struct.std.io.io, %struct.std.io.io* %6
  ret %struct.std.io.io %7
}

define %struct.err.span.span* @err.span.span.new() {
entry:
  %res.1 = alloca %struct.err.span.span*
  %_1.real = alloca %struct.err.span.span*
  %0 = call %struct.err.span.span* @err.span.span.__alloc__()
  %1 = getelementptr %struct.err.span.span*, %struct.err.span.span** %_1.real, i32 0 ; %_1.real -> %1
  store %struct.err.span.span* %0, %struct.err.span.span** %1
  %2 = load %struct.err.span.span*, %struct.err.span.span** %1
  store %struct.err.span.span* %2, %struct.err.span.span** %res.1
  %3 = load %struct.err.span.span*, %struct.err.span.span** %res.1
  %4 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %3, i32 0, i32 0
  store i64 0, i64* %4
  %5 = load %struct.err.span.span*, %struct.err.span.span** %res.1
  %6 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %5, i32 0, i32 1
  store i64 0, i64* %6
  %7 = load %struct.err.span.span*, %struct.err.span.span** %res.1
  %8 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %7, i32 0, i32 2
  store i64 0, i64* %8
  %9 = load %struct.err.span.span*, %struct.err.span.span** %res.1
  %10 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %9, i32 0, i32 3
  store i64 0, i64* %10
  %11 = load %struct.err.span.span*, %struct.err.span.span** %res.1
  %12 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %11, i32 0, i32 4
  call void @std.str.str.init(%struct.std.str.str* %12)
  %13 = load %struct.err.span.span*, %struct.err.span.span** %res.1
  ret %struct.err.span.span* %13
}

define %struct.err.span.span* @err.span.span.copy(%struct.err.span.span* %self.param) {
entry:
  %self = alloca %struct.err.span.span*
  %res.1 = alloca %struct.err.span.span*
  %_1.real = alloca %struct.err.span.span*
  %_28.real = alloca %struct.std.str.str
  store %struct.err.span.span* %self.param, %struct.err.span.span** %self
  %0 = call %struct.err.span.span* @err.span.span.__alloc__()
  %1 = getelementptr %struct.err.span.span*, %struct.err.span.span** %_1.real, i32 0 ; %_1.real -> %1
  store %struct.err.span.span* %0, %struct.err.span.span** %1
  %2 = load %struct.err.span.span*, %struct.err.span.span** %1
  store %struct.err.span.span* %2, %struct.err.span.span** %res.1
  %3 = load %struct.err.span.span*, %struct.err.span.span** %res.1
  %4 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %3, i32 0, i32 0
  %5 = load %struct.err.span.span*, %struct.err.span.span** %self
  %6 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %5, i32 0, i32 0
  %7 = load i64, i64* %6
  store i64 %7, i64* %4
  %8 = load %struct.err.span.span*, %struct.err.span.span** %res.1
  %9 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %8, i32 0, i32 1
  %10 = load %struct.err.span.span*, %struct.err.span.span** %self
  %11 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %10, i32 0, i32 1
  %12 = load i64, i64* %11
  store i64 %12, i64* %9
  %13 = load %struct.err.span.span*, %struct.err.span.span** %res.1
  %14 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %13, i32 0, i32 2
  %15 = load %struct.err.span.span*, %struct.err.span.span** %self
  %16 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %15, i32 0, i32 2
  %17 = load i64, i64* %16
  store i64 %17, i64* %14
  %18 = load %struct.err.span.span*, %struct.err.span.span** %res.1
  %19 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %18, i32 0, i32 3
  %20 = load %struct.err.span.span*, %struct.err.span.span** %self
  %21 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %20, i32 0, i32 3
  %22 = load i64, i64* %21
  store i64 %22, i64* %19
  %23 = load %struct.err.span.span*, %struct.err.span.span** %res.1
  %24 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %23, i32 0, i32 4
  %25 = load %struct.err.span.span*, %struct.err.span.span** %self
  %26 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %25, i32 0, i32 4
  %27 = call %struct.std.str.str @std.str.str.copy_instance(%struct.std.str.str* %26)
  %28 = getelementptr %struct.std.str.str, %struct.std.str.str* %_28.real, i32 0 ; %_28.real -> %28
  store %struct.std.str.str %27, %struct.std.str.str* %28
  %29 = load %struct.std.str.str, %struct.std.str.str* %28
  store %struct.std.str.str %29, %struct.std.str.str* %24
  %30 = load %struct.err.span.span*, %struct.err.span.span** %res.1
  ret %struct.err.span.span* %30
}

define void @err.span.span.delete(%struct.err.span.span* %self.param) {
entry:
  %self = alloca %struct.err.span.span*
  store %struct.err.span.span* %self.param, %struct.err.span.span** %self
  %0 = load %struct.err.span.span*, %struct.err.span.span** %self
  %1 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %0, i32 0, i32 4
  call void @std.str.str.delete(%struct.std.str.str* %1)
  ret void 
}

define void @err.span.span.dump(%struct.err.span.span* %self.param, %struct.std.io.io %out.param) {
entry:
  %self = alloca %struct.err.span.span*
  %out = alloca %struct.std.io.io
  %_5.real = alloca %struct.std.io.io
  store %struct.err.span.span* %self.param, %struct.err.span.span** %self
  store %struct.std.io.io %out.param, %struct.std.io.io* %out
  %0 = load %struct.err.span.span*, %struct.err.span.span** %self
  %1 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %0, i32 0, i32 4
  %2 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %1, i32 0, i32 0
  %3 = load i8*, i8** %2
  %4 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %out, i8* %3)
  %5 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %5
  store %struct.std.io.io %4, %struct.std.io.io* %5
  %6 = call %struct.std.io.io @std.io.io.out_ch(%struct.std.io.io* %5, i8 58)
  %7 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %7
  store %struct.std.io.io %6, %struct.std.io.io* %7
  %8 = load %struct.err.span.span*, %struct.err.span.span** %self
  %9 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %8, i32 0, i32 0
  %10 = load i64, i64* %9
  %11 = add i64 %10, 1
  %12 = call %struct.std.io.io @std.io.io.out_i64(%struct.std.io.io* %7, i64 %11)
  %13 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %13
  store %struct.std.io.io %12, %struct.std.io.io* %13
  %14 = call %struct.std.io.io @std.io.io.out_ch(%struct.std.io.io* %13, i8 58)
  %15 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %15
  store %struct.std.io.io %14, %struct.std.io.io* %15
  %16 = load %struct.err.span.span*, %struct.err.span.span** %self
  %17 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %16, i32 0, i32 1
  %18 = load i64, i64* %17
  %19 = add i64 %18, 1
  %20 = call %struct.std.io.io @std.io.io.out_i64(%struct.std.io.io* %15, i64 %19)
  %21 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %21
  store %struct.std.io.io %20, %struct.std.io.io* %21
  call void @std.io.io.endln(%struct.std.io.io* %21)
  ret void 
}

define void @err.report.file_lines.init(%struct.err.report.file_lines* %self.param) {
entry:
  %self = alloca %struct.err.report.file_lines*
  %index.13 = alloca i64
  %_3.real = alloca i64
  %_7.real = alloca i8*
  store %struct.err.report.file_lines* %self.param, %struct.err.report.file_lines** %self
  %0 = load %struct.err.report.file_lines*, %struct.err.report.file_lines** %self
  %1 = getelementptr inbounds %struct.err.report.file_lines, %struct.err.report.file_lines* %0, i32 0, i32 0
  %2 = call i64 @std.str.str.__size__()
  %3 = getelementptr i64, i64* %_3.real, i32 0 ; %_3.real -> %3
  store i64 %2, i64* %3
  %4 = load i64, i64* %3
  %5 = mul i64 128, %4
  %6 = call i8* @malloc(i64 %5)
  %7 = getelementptr i8*, i8** %_7.real, i32 0 ; %_7.real -> %7
  store i8* %6, i8** %7
  %8 = load i8*, i8** %7
  %9 = bitcast i8* %8 to %struct.std.str.str*
  store %struct.std.str.str* %9, %struct.std.str.str** %1
  %10 = load %struct.err.report.file_lines*, %struct.err.report.file_lines** %self
  %11 = getelementptr inbounds %struct.err.report.file_lines, %struct.err.report.file_lines* %10, i32 0, i32 1
  store i64 0, i64* %11
  %12 = load %struct.err.report.file_lines*, %struct.err.report.file_lines** %self
  %13 = getelementptr inbounds %struct.err.report.file_lines, %struct.err.report.file_lines* %12, i32 0, i32 2
  store i64 128, i64* %13
  store i64 0, i64* %index.13
  br label %label.16

label.16:			; loop.entry
  %14 = load i64, i64* %index.13
  %15 = load %struct.err.report.file_lines*, %struct.err.report.file_lines** %self
  %16 = getelementptr inbounds %struct.err.report.file_lines, %struct.err.report.file_lines* %15, i32 0, i32 2
  %17 = load i64, i64* %16
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %label.1d, label %label.2a

label.1d:			; loop.cond.true
  %19 = load %struct.err.report.file_lines*, %struct.err.report.file_lines** %self
  %20 = getelementptr inbounds %struct.err.report.file_lines, %struct.err.report.file_lines* %19, i32 0, i32 0
  %21 = load i64, i64* %index.13
  %22 = load %struct.std.str.str*, %struct.std.str.str** %20
  %23 = getelementptr %struct.std.str.str, %struct.std.str.str* %22, i64 %21
  call void @std.str.str.init(%struct.std.str.str* %23)
  %24 = load i64, i64* %index.13
  %25 = add i64 %24, 1
  store i64 %25, i64* %index.13
  br label %label.16

label.2a:			; loop.exit
  ret void 
}

define void @err.report.file_lines.delete(%struct.err.report.file_lines* %self.param) {
entry:
  %self = alloca %struct.err.report.file_lines*
  %index.2 = alloca i64
  store %struct.err.report.file_lines* %self.param, %struct.err.report.file_lines** %self
  store i64 0, i64* %index.2
  br label %label.3

label.3:			; loop.entry
  %0 = load i64, i64* %index.2
  %1 = load %struct.err.report.file_lines*, %struct.err.report.file_lines** %self
  %2 = getelementptr inbounds %struct.err.report.file_lines, %struct.err.report.file_lines* %1, i32 0, i32 1
  %3 = load i64, i64* %2
  %4 = icmp slt i64 %0, %3
  br i1 %4, label %label.a, label %label.17

label.a:			; loop.cond.true
  %5 = load %struct.err.report.file_lines*, %struct.err.report.file_lines** %self
  %6 = getelementptr inbounds %struct.err.report.file_lines, %struct.err.report.file_lines* %5, i32 0, i32 0
  %7 = load i64, i64* %index.2
  %8 = load %struct.std.str.str*, %struct.std.str.str** %6
  %9 = getelementptr %struct.std.str.str, %struct.std.str.str* %8, i64 %7
  call void @std.str.str.delete(%struct.std.str.str* %9)
  %10 = load i64, i64* %index.2
  %11 = add i64 %10, 1
  store i64 %11, i64* %index.2
  br label %label.3

label.17:			; loop.exit
  %12 = load %struct.err.report.file_lines*, %struct.err.report.file_lines** %self
  %13 = getelementptr inbounds %struct.err.report.file_lines, %struct.err.report.file_lines* %12, i32 0, i32 0
  %14 = load %struct.std.str.str*, %struct.std.str.str** %13
  %15 = bitcast %struct.std.str.str* %14 to i8*
  call void @free(i8* %15)
  ret void 
}

define void @err.report.file_lines.clear(%struct.err.report.file_lines* %self.param) {
entry:
  %self = alloca %struct.err.report.file_lines*
  %index.2 = alloca i64
  store %struct.err.report.file_lines* %self.param, %struct.err.report.file_lines** %self
  store i64 0, i64* %index.2
  br label %label.3

label.3:			; loop.entry
  %0 = load i64, i64* %index.2
  %1 = load %struct.err.report.file_lines*, %struct.err.report.file_lines** %self
  %2 = getelementptr inbounds %struct.err.report.file_lines, %struct.err.report.file_lines* %1, i32 0, i32 1
  %3 = load i64, i64* %2
  %4 = icmp slt i64 %0, %3
  br i1 %4, label %label.a, label %label.17

label.a:			; loop.cond.true
  %5 = load %struct.err.report.file_lines*, %struct.err.report.file_lines** %self
  %6 = getelementptr inbounds %struct.err.report.file_lines, %struct.err.report.file_lines* %5, i32 0, i32 0
  %7 = load i64, i64* %index.2
  %8 = load %struct.std.str.str*, %struct.std.str.str** %6
  %9 = getelementptr %struct.std.str.str, %struct.std.str.str* %8, i64 %7
  call void @std.str.str.clear(%struct.std.str.str* %9)
  %10 = load i64, i64* %index.2
  %11 = add i64 %10, 1
  store i64 %11, i64* %index.2
  br label %label.3

label.17:			; loop.exit
  %12 = load %struct.err.report.file_lines*, %struct.err.report.file_lines** %self
  %13 = getelementptr inbounds %struct.err.report.file_lines, %struct.err.report.file_lines* %12, i32 0, i32 1
  store i64 0, i64* %13
  ret void 
}

define void @err.report.file_lines.expand_capacity(%struct.err.report.file_lines* %self.param) {
entry:
  %self = alloca %struct.err.report.file_lines*
  %index.15 = alloca i64
  %_15.real = alloca i64
  %_19.real = alloca i8*
  store %struct.err.report.file_lines* %self.param, %struct.err.report.file_lines** %self
  %0 = load %struct.err.report.file_lines*, %struct.err.report.file_lines** %self
  %1 = getelementptr inbounds %struct.err.report.file_lines, %struct.err.report.file_lines* %0, i32 0, i32 2
  %2 = load i64, i64* %1
  %3 = mul i64 %2, 2
  store i64 %3, i64* %1
  %4 = load %struct.err.report.file_lines*, %struct.err.report.file_lines** %self
  %5 = getelementptr inbounds %struct.err.report.file_lines, %struct.err.report.file_lines* %4, i32 0, i32 0
  %6 = load %struct.err.report.file_lines*, %struct.err.report.file_lines** %self
  %7 = getelementptr inbounds %struct.err.report.file_lines, %struct.err.report.file_lines* %6, i32 0, i32 0
  %8 = load %struct.std.str.str*, %struct.std.str.str** %7
  %9 = bitcast %struct.std.str.str* %8 to i8*
  %10 = load %struct.err.report.file_lines*, %struct.err.report.file_lines** %self
  %11 = getelementptr inbounds %struct.err.report.file_lines, %struct.err.report.file_lines* %10, i32 0, i32 2
  %12 = load i64, i64* %11
  %13 = add i64 %12, 0 ; i64 -> i64
  %14 = call i64 @std.str.str.__size__()
  %15 = getelementptr i64, i64* %_15.real, i32 0 ; %_15.real -> %15
  store i64 %14, i64* %15
  %16 = load i64, i64* %15
  %17 = mul i64 %13, %16
  %18 = call i8* @realloc(i8* %9, i64 %17)
  %19 = getelementptr i8*, i8** %_19.real, i32 0 ; %_19.real -> %19
  store i8* %18, i8** %19
  %20 = load i8*, i8** %19
  %21 = bitcast i8* %20 to %struct.std.str.str*
  store %struct.std.str.str* %21, %struct.std.str.str** %5
  %22 = load %struct.err.report.file_lines*, %struct.err.report.file_lines** %self
  %23 = getelementptr inbounds %struct.err.report.file_lines, %struct.err.report.file_lines* %22, i32 0, i32 1
  %24 = load i64, i64* %23
  store i64 %24, i64* %index.15
  br label %label.20

label.20:			; loop.entry
  %25 = load i64, i64* %index.15
  %26 = load %struct.err.report.file_lines*, %struct.err.report.file_lines** %self
  %27 = getelementptr inbounds %struct.err.report.file_lines, %struct.err.report.file_lines* %26, i32 0, i32 2
  %28 = load i64, i64* %27
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %label.27, label %label.34

label.27:			; loop.cond.true
  %30 = load %struct.err.report.file_lines*, %struct.err.report.file_lines** %self
  %31 = getelementptr inbounds %struct.err.report.file_lines, %struct.err.report.file_lines* %30, i32 0, i32 0
  %32 = load i64, i64* %index.15
  %33 = load %struct.std.str.str*, %struct.std.str.str** %31
  %34 = getelementptr %struct.std.str.str, %struct.std.str.str* %33, i64 %32
  call void @std.str.str.init(%struct.std.str.str* %34)
  %35 = load i64, i64* %index.15
  %36 = add i64 %35, 1
  store i64 %36, i64* %index.15
  br label %label.20

label.34:			; loop.exit
  ret void 
}

define void @err.report.file_lines.push(%struct.err.report.file_lines* %self.param, %struct.std.str.str* %line.param) {
entry:
  %self = alloca %struct.err.report.file_lines*
  %line = alloca %struct.std.str.str*
  %_17.real = alloca %struct.std.str.str*
  store %struct.err.report.file_lines* %self.param, %struct.err.report.file_lines** %self
  store %struct.std.str.str* %line.param, %struct.std.str.str** %line
  %0 = load %struct.err.report.file_lines*, %struct.err.report.file_lines** %self
  %1 = getelementptr inbounds %struct.err.report.file_lines, %struct.err.report.file_lines* %0, i32 0, i32 1
  %2 = load i64, i64* %1
  %3 = load %struct.err.report.file_lines*, %struct.err.report.file_lines** %self
  %4 = getelementptr inbounds %struct.err.report.file_lines, %struct.err.report.file_lines* %3, i32 0, i32 2
  %5 = load i64, i64* %4
  %6 = icmp eq i64 %2, %5
  br i1 %6, label %label.a, label %label.e

label.a:			; cond.true
  %7 = load %struct.err.report.file_lines*, %struct.err.report.file_lines** %self
  call void @err.report.file_lines.expand_capacity(%struct.err.report.file_lines* %7)
  br label %label.10

label.e:			; cond.false
  br label %label.10

label.10:			; branch.end
  %8 = load %struct.err.report.file_lines*, %struct.err.report.file_lines** %self
  %9 = getelementptr inbounds %struct.err.report.file_lines, %struct.err.report.file_lines* %8, i32 0, i32 0
  %10 = load %struct.err.report.file_lines*, %struct.err.report.file_lines** %self
  %11 = getelementptr inbounds %struct.err.report.file_lines, %struct.err.report.file_lines* %10, i32 0, i32 1
  %12 = load i64, i64* %11
  %13 = load %struct.std.str.str*, %struct.std.str.str** %9
  %14 = getelementptr %struct.std.str.str, %struct.std.str.str* %13, i64 %12
  %15 = load %struct.std.str.str*, %struct.std.str.str** %line
  %16 = call %struct.std.str.str* @std.str.str.append_str(%struct.std.str.str* %14, %struct.std.str.str* %15)
  %17 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_17.real, i32 0 ; %_17.real -> %17
  store %struct.std.str.str* %16, %struct.std.str.str** %17
  %18 = load %struct.std.str.str*, %struct.std.str.str** %17
  %19 = load %struct.err.report.file_lines*, %struct.err.report.file_lines** %self
  %20 = getelementptr inbounds %struct.err.report.file_lines, %struct.err.report.file_lines* %19, i32 0, i32 1
  %21 = load i64, i64* %20
  %22 = add i64 %21, 1
  store i64 %22, i64* %20
  ret void 
}

define %struct.err.report.report* @err.report.report.new() {
entry:
  %res.1 = alloca %struct.err.report.report*
  %_1.real = alloca %struct.err.report.report*
  %0 = call %struct.err.report.report* @err.report.report.__alloc__()
  %1 = getelementptr %struct.err.report.report*, %struct.err.report.report** %_1.real, i32 0 ; %_1.real -> %1
  store %struct.err.report.report* %0, %struct.err.report.report** %1
  %2 = load %struct.err.report.report*, %struct.err.report.report** %1
  store %struct.err.report.report* %2, %struct.err.report.report** %res.1
  %3 = load %struct.err.report.report*, %struct.err.report.report** %res.1
  %4 = getelementptr inbounds %struct.err.report.report, %struct.err.report.report* %3, i32 0, i32 0
  call void @std.str.str.init(%struct.std.str.str* %4)
  %5 = load %struct.err.report.report*, %struct.err.report.report** %res.1
  %6 = getelementptr inbounds %struct.err.report.report, %struct.err.report.report* %5, i32 0, i32 1
  call void @err.report.file_lines.init(%struct.err.report.file_lines* %6)
  %7 = load %struct.err.report.report*, %struct.err.report.report** %res.1
  %8 = getelementptr inbounds %struct.err.report.report, %struct.err.report.report* %7, i32 0, i32 2
  store i64 0, i64* %8
  %9 = load %struct.err.report.report*, %struct.err.report.report** %res.1
  ret %struct.err.report.report* %9
}

define void @err.report.report.delete(%struct.err.report.report* %self.param) {
entry:
  %self = alloca %struct.err.report.report*
  store %struct.err.report.report* %self.param, %struct.err.report.report** %self
  %0 = load %struct.err.report.report*, %struct.err.report.report** %self
  %1 = getelementptr inbounds %struct.err.report.report, %struct.err.report.report* %0, i32 0, i32 0
  call void @std.str.str.delete(%struct.std.str.str* %1)
  %2 = load %struct.err.report.report*, %struct.err.report.report** %self
  %3 = getelementptr inbounds %struct.err.report.report, %struct.err.report.report* %2, i32 0, i32 1
  call void @err.report.file_lines.delete(%struct.err.report.file_lines* %3)
  ret void 
}

define void @err.report.report.load_file_source(%struct.err.report.report* %self.param, i8* %filename.param) {
entry:
  %self = alloca %struct.err.report.report*
  %filename = alloca i8*
  %source.14 = alloca %struct.std.str.str*
  %tmp.19 = alloca %struct.std.str.str*
  %pos.22 = alloca i64
  %_2.real = alloca i1
  %_10.real = alloca %struct.std.io.io
  %_37.real = alloca %struct.std.str.str*
  %_45.real = alloca i64
  %_58.real = alloca i8
  store %struct.err.report.report* %self.param, %struct.err.report.report** %self
  store i8* %filename.param, i8** %filename
  %0 = load i8*, i8** %filename
  %1 = call i1 @std.io.fs.exists(i8* %0)
  %2 = getelementptr i1, i1* %_2.real, i32 0 ; %_2.real -> %2
  store i1 %1, i1* %2
  %3 = load i1, i1* %2
  %4 = xor i1 %3, true
  br i1 %4, label %label.9, label %label.30

label.9:			; cond.true
  %5 = load %struct.err.report.report*, %struct.err.report.report** %self
  %6 = getelementptr inbounds %struct.err.report.report, %struct.err.report.report* %5, i32 0, i32 2
  %7 = load i64, i64* %6
  %8 = add i64 %7, 1
  store i64 %8, i64* %6
  %9 = call %struct.std.io.io @std.io.io.stderr()
  %10 = getelementptr %struct.std.io.io, %struct.std.io.io* %_10.real, i32 0 ; %_10.real -> %10
  store %struct.std.io.io %9, %struct.std.io.io* %10
  %11 = call %struct.std.io.io @std.io.io.red(%struct.std.io.io* %10)
  %12 = getelementptr %struct.std.io.io, %struct.std.io.io* %_10.real, i32 0 ; %_10.real -> %12
  store %struct.std.io.io %11, %struct.std.io.io* %12
  %13 = getelementptr [8 x i8], [8 x i8]* @const.str.8, i64 0, i64 0
  %14 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %12, i8* %13)
  %15 = getelementptr %struct.std.io.io, %struct.std.io.io* %_10.real, i32 0 ; %_10.real -> %15
  store %struct.std.io.io %14, %struct.std.io.io* %15
  %16 = call %struct.std.io.io @std.io.io.reset(%struct.std.io.io* %15)
  %17 = getelementptr %struct.std.io.io, %struct.std.io.io* %_10.real, i32 0 ; %_10.real -> %17
  store %struct.std.io.io %16, %struct.std.io.io* %17
  %18 = load %struct.std.io.io, %struct.std.io.io* %17
  %19 = call %struct.std.io.io @std.io.io.stderr()
  %20 = getelementptr %struct.std.io.io, %struct.std.io.io* %_10.real, i32 0 ; %_10.real -> %20
  store %struct.std.io.io %19, %struct.std.io.io* %20
  %21 = getelementptr [22 x i8], [22 x i8]* @const.str.9, i64 0, i64 0
  %22 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %20, i8* %21)
  %23 = getelementptr %struct.std.io.io, %struct.std.io.io* %_10.real, i32 0 ; %_10.real -> %23
  store %struct.std.io.io %22, %struct.std.io.io* %23
  %24 = load i8*, i8** %filename
  %25 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %23, i8* %24)
  %26 = getelementptr %struct.std.io.io, %struct.std.io.io* %_10.real, i32 0 ; %_10.real -> %26
  store %struct.std.io.io %25, %struct.std.io.io* %26
  %27 = getelementptr [39 x i8], [39 x i8]* @const.str.10, i64 0, i64 0
  %28 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %26, i8* %27)
  %29 = getelementptr %struct.std.io.io, %struct.std.io.io* %_10.real, i32 0 ; %_10.real -> %29
  store %struct.std.io.io %28, %struct.std.io.io* %29
  %30 = load %struct.std.io.io, %struct.std.io.io* %29
  ret void 

label.place_holder.2e:
  br label %label.32

label.30:			; cond.false
  br label %label.32

label.32:			; branch.end
  %31 = load %struct.err.report.report*, %struct.err.report.report** %self
  %32 = getelementptr inbounds %struct.err.report.report, %struct.err.report.report* %31, i32 0, i32 0
  call void @std.str.str.clear(%struct.std.str.str* %32)
  %33 = load %struct.err.report.report*, %struct.err.report.report** %self
  %34 = getelementptr inbounds %struct.err.report.report, %struct.err.report.report* %33, i32 0, i32 0
  %35 = load i8*, i8** %filename
  %36 = call %struct.std.str.str* @std.str.str.append_i8_vec(%struct.std.str.str* %34, i8* %35)
  %37 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_37.real, i32 0 ; %_37.real -> %37
  store %struct.std.str.str* %36, %struct.std.str.str** %37
  %38 = load %struct.std.str.str*, %struct.std.str.str** %37
  %39 = call %struct.std.str.str* @std.str.str.new()
  %40 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_37.real, i32 0 ; %_37.real -> %40
  store %struct.std.str.str* %39, %struct.std.str.str** %40
  %41 = load %struct.std.str.str*, %struct.std.str.str** %40
  store %struct.std.str.str* %41, %struct.std.str.str** %source.14
  %42 = load i8*, i8** %filename
  %43 = load %struct.std.str.str*, %struct.std.str.str** %source.14
  %44 = call i64 @readfile_into_string(i8* %42, %struct.std.str.str* %43)
  %45 = getelementptr i64, i64* %_45.real, i32 0 ; %_45.real -> %45
  store i64 %44, i64* %45
  %46 = load i64, i64* %45
  %47 = call %struct.std.str.str* @std.str.str.new()
  %48 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_37.real, i32 0 ; %_37.real -> %48
  store %struct.std.str.str* %47, %struct.std.str.str** %48
  %49 = load %struct.std.str.str*, %struct.std.str.str** %48
  store %struct.std.str.str* %49, %struct.std.str.str** %tmp.19
  store i64 0, i64* %pos.22
  br label %label.4f

label.4f:			; loop.entry
  %50 = load i64, i64* %pos.22
  %51 = load %struct.std.str.str*, %struct.std.str.str** %source.14
  %52 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %51, i32 0, i32 1
  %53 = load i64, i64* %52
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %label.56, label %label.7d

label.56:			; loop.cond.true
  %55 = load %struct.std.str.str*, %struct.std.str.str** %source.14
  %56 = load i64, i64* %pos.22
  %57 = call i8 @std.str.str.get(%struct.std.str.str* %55, i64 %56)
  %58 = getelementptr i8, i8* %_58.real, i32 0 ; %_58.real -> %58
  store i8 %57, i8* %58
  %59 = load i8, i8* %58
  %60 = icmp eq i8 %59, 10
  br i1 %60, label %label.5f, label %label.69

label.5f:			; cond.true
  %61 = load %struct.err.report.report*, %struct.err.report.report** %self
  %62 = getelementptr inbounds %struct.err.report.report, %struct.err.report.report* %61, i32 0, i32 1
  %63 = load %struct.std.str.str*, %struct.std.str.str** %tmp.19
  call void @err.report.file_lines.push(%struct.err.report.file_lines* %62, %struct.std.str.str* %63)
  %64 = load %struct.std.str.str*, %struct.std.str.str** %tmp.19
  call void @std.str.str.clear(%struct.std.str.str* %64)
  br label %label.78

label.place_holder.67:
  br label %label.6b

label.69:			; cond.false
  br label %label.6b

label.6b:			; branch.end
  %65 = load %struct.std.str.str*, %struct.std.str.str** %tmp.19
  %66 = load %struct.std.str.str*, %struct.std.str.str** %source.14
  %67 = load i64, i64* %pos.22
  %68 = call i8 @std.str.str.get(%struct.std.str.str* %66, i64 %67)
  %69 = getelementptr i8, i8* %_58.real, i32 0 ; %_58.real -> %69
  store i8 %68, i8* %69
  %70 = load i8, i8* %69
  %71 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %65, i8 %70)
  %72 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_37.real, i32 0 ; %_37.real -> %72
  store %struct.std.str.str* %71, %struct.std.str.str** %72
  %73 = load %struct.std.str.str*, %struct.std.str.str** %72
  br label %label.78

label.78:			; loop.continue
  %74 = load i64, i64* %pos.22
  %75 = add i64 %74, 1
  store i64 %75, i64* %pos.22
  br label %label.4f

label.7d:			; loop.exit
  %76 = load %struct.std.str.str*, %struct.std.str.str** %tmp.19
  %77 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %76, i32 0, i32 1
  %78 = load i64, i64* %77
  %79 = icmp ugt i64 %78, 0
  br i1 %79, label %label.83, label %label.8b

label.83:			; cond.true
  %80 = load %struct.err.report.report*, %struct.err.report.report** %self
  %81 = getelementptr inbounds %struct.err.report.report, %struct.err.report.report* %80, i32 0, i32 1
  %82 = load %struct.std.str.str*, %struct.std.str.str** %tmp.19
  call void @err.report.file_lines.push(%struct.err.report.file_lines* %81, %struct.std.str.str* %82)
  %83 = load %struct.std.str.str*, %struct.std.str.str** %tmp.19
  call void @std.str.str.clear(%struct.std.str.str* %83)
  br label %label.8d

label.8b:			; cond.false
  br label %label.8d

label.8d:			; branch.end
  %84 = load %struct.std.str.str*, %struct.std.str.str** %source.14
  call void @std.str.str.delete(%struct.std.str.str* %84)
  %85 = load %struct.std.str.str*, %struct.std.str.str** %source.14
  %86 = bitcast %struct.std.str.str* %85 to i8*
  call void @free(i8* %86)
  %87 = load %struct.std.str.str*, %struct.std.str.str** %tmp.19
  call void @std.str.str.delete(%struct.std.str.str* %87)
  %88 = load %struct.std.str.str*, %struct.std.str.str** %tmp.19
  %89 = bitcast %struct.std.str.str* %88 to i8*
  call void @free(i8* %89)
  ret void 
}

define i64 @err.report.report.get_number_length(i64 %num.param) {
entry:
  %num = alloca i64
  %length.7 = alloca i64
  store i64 %num.param, i64* %num
  %0 = load i64, i64* %num
  %1 = icmp sle i64 %0, 0
  br i1 %1, label %label.4, label %label.8

label.4:			; cond.true
  ret i64 1

label.place_holder.6:
  br label %label.a

label.8:			; cond.false
  br label %label.a

label.a:			; branch.end
  store i64 0, i64* %length.7
  br label %label.d

label.d:			; loop.entry
  %2 = load i64, i64* %num
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %label.11, label %label.1b

label.11:			; loop.cond.true
  %4 = load i64, i64* %num
  %5 = udiv i64 %4, 10
  store i64 %5, i64* %num
  %6 = load i64, i64* %length.7
  %7 = add i64 %6, 1
  store i64 %7, i64* %length.7
  br label %label.d

label.1b:			; loop.exit
  %8 = load i64, i64* %length.7
  ret i64 %8
}

define %struct.std.str.str* @err.report.report.left_pad(i64 %padding.param) {
entry:
  %padding = alloca i64
  %res.1 = alloca %struct.std.str.str*
  %_1.real = alloca %struct.std.str.str*
  store i64 %padding.param, i64* %padding
  %0 = call %struct.std.str.str* @std.str.str.new()
  %1 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_1.real, i32 0 ; %_1.real -> %1
  store %struct.std.str.str* %0, %struct.std.str.str** %1
  %2 = load %struct.std.str.str*, %struct.std.str.str** %1
  store %struct.std.str.str* %2, %struct.std.str.str** %res.1
  br label %label.7

label.7:			; loop.entry
  %3 = load %struct.std.str.str*, %struct.std.str.str** %res.1
  %4 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %3, i32 0, i32 1
  %5 = load i64, i64* %4
  %6 = add i64 %5, 0 ; i64 -> i64
  %7 = load i64, i64* %padding
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %label.f, label %label.18

label.f:			; loop.cond.true
  %9 = load %struct.std.str.str*, %struct.std.str.str** %res.1
  %10 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %9, i8 32)
  %11 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_1.real, i32 0 ; %_1.real -> %11
  store %struct.std.str.str* %10, %struct.std.str.str** %11
  %12 = load %struct.std.str.str*, %struct.std.str.str** %11
  br label %label.7

label.18:			; loop.exit
  %13 = load %struct.std.str.str*, %struct.std.str.str** %res.1
  ret %struct.std.str.str* %13
}

define %struct.std.str.str* @err.report.report.to_str(i64 %num.param, i64 %padding.param) {
entry:
  %num = alloca i64
  %padding = alloca i64
  %tmp.1 = alloca i8*
  %res.6 = alloca %struct.std.str.str*
  %index.9 = alloca i64
  %_1.real = alloca i8*
  %_9.real = alloca %struct.std.str.str*
  %_13.real = alloca i64
  store i64 %num.param, i64* %num
  store i64 %padding.param, i64* %padding
  %0 = call i8* @malloc(i64 256)
  %1 = getelementptr i8*, i8** %_1.real, i32 0 ; %_1.real -> %1
  store i8* %0, i8** %1
  %2 = load i8*, i8** %1
  store i8* %2, i8** %tmp.1
  %3 = load i64, i64* %num
  %4 = load i8*, i8** %tmp.1
  %5 = call i8* @itoa(i64 %3, i8* %4, i64 10)
  %6 = getelementptr i8*, i8** %_1.real, i32 0 ; %_1.real -> %6
  store i8* %5, i8** %6
  %7 = load i8*, i8** %6
  %8 = call %struct.std.str.str* @std.str.str.new()
  %9 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_9.real, i32 0 ; %_9.real -> %9
  store %struct.std.str.str* %8, %struct.std.str.str** %9
  %10 = load %struct.std.str.str*, %struct.std.str.str** %9
  store %struct.std.str.str* %10, %struct.std.str.str** %res.6
  %11 = load i8*, i8** %tmp.1
  %12 = call i64 @strlen(i8* %11)
  %13 = getelementptr i64, i64* %_13.real, i32 0 ; %_13.real -> %13
  store i64 %12, i64* %13
  %14 = load i64, i64* %13
  store i64 %14, i64* %index.9
  br label %label.19

label.19:			; loop.entry
  %15 = load i64, i64* %index.9
  %16 = load i64, i64* %padding
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %label.1e, label %label.2a

label.1e:			; loop.cond.true
  %18 = load %struct.std.str.str*, %struct.std.str.str** %res.6
  %19 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %18, i8 32)
  %20 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_9.real, i32 0 ; %_9.real -> %20
  store %struct.std.str.str* %19, %struct.std.str.str** %20
  %21 = load %struct.std.str.str*, %struct.std.str.str** %20
  %22 = load i64, i64* %index.9
  %23 = add i64 %22, 1
  store i64 %23, i64* %index.9
  br label %label.19

label.2a:			; loop.exit
  %24 = load %struct.std.str.str*, %struct.std.str.str** %res.6
  %25 = load i8*, i8** %tmp.1
  %26 = call %struct.std.str.str* @std.str.str.append_i8_vec(%struct.std.str.str* %24, i8* %25)
  %27 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_9.real, i32 0 ; %_9.real -> %27
  store %struct.std.str.str* %26, %struct.std.str.str** %27
  %28 = load %struct.std.str.str*, %struct.std.str.str** %27
  %29 = load i8*, i8** %tmp.1
  call void @free(i8* %29)
  %30 = load %struct.std.str.str*, %struct.std.str.str** %res.6
  ret %struct.std.str.str* %30
}

define void @err.report.report.print_file_line(%struct.err.report.report* %self.param, %struct.err.span.span* %location.param, i1 %is_error.param) {
entry:
  %self = alloca %struct.err.report.report*
  %location = alloca %struct.err.span.span*
  %is_error = alloca i1
  %index.1 = alloca i64
  %max_line_number_length.3 = alloca i64
  %pad_str.8 = alloca %struct.std.str.str*
  %tmp_str_const.25 = alloca i8*
  %len.29 = alloca i64
  %pad_num.32 = alloca %struct.std.str.str*
  %underline.41 = alloca %struct.std.str.str*
  %i.50 = alloca i64
  %i.135 = alloca i64
  %i.215 = alloca i64
  %_8.real = alloca i64
  %_12.real = alloca %struct.std.str.str*
  %_15.real = alloca %struct.std.io.io
  %_28.real = alloca i1
  store %struct.err.report.report* %self.param, %struct.err.report.report** %self
  store %struct.err.span.span* %location.param, %struct.err.span.span** %location
  store i1 %is_error.param, i1* %is_error
  %0 = load %struct.err.span.span*, %struct.err.span.span** %location
  %1 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %0, i32 0, i32 0
  %2 = load i64, i64* %1
  store i64 %2, i64* %index.1
  %3 = load %struct.err.span.span*, %struct.err.span.span** %location
  %4 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %3, i32 0, i32 2
  %5 = load i64, i64* %4
  %6 = add i64 %5, 1
  %7 = call i64 @err.report.report.get_number_length(i64 %6)
  %8 = getelementptr i64, i64* %_8.real, i32 0 ; %_8.real -> %8
  store i64 %7, i64* %8
  %9 = load i64, i64* %8
  store i64 %9, i64* %max_line_number_length.3
  %10 = load i64, i64* %max_line_number_length.3
  %11 = call %struct.std.str.str* @err.report.report.left_pad(i64 %10)
  %12 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_12.real, i32 0 ; %_12.real -> %12
  store %struct.std.str.str* %11, %struct.std.str.str** %12
  %13 = load %struct.std.str.str*, %struct.std.str.str** %12
  store %struct.std.str.str* %13, %struct.std.str.str** %pad_str.8
  %14 = call %struct.std.io.io @std.io.io.stderr()
  %15 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %15
  store %struct.std.io.io %14, %struct.std.io.io* %15
  %16 = call %struct.std.io.io @std.io.io.cyan(%struct.std.io.io* %15)
  %17 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %17
  store %struct.std.io.io %16, %struct.std.io.io* %17
  %18 = load %struct.std.str.str*, %struct.std.str.str** %pad_str.8
  %19 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %18, i32 0, i32 0
  %20 = load i8*, i8** %19
  %21 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %17, i8* %20)
  %22 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %22
  store %struct.std.io.io %21, %struct.std.io.io* %22
  %23 = getelementptr [4 x i8], [4 x i8]* @const.str.11, i64 0, i64 0
  %24 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %22, i8* %23)
  %25 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %25
  store %struct.std.io.io %24, %struct.std.io.io* %25
  %26 = call %struct.std.io.io @std.io.io.reset(%struct.std.io.io* %25)
  %27 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %27
  store %struct.std.io.io %26, %struct.std.io.io* %27
  call void @std.io.io.endln(%struct.std.io.io* %27)
  br label %label.2b

label.2b:			; loop.entry
  %28 = getelementptr i1, i1* %_28.real, i32 0 ; %_28.real -> %28
  %29 = load i64, i64* %index.1
  %30 = load %struct.err.span.span*, %struct.err.span.span** %location
  %31 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %30, i32 0, i32 2
  %32 = load i64, i64* %31
  %33 = icmp sle i64 %29, %32
  store i1 %33, i1* %28
  br i1 %33, label %label.34, label %label.3d

label.34:			; and.true
  %34 = load i64, i64* %index.1
  %35 = load %struct.err.report.report*, %struct.err.report.report** %self
  %36 = getelementptr inbounds %struct.err.report.report, %struct.err.report.report* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.err.report.file_lines, %struct.err.report.file_lines* %36, i32 0, i32 1
  %38 = load i64, i64* %37
  %39 = icmp slt i64 %34, %38
  store i1 %39, i1* %28
  br label %label.3d

label.3d:			; and.false
  %40 = load i1, i1* %28
  br i1 %40, label %label.40, label %label.255

label.40:			; loop.cond.true
  %41 = load %struct.err.report.report*, %struct.err.report.report** %self
  %42 = getelementptr inbounds %struct.err.report.report, %struct.err.report.report* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.err.report.file_lines, %struct.err.report.file_lines* %42, i32 0, i32 0
  %44 = load i64, i64* %index.1
  %45 = load %struct.std.str.str*, %struct.std.str.str** %43
  %46 = getelementptr %struct.std.str.str, %struct.std.str.str* %45, i64 %44
  %47 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %46, i32 0, i32 0
  %48 = load i8*, i8** %47
  store i8* %48, i8** %tmp_str_const.25
  %49 = load i8*, i8** %tmp_str_const.25
  %50 = call i64 @strlen(i8* %49)
  %51 = getelementptr i64, i64* %_8.real, i32 0 ; %_8.real -> %51
  store i64 %50, i64* %51
  %52 = load i64, i64* %51
  store i64 %52, i64* %len.29
  %53 = load i64, i64* %index.1
  %54 = add i64 %53, 1
  %55 = load i64, i64* %max_line_number_length.3
  %56 = call %struct.std.str.str* @err.report.report.to_str(i64 %54, i64 %55)
  %57 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_12.real, i32 0 ; %_12.real -> %57
  store %struct.std.str.str* %56, %struct.std.str.str** %57
  %58 = load %struct.std.str.str*, %struct.std.str.str** %57
  store %struct.std.str.str* %58, %struct.std.str.str** %pad_num.32
  %59 = call %struct.std.io.io @std.io.io.stderr()
  %60 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %60
  store %struct.std.io.io %59, %struct.std.io.io* %60
  %61 = call %struct.std.io.io @std.io.io.cyan(%struct.std.io.io* %60)
  %62 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %62
  store %struct.std.io.io %61, %struct.std.io.io* %62
  %63 = load %struct.std.str.str*, %struct.std.str.str** %pad_num.32
  %64 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %63, i32 0, i32 0
  %65 = load i8*, i8** %64
  %66 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %62, i8* %65)
  %67 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %67
  store %struct.std.io.io %66, %struct.std.io.io* %67
  %68 = getelementptr [4 x i8], [4 x i8]* @const.str.11, i64 0, i64 0
  %69 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %67, i8* %68)
  %70 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %70
  store %struct.std.io.io %69, %struct.std.io.io* %70
  %71 = call %struct.std.io.io @std.io.io.reset(%struct.std.io.io* %70)
  %72 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %72
  store %struct.std.io.io %71, %struct.std.io.io* %72
  %73 = load i8*, i8** %tmp_str_const.25
  %74 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %72, i8* %73)
  %75 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %75
  store %struct.std.io.io %74, %struct.std.io.io* %75
  call void @std.io.io.endln(%struct.std.io.io* %75)
  %76 = call %struct.std.str.str* @std.str.str.new()
  %77 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_12.real, i32 0 ; %_12.real -> %77
  store %struct.std.str.str* %76, %struct.std.str.str** %77
  %78 = load %struct.std.str.str*, %struct.std.str.str** %77
  store %struct.std.str.str* %78, %struct.std.str.str** %underline.41
  %79 = load i64, i64* %index.1
  %80 = load %struct.err.span.span*, %struct.err.span.span** %location
  %81 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %80, i32 0, i32 0
  %82 = load i64, i64* %81
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %label.7b, label %label.11d

label.7b:			; cond.true
  store i64 0, i64* %i.50
  br label %label.7e

label.7e:			; loop.entry
  %84 = load i64, i64* %i.50
  %85 = load i64, i64* %len.29
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %label.83, label %label.11b

label.83:			; loop.cond.true
  %87 = getelementptr i1, i1* %_28.real, i32 0 ; %_28.real -> %87
  %88 = load %struct.err.span.span*, %struct.err.span.span** %location
  %89 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %88, i32 0, i32 0
  %90 = load i64, i64* %89
  %91 = load %struct.err.span.span*, %struct.err.span.span** %location
  %92 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %91, i32 0, i32 2
  %93 = load i64, i64* %92
  %94 = icmp eq i64 %90, %93
  store i1 %94, i1* %87
  br i1 %94, label %label.8e, label %label.96

label.8e:			; and.true
  %95 = load i64, i64* %i.50
  %96 = load %struct.err.span.span*, %struct.err.span.span** %location
  %97 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %96, i32 0, i32 3
  %98 = load i64, i64* %97
  %99 = icmp eq i64 %95, %98
  store i1 %99, i1* %87
  br label %label.96

label.96:			; and.false
  %100 = load i1, i1* %87
  br i1 %100, label %label.99, label %label.9d

label.99:			; cond.true
  br label %label.11b

label.place_holder.9b:
  br label %label.9f

label.9d:			; cond.false
  br label %label.9f

label.9f:			; branch.end
  %101 = getelementptr i1, i1* %_28.real, i32 0 ; %_28.real -> %101
  %102 = load i64, i64* %i.50
  %103 = load %struct.err.span.span*, %struct.err.span.span** %location
  %104 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %103, i32 0, i32 1
  %105 = load i64, i64* %104
  %106 = icmp slt i64 %102, %105
  store i1 %106, i1* %101
  br i1 %106, label %label.a8, label %label.b0

label.a8:			; and.true
  %107 = load i64, i64* %i.50
  %108 = load i8*, i8** %tmp_str_const.25
  %109 = getelementptr i8, i8* %108, i64 %107
  %110 = load i8, i8* %109
  %111 = icmp ne i8 %110, 9
  store i1 %111, i1* %101
  br label %label.b0

label.b0:			; and.false
  %112 = load i1, i1* %101
  br i1 %112, label %label.b3, label %label.ba

label.b3:			; cond.true
  %113 = load %struct.std.str.str*, %struct.std.str.str** %underline.41
  %114 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %113, i8 32)
  %115 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_12.real, i32 0 ; %_12.real -> %115
  store %struct.std.str.str* %114, %struct.std.str.str** %115
  %116 = load %struct.std.str.str*, %struct.std.str.str** %115
  br label %label.bc

label.ba:			; cond.false
  br label %label.bc

label.bc:			; branch.end
  %117 = getelementptr i1, i1* %_28.real, i32 0 ; %_28.real -> %117
  %118 = load i64, i64* %i.50
  %119 = load %struct.err.span.span*, %struct.err.span.span** %location
  %120 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %119, i32 0, i32 1
  %121 = load i64, i64* %120
  %122 = icmp slt i64 %118, %121
  store i1 %122, i1* %117
  br i1 %122, label %label.c5, label %label.cd

label.c5:			; and.true
  %123 = load i64, i64* %i.50
  %124 = load i8*, i8** %tmp_str_const.25
  %125 = getelementptr i8, i8* %124, i64 %123
  %126 = load i8, i8* %125
  %127 = icmp eq i8 %126, 9
  store i1 %127, i1* %117
  br label %label.cd

label.cd:			; and.false
  %128 = load i1, i1* %117
  br i1 %128, label %label.d0, label %label.d7

label.d0:			; cond.true
  %129 = load %struct.std.str.str*, %struct.std.str.str** %underline.41
  %130 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %129, i8 9)
  %131 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_12.real, i32 0 ; %_12.real -> %131
  store %struct.std.str.str* %130, %struct.std.str.str** %131
  %132 = load %struct.std.str.str*, %struct.std.str.str** %131
  br label %label.d9

label.d7:			; cond.false
  br label %label.d9

label.d9:			; branch.end
  %133 = getelementptr i1, i1* %_28.real, i32 0 ; %_28.real -> %133
  %134 = load i64, i64* %i.50
  %135 = load %struct.err.span.span*, %struct.err.span.span** %location
  %136 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %135, i32 0, i32 1
  %137 = load i64, i64* %136
  %138 = icmp sge i64 %134, %137
  store i1 %138, i1* %133
  br i1 %138, label %label.e2, label %label.ea

label.e2:			; and.true
  %139 = load i64, i64* %i.50
  %140 = load i8*, i8** %tmp_str_const.25
  %141 = getelementptr i8, i8* %140, i64 %139
  %142 = load i8, i8* %141
  %143 = icmp ne i8 %142, 9
  store i1 %143, i1* %133
  br label %label.ea

label.ea:			; and.false
  %144 = load i1, i1* %133
  br i1 %144, label %label.ed, label %label.f4

label.ed:			; cond.true
  %145 = load %struct.std.str.str*, %struct.std.str.str** %underline.41
  %146 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %145, i8 94)
  %147 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_12.real, i32 0 ; %_12.real -> %147
  store %struct.std.str.str* %146, %struct.std.str.str** %147
  %148 = load %struct.std.str.str*, %struct.std.str.str** %147
  br label %label.f6

label.f4:			; cond.false
  br label %label.f6

label.f6:			; branch.end
  %149 = getelementptr i1, i1* %_28.real, i32 0 ; %_28.real -> %149
  %150 = load i64, i64* %i.50
  %151 = load %struct.err.span.span*, %struct.err.span.span** %location
  %152 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %151, i32 0, i32 1
  %153 = load i64, i64* %152
  %154 = icmp sge i64 %150, %153
  store i1 %154, i1* %149
  br i1 %154, label %label.ff, label %label.107

label.ff:			; and.true
  %155 = load i64, i64* %i.50
  %156 = load i8*, i8** %tmp_str_const.25
  %157 = getelementptr i8, i8* %156, i64 %155
  %158 = load i8, i8* %157
  %159 = icmp eq i8 %158, 9
  store i1 %159, i1* %149
  br label %label.107

label.107:			; and.false
  %160 = load i1, i1* %149
  br i1 %160, label %label.10a, label %label.112

label.10a:			; cond.true
  %161 = load %struct.std.str.str*, %struct.std.str.str** %underline.41
  %162 = getelementptr [5 x i8], [5 x i8]* @const.str.12, i64 0, i64 0
  %163 = call %struct.std.str.str* @std.str.str.append_i8_vec(%struct.std.str.str* %161, i8* %162)
  %164 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_12.real, i32 0 ; %_12.real -> %164
  store %struct.std.str.str* %163, %struct.std.str.str** %164
  %165 = load %struct.std.str.str*, %struct.std.str.str** %164
  br label %label.114

label.112:			; cond.false
  br label %label.114

label.114:			; branch.end
  %166 = load i64, i64* %i.50
  %167 = add i64 %166, 1
  store i64 %167, i64* %i.50
  br label %label.7e

label.11b:			; loop.exit
  br label %label.203

label.11d:			; cond.false
  %168 = load i64, i64* %index.1
  %169 = load %struct.err.span.span*, %struct.err.span.span** %location
  %170 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %169, i32 0, i32 2
  %171 = load i64, i64* %170
  %172 = icmp eq i64 %168, %171
  br i1 %172, label %label.124, label %label.1c6

label.124:			; cond.true
  store i64 0, i64* %i.135
  br label %label.127

label.127:			; loop.entry
  %173 = load i64, i64* %i.135
  %174 = load i64, i64* %len.29
  %175 = icmp slt i64 %173, %174
  br i1 %175, label %label.12c, label %label.1c4

label.12c:			; loop.cond.true
  %176 = getelementptr i1, i1* %_28.real, i32 0 ; %_28.real -> %176
  %177 = load %struct.err.span.span*, %struct.err.span.span** %location
  %178 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %177, i32 0, i32 0
  %179 = load i64, i64* %178
  %180 = load %struct.err.span.span*, %struct.err.span.span** %location
  %181 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %180, i32 0, i32 2
  %182 = load i64, i64* %181
  %183 = icmp eq i64 %179, %182
  store i1 %183, i1* %176
  br i1 %183, label %label.137, label %label.13f

label.137:			; and.true
  %184 = load i64, i64* %i.135
  %185 = load %struct.err.span.span*, %struct.err.span.span** %location
  %186 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %185, i32 0, i32 1
  %187 = load i64, i64* %186
  %188 = icmp slt i64 %184, %187
  store i1 %188, i1* %176
  br label %label.13f

label.13f:			; and.false
  %189 = load i1, i1* %176
  br i1 %189, label %label.142, label %label.146

label.142:			; cond.true
  br label %label.1bf

label.place_holder.144:
  br label %label.148

label.146:			; cond.false
  br label %label.148

label.148:			; branch.end
  %190 = getelementptr i1, i1* %_28.real, i32 0 ; %_28.real -> %190
  %191 = load i64, i64* %i.135
  %192 = load %struct.err.span.span*, %struct.err.span.span** %location
  %193 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %192, i32 0, i32 3
  %194 = load i64, i64* %193
  %195 = icmp slt i64 %191, %194
  store i1 %195, i1* %190
  br i1 %195, label %label.151, label %label.159

label.151:			; and.true
  %196 = load i64, i64* %i.135
  %197 = load i8*, i8** %tmp_str_const.25
  %198 = getelementptr i8, i8* %197, i64 %196
  %199 = load i8, i8* %198
  %200 = icmp ne i8 %199, 9
  store i1 %200, i1* %190
  br label %label.159

label.159:			; and.false
  %201 = load i1, i1* %190
  br i1 %201, label %label.15c, label %label.163

label.15c:			; cond.true
  %202 = load %struct.std.str.str*, %struct.std.str.str** %underline.41
  %203 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %202, i8 94)
  %204 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_12.real, i32 0 ; %_12.real -> %204
  store %struct.std.str.str* %203, %struct.std.str.str** %204
  %205 = load %struct.std.str.str*, %struct.std.str.str** %204
  br label %label.165

label.163:			; cond.false
  br label %label.165

label.165:			; branch.end
  %206 = getelementptr i1, i1* %_28.real, i32 0 ; %_28.real -> %206
  %207 = load i64, i64* %i.135
  %208 = load %struct.err.span.span*, %struct.err.span.span** %location
  %209 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %208, i32 0, i32 3
  %210 = load i64, i64* %209
  %211 = icmp slt i64 %207, %210
  store i1 %211, i1* %206
  br i1 %211, label %label.16e, label %label.176

label.16e:			; and.true
  %212 = load i64, i64* %i.135
  %213 = load i8*, i8** %tmp_str_const.25
  %214 = getelementptr i8, i8* %213, i64 %212
  %215 = load i8, i8* %214
  %216 = icmp eq i8 %215, 9
  store i1 %216, i1* %206
  br label %label.176

label.176:			; and.false
  %217 = load i1, i1* %206
  br i1 %217, label %label.179, label %label.181

label.179:			; cond.true
  %218 = load %struct.std.str.str*, %struct.std.str.str** %underline.41
  %219 = getelementptr [5 x i8], [5 x i8]* @const.str.12, i64 0, i64 0
  %220 = call %struct.std.str.str* @std.str.str.append_i8_vec(%struct.std.str.str* %218, i8* %219)
  %221 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_12.real, i32 0 ; %_12.real -> %221
  store %struct.std.str.str* %220, %struct.std.str.str** %221
  %222 = load %struct.std.str.str*, %struct.std.str.str** %221
  br label %label.183

label.181:			; cond.false
  br label %label.183

label.183:			; branch.end
  %223 = getelementptr i1, i1* %_28.real, i32 0 ; %_28.real -> %223
  %224 = load i64, i64* %i.135
  %225 = load %struct.err.span.span*, %struct.err.span.span** %location
  %226 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %225, i32 0, i32 3
  %227 = load i64, i64* %226
  %228 = icmp sge i64 %224, %227
  store i1 %228, i1* %223
  br i1 %228, label %label.18c, label %label.194

label.18c:			; and.true
  %229 = load i64, i64* %i.135
  %230 = load i8*, i8** %tmp_str_const.25
  %231 = getelementptr i8, i8* %230, i64 %229
  %232 = load i8, i8* %231
  %233 = icmp ne i8 %232, 9
  store i1 %233, i1* %223
  br label %label.194

label.194:			; and.false
  %234 = load i1, i1* %223
  br i1 %234, label %label.197, label %label.19e

label.197:			; cond.true
  %235 = load %struct.std.str.str*, %struct.std.str.str** %underline.41
  %236 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %235, i8 32)
  %237 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_12.real, i32 0 ; %_12.real -> %237
  store %struct.std.str.str* %236, %struct.std.str.str** %237
  %238 = load %struct.std.str.str*, %struct.std.str.str** %237
  br label %label.1a0

label.19e:			; cond.false
  br label %label.1a0

label.1a0:			; branch.end
  %239 = getelementptr i1, i1* %_28.real, i32 0 ; %_28.real -> %239
  %240 = load i64, i64* %i.135
  %241 = load %struct.err.span.span*, %struct.err.span.span** %location
  %242 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %241, i32 0, i32 3
  %243 = load i64, i64* %242
  %244 = icmp sge i64 %240, %243
  store i1 %244, i1* %239
  br i1 %244, label %label.1a9, label %label.1b1

label.1a9:			; and.true
  %245 = load i64, i64* %i.135
  %246 = load i8*, i8** %tmp_str_const.25
  %247 = getelementptr i8, i8* %246, i64 %245
  %248 = load i8, i8* %247
  %249 = icmp eq i8 %248, 9
  store i1 %249, i1* %239
  br label %label.1b1

label.1b1:			; and.false
  %250 = load i1, i1* %239
  br i1 %250, label %label.1b4, label %label.1bb

label.1b4:			; cond.true
  %251 = load %struct.std.str.str*, %struct.std.str.str** %underline.41
  %252 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %251, i8 9)
  %253 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_12.real, i32 0 ; %_12.real -> %253
  store %struct.std.str.str* %252, %struct.std.str.str** %253
  %254 = load %struct.std.str.str*, %struct.std.str.str** %253
  br label %label.1bd

label.1bb:			; cond.false
  br label %label.1bd

label.1bd:			; branch.end
  br label %label.1bf

label.1bf:			; loop.continue
  %255 = load i64, i64* %i.135
  %256 = add i64 %255, 1
  store i64 %256, i64* %i.135
  br label %label.127

label.1c4:			; loop.exit
  br label %label.203

label.1c6:			; cond.false
  store i64 0, i64* %i.215
  br label %label.1c9

label.1c9:			; loop.entry
  %257 = load i64, i64* %i.215
  %258 = load i64, i64* %len.29
  %259 = icmp slt i64 %257, %258
  br i1 %259, label %label.1ce, label %label.201

label.1ce:			; loop.cond.true
  %260 = load i64, i64* %i.215
  %261 = load i8*, i8** %tmp_str_const.25
  %262 = getelementptr i8, i8* %261, i64 %260
  %263 = load i8, i8* %262
  %264 = icmp eq i8 %263, 9
  br i1 %264, label %label.1d5, label %label.1dd

label.1d5:			; cond.true
  %265 = load %struct.std.str.str*, %struct.std.str.str** %underline.41
  %266 = getelementptr [5 x i8], [5 x i8]* @const.str.12, i64 0, i64 0
  %267 = call %struct.std.str.str* @std.str.str.append_i8_vec(%struct.std.str.str* %265, i8* %266)
  %268 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_12.real, i32 0 ; %_12.real -> %268
  store %struct.std.str.str* %267, %struct.std.str.str** %268
  %269 = load %struct.std.str.str*, %struct.std.str.str** %268
  br label %label.1fa

label.1dd:			; cond.false
  %270 = getelementptr i1, i1* %_28.real, i32 0 ; %_28.real -> %270
  %271 = load i64, i64* %i.215
  %272 = load i8*, i8** %tmp_str_const.25
  %273 = getelementptr i8, i8* %272, i64 %271
  %274 = load i8, i8* %273
  %275 = icmp ne i8 %274, 13
  store i1 %275, i1* %270
  br i1 %275, label %label.1e6, label %label.1ee

label.1e6:			; and.true
  %276 = load i64, i64* %i.215
  %277 = load i8*, i8** %tmp_str_const.25
  %278 = getelementptr i8, i8* %277, i64 %276
  %279 = load i8, i8* %278
  %280 = icmp ne i8 %279, 10
  store i1 %280, i1* %270
  br label %label.1ee

label.1ee:			; and.false
  %281 = load i1, i1* %270
  br i1 %281, label %label.1f1, label %label.1f8

label.1f1:			; cond.true
  %282 = load %struct.std.str.str*, %struct.std.str.str** %underline.41
  %283 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %282, i8 94)
  %284 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_12.real, i32 0 ; %_12.real -> %284
  store %struct.std.str.str* %283, %struct.std.str.str** %284
  %285 = load %struct.std.str.str*, %struct.std.str.str** %284
  br label %label.1fa

label.1f8:			; cond.false
  br label %label.1fa

label.1fa:			; branch.end
  %286 = load i64, i64* %i.215
  %287 = add i64 %286, 1
  store i64 %287, i64* %i.215
  br label %label.1c9

label.201:			; loop.exit
  br label %label.203

label.203:			; branch.end
  %288 = load i64, i64* %index.1
  %289 = add i64 %288, 1
  store i64 %289, i64* %index.1
  %290 = load i1, i1* %is_error
  br i1 %290, label %label.209, label %label.228

label.209:			; cond.true
  %291 = call %struct.std.io.io @std.io.io.stderr()
  %292 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %292
  store %struct.std.io.io %291, %struct.std.io.io* %292
  %293 = call %struct.std.io.io @std.io.io.cyan(%struct.std.io.io* %292)
  %294 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %294
  store %struct.std.io.io %293, %struct.std.io.io* %294
  %295 = load %struct.std.str.str*, %struct.std.str.str** %pad_str.8
  %296 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %295, i32 0, i32 0
  %297 = load i8*, i8** %296
  %298 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %294, i8* %297)
  %299 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %299
  store %struct.std.io.io %298, %struct.std.io.io* %299
  %300 = getelementptr [4 x i8], [4 x i8]* @const.str.11, i64 0, i64 0
  %301 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %299, i8* %300)
  %302 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %302
  store %struct.std.io.io %301, %struct.std.io.io* %302
  %303 = call %struct.std.io.io @std.io.io.red(%struct.std.io.io* %302)
  %304 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %304
  store %struct.std.io.io %303, %struct.std.io.io* %304
  %305 = load %struct.std.str.str*, %struct.std.str.str** %underline.41
  %306 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %305, i32 0, i32 0
  %307 = load i8*, i8** %306
  %308 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %304, i8* %307)
  %309 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %309
  store %struct.std.io.io %308, %struct.std.io.io* %309
  %310 = call %struct.std.io.io @std.io.io.reset(%struct.std.io.io* %309)
  %311 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %311
  store %struct.std.io.io %310, %struct.std.io.io* %311
  call void @std.io.io.endln(%struct.std.io.io* %311)
  br label %label.247

label.228:			; cond.false
  %312 = call %struct.std.io.io @std.io.io.stderr()
  %313 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %313
  store %struct.std.io.io %312, %struct.std.io.io* %313
  %314 = call %struct.std.io.io @std.io.io.cyan(%struct.std.io.io* %313)
  %315 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %315
  store %struct.std.io.io %314, %struct.std.io.io* %315
  %316 = load %struct.std.str.str*, %struct.std.str.str** %pad_str.8
  %317 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %316, i32 0, i32 0
  %318 = load i8*, i8** %317
  %319 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %315, i8* %318)
  %320 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %320
  store %struct.std.io.io %319, %struct.std.io.io* %320
  %321 = getelementptr [4 x i8], [4 x i8]* @const.str.11, i64 0, i64 0
  %322 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %320, i8* %321)
  %323 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %323
  store %struct.std.io.io %322, %struct.std.io.io* %323
  %324 = call %struct.std.io.io @std.io.io.orange(%struct.std.io.io* %323)
  %325 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %325
  store %struct.std.io.io %324, %struct.std.io.io* %325
  %326 = load %struct.std.str.str*, %struct.std.str.str** %underline.41
  %327 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %326, i32 0, i32 0
  %328 = load i8*, i8** %327
  %329 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %325, i8* %328)
  %330 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %330
  store %struct.std.io.io %329, %struct.std.io.io* %330
  %331 = call %struct.std.io.io @std.io.io.reset(%struct.std.io.io* %330)
  %332 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %332
  store %struct.std.io.io %331, %struct.std.io.io* %332
  call void @std.io.io.endln(%struct.std.io.io* %332)
  br label %label.247

label.247:			; branch.end
  %333 = load %struct.std.str.str*, %struct.std.str.str** %underline.41
  call void @std.str.str.delete(%struct.std.str.str* %333)
  %334 = load %struct.std.str.str*, %struct.std.str.str** %underline.41
  %335 = bitcast %struct.std.str.str* %334 to i8*
  call void @free(i8* %335)
  %336 = load %struct.std.str.str*, %struct.std.str.str** %pad_num.32
  call void @std.str.str.delete(%struct.std.str.str* %336)
  %337 = load %struct.std.str.str*, %struct.std.str.str** %pad_num.32
  %338 = bitcast %struct.std.str.str* %337 to i8*
  call void @free(i8* %338)
  br label %label.2b

label.255:			; loop.exit
  %339 = call %struct.std.io.io @std.io.io.stderr()
  %340 = getelementptr %struct.std.io.io, %struct.std.io.io* %_15.real, i32 0 ; %_15.real -> %340
  store %struct.std.io.io %339, %struct.std.io.io* %340
  call void @std.io.io.endln(%struct.std.io.io* %340)
  %341 = load %struct.std.str.str*, %struct.std.str.str** %pad_str.8
  call void @std.str.str.delete(%struct.std.str.str* %341)
  %342 = load %struct.std.str.str*, %struct.std.str.str** %pad_str.8
  %343 = bitcast %struct.std.str.str* %342 to i8*
  call void @free(i8* %343)
  ret void 
}

define void @err.report.report.error(%struct.err.report.report* %self.param, %struct.err.span.span* %location.param, i8* %message.param) {
entry:
  %self = alloca %struct.err.report.report*
  %location = alloca %struct.err.span.span*
  %message = alloca i8*
  %_7.real = alloca i1
  %_20.real = alloca %struct.std.io.io
  store %struct.err.report.report* %self.param, %struct.err.report.report** %self
  store %struct.err.span.span* %location.param, %struct.err.span.span** %location
  store i8* %message.param, i8** %message
  %0 = load %struct.err.span.span*, %struct.err.span.span** %location
  %1 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %0, i32 0, i32 4
  %2 = load %struct.err.report.report*, %struct.err.report.report** %self
  %3 = getelementptr inbounds %struct.err.report.report, %struct.err.report.report* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %3, i32 0, i32 0
  %5 = load i8*, i8** %4
  %6 = call i1 @std.str.str.eq_const(%struct.std.str.str* %1, i8* %5)
  %7 = getelementptr i1, i1* %_7.real, i32 0 ; %_7.real -> %7
  store i1 %6, i1* %7
  %8 = load i1, i1* %7
  %9 = xor i1 %8, true
  br i1 %9, label %label.f, label %label.17

label.f:			; cond.true
  %10 = load %struct.err.report.report*, %struct.err.report.report** %self
  %11 = load %struct.err.span.span*, %struct.err.span.span** %location
  %12 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %12, i32 0, i32 0
  %14 = load i8*, i8** %13
  call void @err.report.report.load_file_source(%struct.err.report.report* %10, i8* %14)
  br label %label.19

label.17:			; cond.false
  br label %label.19

label.19:			; branch.end
  %15 = load %struct.err.report.report*, %struct.err.report.report** %self
  %16 = getelementptr inbounds %struct.err.report.report, %struct.err.report.report* %15, i32 0, i32 2
  %17 = load i64, i64* %16
  %18 = add i64 %17, 1
  store i64 %18, i64* %16
  %19 = call %struct.std.io.io @std.io.io.stderr()
  %20 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %20
  store %struct.std.io.io %19, %struct.std.io.io* %20
  %21 = call %struct.std.io.io @std.io.io.red(%struct.std.io.io* %20)
  %22 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %22
  store %struct.std.io.io %21, %struct.std.io.io* %22
  %23 = getelementptr [8 x i8], [8 x i8]* @const.str.8, i64 0, i64 0
  %24 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %22, i8* %23)
  %25 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %25
  store %struct.std.io.io %24, %struct.std.io.io* %25
  %26 = call %struct.std.io.io @std.io.io.reset(%struct.std.io.io* %25)
  %27 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %27
  store %struct.std.io.io %26, %struct.std.io.io* %27
  %28 = load %struct.std.io.io, %struct.std.io.io* %27
  %29 = call %struct.std.io.io @std.io.io.stderr()
  %30 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %30
  store %struct.std.io.io %29, %struct.std.io.io* %30
  %31 = call %struct.std.io.io @std.io.io.white(%struct.std.io.io* %30)
  %32 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %32
  store %struct.std.io.io %31, %struct.std.io.io* %32
  %33 = load i8*, i8** %message
  %34 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %32, i8* %33)
  %35 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %35
  store %struct.std.io.io %34, %struct.std.io.io* %35
  %36 = call %struct.std.io.io @std.io.io.reset(%struct.std.io.io* %35)
  %37 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %37
  store %struct.std.io.io %36, %struct.std.io.io* %37
  call void @std.io.io.endln(%struct.std.io.io* %37)
  %38 = call %struct.std.io.io @std.io.io.stderr()
  %39 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %39
  store %struct.std.io.io %38, %struct.std.io.io* %39
  %40 = call %struct.std.io.io @std.io.io.cyan(%struct.std.io.io* %39)
  %41 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %41
  store %struct.std.io.io %40, %struct.std.io.io* %41
  %42 = getelementptr [7 x i8], [7 x i8]* @const.str.13, i64 0, i64 0
  %43 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %41, i8* %42)
  %44 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %44
  store %struct.std.io.io %43, %struct.std.io.io* %44
  %45 = call %struct.std.io.io @std.io.io.red(%struct.std.io.io* %44)
  %46 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %46
  store %struct.std.io.io %45, %struct.std.io.io* %46
  %47 = load %struct.err.span.span*, %struct.err.span.span** %location
  %48 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %48, i32 0, i32 0
  %50 = load i8*, i8** %49
  %51 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %46, i8* %50)
  %52 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %52
  store %struct.std.io.io %51, %struct.std.io.io* %52
  %53 = load %struct.std.io.io, %struct.std.io.io* %52
  %54 = call %struct.std.io.io @std.io.io.stderr()
  %55 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %55
  store %struct.std.io.io %54, %struct.std.io.io* %55
  %56 = call %struct.std.io.io @std.io.io.out_ch(%struct.std.io.io* %55, i8 58)
  %57 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %57
  store %struct.std.io.io %56, %struct.std.io.io* %57
  %58 = load %struct.err.span.span*, %struct.err.span.span** %location
  %59 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %58, i32 0, i32 0
  %60 = load i64, i64* %59
  %61 = add i64 %60, 1
  %62 = call %struct.std.io.io @std.io.io.out_i64(%struct.std.io.io* %57, i64 %61)
  %63 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %63
  store %struct.std.io.io %62, %struct.std.io.io* %63
  %64 = load %struct.std.io.io, %struct.std.io.io* %63
  %65 = call %struct.std.io.io @std.io.io.stderr()
  %66 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %66
  store %struct.std.io.io %65, %struct.std.io.io* %66
  %67 = call %struct.std.io.io @std.io.io.out_ch(%struct.std.io.io* %66, i8 58)
  %68 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %68
  store %struct.std.io.io %67, %struct.std.io.io* %68
  %69 = load %struct.err.span.span*, %struct.err.span.span** %location
  %70 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %69, i32 0, i32 1
  %71 = load i64, i64* %70
  %72 = add i64 %71, 1
  %73 = call %struct.std.io.io @std.io.io.out_i64(%struct.std.io.io* %68, i64 %72)
  %74 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %74
  store %struct.std.io.io %73, %struct.std.io.io* %74
  %75 = load %struct.std.io.io, %struct.std.io.io* %74
  %76 = call %struct.std.io.io @std.io.io.stderr()
  %77 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %77
  store %struct.std.io.io %76, %struct.std.io.io* %77
  %78 = call %struct.std.io.io @std.io.io.reset(%struct.std.io.io* %77)
  %79 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %79
  store %struct.std.io.io %78, %struct.std.io.io* %79
  call void @std.io.io.endln(%struct.std.io.io* %79)
  %80 = load %struct.err.report.report*, %struct.err.report.report** %self
  %81 = load %struct.err.span.span*, %struct.err.span.span** %location
  call void @err.report.report.print_file_line(%struct.err.report.report* %80, %struct.err.span.span* %81, i1 1)
  ret void 
}

define void @err.report.report.warn(%struct.err.report.report* %self.param, %struct.err.span.span* %location.param, i8* %message.param) {
entry:
  %self = alloca %struct.err.report.report*
  %location = alloca %struct.err.span.span*
  %message = alloca i8*
  %_7.real = alloca i1
  %_20.real = alloca %struct.std.io.io
  store %struct.err.report.report* %self.param, %struct.err.report.report** %self
  store %struct.err.span.span* %location.param, %struct.err.span.span** %location
  store i8* %message.param, i8** %message
  %0 = load %struct.err.span.span*, %struct.err.span.span** %location
  %1 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %0, i32 0, i32 4
  %2 = load %struct.err.report.report*, %struct.err.report.report** %self
  %3 = getelementptr inbounds %struct.err.report.report, %struct.err.report.report* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %3, i32 0, i32 0
  %5 = load i8*, i8** %4
  %6 = call i1 @std.str.str.eq_const(%struct.std.str.str* %1, i8* %5)
  %7 = getelementptr i1, i1* %_7.real, i32 0 ; %_7.real -> %7
  store i1 %6, i1* %7
  %8 = load i1, i1* %7
  %9 = xor i1 %8, true
  br i1 %9, label %label.f, label %label.17

label.f:			; cond.true
  %10 = load %struct.err.report.report*, %struct.err.report.report** %self
  %11 = load %struct.err.span.span*, %struct.err.span.span** %location
  %12 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %12, i32 0, i32 0
  %14 = load i8*, i8** %13
  call void @err.report.report.load_file_source(%struct.err.report.report* %10, i8* %14)
  br label %label.19

label.17:			; cond.false
  br label %label.19

label.19:			; branch.end
  %15 = load %struct.err.report.report*, %struct.err.report.report** %self
  %16 = getelementptr inbounds %struct.err.report.report, %struct.err.report.report* %15, i32 0, i32 2
  %17 = load i64, i64* %16
  %18 = add i64 %17, 1
  store i64 %18, i64* %16
  %19 = call %struct.std.io.io @std.io.io.stderr()
  %20 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %20
  store %struct.std.io.io %19, %struct.std.io.io* %20
  %21 = call %struct.std.io.io @std.io.io.orange(%struct.std.io.io* %20)
  %22 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %22
  store %struct.std.io.io %21, %struct.std.io.io* %22
  %23 = getelementptr [7 x i8], [7 x i8]* @const.str.14, i64 0, i64 0
  %24 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %22, i8* %23)
  %25 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %25
  store %struct.std.io.io %24, %struct.std.io.io* %25
  %26 = call %struct.std.io.io @std.io.io.reset(%struct.std.io.io* %25)
  %27 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %27
  store %struct.std.io.io %26, %struct.std.io.io* %27
  %28 = load %struct.std.io.io, %struct.std.io.io* %27
  %29 = call %struct.std.io.io @std.io.io.stderr()
  %30 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %30
  store %struct.std.io.io %29, %struct.std.io.io* %30
  %31 = call %struct.std.io.io @std.io.io.white(%struct.std.io.io* %30)
  %32 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %32
  store %struct.std.io.io %31, %struct.std.io.io* %32
  %33 = load i8*, i8** %message
  %34 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %32, i8* %33)
  %35 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %35
  store %struct.std.io.io %34, %struct.std.io.io* %35
  %36 = call %struct.std.io.io @std.io.io.reset(%struct.std.io.io* %35)
  %37 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %37
  store %struct.std.io.io %36, %struct.std.io.io* %37
  call void @std.io.io.endln(%struct.std.io.io* %37)
  %38 = call %struct.std.io.io @std.io.io.stderr()
  %39 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %39
  store %struct.std.io.io %38, %struct.std.io.io* %39
  %40 = call %struct.std.io.io @std.io.io.cyan(%struct.std.io.io* %39)
  %41 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %41
  store %struct.std.io.io %40, %struct.std.io.io* %41
  %42 = getelementptr [7 x i8], [7 x i8]* @const.str.13, i64 0, i64 0
  %43 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %41, i8* %42)
  %44 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %44
  store %struct.std.io.io %43, %struct.std.io.io* %44
  %45 = call %struct.std.io.io @std.io.io.orange(%struct.std.io.io* %44)
  %46 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %46
  store %struct.std.io.io %45, %struct.std.io.io* %46
  %47 = load %struct.err.span.span*, %struct.err.span.span** %location
  %48 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %48, i32 0, i32 0
  %50 = load i8*, i8** %49
  %51 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %46, i8* %50)
  %52 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %52
  store %struct.std.io.io %51, %struct.std.io.io* %52
  %53 = load %struct.std.io.io, %struct.std.io.io* %52
  %54 = call %struct.std.io.io @std.io.io.stderr()
  %55 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %55
  store %struct.std.io.io %54, %struct.std.io.io* %55
  %56 = call %struct.std.io.io @std.io.io.out_ch(%struct.std.io.io* %55, i8 58)
  %57 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %57
  store %struct.std.io.io %56, %struct.std.io.io* %57
  %58 = load %struct.err.span.span*, %struct.err.span.span** %location
  %59 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %58, i32 0, i32 0
  %60 = load i64, i64* %59
  %61 = add i64 %60, 1
  %62 = call %struct.std.io.io @std.io.io.out_i64(%struct.std.io.io* %57, i64 %61)
  %63 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %63
  store %struct.std.io.io %62, %struct.std.io.io* %63
  %64 = load %struct.std.io.io, %struct.std.io.io* %63
  %65 = call %struct.std.io.io @std.io.io.stderr()
  %66 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %66
  store %struct.std.io.io %65, %struct.std.io.io* %66
  %67 = call %struct.std.io.io @std.io.io.out_ch(%struct.std.io.io* %66, i8 58)
  %68 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %68
  store %struct.std.io.io %67, %struct.std.io.io* %68
  %69 = load %struct.err.span.span*, %struct.err.span.span** %location
  %70 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %69, i32 0, i32 1
  %71 = load i64, i64* %70
  %72 = add i64 %71, 1
  %73 = call %struct.std.io.io @std.io.io.out_i64(%struct.std.io.io* %68, i64 %72)
  %74 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %74
  store %struct.std.io.io %73, %struct.std.io.io* %74
  %75 = load %struct.std.io.io, %struct.std.io.io* %74
  %76 = call %struct.std.io.io @std.io.io.stderr()
  %77 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %77
  store %struct.std.io.io %76, %struct.std.io.io* %77
  %78 = call %struct.std.io.io @std.io.io.reset(%struct.std.io.io* %77)
  %79 = getelementptr %struct.std.io.io, %struct.std.io.io* %_20.real, i32 0 ; %_20.real -> %79
  store %struct.std.io.io %78, %struct.std.io.io* %79
  call void @std.io.io.endln(%struct.std.io.io* %79)
  %80 = load %struct.err.report.report*, %struct.err.report.report** %self
  %81 = load %struct.err.span.span*, %struct.err.span.span** %location
  call void @err.report.report.print_file_line(%struct.err.report.report* %80, %struct.err.span.span* %81, i1 0)
  ret void 
}

define %struct.cli.cli_option @cli.cli_option.instance() {
entry:
  %_0.real = alloca %struct.cli.cli_option
  %0 = getelementptr %struct.cli.cli_option, %struct.cli.cli_option* %_0.real, i32 0 ; %_0.real -> %0
  store %struct.cli.cli_option zeroinitializer, %struct.cli.cli_option* %0
  %1 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %0, i32 0, i32 0
  store i1 0, i1* %1
  %2 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %0, i32 0, i32 1
  store i1 0, i1* %2
  %3 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %0, i32 0, i32 2
  store i1 0, i1* %3
  %4 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %0, i32 0, i32 3
  store i1 0, i1* %4
  %5 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %0, i32 0, i32 4
  store i1 0, i1* %5
  %6 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %0, i32 0, i32 5
  store i1 0, i1* %6
  %7 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %0, i32 0, i32 6
  store i8* null, i8** %7
  %8 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %0, i32 0, i32 7
  store i8* null, i8** %8
  %9 = load %struct.cli.cli_option, %struct.cli.cli_option* %0
  ret %struct.cli.cli_option %9
}

define i8* @version() {
entry:
  %0 = getelementptr [27 x i8], [27 x i8]* @const.str.15, i64 0, i64 0
  ret i8* %0
}

define void @help() {
entry:
  %_1.real = alloca %struct.std.io.io
  %0 = call %struct.std.io.io @std.io.io.stdout()
  %1 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %1
  store %struct.std.io.io %0, %struct.std.io.io* %1
  %2 = getelementptr [17 x i8], [17 x i8]* @const.str.16, i64 0, i64 0
  %3 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %1, i8* %2)
  %4 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %4
  store %struct.std.io.io %3, %struct.std.io.io* %4
  %5 = getelementptr [9 x i8], [9 x i8]* @const.str.17, i64 0, i64 0
  %6 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %4, i8* %5)
  %7 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %7
  store %struct.std.io.io %6, %struct.std.io.io* %7
  %8 = getelementptr [39 x i8], [39 x i8]* @const.str.18, i64 0, i64 0
  %9 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %7, i8* %8)
  %10 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %10
  store %struct.std.io.io %9, %struct.std.io.io* %10
  %11 = getelementptr [42 x i8], [42 x i8]* @const.str.19, i64 0, i64 0
  %12 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %10, i8* %11)
  %13 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %13
  store %struct.std.io.io %12, %struct.std.io.io* %13
  %14 = getelementptr [24 x i8], [24 x i8]* @const.str.20, i64 0, i64 0
  %15 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %13, i8* %14)
  %16 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %16
  store %struct.std.io.io %15, %struct.std.io.io* %16
  %17 = getelementptr [9 x i8], [9 x i8]* @const.str.17, i64 0, i64 0
  %18 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %16, i8* %17)
  %19 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %19
  store %struct.std.io.io %18, %struct.std.io.io* %19
  %20 = getelementptr [51 x i8], [51 x i8]* @const.str.21, i64 0, i64 0
  %21 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %19, i8* %20)
  %22 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %22
  store %struct.std.io.io %21, %struct.std.io.io* %22
  %23 = getelementptr [39 x i8], [39 x i8]* @const.str.22, i64 0, i64 0
  %24 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %22, i8* %23)
  %25 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %25
  store %struct.std.io.io %24, %struct.std.io.io* %25
  %26 = getelementptr [51 x i8], [51 x i8]* @const.str.23, i64 0, i64 0
  %27 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %25, i8* %26)
  %28 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %28
  store %struct.std.io.io %27, %struct.std.io.io* %28
  %29 = getelementptr [39 x i8], [39 x i8]* @const.str.24, i64 0, i64 0
  %30 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %28, i8* %29)
  %31 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %31
  store %struct.std.io.io %30, %struct.std.io.io* %31
  %32 = getelementptr [39 x i8], [39 x i8]* @const.str.25, i64 0, i64 0
  %33 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %31, i8* %32)
  %34 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %34
  store %struct.std.io.io %33, %struct.std.io.io* %34
  %35 = getelementptr [47 x i8], [47 x i8]* @const.str.26, i64 0, i64 0
  %36 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %34, i8* %35)
  %37 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %37
  store %struct.std.io.io %36, %struct.std.io.io* %37
  %38 = getelementptr [45 x i8], [45 x i8]* @const.str.27, i64 0, i64 0
  %39 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %37, i8* %38)
  %40 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %40
  store %struct.std.io.io %39, %struct.std.io.io* %40
  %41 = getelementptr [7 x i8], [7 x i8]* @const.str.28, i64 0, i64 0
  %42 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %40, i8* %41)
  %43 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %43
  store %struct.std.io.io %42, %struct.std.io.io* %43
  %44 = getelementptr [41 x i8], [41 x i8]* @const.str.29, i64 0, i64 0
  %45 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %43, i8* %44)
  %46 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %46
  store %struct.std.io.io %45, %struct.std.io.io* %46
  call void @std.io.io.endln(%struct.std.io.io* %46)
  ret void 
}

define void @logo(i8* %executable_path.param) {
entry:
  %executable_path = alloca i8*
  %_1.real = alloca %struct.std.io.io
  %_28.real = alloca i8*
  store i8* %executable_path.param, i8** %executable_path
  %0 = call %struct.std.io.io @std.io.io.stdout()
  %1 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %1
  store %struct.std.io.io %0, %struct.std.io.io* %1
  %2 = call %struct.std.io.io @std.io.io.green(%struct.std.io.io* %1)
  %3 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %3
  store %struct.std.io.io %2, %struct.std.io.io* %3
  %4 = getelementptr [34 x i8], [34 x i8]* @const.str.30, i64 0, i64 0
  %5 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %3, i8* %4)
  %6 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %6
  store %struct.std.io.io %5, %struct.std.io.io* %6
  %7 = getelementptr [34 x i8], [34 x i8]* @const.str.31, i64 0, i64 0
  %8 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %6, i8* %7)
  %9 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %9
  store %struct.std.io.io %8, %struct.std.io.io* %9
  %10 = getelementptr [34 x i8], [34 x i8]* @const.str.32, i64 0, i64 0
  %11 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %9, i8* %10)
  %12 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %12
  store %struct.std.io.io %11, %struct.std.io.io* %12
  %13 = getelementptr [34 x i8], [34 x i8]* @const.str.33, i64 0, i64 0
  %14 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %12, i8* %13)
  %15 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %15
  store %struct.std.io.io %14, %struct.std.io.io* %15
  %16 = getelementptr [34 x i8], [34 x i8]* @const.str.34, i64 0, i64 0
  %17 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %15, i8* %16)
  %18 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %18
  store %struct.std.io.io %17, %struct.std.io.io* %18
  %19 = getelementptr [35 x i8], [35 x i8]* @const.str.35, i64 0, i64 0
  %20 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %18, i8* %19)
  %21 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %21
  store %struct.std.io.io %20, %struct.std.io.io* %21
  %22 = call %struct.std.io.io @std.io.io.reset(%struct.std.io.io* %21)
  %23 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %23
  store %struct.std.io.io %22, %struct.std.io.io* %23
  %24 = getelementptr [8 x i8], [8 x i8]* @const.str.36, i64 0, i64 0
  %25 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %23, i8* %24)
  %26 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %26
  store %struct.std.io.io %25, %struct.std.io.io* %26
  %27 = call i8* @version()
  %28 = getelementptr i8*, i8** %_28.real, i32 0 ; %_28.real -> %28
  store i8* %27, i8** %28
  %29 = load i8*, i8** %28
  %30 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %26, i8* %29)
  %31 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %31
  store %struct.std.io.io %30, %struct.std.io.io* %31
  %32 = getelementptr [2 x i8], [2 x i8]* @const.str.1, i64 0, i64 0
  %33 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %31, i8* %32)
  %34 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %34
  store %struct.std.io.io %33, %struct.std.io.io* %34
  %35 = getelementptr [40 x i8], [40 x i8]* @const.str.37, i64 0, i64 0
  %36 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %34, i8* %35)
  %37 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %37
  store %struct.std.io.io %36, %struct.std.io.io* %37
  %38 = getelementptr [8 x i8], [8 x i8]* @const.str.38, i64 0, i64 0
  %39 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %37, i8* %38)
  %40 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %40
  store %struct.std.io.io %39, %struct.std.io.io* %40
  %41 = load i8*, i8** %executable_path
  %42 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %40, i8* %41)
  %43 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %43
  store %struct.std.io.io %42, %struct.std.io.io* %43
  %44 = getelementptr [20 x i8], [20 x i8]* @const.str.39, i64 0, i64 0
  %45 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %43, i8* %44)
  %46 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %46
  store %struct.std.io.io %45, %struct.std.io.io* %46
  %47 = load %struct.std.io.io, %struct.std.io.io* %46
  ret void 
}

define i8* @tok_kind_to_str(i64 %kind.param) {
entry:
  %kind = alloca i64
  %match.94713949987568.1 = alloca i64
  store i64 %kind.param, i64* %kind
  %0 = load i64, i64* %kind
  store i64 %0, i64* %match.94713949987568.1
  %1 = load i64, i64* %match.94713949987568.1
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %label.6, label %label.b

label.6:			; cond.true
  %3 = getelementptr [17 x i8], [17 x i8]* @const.str.40, i64 0, i64 0
  ret i8* %3

label.place_holder.9:
  br label %label.27a

label.b:			; cond.false
  %4 = load i64, i64* %match.94713949987568.1
  %5 = icmp eq i64 %4, 1
  br i1 %5, label %label.f, label %label.14

label.f:			; cond.true
  %6 = getelementptr [17 x i8], [17 x i8]* @const.str.41, i64 0, i64 0
  ret i8* %6

label.place_holder.12:
  br label %label.27a

label.14:			; cond.false
  %7 = load i64, i64* %match.94713949987568.1
  %8 = icmp eq i64 %7, 2
  br i1 %8, label %label.18, label %label.1d

label.18:			; cond.true
  %9 = getelementptr [17 x i8], [17 x i8]* @const.str.42, i64 0, i64 0
  ret i8* %9

label.place_holder.1b:
  br label %label.27a

label.1d:			; cond.false
  %10 = load i64, i64* %match.94713949987568.1
  %11 = icmp eq i64 %10, 3
  br i1 %11, label %label.21, label %label.26

label.21:			; cond.true
  %12 = getelementptr [17 x i8], [17 x i8]* @const.str.43, i64 0, i64 0
  ret i8* %12

label.place_holder.24:
  br label %label.27a

label.26:			; cond.false
  %13 = load i64, i64* %match.94713949987568.1
  %14 = icmp eq i64 %13, 4
  br i1 %14, label %label.2a, label %label.2f

label.2a:			; cond.true
  %15 = getelementptr [17 x i8], [17 x i8]* @const.str.44, i64 0, i64 0
  ret i8* %15

label.place_holder.2d:
  br label %label.27a

label.2f:			; cond.false
  %16 = load i64, i64* %match.94713949987568.1
  %17 = icmp eq i64 %16, 5
  br i1 %17, label %label.33, label %label.38

label.33:			; cond.true
  %18 = getelementptr [17 x i8], [17 x i8]* @const.str.45, i64 0, i64 0
  ret i8* %18

label.place_holder.36:
  br label %label.27a

label.38:			; cond.false
  %19 = load i64, i64* %match.94713949987568.1
  %20 = icmp eq i64 %19, 6
  br i1 %20, label %label.3c, label %label.41

label.3c:			; cond.true
  %21 = getelementptr [17 x i8], [17 x i8]* @const.str.46, i64 0, i64 0
  ret i8* %21

label.place_holder.3f:
  br label %label.27a

label.41:			; cond.false
  %22 = load i64, i64* %match.94713949987568.1
  %23 = icmp eq i64 %22, 7
  br i1 %23, label %label.45, label %label.4a

label.45:			; cond.true
  %24 = getelementptr [17 x i8], [17 x i8]* @const.str.47, i64 0, i64 0
  ret i8* %24

label.place_holder.48:
  br label %label.27a

label.4a:			; cond.false
  %25 = load i64, i64* %match.94713949987568.1
  %26 = icmp eq i64 %25, 8
  br i1 %26, label %label.4e, label %label.53

label.4e:			; cond.true
  %27 = getelementptr [17 x i8], [17 x i8]* @const.str.48, i64 0, i64 0
  ret i8* %27

label.place_holder.51:
  br label %label.27a

label.53:			; cond.false
  %28 = load i64, i64* %match.94713949987568.1
  %29 = icmp eq i64 %28, 9
  br i1 %29, label %label.57, label %label.5c

label.57:			; cond.true
  %30 = getelementptr [17 x i8], [17 x i8]* @const.str.49, i64 0, i64 0
  ret i8* %30

label.place_holder.5a:
  br label %label.27a

label.5c:			; cond.false
  %31 = load i64, i64* %match.94713949987568.1
  %32 = icmp eq i64 %31, 10
  br i1 %32, label %label.60, label %label.65

label.60:			; cond.true
  %33 = getelementptr [17 x i8], [17 x i8]* @const.str.50, i64 0, i64 0
  ret i8* %33

label.place_holder.63:
  br label %label.27a

label.65:			; cond.false
  %34 = load i64, i64* %match.94713949987568.1
  %35 = icmp eq i64 %34, 11
  br i1 %35, label %label.69, label %label.6e

label.69:			; cond.true
  %36 = getelementptr [17 x i8], [17 x i8]* @const.str.51, i64 0, i64 0
  ret i8* %36

label.place_holder.6c:
  br label %label.27a

label.6e:			; cond.false
  %37 = load i64, i64* %match.94713949987568.1
  %38 = icmp eq i64 %37, 12
  br i1 %38, label %label.72, label %label.77

label.72:			; cond.true
  %39 = getelementptr [17 x i8], [17 x i8]* @const.str.52, i64 0, i64 0
  ret i8* %39

label.place_holder.75:
  br label %label.27a

label.77:			; cond.false
  %40 = load i64, i64* %match.94713949987568.1
  %41 = icmp eq i64 %40, 13
  br i1 %41, label %label.7b, label %label.80

label.7b:			; cond.true
  %42 = getelementptr [17 x i8], [17 x i8]* @const.str.53, i64 0, i64 0
  ret i8* %42

label.place_holder.7e:
  br label %label.27a

label.80:			; cond.false
  %43 = load i64, i64* %match.94713949987568.1
  %44 = icmp eq i64 %43, 14
  br i1 %44, label %label.84, label %label.89

label.84:			; cond.true
  %45 = getelementptr [17 x i8], [17 x i8]* @const.str.54, i64 0, i64 0
  ret i8* %45

label.place_holder.87:
  br label %label.27a

label.89:			; cond.false
  %46 = load i64, i64* %match.94713949987568.1
  %47 = icmp eq i64 %46, 15
  br i1 %47, label %label.8d, label %label.92

label.8d:			; cond.true
  %48 = getelementptr [17 x i8], [17 x i8]* @const.str.55, i64 0, i64 0
  ret i8* %48

label.place_holder.90:
  br label %label.27a

label.92:			; cond.false
  %49 = load i64, i64* %match.94713949987568.1
  %50 = icmp eq i64 %49, 16
  br i1 %50, label %label.96, label %label.9b

label.96:			; cond.true
  %51 = getelementptr [17 x i8], [17 x i8]* @const.str.56, i64 0, i64 0
  ret i8* %51

label.place_holder.99:
  br label %label.27a

label.9b:			; cond.false
  %52 = load i64, i64* %match.94713949987568.1
  %53 = icmp eq i64 %52, 17
  br i1 %53, label %label.9f, label %label.a4

label.9f:			; cond.true
  %54 = getelementptr [17 x i8], [17 x i8]* @const.str.57, i64 0, i64 0
  ret i8* %54

label.place_holder.a2:
  br label %label.27a

label.a4:			; cond.false
  %55 = load i64, i64* %match.94713949987568.1
  %56 = icmp eq i64 %55, 18
  br i1 %56, label %label.a8, label %label.ad

label.a8:			; cond.true
  %57 = getelementptr [17 x i8], [17 x i8]* @const.str.58, i64 0, i64 0
  ret i8* %57

label.place_holder.ab:
  br label %label.27a

label.ad:			; cond.false
  %58 = load i64, i64* %match.94713949987568.1
  %59 = icmp eq i64 %58, 19
  br i1 %59, label %label.b1, label %label.b6

label.b1:			; cond.true
  %60 = getelementptr [17 x i8], [17 x i8]* @const.str.59, i64 0, i64 0
  ret i8* %60

label.place_holder.b4:
  br label %label.27a

label.b6:			; cond.false
  %61 = load i64, i64* %match.94713949987568.1
  %62 = icmp eq i64 %61, 20
  br i1 %62, label %label.ba, label %label.bf

label.ba:			; cond.true
  %63 = getelementptr [17 x i8], [17 x i8]* @const.str.60, i64 0, i64 0
  ret i8* %63

label.place_holder.bd:
  br label %label.27a

label.bf:			; cond.false
  %64 = load i64, i64* %match.94713949987568.1
  %65 = icmp eq i64 %64, 21
  br i1 %65, label %label.c3, label %label.c8

label.c3:			; cond.true
  %66 = getelementptr [17 x i8], [17 x i8]* @const.str.61, i64 0, i64 0
  ret i8* %66

label.place_holder.c6:
  br label %label.27a

label.c8:			; cond.false
  %67 = load i64, i64* %match.94713949987568.1
  %68 = icmp eq i64 %67, 22
  br i1 %68, label %label.cc, label %label.d1

label.cc:			; cond.true
  %69 = getelementptr [17 x i8], [17 x i8]* @const.str.62, i64 0, i64 0
  ret i8* %69

label.place_holder.cf:
  br label %label.27a

label.d1:			; cond.false
  %70 = load i64, i64* %match.94713949987568.1
  %71 = icmp eq i64 %70, 23
  br i1 %71, label %label.d5, label %label.da

label.d5:			; cond.true
  %72 = getelementptr [17 x i8], [17 x i8]* @const.str.63, i64 0, i64 0
  ret i8* %72

label.place_holder.d8:
  br label %label.27a

label.da:			; cond.false
  %73 = load i64, i64* %match.94713949987568.1
  %74 = icmp eq i64 %73, 24
  br i1 %74, label %label.de, label %label.e3

label.de:			; cond.true
  %75 = getelementptr [17 x i8], [17 x i8]* @const.str.64, i64 0, i64 0
  ret i8* %75

label.place_holder.e1:
  br label %label.27a

label.e3:			; cond.false
  %76 = load i64, i64* %match.94713949987568.1
  %77 = icmp eq i64 %76, 25
  br i1 %77, label %label.e7, label %label.ec

label.e7:			; cond.true
  %78 = getelementptr [17 x i8], [17 x i8]* @const.str.65, i64 0, i64 0
  ret i8* %78

label.place_holder.ea:
  br label %label.27a

label.ec:			; cond.false
  %79 = load i64, i64* %match.94713949987568.1
  %80 = icmp eq i64 %79, 26
  br i1 %80, label %label.f0, label %label.f5

label.f0:			; cond.true
  %81 = getelementptr [17 x i8], [17 x i8]* @const.str.66, i64 0, i64 0
  ret i8* %81

label.place_holder.f3:
  br label %label.27a

label.f5:			; cond.false
  %82 = load i64, i64* %match.94713949987568.1
  %83 = icmp eq i64 %82, 27
  br i1 %83, label %label.f9, label %label.fe

label.f9:			; cond.true
  %84 = getelementptr [17 x i8], [17 x i8]* @const.str.67, i64 0, i64 0
  ret i8* %84

label.place_holder.fc:
  br label %label.27a

label.fe:			; cond.false
  %85 = load i64, i64* %match.94713949987568.1
  %86 = icmp eq i64 %85, 28
  br i1 %86, label %label.102, label %label.107

label.102:			; cond.true
  %87 = getelementptr [17 x i8], [17 x i8]* @const.str.68, i64 0, i64 0
  ret i8* %87

label.place_holder.105:
  br label %label.27a

label.107:			; cond.false
  %88 = load i64, i64* %match.94713949987568.1
  %89 = icmp eq i64 %88, 29
  br i1 %89, label %label.10b, label %label.110

label.10b:			; cond.true
  %90 = getelementptr [17 x i8], [17 x i8]* @const.str.69, i64 0, i64 0
  ret i8* %90

label.place_holder.10e:
  br label %label.27a

label.110:			; cond.false
  %91 = load i64, i64* %match.94713949987568.1
  %92 = icmp eq i64 %91, 30
  br i1 %92, label %label.114, label %label.119

label.114:			; cond.true
  %93 = getelementptr [17 x i8], [17 x i8]* @const.str.70, i64 0, i64 0
  ret i8* %93

label.place_holder.117:
  br label %label.27a

label.119:			; cond.false
  %94 = load i64, i64* %match.94713949987568.1
  %95 = icmp eq i64 %94, 31
  br i1 %95, label %label.11d, label %label.122

label.11d:			; cond.true
  %96 = getelementptr [17 x i8], [17 x i8]* @const.str.71, i64 0, i64 0
  ret i8* %96

label.place_holder.120:
  br label %label.27a

label.122:			; cond.false
  %97 = load i64, i64* %match.94713949987568.1
  %98 = icmp eq i64 %97, 32
  br i1 %98, label %label.126, label %label.12b

label.126:			; cond.true
  %99 = getelementptr [17 x i8], [17 x i8]* @const.str.72, i64 0, i64 0
  ret i8* %99

label.place_holder.129:
  br label %label.27a

label.12b:			; cond.false
  %100 = load i64, i64* %match.94713949987568.1
  %101 = icmp eq i64 %100, 33
  br i1 %101, label %label.12f, label %label.134

label.12f:			; cond.true
  %102 = getelementptr [17 x i8], [17 x i8]* @const.str.73, i64 0, i64 0
  ret i8* %102

label.place_holder.132:
  br label %label.27a

label.134:			; cond.false
  %103 = load i64, i64* %match.94713949987568.1
  %104 = icmp eq i64 %103, 34
  br i1 %104, label %label.138, label %label.13d

label.138:			; cond.true
  %105 = getelementptr [17 x i8], [17 x i8]* @const.str.74, i64 0, i64 0
  ret i8* %105

label.place_holder.13b:
  br label %label.27a

label.13d:			; cond.false
  %106 = load i64, i64* %match.94713949987568.1
  %107 = icmp eq i64 %106, 35
  br i1 %107, label %label.141, label %label.146

label.141:			; cond.true
  %108 = getelementptr [17 x i8], [17 x i8]* @const.str.75, i64 0, i64 0
  ret i8* %108

label.place_holder.144:
  br label %label.27a

label.146:			; cond.false
  %109 = load i64, i64* %match.94713949987568.1
  %110 = icmp eq i64 %109, 36
  br i1 %110, label %label.14a, label %label.14f

label.14a:			; cond.true
  %111 = getelementptr [17 x i8], [17 x i8]* @const.str.76, i64 0, i64 0
  ret i8* %111

label.place_holder.14d:
  br label %label.27a

label.14f:			; cond.false
  %112 = load i64, i64* %match.94713949987568.1
  %113 = icmp eq i64 %112, 37
  br i1 %113, label %label.153, label %label.158

label.153:			; cond.true
  %114 = getelementptr [17 x i8], [17 x i8]* @const.str.77, i64 0, i64 0
  ret i8* %114

label.place_holder.156:
  br label %label.27a

label.158:			; cond.false
  %115 = load i64, i64* %match.94713949987568.1
  %116 = icmp eq i64 %115, 38
  br i1 %116, label %label.15c, label %label.161

label.15c:			; cond.true
  %117 = getelementptr [17 x i8], [17 x i8]* @const.str.78, i64 0, i64 0
  ret i8* %117

label.place_holder.15f:
  br label %label.27a

label.161:			; cond.false
  %118 = load i64, i64* %match.94713949987568.1
  %119 = icmp eq i64 %118, 39
  br i1 %119, label %label.165, label %label.16a

label.165:			; cond.true
  %120 = getelementptr [17 x i8], [17 x i8]* @const.str.79, i64 0, i64 0
  ret i8* %120

label.place_holder.168:
  br label %label.27a

label.16a:			; cond.false
  %121 = load i64, i64* %match.94713949987568.1
  %122 = icmp eq i64 %121, 40
  br i1 %122, label %label.16e, label %label.173

label.16e:			; cond.true
  %123 = getelementptr [17 x i8], [17 x i8]* @const.str.80, i64 0, i64 0
  ret i8* %123

label.place_holder.171:
  br label %label.27a

label.173:			; cond.false
  %124 = load i64, i64* %match.94713949987568.1
  %125 = icmp eq i64 %124, 41
  br i1 %125, label %label.177, label %label.17c

label.177:			; cond.true
  %126 = getelementptr [17 x i8], [17 x i8]* @const.str.81, i64 0, i64 0
  ret i8* %126

label.place_holder.17a:
  br label %label.27a

label.17c:			; cond.false
  %127 = load i64, i64* %match.94713949987568.1
  %128 = icmp eq i64 %127, 42
  br i1 %128, label %label.180, label %label.185

label.180:			; cond.true
  %129 = getelementptr [17 x i8], [17 x i8]* @const.str.82, i64 0, i64 0
  ret i8* %129

label.place_holder.183:
  br label %label.27a

label.185:			; cond.false
  %130 = load i64, i64* %match.94713949987568.1
  %131 = icmp eq i64 %130, 43
  br i1 %131, label %label.189, label %label.18e

label.189:			; cond.true
  %132 = getelementptr [17 x i8], [17 x i8]* @const.str.83, i64 0, i64 0
  ret i8* %132

label.place_holder.18c:
  br label %label.27a

label.18e:			; cond.false
  %133 = load i64, i64* %match.94713949987568.1
  %134 = icmp eq i64 %133, 44
  br i1 %134, label %label.192, label %label.197

label.192:			; cond.true
  %135 = getelementptr [17 x i8], [17 x i8]* @const.str.84, i64 0, i64 0
  ret i8* %135

label.place_holder.195:
  br label %label.27a

label.197:			; cond.false
  %136 = load i64, i64* %match.94713949987568.1
  %137 = icmp eq i64 %136, 45
  br i1 %137, label %label.19b, label %label.1a0

label.19b:			; cond.true
  %138 = getelementptr [17 x i8], [17 x i8]* @const.str.85, i64 0, i64 0
  ret i8* %138

label.place_holder.19e:
  br label %label.27a

label.1a0:			; cond.false
  %139 = load i64, i64* %match.94713949987568.1
  %140 = icmp eq i64 %139, 46
  br i1 %140, label %label.1a4, label %label.1a9

label.1a4:			; cond.true
  %141 = getelementptr [17 x i8], [17 x i8]* @const.str.86, i64 0, i64 0
  ret i8* %141

label.place_holder.1a7:
  br label %label.27a

label.1a9:			; cond.false
  %142 = load i64, i64* %match.94713949987568.1
  %143 = icmp eq i64 %142, 47
  br i1 %143, label %label.1ad, label %label.1b2

label.1ad:			; cond.true
  %144 = getelementptr [17 x i8], [17 x i8]* @const.str.87, i64 0, i64 0
  ret i8* %144

label.place_holder.1b0:
  br label %label.27a

label.1b2:			; cond.false
  %145 = load i64, i64* %match.94713949987568.1
  %146 = icmp eq i64 %145, 48
  br i1 %146, label %label.1b6, label %label.1bb

label.1b6:			; cond.true
  %147 = getelementptr [17 x i8], [17 x i8]* @const.str.88, i64 0, i64 0
  ret i8* %147

label.place_holder.1b9:
  br label %label.27a

label.1bb:			; cond.false
  %148 = load i64, i64* %match.94713949987568.1
  %149 = icmp eq i64 %148, 49
  br i1 %149, label %label.1bf, label %label.1c4

label.1bf:			; cond.true
  %150 = getelementptr [17 x i8], [17 x i8]* @const.str.89, i64 0, i64 0
  ret i8* %150

label.place_holder.1c2:
  br label %label.27a

label.1c4:			; cond.false
  %151 = load i64, i64* %match.94713949987568.1
  %152 = icmp eq i64 %151, 50
  br i1 %152, label %label.1c8, label %label.1cd

label.1c8:			; cond.true
  %153 = getelementptr [17 x i8], [17 x i8]* @const.str.90, i64 0, i64 0
  ret i8* %153

label.place_holder.1cb:
  br label %label.27a

label.1cd:			; cond.false
  %154 = load i64, i64* %match.94713949987568.1
  %155 = icmp eq i64 %154, 51
  br i1 %155, label %label.1d1, label %label.1d6

label.1d1:			; cond.true
  %156 = getelementptr [17 x i8], [17 x i8]* @const.str.91, i64 0, i64 0
  ret i8* %156

label.place_holder.1d4:
  br label %label.27a

label.1d6:			; cond.false
  %157 = load i64, i64* %match.94713949987568.1
  %158 = icmp eq i64 %157, 52
  br i1 %158, label %label.1da, label %label.1df

label.1da:			; cond.true
  %159 = getelementptr [17 x i8], [17 x i8]* @const.str.92, i64 0, i64 0
  ret i8* %159

label.place_holder.1dd:
  br label %label.27a

label.1df:			; cond.false
  %160 = load i64, i64* %match.94713949987568.1
  %161 = icmp eq i64 %160, 53
  br i1 %161, label %label.1e3, label %label.1e8

label.1e3:			; cond.true
  %162 = getelementptr [17 x i8], [17 x i8]* @const.str.93, i64 0, i64 0
  ret i8* %162

label.place_holder.1e6:
  br label %label.27a

label.1e8:			; cond.false
  %163 = load i64, i64* %match.94713949987568.1
  %164 = icmp eq i64 %163, 54
  br i1 %164, label %label.1ec, label %label.1f1

label.1ec:			; cond.true
  %165 = getelementptr [17 x i8], [17 x i8]* @const.str.94, i64 0, i64 0
  ret i8* %165

label.place_holder.1ef:
  br label %label.27a

label.1f1:			; cond.false
  %166 = load i64, i64* %match.94713949987568.1
  %167 = icmp eq i64 %166, 55
  br i1 %167, label %label.1f5, label %label.1fa

label.1f5:			; cond.true
  %168 = getelementptr [17 x i8], [17 x i8]* @const.str.95, i64 0, i64 0
  ret i8* %168

label.place_holder.1f8:
  br label %label.27a

label.1fa:			; cond.false
  %169 = load i64, i64* %match.94713949987568.1
  %170 = icmp eq i64 %169, 56
  br i1 %170, label %label.1fe, label %label.203

label.1fe:			; cond.true
  %171 = getelementptr [17 x i8], [17 x i8]* @const.str.96, i64 0, i64 0
  ret i8* %171

label.place_holder.201:
  br label %label.27a

label.203:			; cond.false
  %172 = load i64, i64* %match.94713949987568.1
  %173 = icmp eq i64 %172, 57
  br i1 %173, label %label.207, label %label.20c

label.207:			; cond.true
  %174 = getelementptr [17 x i8], [17 x i8]* @const.str.97, i64 0, i64 0
  ret i8* %174

label.place_holder.20a:
  br label %label.27a

label.20c:			; cond.false
  %175 = load i64, i64* %match.94713949987568.1
  %176 = icmp eq i64 %175, 58
  br i1 %176, label %label.210, label %label.215

label.210:			; cond.true
  %177 = getelementptr [17 x i8], [17 x i8]* @const.str.98, i64 0, i64 0
  ret i8* %177

label.place_holder.213:
  br label %label.27a

label.215:			; cond.false
  %178 = load i64, i64* %match.94713949987568.1
  %179 = icmp eq i64 %178, 59
  br i1 %179, label %label.219, label %label.21e

label.219:			; cond.true
  %180 = getelementptr [17 x i8], [17 x i8]* @const.str.99, i64 0, i64 0
  ret i8* %180

label.place_holder.21c:
  br label %label.27a

label.21e:			; cond.false
  %181 = load i64, i64* %match.94713949987568.1
  %182 = icmp eq i64 %181, 60
  br i1 %182, label %label.222, label %label.227

label.222:			; cond.true
  %183 = getelementptr [17 x i8], [17 x i8]* @const.str.100, i64 0, i64 0
  ret i8* %183

label.place_holder.225:
  br label %label.27a

label.227:			; cond.false
  %184 = load i64, i64* %match.94713949987568.1
  %185 = icmp eq i64 %184, 61
  br i1 %185, label %label.22b, label %label.230

label.22b:			; cond.true
  %186 = getelementptr [17 x i8], [17 x i8]* @const.str.101, i64 0, i64 0
  ret i8* %186

label.place_holder.22e:
  br label %label.27a

label.230:			; cond.false
  %187 = load i64, i64* %match.94713949987568.1
  %188 = icmp eq i64 %187, 62
  br i1 %188, label %label.234, label %label.239

label.234:			; cond.true
  %189 = getelementptr [17 x i8], [17 x i8]* @const.str.102, i64 0, i64 0
  ret i8* %189

label.place_holder.237:
  br label %label.27a

label.239:			; cond.false
  %190 = load i64, i64* %match.94713949987568.1
  %191 = icmp eq i64 %190, 63
  br i1 %191, label %label.23d, label %label.242

label.23d:			; cond.true
  %192 = getelementptr [17 x i8], [17 x i8]* @const.str.103, i64 0, i64 0
  ret i8* %192

label.place_holder.240:
  br label %label.27a

label.242:			; cond.false
  %193 = load i64, i64* %match.94713949987568.1
  %194 = icmp eq i64 %193, 64
  br i1 %194, label %label.246, label %label.24b

label.246:			; cond.true
  %195 = getelementptr [17 x i8], [17 x i8]* @const.str.104, i64 0, i64 0
  ret i8* %195

label.place_holder.249:
  br label %label.27a

label.24b:			; cond.false
  %196 = load i64, i64* %match.94713949987568.1
  %197 = icmp eq i64 %196, 65
  br i1 %197, label %label.24f, label %label.254

label.24f:			; cond.true
  %198 = getelementptr [17 x i8], [17 x i8]* @const.str.105, i64 0, i64 0
  ret i8* %198

label.place_holder.252:
  br label %label.27a

label.254:			; cond.false
  %199 = load i64, i64* %match.94713949987568.1
  %200 = icmp eq i64 %199, 66
  br i1 %200, label %label.258, label %label.25d

label.258:			; cond.true
  %201 = getelementptr [17 x i8], [17 x i8]* @const.str.106, i64 0, i64 0
  ret i8* %201

label.place_holder.25b:
  br label %label.27a

label.25d:			; cond.false
  %202 = load i64, i64* %match.94713949987568.1
  %203 = icmp eq i64 %202, 67
  br i1 %203, label %label.261, label %label.266

label.261:			; cond.true
  %204 = getelementptr [17 x i8], [17 x i8]* @const.str.107, i64 0, i64 0
  ret i8* %204

label.place_holder.264:
  br label %label.27a

label.266:			; cond.false
  %205 = load i64, i64* %match.94713949987568.1
  %206 = icmp eq i64 %205, 68
  br i1 %206, label %label.26a, label %label.26f

label.26a:			; cond.true
  %207 = getelementptr [17 x i8], [17 x i8]* @const.str.108, i64 0, i64 0
  ret i8* %207

label.place_holder.26d:
  br label %label.27a

label.26f:			; cond.false
  %208 = load i64, i64* %match.94713949987568.1
  %209 = icmp eq i64 %208, 69
  br i1 %209, label %label.273, label %label.278

label.273:			; cond.true
  %210 = getelementptr [17 x i8], [17 x i8]* @const.str.109, i64 0, i64 0
  ret i8* %210

label.place_holder.276:
  br label %label.27a

label.278:			; cond.false
  br label %label.27a

label.27a:			; branch.end
  %211 = getelementptr [17 x i8], [17 x i8]* @const.str.110, i64 0, i64 0
  ret i8* %211
}

define %struct.lexer.token* @lexer.token.new(i64 %kind.param, %struct.std.str.str* %content.param, %struct.err.span.span* %loc.param) {
entry:
  %kind = alloca i64
  %content = alloca %struct.std.str.str*
  %loc = alloca %struct.err.span.span*
  %res.1 = alloca %struct.lexer.token*
  %_1.real = alloca %struct.lexer.token*
  store i64 %kind.param, i64* %kind
  store %struct.std.str.str* %content.param, %struct.std.str.str** %content
  store %struct.err.span.span* %loc.param, %struct.err.span.span** %loc
  %0 = call %struct.lexer.token* @lexer.token.__alloc__()
  %1 = getelementptr %struct.lexer.token*, %struct.lexer.token** %_1.real, i32 0 ; %_1.real -> %1
  store %struct.lexer.token* %0, %struct.lexer.token** %1
  %2 = load %struct.lexer.token*, %struct.lexer.token** %1
  store %struct.lexer.token* %2, %struct.lexer.token** %res.1
  %3 = load %struct.lexer.token*, %struct.lexer.token** %res.1
  %4 = getelementptr inbounds %struct.lexer.token, %struct.lexer.token* %3, i32 0, i32 0
  %5 = load i64, i64* %kind
  store i64 %5, i64* %4
  %6 = load %struct.lexer.token*, %struct.lexer.token** %res.1
  %7 = getelementptr inbounds %struct.lexer.token, %struct.lexer.token* %6, i32 0, i32 1
  %8 = load %struct.std.str.str*, %struct.std.str.str** %content
  store %struct.std.str.str* %8, %struct.std.str.str** %7
  %9 = load %struct.lexer.token*, %struct.lexer.token** %res.1
  %10 = getelementptr inbounds %struct.lexer.token, %struct.lexer.token* %9, i32 0, i32 2
  %11 = load %struct.err.span.span*, %struct.err.span.span** %loc
  store %struct.err.span.span* %11, %struct.err.span.span** %10
  %12 = load %struct.lexer.token*, %struct.lexer.token** %res.1
  ret %struct.lexer.token* %12
}

define void @lexer.token.delete(%struct.lexer.token* %self.param) {
entry:
  %self = alloca %struct.lexer.token*
  store %struct.lexer.token* %self.param, %struct.lexer.token** %self
  %0 = load %struct.lexer.token*, %struct.lexer.token** %self
  %1 = getelementptr inbounds %struct.lexer.token, %struct.lexer.token* %0, i32 0, i32 1
  %2 = load %struct.std.str.str*, %struct.std.str.str** %1
  call void @std.str.str.delete(%struct.std.str.str* %2)
  %3 = load %struct.lexer.token*, %struct.lexer.token** %self
  %4 = getelementptr inbounds %struct.lexer.token, %struct.lexer.token* %3, i32 0, i32 1
  %5 = load %struct.std.str.str*, %struct.std.str.str** %4
  %6 = bitcast %struct.std.str.str* %5 to i8*
  call void @free(i8* %6)
  %7 = load %struct.lexer.token*, %struct.lexer.token** %self
  %8 = getelementptr inbounds %struct.lexer.token, %struct.lexer.token* %7, i32 0, i32 2
  %9 = load %struct.err.span.span*, %struct.err.span.span** %8
  call void @err.span.span.delete(%struct.err.span.span* %9)
  %10 = load %struct.lexer.token*, %struct.lexer.token** %self
  %11 = getelementptr inbounds %struct.lexer.token, %struct.lexer.token* %10, i32 0, i32 2
  %12 = load %struct.err.span.span*, %struct.err.span.span** %11
  %13 = bitcast %struct.err.span.span* %12 to i8*
  call void @free(i8* %13)
  ret void 
}

define %struct.lexer.vec_token* @lexer.vec_token.new() {
entry:
  %res.1 = alloca %struct.lexer.vec_token*
  %size_of_token.3 = alloca i64
  %_1.real = alloca %struct.lexer.vec_token*
  %_4.real = alloca i64
  %_11.real = alloca i8*
  %0 = call %struct.lexer.vec_token* @lexer.vec_token.__alloc__()
  %1 = getelementptr %struct.lexer.vec_token*, %struct.lexer.vec_token** %_1.real, i32 0 ; %_1.real -> %1
  store %struct.lexer.vec_token* %0, %struct.lexer.vec_token** %1
  %2 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %1
  store %struct.lexer.vec_token* %2, %struct.lexer.vec_token** %res.1
  %3 = call i64 @lexer.token.__size__()
  %4 = getelementptr i64, i64* %_4.real, i32 0 ; %_4.real -> %4
  store i64 %3, i64* %4
  %5 = load i64, i64* %4
  store i64 %5, i64* %size_of_token.3
  %6 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %res.1
  %7 = getelementptr inbounds %struct.lexer.vec_token, %struct.lexer.vec_token* %6, i32 0, i32 0
  %8 = load i64, i64* %size_of_token.3
  %9 = mul i64 2048, %8
  %10 = call i8* @malloc(i64 %9)
  %11 = getelementptr i8*, i8** %_11.real, i32 0 ; %_11.real -> %11
  store i8* %10, i8** %11
  %12 = load i8*, i8** %11
  %13 = bitcast i8* %12 to %struct.lexer.token*
  store %struct.lexer.token* %13, %struct.lexer.token** %7
  %14 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %res.1
  %15 = getelementptr inbounds %struct.lexer.vec_token, %struct.lexer.vec_token* %14, i32 0, i32 1
  store i64 0, i64* %15
  %16 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %res.1
  %17 = getelementptr inbounds %struct.lexer.vec_token, %struct.lexer.vec_token* %16, i32 0, i32 2
  store i64 2048, i64* %17
  %18 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %res.1
  ret %struct.lexer.vec_token* %18
}

define void @lexer.vec_token.delete(%struct.lexer.vec_token* %self.param) {
entry:
  %self = alloca %struct.lexer.vec_token*
  %index.1 = alloca i64
  store %struct.lexer.vec_token* %self.param, %struct.lexer.vec_token** %self
  store i64 0, i64* %index.1
  br label %label.3

label.3:			; loop.entry
  %0 = load i64, i64* %index.1
  %1 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %self
  %2 = getelementptr inbounds %struct.lexer.vec_token, %struct.lexer.vec_token* %1, i32 0, i32 1
  %3 = load i64, i64* %2
  %4 = icmp ult i64 %0, %3
  br i1 %4, label %label.a, label %label.17

label.a:			; loop.cond.true
  %5 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %self
  %6 = getelementptr inbounds %struct.lexer.vec_token, %struct.lexer.vec_token* %5, i32 0, i32 0
  %7 = load i64, i64* %index.1
  %8 = load %struct.lexer.token*, %struct.lexer.token** %6
  %9 = getelementptr %struct.lexer.token, %struct.lexer.token* %8, i64 %7
  call void @lexer.token.delete(%struct.lexer.token* %9)
  %10 = load i64, i64* %index.1
  %11 = add i64 %10, 1
  store i64 %11, i64* %index.1
  br label %label.3

label.17:			; loop.exit
  %12 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %self
  %13 = getelementptr inbounds %struct.lexer.vec_token, %struct.lexer.vec_token* %12, i32 0, i32 0
  %14 = load %struct.lexer.token*, %struct.lexer.token** %13
  %15 = bitcast %struct.lexer.token* %14 to i8*
  call void @free(i8* %15)
  ret void 
}

define void @lexer.vec_token.expand_capacity(%struct.lexer.vec_token* %self.param) {
entry:
  %self = alloca %struct.lexer.vec_token*
  %_14.real = alloca i64
  %_18.real = alloca i8*
  store %struct.lexer.vec_token* %self.param, %struct.lexer.vec_token** %self
  %0 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %self
  %1 = getelementptr inbounds %struct.lexer.vec_token, %struct.lexer.vec_token* %0, i32 0, i32 2
  %2 = load i64, i64* %1
  %3 = mul i64 %2, 2
  store i64 %3, i64* %1
  %4 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %self
  %5 = getelementptr inbounds %struct.lexer.vec_token, %struct.lexer.vec_token* %4, i32 0, i32 0
  %6 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %self
  %7 = getelementptr inbounds %struct.lexer.vec_token, %struct.lexer.vec_token* %6, i32 0, i32 0
  %8 = load %struct.lexer.token*, %struct.lexer.token** %7
  %9 = bitcast %struct.lexer.token* %8 to i8*
  %10 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %self
  %11 = getelementptr inbounds %struct.lexer.vec_token, %struct.lexer.vec_token* %10, i32 0, i32 2
  %12 = load i64, i64* %11
  %13 = call i64 @lexer.token.__size__()
  %14 = getelementptr i64, i64* %_14.real, i32 0 ; %_14.real -> %14
  store i64 %13, i64* %14
  %15 = load i64, i64* %14
  %16 = mul i64 %12, %15
  %17 = call i8* @realloc(i8* %9, i64 %16)
  %18 = getelementptr i8*, i8** %_18.real, i32 0 ; %_18.real -> %18
  store i8* %17, i8** %18
  %19 = load i8*, i8** %18
  %20 = bitcast i8* %19 to %struct.lexer.token*
  store %struct.lexer.token* %20, %struct.lexer.token** %5
  ret void 
}

define void @lexer.vec_token.append(%struct.lexer.vec_token* %self.param, i64 %kind.param, %struct.std.str.str* %content.param, %struct.err.span.span* %loc.param) {
entry:
  %self = alloca %struct.lexer.vec_token*
  %kind = alloca i64
  %content = alloca %struct.std.str.str*
  %loc = alloca %struct.err.span.span*
  store %struct.lexer.vec_token* %self.param, %struct.lexer.vec_token** %self
  store i64 %kind.param, i64* %kind
  store %struct.std.str.str* %content.param, %struct.std.str.str** %content
  store %struct.err.span.span* %loc.param, %struct.err.span.span** %loc
  %0 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %self
  %1 = getelementptr inbounds %struct.lexer.vec_token, %struct.lexer.vec_token* %0, i32 0, i32 1
  %2 = load i64, i64* %1
  %3 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %self
  %4 = getelementptr inbounds %struct.lexer.vec_token, %struct.lexer.vec_token* %3, i32 0, i32 2
  %5 = load i64, i64* %4
  %6 = icmp eq i64 %2, %5
  br i1 %6, label %label.c, label %label.10

label.c:			; cond.true
  %7 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %self
  call void @lexer.vec_token.expand_capacity(%struct.lexer.vec_token* %7)
  br label %label.12

label.10:			; cond.false
  br label %label.12

label.12:			; branch.end
  %8 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %self
  %9 = getelementptr inbounds %struct.lexer.vec_token, %struct.lexer.vec_token* %8, i32 0, i32 0
  %10 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %self
  %11 = getelementptr inbounds %struct.lexer.vec_token, %struct.lexer.vec_token* %10, i32 0, i32 1
  %12 = load i64, i64* %11
  %13 = load %struct.lexer.token*, %struct.lexer.token** %9
  %14 = getelementptr %struct.lexer.token, %struct.lexer.token* %13, i64 %12
  %15 = getelementptr inbounds %struct.lexer.token, %struct.lexer.token* %14, i32 0, i32 0
  %16 = load i64, i64* %kind
  store i64 %16, i64* %15
  %17 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %self
  %18 = getelementptr inbounds %struct.lexer.vec_token, %struct.lexer.vec_token* %17, i32 0, i32 0
  %19 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %self
  %20 = getelementptr inbounds %struct.lexer.vec_token, %struct.lexer.vec_token* %19, i32 0, i32 1
  %21 = load i64, i64* %20
  %22 = load %struct.lexer.token*, %struct.lexer.token** %18
  %23 = getelementptr %struct.lexer.token, %struct.lexer.token* %22, i64 %21
  %24 = getelementptr inbounds %struct.lexer.token, %struct.lexer.token* %23, i32 0, i32 1
  %25 = load %struct.std.str.str*, %struct.std.str.str** %content
  store %struct.std.str.str* %25, %struct.std.str.str** %24
  %26 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %self
  %27 = getelementptr inbounds %struct.lexer.vec_token, %struct.lexer.vec_token* %26, i32 0, i32 0
  %28 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %self
  %29 = getelementptr inbounds %struct.lexer.vec_token, %struct.lexer.vec_token* %28, i32 0, i32 1
  %30 = load i64, i64* %29
  %31 = load %struct.lexer.token*, %struct.lexer.token** %27
  %32 = getelementptr %struct.lexer.token, %struct.lexer.token* %31, i64 %30
  %33 = getelementptr inbounds %struct.lexer.token, %struct.lexer.token* %32, i32 0, i32 2
  %34 = load %struct.err.span.span*, %struct.err.span.span** %loc
  store %struct.err.span.span* %34, %struct.err.span.span** %33
  %35 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %self
  %36 = getelementptr inbounds %struct.lexer.vec_token, %struct.lexer.vec_token* %35, i32 0, i32 1
  %37 = load i64, i64* %36
  %38 = add i64 %37, 1
  store i64 %38, i64* %36
  ret void 
}

define %struct.lexer.token @lexer.vec_token.get(%struct.lexer.vec_token* %self.param, i64 %index.param) {
entry:
  %self = alloca %struct.lexer.vec_token*
  %index = alloca i64
  %_0.real = alloca i1
  %_11.real = alloca %struct.std.io.io
  store %struct.lexer.vec_token* %self.param, %struct.lexer.vec_token** %self
  store i64 %index.param, i64* %index
  %0 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %0
  %1 = load i64, i64* %index
  %2 = icmp slt i64 %1, 0
  store i1 %2, i1* %0
  br i1 %2, label %label.10, label %label.7

label.7:			; or.false
  %3 = load i64, i64* %index
  %4 = add i64 %3, 0 ; i64 -> i64
  %5 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %self
  %6 = getelementptr inbounds %struct.lexer.vec_token, %struct.lexer.vec_token* %5, i32 0, i32 1
  %7 = load i64, i64* %6
  %8 = icmp uge i64 %4, %7
  store i1 %8, i1* %0
  br label %label.10

label.10:			; or.true
  %9 = load i1, i1* %0
  br i1 %9, label %label.13, label %label.28

label.13:			; cond.true
  %10 = call %struct.std.io.io @std.io.io.stderr()
  %11 = getelementptr %struct.std.io.io, %struct.std.io.io* %_11.real, i32 0 ; %_11.real -> %11
  store %struct.std.io.io %10, %struct.std.io.io* %11
  %12 = getelementptr [22 x i8], [22 x i8]* @const.str.111, i64 0, i64 0
  %13 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %11, i8* %12)
  %14 = getelementptr %struct.std.io.io, %struct.std.io.io* %_11.real, i32 0 ; %_11.real -> %14
  store %struct.std.io.io %13, %struct.std.io.io* %14
  %15 = load i64, i64* %index
  %16 = call %struct.std.io.io @std.io.io.out_i64(%struct.std.io.io* %14, i64 %15)
  %17 = getelementptr %struct.std.io.io, %struct.std.io.io* %_11.real, i32 0 ; %_11.real -> %17
  store %struct.std.io.io %16, %struct.std.io.io* %17
  %18 = getelementptr [2 x i8], [2 x i8]* @const.str.1, i64 0, i64 0
  %19 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %17, i8* %18)
  %20 = getelementptr %struct.std.io.io, %struct.std.io.io* %_11.real, i32 0 ; %_11.real -> %20
  store %struct.std.io.io %19, %struct.std.io.io* %20
  %21 = load %struct.std.io.io, %struct.std.io.io* %20
  %22 = sub i64 0, 1
  %23 = trunc i64 %22 to i32 ; i64 -> i32
  call void @exit(i32 %23)
  br label %label.2a

label.28:			; cond.false
  br label %label.2a

label.2a:			; branch.end
  %24 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %self
  %25 = getelementptr inbounds %struct.lexer.vec_token, %struct.lexer.vec_token* %24, i32 0, i32 0
  %26 = load i64, i64* %index
  %27 = load %struct.lexer.token*, %struct.lexer.token** %25
  %28 = getelementptr %struct.lexer.token, %struct.lexer.token* %27, i64 %26
  %29 = load %struct.lexer.token, %struct.lexer.token* %28
  ret %struct.lexer.token %29
}

define %struct.lexer.lexer* @lexer.lexer.new(%struct.err.report.report* %e.param) {
entry:
  %e = alloca %struct.err.report.report*
  %res.1 = alloca %struct.lexer.lexer*
  %_1.real = alloca %struct.lexer.lexer*
  %_9.real = alloca %struct.lexer.vec_token*
  store %struct.err.report.report* %e.param, %struct.err.report.report** %e
  %0 = call %struct.lexer.lexer* @lexer.lexer.__alloc__()
  %1 = getelementptr %struct.lexer.lexer*, %struct.lexer.lexer** %_1.real, i32 0 ; %_1.real -> %1
  store %struct.lexer.lexer* %0, %struct.lexer.lexer** %1
  %2 = load %struct.lexer.lexer*, %struct.lexer.lexer** %1
  store %struct.lexer.lexer* %2, %struct.lexer.lexer** %res.1
  %3 = load %struct.lexer.lexer*, %struct.lexer.lexer** %res.1
  %4 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %3, i32 0, i32 0
  %5 = load %struct.err.report.report*, %struct.err.report.report** %e
  store %struct.err.report.report* %5, %struct.err.report.report** %4
  %6 = load %struct.lexer.lexer*, %struct.lexer.lexer** %res.1
  %7 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %6, i32 0, i32 1
  %8 = call %struct.lexer.vec_token* @lexer.vec_token.new()
  %9 = getelementptr %struct.lexer.vec_token*, %struct.lexer.vec_token** %_9.real, i32 0 ; %_9.real -> %9
  store %struct.lexer.vec_token* %8, %struct.lexer.vec_token** %9
  %10 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %9
  store %struct.lexer.vec_token* %10, %struct.lexer.vec_token** %7
  %11 = load %struct.lexer.lexer*, %struct.lexer.lexer** %res.1
  %12 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %11, i32 0, i32 2
  store i64 0, i64* %12
  %13 = load %struct.lexer.lexer*, %struct.lexer.lexer** %res.1
  %14 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %13, i32 0, i32 3
  call void @std.str.str.init(%struct.std.str.str* %14)
  %15 = load %struct.lexer.lexer*, %struct.lexer.lexer** %res.1
  %16 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %15, i32 0, i32 4
  store i64 0, i64* %16
  %17 = load %struct.lexer.lexer*, %struct.lexer.lexer** %res.1
  %18 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %17, i32 0, i32 5
  store i64 0, i64* %18
  %19 = load %struct.lexer.lexer*, %struct.lexer.lexer** %res.1
  ret %struct.lexer.lexer* %19
}

define void @lexer.lexer.delete(%struct.lexer.lexer* %self.param) {
entry:
  %self = alloca %struct.lexer.lexer*
  %_1.real = alloca %struct.std.io.io
  store %struct.lexer.lexer* %self.param, %struct.lexer.lexer** %self
  %0 = call %struct.std.io.io @std.io.io.stderr()
  %1 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %1
  store %struct.std.io.io %0, %struct.std.io.io* %1
  %2 = getelementptr [2 x i8], [2 x i8]* @const.str.112, i64 0, i64 0
  %3 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %1, i8* %2)
  %4 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %4
  store %struct.std.io.io %3, %struct.std.io.io* %4
  %5 = call %struct.std.io.io @std.io.io.green(%struct.std.io.io* %4)
  %6 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %6
  store %struct.std.io.io %5, %struct.std.io.io* %6
  %7 = getelementptr [6 x i8], [6 x i8]* @const.str.113, i64 0, i64 0
  %8 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %6, i8* %7)
  %9 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %9
  store %struct.std.io.io %8, %struct.std.io.io* %9
  %10 = call %struct.std.io.io @std.io.io.reset(%struct.std.io.io* %9)
  %11 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %11
  store %struct.std.io.io %10, %struct.std.io.io* %11
  %12 = getelementptr [2 x i8], [2 x i8]* @const.str.114, i64 0, i64 0
  %13 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %11, i8* %12)
  %14 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %14
  store %struct.std.io.io %13, %struct.std.io.io* %14
  %15 = getelementptr [25 x i8], [25 x i8]* @const.str.115, i64 0, i64 0
  %16 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %14, i8* %15)
  %17 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %17
  store %struct.std.io.io %16, %struct.std.io.io* %17
  %18 = load %struct.std.io.io, %struct.std.io.io* %17
  %19 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %20 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %19, i32 0, i32 3
  call void @std.str.str.delete(%struct.std.str.str* %20)
  %21 = call %struct.std.io.io @std.io.io.stderr()
  %22 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %22
  store %struct.std.io.io %21, %struct.std.io.io* %22
  %23 = getelementptr [2 x i8], [2 x i8]* @const.str.112, i64 0, i64 0
  %24 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %22, i8* %23)
  %25 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %25
  store %struct.std.io.io %24, %struct.std.io.io* %25
  %26 = call %struct.std.io.io @std.io.io.green(%struct.std.io.io* %25)
  %27 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %27
  store %struct.std.io.io %26, %struct.std.io.io* %27
  %28 = getelementptr [6 x i8], [6 x i8]* @const.str.113, i64 0, i64 0
  %29 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %27, i8* %28)
  %30 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %30
  store %struct.std.io.io %29, %struct.std.io.io* %30
  %31 = call %struct.std.io.io @std.io.io.reset(%struct.std.io.io* %30)
  %32 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %32
  store %struct.std.io.io %31, %struct.std.io.io* %32
  %33 = getelementptr [2 x i8], [2 x i8]* @const.str.114, i64 0, i64 0
  %34 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %32, i8* %33)
  %35 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %35
  store %struct.std.io.io %34, %struct.std.io.io* %35
  %36 = getelementptr [21 x i8], [21 x i8]* @const.str.116, i64 0, i64 0
  %37 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %35, i8* %36)
  %38 = getelementptr %struct.std.io.io, %struct.std.io.io* %_1.real, i32 0 ; %_1.real -> %38
  store %struct.std.io.io %37, %struct.std.io.io* %38
  %39 = load %struct.std.io.io, %struct.std.io.io* %38
  %40 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %41 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %40, i32 0, i32 1
  %42 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %41
  call void @lexer.vec_token.delete(%struct.lexer.vec_token* %42)
  %43 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %44 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %43, i32 0, i32 1
  %45 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %44
  %46 = bitcast %struct.lexer.vec_token* %45 to i8*
  call void @free(i8* %46)
  ret void 
}

define i1 @lexer.lexer.is_identifier_head(i8 %c.param) {
entry:
  %c = alloca i8
  %_0.real = alloca i1
  store i8 %c.param, i8* %c
  %0 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %0
  %1 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %1
  %2 = load i8, i8* %c
  %3 = icmp sle i8 97, %2
  store i1 %3, i1* %1
  br i1 %3, label %label.7, label %label.c

label.7:			; and.true
  %4 = load i8, i8* %c
  %5 = icmp sle i8 %4, 122
  store i1 %5, i1* %1
  br label %label.c

label.c:			; and.false
  %6 = load i1, i1* %1
  store i1 %6, i1* %0
  br i1 %6, label %label.29, label %label.10

label.10:			; or.false
  %7 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %7
  %8 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %8
  %9 = load i8, i8* %c
  %10 = icmp sle i8 65, %9
  store i1 %10, i1* %8
  br i1 %10, label %label.17, label %label.1c

label.17:			; and.true
  %11 = load i8, i8* %c
  %12 = icmp sle i8 %11, 90
  store i1 %12, i1* %8
  br label %label.1c

label.1c:			; and.false
  %13 = load i1, i1* %8
  store i1 %13, i1* %7
  br i1 %13, label %label.25, label %label.20

label.20:			; or.false
  %14 = load i8, i8* %c
  %15 = icmp eq i8 %14, 95
  store i1 %15, i1* %7
  br label %label.25

label.25:			; or.true
  %16 = load i1, i1* %7
  store i1 %16, i1* %0
  br label %label.29

label.29:			; or.true
  %17 = load i1, i1* %0
  ret i1 %17
}

define i1 @lexer.lexer.is_identifier_body(i8 %c.param) {
entry:
  %c = alloca i8
  %_0.real = alloca i1
  store i8 %c.param, i8* %c
  %0 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %0
  %1 = load i8, i8* %c
  %2 = call i1 @lexer.lexer.is_identifier_head(i8 %1)
  %3 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %3
  store i1 %2, i1* %3
  %4 = load i1, i1* %3
  store i1 %4, i1* %0
  br i1 %4, label %label.18, label %label.9

label.9:			; or.false
  %5 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %5
  %6 = load i8, i8* %c
  %7 = icmp sle i8 48, %6
  store i1 %7, i1* %5
  br i1 %7, label %label.f, label %label.14

label.f:			; and.true
  %8 = load i8, i8* %c
  %9 = icmp sle i8 %8, 57
  store i1 %9, i1* %5
  br label %label.14

label.14:			; and.false
  %10 = load i1, i1* %5
  store i1 %10, i1* %0
  br label %label.18

label.18:			; or.true
  %11 = load i1, i1* %0
  ret i1 %11
}

define i1 @lexer.lexer.is_single_char_token(i8 %c.param) {
entry:
  %c = alloca i8
  %_0.real = alloca i1
  store i8 %c.param, i8* %c
  %0 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %0
  %1 = load i8, i8* %c
  %2 = icmp eq i8 %1, 40
  store i1 %2, i1* %0
  br i1 %2, label %label.51, label %label.6

label.6:			; or.false
  %3 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %3
  %4 = load i8, i8* %c
  %5 = icmp eq i8 %4, 41
  store i1 %5, i1* %3
  br i1 %5, label %label.4d, label %label.c

label.c:			; or.false
  %6 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %6
  %7 = load i8, i8* %c
  %8 = icmp eq i8 %7, 91
  store i1 %8, i1* %6
  br i1 %8, label %label.49, label %label.12

label.12:			; or.false
  %9 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %9
  %10 = load i8, i8* %c
  %11 = icmp eq i8 %10, 93
  store i1 %11, i1* %9
  br i1 %11, label %label.45, label %label.18

label.18:			; or.false
  %12 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %12
  %13 = load i8, i8* %c
  %14 = icmp eq i8 %13, 123
  store i1 %14, i1* %12
  br i1 %14, label %label.41, label %label.1e

label.1e:			; or.false
  %15 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %15
  %16 = load i8, i8* %c
  %17 = icmp eq i8 %16, 125
  store i1 %17, i1* %15
  br i1 %17, label %label.3d, label %label.24

label.24:			; or.false
  %18 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %18
  %19 = load i8, i8* %c
  %20 = icmp eq i8 %19, 59
  store i1 %20, i1* %18
  br i1 %20, label %label.39, label %label.2a

label.2a:			; or.false
  %21 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %21
  %22 = load i8, i8* %c
  %23 = icmp eq i8 %22, 44
  store i1 %23, i1* %21
  br i1 %23, label %label.35, label %label.30

label.30:			; or.false
  %24 = load i8, i8* %c
  %25 = icmp eq i8 %24, 63
  store i1 %25, i1* %21
  br label %label.35

label.35:			; or.true
  %26 = load i1, i1* %21
  store i1 %26, i1* %18
  br label %label.39

label.39:			; or.true
  %27 = load i1, i1* %18
  store i1 %27, i1* %15
  br label %label.3d

label.3d:			; or.true
  %28 = load i1, i1* %15
  store i1 %28, i1* %12
  br label %label.41

label.41:			; or.true
  %29 = load i1, i1* %12
  store i1 %29, i1* %9
  br label %label.45

label.45:			; or.true
  %30 = load i1, i1* %9
  store i1 %30, i1* %6
  br label %label.49

label.49:			; or.true
  %31 = load i1, i1* %6
  store i1 %31, i1* %3
  br label %label.4d

label.4d:			; or.true
  %32 = load i1, i1* %3
  store i1 %32, i1* %0
  br label %label.51

label.51:			; or.true
  %33 = load i1, i1* %0
  ret i1 %33
}

define i1 @lexer.lexer.is_digit(i8 %c.param) {
entry:
  %c = alloca i8
  %_0.real = alloca i1
  store i8 %c.param, i8* %c
  %0 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %0
  %1 = load i8, i8* %c
  %2 = icmp sle i8 48, %1
  store i1 %2, i1* %0
  br i1 %2, label %label.6, label %label.b

label.6:			; and.true
  %3 = load i8, i8* %c
  %4 = icmp sle i8 %3, 57
  store i1 %4, i1* %0
  br label %label.b

label.b:			; and.false
  %5 = load i1, i1* %0
  ret i1 %5
}

define i1 @lexer.lexer.is_hex(i8 %c.param) {
entry:
  %c = alloca i8
  %_0.real = alloca i1
  store i8 %c.param, i8* %c
  %0 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %0
  %1 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %1
  %2 = load i8, i8* %c
  %3 = icmp sle i8 97, %2
  store i1 %3, i1* %1
  br i1 %3, label %label.7, label %label.c

label.7:			; and.true
  %4 = load i8, i8* %c
  %5 = icmp sle i8 %4, 102
  store i1 %5, i1* %1
  br label %label.c

label.c:			; and.false
  %6 = load i1, i1* %1
  store i1 %6, i1* %0
  br i1 %6, label %label.2c, label %label.10

label.10:			; or.false
  %7 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %7
  %8 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %8
  %9 = load i8, i8* %c
  %10 = icmp sle i8 65, %9
  store i1 %10, i1* %8
  br i1 %10, label %label.17, label %label.1c

label.17:			; and.true
  %11 = load i8, i8* %c
  %12 = icmp sle i8 %11, 70
  store i1 %12, i1* %8
  br label %label.1c

label.1c:			; and.false
  %13 = load i1, i1* %8
  store i1 %13, i1* %7
  br i1 %13, label %label.28, label %label.20

label.20:			; or.false
  %14 = load i8, i8* %c
  %15 = call i1 @lexer.lexer.is_digit(i8 %14)
  %16 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %16
  store i1 %15, i1* %16
  %17 = load i1, i1* %16
  store i1 %17, i1* %7
  br label %label.28

label.28:			; or.true
  %18 = load i1, i1* %7
  store i1 %18, i1* %0
  br label %label.2c

label.2c:			; or.true
  %19 = load i1, i1* %0
  ret i1 %19
}

define i1 @lexer.lexer.is_oct(i8 %c.param) {
entry:
  %c = alloca i8
  %_0.real = alloca i1
  store i8 %c.param, i8* %c
  %0 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %0
  %1 = load i8, i8* %c
  %2 = icmp sle i8 48, %1
  store i1 %2, i1* %0
  br i1 %2, label %label.6, label %label.b

label.6:			; and.true
  %3 = load i8, i8* %c
  %4 = icmp sle i8 %3, 55
  store i1 %4, i1* %0
  br label %label.b

label.b:			; and.false
  %5 = load i1, i1* %0
  ret i1 %5
}

define i1 @lexer.lexer.need_lookahead_eq(i8 %c.param) {
entry:
  %c = alloca i8
  %_0.real = alloca i1
  store i8 %c.param, i8* %c
  %0 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %0
  %1 = load i8, i8* %c
  %2 = icmp eq i8 %1, 43
  store i1 %2, i1* %0
  br i1 %2, label %label.65, label %label.6

label.6:			; or.false
  %3 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %3
  %4 = load i8, i8* %c
  %5 = icmp eq i8 %4, 45
  store i1 %5, i1* %3
  br i1 %5, label %label.61, label %label.c

label.c:			; or.false
  %6 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %6
  %7 = load i8, i8* %c
  %8 = icmp eq i8 %7, 42
  store i1 %8, i1* %6
  br i1 %8, label %label.5d, label %label.12

label.12:			; or.false
  %9 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %9
  %10 = load i8, i8* %c
  %11 = icmp eq i8 %10, 47
  store i1 %11, i1* %9
  br i1 %11, label %label.59, label %label.18

label.18:			; or.false
  %12 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %12
  %13 = load i8, i8* %c
  %14 = icmp eq i8 %13, 37
  store i1 %14, i1* %12
  br i1 %14, label %label.55, label %label.1e

label.1e:			; or.false
  %15 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %15
  %16 = load i8, i8* %c
  %17 = icmp eq i8 %16, 126
  store i1 %17, i1* %15
  br i1 %17, label %label.51, label %label.24

label.24:			; or.false
  %18 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %18
  %19 = load i8, i8* %c
  %20 = icmp eq i8 %19, 94
  store i1 %20, i1* %18
  br i1 %20, label %label.4d, label %label.2a

label.2a:			; or.false
  %21 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %21
  %22 = load i8, i8* %c
  %23 = icmp eq i8 %22, 61
  store i1 %23, i1* %21
  br i1 %23, label %label.49, label %label.30

label.30:			; or.false
  %24 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %24
  %25 = load i8, i8* %c
  %26 = icmp eq i8 %25, 60
  store i1 %26, i1* %24
  br i1 %26, label %label.45, label %label.36

label.36:			; or.false
  %27 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %27
  %28 = load i8, i8* %c
  %29 = icmp eq i8 %28, 62
  store i1 %29, i1* %27
  br i1 %29, label %label.41, label %label.3c

label.3c:			; or.false
  %30 = load i8, i8* %c
  %31 = icmp eq i8 %30, 33
  store i1 %31, i1* %27
  br label %label.41

label.41:			; or.true
  %32 = load i1, i1* %27
  store i1 %32, i1* %24
  br label %label.45

label.45:			; or.true
  %33 = load i1, i1* %24
  store i1 %33, i1* %21
  br label %label.49

label.49:			; or.true
  %34 = load i1, i1* %21
  store i1 %34, i1* %18
  br label %label.4d

label.4d:			; or.true
  %35 = load i1, i1* %18
  store i1 %35, i1* %15
  br label %label.51

label.51:			; or.true
  %36 = load i1, i1* %15
  store i1 %36, i1* %12
  br label %label.55

label.55:			; or.true
  %37 = load i1, i1* %12
  store i1 %37, i1* %9
  br label %label.59

label.59:			; or.true
  %38 = load i1, i1* %9
  store i1 %38, i1* %6
  br label %label.5d

label.5d:			; or.true
  %39 = load i1, i1* %6
  store i1 %39, i1* %3
  br label %label.61

label.61:			; or.true
  %40 = load i1, i1* %3
  store i1 %40, i1* %0
  br label %label.65

label.65:			; or.true
  %41 = load i1, i1* %0
  ret i1 %41
}

define i1 @lexer.lexer.need_lookahead_other(i8 %c.param) {
entry:
  %c = alloca i8
  %_0.real = alloca i1
  store i8 %c.param, i8* %c
  %0 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %0
  %1 = load i8, i8* %c
  %2 = icmp eq i8 %1, 38
  store i1 %2, i1* %0
  br i1 %2, label %label.b, label %label.6

label.6:			; or.false
  %3 = load i8, i8* %c
  %4 = icmp eq i8 %3, 124
  store i1 %4, i1* %0
  br label %label.b

label.b:			; or.true
  %5 = load i1, i1* %0
  ret i1 %5
}

define i1 @lexer.lexer.is_arrow(i64 %pos.param, %struct.std.str.str* %src.param) {
entry:
  %pos = alloca i64
  %src = alloca %struct.std.str.str*
  %_3.real = alloca i8
  %_6.real = alloca i1
  store i64 %pos.param, i64* %pos
  store %struct.std.str.str* %src.param, %struct.std.str.str** %src
  %0 = load %struct.std.str.str*, %struct.std.str.str** %src
  %1 = load i64, i64* %pos
  %2 = call i8 @std.str.str.get(%struct.std.str.str* %0, i64 %1)
  %3 = getelementptr i8, i8* %_3.real, i32 0 ; %_3.real -> %3
  store i8 %2, i8* %3
  %4 = load i8, i8* %3
  %5 = icmp ne i8 %4, 45
  br i1 %5, label %label.a, label %label.e

label.a:			; cond.true
  ret i1 0

label.place_holder.c:
  br label %label.10

label.e:			; cond.false
  br label %label.10

label.10:			; branch.end
  %6 = getelementptr i1, i1* %_6.real, i32 0 ; %_6.real -> %6
  %7 = load i64, i64* %pos
  %8 = add i64 %7, 1
  %9 = load %struct.std.str.str*, %struct.std.str.str** %src
  %10 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %9, i32 0, i32 1
  %11 = load i64, i64* %10
  %12 = icmp ult i64 %8, %11
  store i1 %12, i1* %6
  br i1 %12, label %label.1a, label %label.25

label.1a:			; and.true
  %13 = load %struct.std.str.str*, %struct.std.str.str** %src
  %14 = load i64, i64* %pos
  %15 = add i64 %14, 1
  %16 = call i8 @std.str.str.get(%struct.std.str.str* %13, i64 %15)
  %17 = getelementptr i8, i8* %_3.real, i32 0 ; %_3.real -> %17
  store i8 %16, i8* %17
  %18 = load i8, i8* %17
  %19 = icmp eq i8 %18, 62
  store i1 %19, i1* %6
  br label %label.25

label.25:			; and.false
  %20 = load i1, i1* %6
  br i1 %20, label %label.28, label %label.2c

label.28:			; cond.true
  ret i1 1

label.place_holder.2a:
  br label %label.2e

label.2c:			; cond.false
  br label %label.2e

label.2e:			; branch.end
  ret i1 0
}

define i1 @lexer.lexer.is_wide_arrow(i64 %pos.param, %struct.std.str.str* %src.param) {
entry:
  %pos = alloca i64
  %src = alloca %struct.std.str.str*
  %_3.real = alloca i8
  %_6.real = alloca i1
  store i64 %pos.param, i64* %pos
  store %struct.std.str.str* %src.param, %struct.std.str.str** %src
  %0 = load %struct.std.str.str*, %struct.std.str.str** %src
  %1 = load i64, i64* %pos
  %2 = call i8 @std.str.str.get(%struct.std.str.str* %0, i64 %1)
  %3 = getelementptr i8, i8* %_3.real, i32 0 ; %_3.real -> %3
  store i8 %2, i8* %3
  %4 = load i8, i8* %3
  %5 = icmp ne i8 %4, 61
  br i1 %5, label %label.a, label %label.e

label.a:			; cond.true
  ret i1 0

label.place_holder.c:
  br label %label.10

label.e:			; cond.false
  br label %label.10

label.10:			; branch.end
  %6 = getelementptr i1, i1* %_6.real, i32 0 ; %_6.real -> %6
  %7 = load i64, i64* %pos
  %8 = add i64 %7, 1
  %9 = load %struct.std.str.str*, %struct.std.str.str** %src
  %10 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %9, i32 0, i32 1
  %11 = load i64, i64* %10
  %12 = icmp ult i64 %8, %11
  store i1 %12, i1* %6
  br i1 %12, label %label.1a, label %label.25

label.1a:			; and.true
  %13 = load %struct.std.str.str*, %struct.std.str.str** %src
  %14 = load i64, i64* %pos
  %15 = add i64 %14, 1
  %16 = call i8 @std.str.str.get(%struct.std.str.str* %13, i64 %15)
  %17 = getelementptr i8, i8* %_3.real, i32 0 ; %_3.real -> %17
  store i8 %16, i8* %17
  %18 = load i8, i8* %17
  %19 = icmp eq i8 %18, 62
  store i1 %19, i1* %6
  br label %label.25

label.25:			; and.false
  %20 = load i1, i1* %6
  br i1 %20, label %label.28, label %label.2c

label.28:			; cond.true
  ret i1 1

label.place_holder.2a:
  br label %label.2e

label.2c:			; cond.false
  br label %label.2e

label.2e:			; branch.end
  ret i1 0
}

define i1 @lexer.lexer.is_str(i8 %c.param) {
entry:
  %c = alloca i8
  %_0.real = alloca i1
  store i8 %c.param, i8* %c
  %0 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %0
  %1 = load i8, i8* %c
  %2 = icmp eq i8 %1, 34
  store i1 %2, i1* %0
  br i1 %2, label %label.b, label %label.6

label.6:			; or.false
  %3 = load i8, i8* %c
  %4 = icmp eq i8 %3, 39
  store i1 %4, i1* %0
  br label %label.b

label.b:			; or.true
  %5 = load i1, i1* %0
  ret i1 %5
}

define i64 @lexer.lexer.check_id_kind(%struct.std.str.str* %src.param) {
entry:
  %src = alloca %struct.std.str.str*
  %_3.real = alloca i1
  store %struct.std.str.str* %src.param, %struct.std.str.str** %src
  %0 = load %struct.std.str.str*, %struct.std.str.str** %src
  %1 = getelementptr [5 x i8], [5 x i8]* @const.str.117, i64 0, i64 0
  %2 = call i1 @std.str.str.eq_const(%struct.std.str.str* %0, i8* %1)
  %3 = getelementptr i1, i1* %_3.real, i32 0 ; %_3.real -> %3
  store i1 %2, i1* %3
  %4 = load i1, i1* %3
  br i1 %4, label %label.8, label %label.c

label.8:			; cond.true
  ret i64 5

label.place_holder.a:
  br label %label.116

label.c:			; cond.false
  %5 = load %struct.std.str.str*, %struct.std.str.str** %src
  %6 = getelementptr [6 x i8], [6 x i8]* @const.str.118, i64 0, i64 0
  %7 = call i1 @std.str.str.eq_const(%struct.std.str.str* %5, i8* %6)
  %8 = getelementptr i1, i1* %_3.real, i32 0 ; %_3.real -> %8
  store i1 %7, i1* %8
  %9 = load i1, i1* %8
  br i1 %9, label %label.14, label %label.18

label.14:			; cond.true
  ret i64 6

label.place_holder.16:
  br label %label.116

label.18:			; cond.false
  %10 = load %struct.std.str.str*, %struct.std.str.str** %src
  %11 = getelementptr [4 x i8], [4 x i8]* @const.str.119, i64 0, i64 0
  %12 = call i1 @std.str.str.eq_const(%struct.std.str.str* %10, i8* %11)
  %13 = getelementptr i1, i1* %_3.real, i32 0 ; %_3.real -> %13
  store i1 %12, i1* %13
  %14 = load i1, i1* %13
  br i1 %14, label %label.20, label %label.24

label.20:			; cond.true
  ret i64 7

label.place_holder.22:
  br label %label.116

label.24:			; cond.false
  %15 = load %struct.std.str.str*, %struct.std.str.str** %src
  %16 = getelementptr [5 x i8], [5 x i8]* @const.str.120, i64 0, i64 0
  %17 = call i1 @std.str.str.eq_const(%struct.std.str.str* %15, i8* %16)
  %18 = getelementptr i1, i1* %_3.real, i32 0 ; %_3.real -> %18
  store i1 %17, i1* %18
  %19 = load i1, i1* %18
  br i1 %19, label %label.2c, label %label.30

label.2c:			; cond.true
  ret i64 8

label.place_holder.2e:
  br label %label.116

label.30:			; cond.false
  %20 = load %struct.std.str.str*, %struct.std.str.str** %src
  %21 = getelementptr [4 x i8], [4 x i8]* @const.str.121, i64 0, i64 0
  %22 = call i1 @std.str.str.eq_const(%struct.std.str.str* %20, i8* %21)
  %23 = getelementptr i1, i1* %_3.real, i32 0 ; %_3.real -> %23
  store i1 %22, i1* %23
  %24 = load i1, i1* %23
  br i1 %24, label %label.38, label %label.3c

label.38:			; cond.true
  ret i64 9

label.place_holder.3a:
  br label %label.116

label.3c:			; cond.false
  %25 = load %struct.std.str.str*, %struct.std.str.str** %src
  %26 = getelementptr [9 x i8], [9 x i8]* @const.str.122, i64 0, i64 0
  %27 = call i1 @std.str.str.eq_const(%struct.std.str.str* %25, i8* %26)
  %28 = getelementptr i1, i1* %_3.real, i32 0 ; %_3.real -> %28
  store i1 %27, i1* %28
  %29 = load i1, i1* %28
  br i1 %29, label %label.44, label %label.48

label.44:			; cond.true
  ret i64 10

label.place_holder.46:
  br label %label.116

label.48:			; cond.false
  %30 = load %struct.std.str.str*, %struct.std.str.str** %src
  %31 = getelementptr [8 x i8], [8 x i8]* @const.str.123, i64 0, i64 0
  %32 = call i1 @std.str.str.eq_const(%struct.std.str.str* %30, i8* %31)
  %33 = getelementptr i1, i1* %_3.real, i32 0 ; %_3.real -> %33
  store i1 %32, i1* %33
  %34 = load i1, i1* %33
  br i1 %34, label %label.50, label %label.54

label.50:			; cond.true
  ret i64 11

label.place_holder.52:
  br label %label.116

label.54:			; cond.false
  %35 = load %struct.std.str.str*, %struct.std.str.str** %src
  %36 = getelementptr [6 x i8], [6 x i8]* @const.str.124, i64 0, i64 0
  %37 = call i1 @std.str.str.eq_const(%struct.std.str.str* %35, i8* %36)
  %38 = getelementptr i1, i1* %_3.real, i32 0 ; %_3.real -> %38
  store i1 %37, i1* %38
  %39 = load i1, i1* %38
  br i1 %39, label %label.5c, label %label.60

label.5c:			; cond.true
  ret i64 12

label.place_holder.5e:
  br label %label.116

label.60:			; cond.false
  %40 = load %struct.std.str.str*, %struct.std.str.str** %src
  %41 = getelementptr [4 x i8], [4 x i8]* @const.str.125, i64 0, i64 0
  %42 = call i1 @std.str.str.eq_const(%struct.std.str.str* %40, i8* %41)
  %43 = getelementptr i1, i1* %_3.real, i32 0 ; %_3.real -> %43
  store i1 %42, i1* %43
  %44 = load i1, i1* %43
  br i1 %44, label %label.68, label %label.6c

label.68:			; cond.true
  ret i64 13

label.place_holder.6a:
  br label %label.116

label.6c:			; cond.false
  %45 = load %struct.std.str.str*, %struct.std.str.str** %src
  %46 = getelementptr [7 x i8], [7 x i8]* @const.str.126, i64 0, i64 0
  %47 = call i1 @std.str.str.eq_const(%struct.std.str.str* %45, i8* %46)
  %48 = getelementptr i1, i1* %_3.real, i32 0 ; %_3.real -> %48
  store i1 %47, i1* %48
  %49 = load i1, i1* %48
  br i1 %49, label %label.74, label %label.78

label.74:			; cond.true
  ret i64 14

label.place_holder.76:
  br label %label.116

label.78:			; cond.false
  %50 = load %struct.std.str.str*, %struct.std.str.str** %src
  %51 = getelementptr [4 x i8], [4 x i8]* @const.str.127, i64 0, i64 0
  %52 = call i1 @std.str.str.eq_const(%struct.std.str.str* %50, i8* %51)
  %53 = getelementptr i1, i1* %_3.real, i32 0 ; %_3.real -> %53
  store i1 %52, i1* %53
  %54 = load i1, i1* %53
  br i1 %54, label %label.80, label %label.84

label.80:			; cond.true
  ret i64 15

label.place_holder.82:
  br label %label.116

label.84:			; cond.false
  %55 = load %struct.std.str.str*, %struct.std.str.str** %src
  %56 = getelementptr [5 x i8], [5 x i8]* @const.str.128, i64 0, i64 0
  %57 = call i1 @std.str.str.eq_const(%struct.std.str.str* %55, i8* %56)
  %58 = getelementptr i1, i1* %_3.real, i32 0 ; %_3.real -> %58
  store i1 %57, i1* %58
  %59 = load i1, i1* %58
  br i1 %59, label %label.8c, label %label.90

label.8c:			; cond.true
  ret i64 16

label.place_holder.8e:
  br label %label.116

label.90:			; cond.false
  %60 = load %struct.std.str.str*, %struct.std.str.str** %src
  %61 = getelementptr [5 x i8], [5 x i8]* @const.str.129, i64 0, i64 0
  %62 = call i1 @std.str.str.eq_const(%struct.std.str.str* %60, i8* %61)
  %63 = getelementptr i1, i1* %_3.real, i32 0 ; %_3.real -> %63
  store i1 %62, i1* %63
  %64 = load i1, i1* %63
  br i1 %64, label %label.98, label %label.9c

label.98:			; cond.true
  ret i64 17

label.place_holder.9a:
  br label %label.116

label.9c:			; cond.false
  %65 = load %struct.std.str.str*, %struct.std.str.str** %src
  %66 = getelementptr [6 x i8], [6 x i8]* @const.str.130, i64 0, i64 0
  %67 = call i1 @std.str.str.eq_const(%struct.std.str.str* %65, i8* %66)
  %68 = getelementptr i1, i1* %_3.real, i32 0 ; %_3.real -> %68
  store i1 %67, i1* %68
  %69 = load i1, i1* %68
  br i1 %69, label %label.a4, label %label.a8

label.a4:			; cond.true
  ret i64 18

label.place_holder.a6:
  br label %label.116

label.a8:			; cond.false
  %70 = load %struct.std.str.str*, %struct.std.str.str** %src
  %71 = getelementptr [6 x i8], [6 x i8]* @const.str.131, i64 0, i64 0
  %72 = call i1 @std.str.str.eq_const(%struct.std.str.str* %70, i8* %71)
  %73 = getelementptr i1, i1* %_3.real, i32 0 ; %_3.real -> %73
  store i1 %72, i1* %73
  %74 = load i1, i1* %73
  br i1 %74, label %label.b0, label %label.b4

label.b0:			; cond.true
  ret i64 19

label.place_holder.b2:
  br label %label.116

label.b4:			; cond.false
  %75 = load %struct.std.str.str*, %struct.std.str.str** %src
  %76 = getelementptr [9 x i8], [9 x i8]* @const.str.132, i64 0, i64 0
  %77 = call i1 @std.str.str.eq_const(%struct.std.str.str* %75, i8* %76)
  %78 = getelementptr i1, i1* %_3.real, i32 0 ; %_3.real -> %78
  store i1 %77, i1* %78
  %79 = load i1, i1* %78
  br i1 %79, label %label.bc, label %label.c0

label.bc:			; cond.true
  ret i64 20

label.place_holder.be:
  br label %label.116

label.c0:			; cond.false
  %80 = load %struct.std.str.str*, %struct.std.str.str** %src
  %81 = getelementptr [7 x i8], [7 x i8]* @const.str.133, i64 0, i64 0
  %82 = call i1 @std.str.str.eq_const(%struct.std.str.str* %80, i8* %81)
  %83 = getelementptr i1, i1* %_3.real, i32 0 ; %_3.real -> %83
  store i1 %82, i1* %83
  %84 = load i1, i1* %83
  br i1 %84, label %label.c8, label %label.cc

label.c8:			; cond.true
  ret i64 21

label.place_holder.ca:
  br label %label.116

label.cc:			; cond.false
  %85 = load %struct.std.str.str*, %struct.std.str.str** %src
  %86 = getelementptr [3 x i8], [3 x i8]* @const.str.134, i64 0, i64 0
  %87 = call i1 @std.str.str.eq_const(%struct.std.str.str* %85, i8* %86)
  %88 = getelementptr i1, i1* %_3.real, i32 0 ; %_3.real -> %88
  store i1 %87, i1* %88
  %89 = load i1, i1* %88
  br i1 %89, label %label.d4, label %label.d8

label.d4:			; cond.true
  ret i64 22

label.place_holder.d6:
  br label %label.116

label.d8:			; cond.false
  %90 = load %struct.std.str.str*, %struct.std.str.str** %src
  %91 = getelementptr [6 x i8], [6 x i8]* @const.str.135, i64 0, i64 0
  %92 = call i1 @std.str.str.eq_const(%struct.std.str.str* %90, i8* %91)
  %93 = getelementptr i1, i1* %_3.real, i32 0 ; %_3.real -> %93
  store i1 %92, i1* %93
  %94 = load i1, i1* %93
  br i1 %94, label %label.e0, label %label.e4

label.e0:			; cond.true
  ret i64 23

label.place_holder.e2:
  br label %label.116

label.e4:			; cond.false
  %95 = load %struct.std.str.str*, %struct.std.str.str** %src
  %96 = getelementptr [5 x i8], [5 x i8]* @const.str.136, i64 0, i64 0
  %97 = call i1 @std.str.str.eq_const(%struct.std.str.str* %95, i8* %96)
  %98 = getelementptr i1, i1* %_3.real, i32 0 ; %_3.real -> %98
  store i1 %97, i1* %98
  %99 = load i1, i1* %98
  br i1 %99, label %label.ec, label %label.f0

label.ec:			; cond.true
  ret i64 24

label.place_holder.ee:
  br label %label.116

label.f0:			; cond.false
  %100 = load %struct.std.str.str*, %struct.std.str.str** %src
  %101 = getelementptr [4 x i8], [4 x i8]* @const.str.137, i64 0, i64 0
  %102 = call i1 @std.str.str.eq_const(%struct.std.str.str* %100, i8* %101)
  %103 = getelementptr i1, i1* %_3.real, i32 0 ; %_3.real -> %103
  store i1 %102, i1* %103
  %104 = load i1, i1* %103
  br i1 %104, label %label.f8, label %label.fc

label.f8:			; cond.true
  ret i64 25

label.place_holder.fa:
  br label %label.116

label.fc:			; cond.false
  %105 = load %struct.std.str.str*, %struct.std.str.str** %src
  %106 = getelementptr [4 x i8], [4 x i8]* @const.str.138, i64 0, i64 0
  %107 = call i1 @std.str.str.eq_const(%struct.std.str.str* %105, i8* %106)
  %108 = getelementptr i1, i1* %_3.real, i32 0 ; %_3.real -> %108
  store i1 %107, i1* %108
  %109 = load i1, i1* %108
  br i1 %109, label %label.104, label %label.108

label.104:			; cond.true
  ret i64 33

label.place_holder.106:
  br label %label.116

label.108:			; cond.false
  %110 = load %struct.std.str.str*, %struct.std.str.str** %src
  %111 = getelementptr [3 x i8], [3 x i8]* @const.str.139, i64 0, i64 0
  %112 = call i1 @std.str.str.eq_const(%struct.std.str.str* %110, i8* %111)
  %113 = getelementptr i1, i1* %_3.real, i32 0 ; %_3.real -> %113
  store i1 %112, i1* %113
  %114 = load i1, i1* %113
  br i1 %114, label %label.110, label %label.114

label.110:			; cond.true
  ret i64 34

label.place_holder.112:
  br label %label.116

label.114:			; cond.false
  br label %label.116

label.116:			; branch.end
  ret i64 4
}

define void @lexer.lexer.generate_single_char_token(%struct.lexer.lexer* %self.param, %struct.std.str.str* %src.param) {
entry:
  %self = alloca %struct.lexer.lexer*
  %src = alloca %struct.std.str.str*
  %loc.1 = alloca %struct.err.span.span*
  %tmp.11 = alloca %struct.std.str.str*
  %ch.13 = alloca i8
  %_1.real = alloca %struct.err.span.span*
  %_20.real = alloca %struct.std.str.str*
  %_27.real = alloca i8
  store %struct.lexer.lexer* %self.param, %struct.lexer.lexer** %self
  store %struct.std.str.str* %src.param, %struct.std.str.str** %src
  %0 = call %struct.err.span.span* @err.span.span.new()
  %1 = getelementptr %struct.err.span.span*, %struct.err.span.span** %_1.real, i32 0 ; %_1.real -> %1
  store %struct.err.span.span* %0, %struct.err.span.span** %1
  %2 = load %struct.err.span.span*, %struct.err.span.span** %1
  store %struct.err.span.span* %2, %struct.err.span.span** %loc.1
  %3 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %4 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %3, i32 0, i32 4
  %5 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %6 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %6, i32 0, i32 0
  %8 = load i8*, i8** %7
  call void @std.str.str.copy_const(%struct.std.str.str* %4, i8* %8)
  %9 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %10 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %9, i32 0, i32 0
  %11 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %12 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %11, i32 0, i32 4
  %13 = load i64, i64* %12
  store i64 %13, i64* %10
  %14 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %15 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %14, i32 0, i32 1
  %16 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %17 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %16, i32 0, i32 5
  %18 = load i64, i64* %17
  store i64 %18, i64* %15
  %19 = call %struct.std.str.str* @std.str.str.new()
  %20 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %20
  store %struct.std.str.str* %19, %struct.std.str.str** %20
  %21 = load %struct.std.str.str*, %struct.std.str.str** %20
  store %struct.std.str.str* %21, %struct.std.str.str** %tmp.11
  %22 = load %struct.std.str.str*, %struct.std.str.str** %src
  %23 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %24 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %23, i32 0, i32 2
  %25 = load i64, i64* %24
  %26 = call i8 @std.str.str.get(%struct.std.str.str* %22, i64 %25)
  %27 = getelementptr i8, i8* %_27.real, i32 0 ; %_27.real -> %27
  store i8 %26, i8* %27
  %28 = load i8, i8* %27
  store i8 %28, i8* %ch.13
  %29 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %30 = load i8, i8* %ch.13
  %31 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %29, i8 %30)
  %32 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %32
  store %struct.std.str.str* %31, %struct.std.str.str** %32
  %33 = load %struct.std.str.str*, %struct.std.str.str** %32
  %34 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %35 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %34, i32 0, i32 2
  %36 = load i64, i64* %35
  %37 = add i64 %36, 1
  store i64 %37, i64* %35
  %38 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %39 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %38, i32 0, i32 5
  %40 = load i64, i64* %39
  %41 = add i64 %40, 1
  store i64 %41, i64* %39
  %42 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %43 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %42, i32 0, i32 2
  %44 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %45 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %44, i32 0, i32 4
  %46 = load i64, i64* %45
  store i64 %46, i64* %43
  %47 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %48 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %47, i32 0, i32 3
  %49 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %50 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %49, i32 0, i32 5
  %51 = load i64, i64* %50
  store i64 %51, i64* %48
  %52 = load i8, i8* %ch.13
  %53 = icmp eq i8 %52, 40
  br i1 %53, label %label.47, label %label.4f

label.47:			; cond.true
  %54 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %55 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %54, i32 0, i32 1
  %56 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %55
  %57 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %58 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %56, i64 26, %struct.std.str.str* %57, %struct.err.span.span* %58)
  br label %label.b1

label.4f:			; cond.false
  %59 = load i8, i8* %ch.13
  %60 = icmp eq i8 %59, 41
  br i1 %60, label %label.53, label %label.5b

label.53:			; cond.true
  %61 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %62 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %61, i32 0, i32 1
  %63 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %62
  %64 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %65 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %63, i64 27, %struct.std.str.str* %64, %struct.err.span.span* %65)
  br label %label.b1

label.5b:			; cond.false
  %66 = load i8, i8* %ch.13
  %67 = icmp eq i8 %66, 91
  br i1 %67, label %label.5f, label %label.67

label.5f:			; cond.true
  %68 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %69 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %68, i32 0, i32 1
  %70 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %69
  %71 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %72 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %70, i64 28, %struct.std.str.str* %71, %struct.err.span.span* %72)
  br label %label.b1

label.67:			; cond.false
  %73 = load i8, i8* %ch.13
  %74 = icmp eq i8 %73, 93
  br i1 %74, label %label.6b, label %label.73

label.6b:			; cond.true
  %75 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %76 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %75, i32 0, i32 1
  %77 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %76
  %78 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %79 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %77, i64 29, %struct.std.str.str* %78, %struct.err.span.span* %79)
  br label %label.b1

label.73:			; cond.false
  %80 = load i8, i8* %ch.13
  %81 = icmp eq i8 %80, 123
  br i1 %81, label %label.77, label %label.7f

label.77:			; cond.true
  %82 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %83 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %82, i32 0, i32 1
  %84 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %83
  %85 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %86 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %84, i64 30, %struct.std.str.str* %85, %struct.err.span.span* %86)
  br label %label.b1

label.7f:			; cond.false
  %87 = load i8, i8* %ch.13
  %88 = icmp eq i8 %87, 125
  br i1 %88, label %label.83, label %label.8b

label.83:			; cond.true
  %89 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %90 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %89, i32 0, i32 1
  %91 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %90
  %92 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %93 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %91, i64 31, %struct.std.str.str* %92, %struct.err.span.span* %93)
  br label %label.b1

label.8b:			; cond.false
  %94 = load i8, i8* %ch.13
  %95 = icmp eq i8 %94, 59
  br i1 %95, label %label.8f, label %label.97

label.8f:			; cond.true
  %96 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %97 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %96, i32 0, i32 1
  %98 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %97
  %99 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %100 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %98, i64 32, %struct.std.str.str* %99, %struct.err.span.span* %100)
  br label %label.b1

label.97:			; cond.false
  %101 = load i8, i8* %ch.13
  %102 = icmp eq i8 %101, 44
  br i1 %102, label %label.9b, label %label.a3

label.9b:			; cond.true
  %103 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %104 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %103, i32 0, i32 1
  %105 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %104
  %106 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %107 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %105, i64 35, %struct.std.str.str* %106, %struct.err.span.span* %107)
  br label %label.b1

label.a3:			; cond.false
  %108 = load i8, i8* %ch.13
  %109 = icmp eq i8 %108, 63
  br i1 %109, label %label.a7, label %label.af

label.a7:			; cond.true
  %110 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %111 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %110, i32 0, i32 1
  %112 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %111
  %113 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %114 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %112, i64 38, %struct.std.str.str* %113, %struct.err.span.span* %114)
  br label %label.b1

label.af:			; cond.false
  br label %label.b1

label.b1:			; branch.end
  ret void 
}

define void @lexer.lexer.generate_maybe_need_eq_oprs(%struct.lexer.lexer* %self.param, %struct.std.str.str* %src.param) {
entry:
  %self = alloca %struct.lexer.lexer*
  %src = alloca %struct.std.str.str*
  %loc.1 = alloca %struct.err.span.span*
  %tmp.11 = alloca %struct.std.str.str*
  %_1.real = alloca %struct.err.span.span*
  %_20.real = alloca %struct.std.str.str*
  %_28.real = alloca i8
  %_37.real = alloca i1
  store %struct.lexer.lexer* %self.param, %struct.lexer.lexer** %self
  store %struct.std.str.str* %src.param, %struct.std.str.str** %src
  %0 = call %struct.err.span.span* @err.span.span.new()
  %1 = getelementptr %struct.err.span.span*, %struct.err.span.span** %_1.real, i32 0 ; %_1.real -> %1
  store %struct.err.span.span* %0, %struct.err.span.span** %1
  %2 = load %struct.err.span.span*, %struct.err.span.span** %1
  store %struct.err.span.span* %2, %struct.err.span.span** %loc.1
  %3 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %4 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %3, i32 0, i32 4
  %5 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %6 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %6, i32 0, i32 0
  %8 = load i8*, i8** %7
  call void @std.str.str.copy_const(%struct.std.str.str* %4, i8* %8)
  %9 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %10 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %9, i32 0, i32 0
  %11 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %12 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %11, i32 0, i32 4
  %13 = load i64, i64* %12
  store i64 %13, i64* %10
  %14 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %15 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %14, i32 0, i32 1
  %16 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %17 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %16, i32 0, i32 5
  %18 = load i64, i64* %17
  store i64 %18, i64* %15
  %19 = call %struct.std.str.str* @std.str.str.new()
  %20 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %20
  store %struct.std.str.str* %19, %struct.std.str.str** %20
  %21 = load %struct.std.str.str*, %struct.std.str.str** %20
  store %struct.std.str.str* %21, %struct.std.str.str** %tmp.11
  %22 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %23 = load %struct.std.str.str*, %struct.std.str.str** %src
  %24 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %25 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %24, i32 0, i32 2
  %26 = load i64, i64* %25
  %27 = call i8 @std.str.str.get(%struct.std.str.str* %23, i64 %26)
  %28 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %28
  store i8 %27, i8* %28
  %29 = load i8, i8* %28
  %30 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %22, i8 %29)
  %31 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %31
  store %struct.std.str.str* %30, %struct.std.str.str** %31
  %32 = load %struct.std.str.str*, %struct.std.str.str** %31
  %33 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %34 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %33, i32 0, i32 2
  %35 = load i64, i64* %34
  %36 = add i64 %35, 1
  store i64 %36, i64* %34
  %37 = getelementptr i1, i1* %_37.real, i32 0 ; %_37.real -> %37
  %38 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %39 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %38, i32 0, i32 2
  %40 = load i64, i64* %39
  %41 = load %struct.std.str.str*, %struct.std.str.str** %src
  %42 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %41, i32 0, i32 1
  %43 = load i64, i64* %42
  %44 = icmp ult i64 %40, %43
  store i1 %44, i1* %37
  br i1 %44, label %label.3b, label %label.47

label.3b:			; and.true
  %45 = load %struct.std.str.str*, %struct.std.str.str** %src
  %46 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %47 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %46, i32 0, i32 2
  %48 = load i64, i64* %47
  %49 = call i8 @std.str.str.get(%struct.std.str.str* %45, i64 %48)
  %50 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %50
  store i8 %49, i8* %50
  %51 = load i8, i8* %50
  %52 = icmp eq i8 %51, 61
  store i1 %52, i1* %37
  br label %label.47

label.47:			; and.false
  %53 = load i1, i1* %37
  br i1 %53, label %label.4a, label %label.5e

label.4a:			; cond.true
  %54 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %55 = load %struct.std.str.str*, %struct.std.str.str** %src
  %56 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %57 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %56, i32 0, i32 2
  %58 = load i64, i64* %57
  %59 = call i8 @std.str.str.get(%struct.std.str.str* %55, i64 %58)
  %60 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %60
  store i8 %59, i8* %60
  %61 = load i8, i8* %60
  %62 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %54, i8 %61)
  %63 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %63
  store %struct.std.str.str* %62, %struct.std.str.str** %63
  %64 = load %struct.std.str.str*, %struct.std.str.str** %63
  %65 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %66 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %65, i32 0, i32 2
  %67 = load i64, i64* %66
  %68 = add i64 %67, 1
  store i64 %68, i64* %66
  br label %label.60

label.5e:			; cond.false
  br label %label.60

label.60:			; branch.end
  %69 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %70 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %69, i32 0, i32 5
  %71 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %72 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %71, i32 0, i32 1
  %73 = load i64, i64* %72
  %74 = add i64 %73, 0 ; i64 -> i64
  %75 = load i64, i64* %70
  %76 = add i64 %75, %74
  store i64 %76, i64* %70
  %77 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %78 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %77, i32 0, i32 2
  %79 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %80 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %79, i32 0, i32 4
  %81 = load i64, i64* %80
  store i64 %81, i64* %78
  %82 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %83 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %82, i32 0, i32 3
  %84 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %85 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %84, i32 0, i32 5
  %86 = load i64, i64* %85
  store i64 %86, i64* %83
  %87 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %88 = getelementptr [2 x i8], [2 x i8]* @const.str.140, i64 0, i64 0
  %89 = call i1 @std.str.str.eq_const(%struct.std.str.str* %87, i8* %88)
  %90 = getelementptr i1, i1* %_37.real, i32 0 ; %_37.real -> %90
  store i1 %89, i1* %90
  %91 = load i1, i1* %90
  br i1 %91, label %label.7d, label %label.85

label.7d:			; cond.true
  %92 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %93 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %92, i32 0, i32 1
  %94 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %93
  %95 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %96 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %94, i64 41, %struct.std.str.str* %95, %struct.err.span.span* %96)
  br label %label.1d7

label.85:			; cond.false
  %97 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %98 = getelementptr [3 x i8], [3 x i8]* @const.str.141, i64 0, i64 0
  %99 = call i1 @std.str.str.eq_const(%struct.std.str.str* %97, i8* %98)
  %100 = getelementptr i1, i1* %_37.real, i32 0 ; %_37.real -> %100
  store i1 %99, i1* %100
  %101 = load i1, i1* %100
  br i1 %101, label %label.8d, label %label.95

label.8d:			; cond.true
  %102 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %103 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %102, i32 0, i32 1
  %104 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %103
  %105 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %106 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %104, i64 52, %struct.std.str.str* %105, %struct.err.span.span* %106)
  br label %label.1d7

label.95:			; cond.false
  %107 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %108 = getelementptr [2 x i8], [2 x i8]* @const.str.142, i64 0, i64 0
  %109 = call i1 @std.str.str.eq_const(%struct.std.str.str* %107, i8* %108)
  %110 = getelementptr i1, i1* %_37.real, i32 0 ; %_37.real -> %110
  store i1 %109, i1* %110
  %111 = load i1, i1* %110
  br i1 %111, label %label.9d, label %label.a5

label.9d:			; cond.true
  %112 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %113 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %112, i32 0, i32 1
  %114 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %113
  %115 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %116 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %114, i64 42, %struct.std.str.str* %115, %struct.err.span.span* %116)
  br label %label.1d7

label.a5:			; cond.false
  %117 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %118 = getelementptr [3 x i8], [3 x i8]* @const.str.143, i64 0, i64 0
  %119 = call i1 @std.str.str.eq_const(%struct.std.str.str* %117, i8* %118)
  %120 = getelementptr i1, i1* %_37.real, i32 0 ; %_37.real -> %120
  store i1 %119, i1* %120
  %121 = load i1, i1* %120
  br i1 %121, label %label.ad, label %label.b5

label.ad:			; cond.true
  %122 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %123 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %122, i32 0, i32 1
  %124 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %123
  %125 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %126 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %124, i64 53, %struct.std.str.str* %125, %struct.err.span.span* %126)
  br label %label.1d7

label.b5:			; cond.false
  %127 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %128 = getelementptr [2 x i8], [2 x i8]* @const.str.144, i64 0, i64 0
  %129 = call i1 @std.str.str.eq_const(%struct.std.str.str* %127, i8* %128)
  %130 = getelementptr i1, i1* %_37.real, i32 0 ; %_37.real -> %130
  store i1 %129, i1* %130
  %131 = load i1, i1* %130
  br i1 %131, label %label.bd, label %label.c5

label.bd:			; cond.true
  %132 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %133 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %132, i32 0, i32 1
  %134 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %133
  %135 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %136 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %134, i64 43, %struct.std.str.str* %135, %struct.err.span.span* %136)
  br label %label.1d7

label.c5:			; cond.false
  %137 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %138 = getelementptr [3 x i8], [3 x i8]* @const.str.145, i64 0, i64 0
  %139 = call i1 @std.str.str.eq_const(%struct.std.str.str* %137, i8* %138)
  %140 = getelementptr i1, i1* %_37.real, i32 0 ; %_37.real -> %140
  store i1 %139, i1* %140
  %141 = load i1, i1* %140
  br i1 %141, label %label.cd, label %label.d5

label.cd:			; cond.true
  %142 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %143 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %142, i32 0, i32 1
  %144 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %143
  %145 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %146 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %144, i64 54, %struct.std.str.str* %145, %struct.err.span.span* %146)
  br label %label.1d7

label.d5:			; cond.false
  %147 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %148 = getelementptr [2 x i8], [2 x i8]* @const.str.146, i64 0, i64 0
  %149 = call i1 @std.str.str.eq_const(%struct.std.str.str* %147, i8* %148)
  %150 = getelementptr i1, i1* %_37.real, i32 0 ; %_37.real -> %150
  store i1 %149, i1* %150
  %151 = load i1, i1* %150
  br i1 %151, label %label.dd, label %label.e5

label.dd:			; cond.true
  %152 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %153 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %152, i32 0, i32 1
  %154 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %153
  %155 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %156 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %154, i64 44, %struct.std.str.str* %155, %struct.err.span.span* %156)
  br label %label.1d7

label.e5:			; cond.false
  %157 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %158 = getelementptr [3 x i8], [3 x i8]* @const.str.147, i64 0, i64 0
  %159 = call i1 @std.str.str.eq_const(%struct.std.str.str* %157, i8* %158)
  %160 = getelementptr i1, i1* %_37.real, i32 0 ; %_37.real -> %160
  store i1 %159, i1* %160
  %161 = load i1, i1* %160
  br i1 %161, label %label.ed, label %label.f5

label.ed:			; cond.true
  %162 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %163 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %162, i32 0, i32 1
  %164 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %163
  %165 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %166 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %164, i64 55, %struct.std.str.str* %165, %struct.err.span.span* %166)
  br label %label.1d7

label.f5:			; cond.false
  %167 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %168 = getelementptr [2 x i8], [2 x i8]* @const.str.148, i64 0, i64 0
  %169 = call i1 @std.str.str.eq_const(%struct.std.str.str* %167, i8* %168)
  %170 = getelementptr i1, i1* %_37.real, i32 0 ; %_37.real -> %170
  store i1 %169, i1* %170
  %171 = load i1, i1* %170
  br i1 %171, label %label.fd, label %label.105

label.fd:			; cond.true
  %172 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %173 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %172, i32 0, i32 1
  %174 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %173
  %175 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %176 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %174, i64 45, %struct.std.str.str* %175, %struct.err.span.span* %176)
  br label %label.1d7

label.105:			; cond.false
  %177 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %178 = getelementptr [3 x i8], [3 x i8]* @const.str.149, i64 0, i64 0
  %179 = call i1 @std.str.str.eq_const(%struct.std.str.str* %177, i8* %178)
  %180 = getelementptr i1, i1* %_37.real, i32 0 ; %_37.real -> %180
  store i1 %179, i1* %180
  %181 = load i1, i1* %180
  br i1 %181, label %label.10d, label %label.115

label.10d:			; cond.true
  %182 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %183 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %182, i32 0, i32 1
  %184 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %183
  %185 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %186 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %184, i64 56, %struct.std.str.str* %185, %struct.err.span.span* %186)
  br label %label.1d7

label.115:			; cond.false
  %187 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %188 = getelementptr [2 x i8], [2 x i8]* @const.str.150, i64 0, i64 0
  %189 = call i1 @std.str.str.eq_const(%struct.std.str.str* %187, i8* %188)
  %190 = getelementptr i1, i1* %_37.real, i32 0 ; %_37.real -> %190
  store i1 %189, i1* %190
  %191 = load i1, i1* %190
  br i1 %191, label %label.11d, label %label.125

label.11d:			; cond.true
  %192 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %193 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %192, i32 0, i32 1
  %194 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %193
  %195 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %196 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %194, i64 46, %struct.std.str.str* %195, %struct.err.span.span* %196)
  br label %label.1d7

label.125:			; cond.false
  %197 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %198 = getelementptr [3 x i8], [3 x i8]* @const.str.151, i64 0, i64 0
  %199 = call i1 @std.str.str.eq_const(%struct.std.str.str* %197, i8* %198)
  %200 = getelementptr i1, i1* %_37.real, i32 0 ; %_37.real -> %200
  store i1 %199, i1* %200
  %201 = load i1, i1* %200
  br i1 %201, label %label.12d, label %label.135

label.12d:			; cond.true
  %202 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %203 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %202, i32 0, i32 1
  %204 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %203
  %205 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %206 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %204, i64 57, %struct.std.str.str* %205, %struct.err.span.span* %206)
  br label %label.1d7

label.135:			; cond.false
  %207 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %208 = getelementptr [2 x i8], [2 x i8]* @const.str.152, i64 0, i64 0
  %209 = call i1 @std.str.str.eq_const(%struct.std.str.str* %207, i8* %208)
  %210 = getelementptr i1, i1* %_37.real, i32 0 ; %_37.real -> %210
  store i1 %209, i1* %210
  %211 = load i1, i1* %210
  br i1 %211, label %label.13d, label %label.145

label.13d:			; cond.true
  %212 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %213 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %212, i32 0, i32 1
  %214 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %213
  %215 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %216 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %214, i64 49, %struct.std.str.str* %215, %struct.err.span.span* %216)
  br label %label.1d7

label.145:			; cond.false
  %217 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %218 = getelementptr [3 x i8], [3 x i8]* @const.str.153, i64 0, i64 0
  %219 = call i1 @std.str.str.eq_const(%struct.std.str.str* %217, i8* %218)
  %220 = getelementptr i1, i1* %_37.real, i32 0 ; %_37.real -> %220
  store i1 %219, i1* %220
  %221 = load i1, i1* %220
  br i1 %221, label %label.14d, label %label.155

label.14d:			; cond.true
  %222 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %223 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %222, i32 0, i32 1
  %224 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %223
  %225 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %226 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %224, i64 60, %struct.std.str.str* %225, %struct.err.span.span* %226)
  br label %label.1d7

label.155:			; cond.false
  %227 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %228 = getelementptr [2 x i8], [2 x i8]* @const.str.154, i64 0, i64 0
  %229 = call i1 @std.str.str.eq_const(%struct.std.str.str* %227, i8* %228)
  %230 = getelementptr i1, i1* %_37.real, i32 0 ; %_37.real -> %230
  store i1 %229, i1* %230
  %231 = load i1, i1* %230
  br i1 %231, label %label.15d, label %label.165

label.15d:			; cond.true
  %232 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %233 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %232, i32 0, i32 1
  %234 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %233
  %235 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %236 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %234, i64 51, %struct.std.str.str* %235, %struct.err.span.span* %236)
  br label %label.1d7

label.165:			; cond.false
  %237 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %238 = getelementptr [3 x i8], [3 x i8]* @const.str.155, i64 0, i64 0
  %239 = call i1 @std.str.str.eq_const(%struct.std.str.str* %237, i8* %238)
  %240 = getelementptr i1, i1* %_37.real, i32 0 ; %_37.real -> %240
  store i1 %239, i1* %240
  %241 = load i1, i1* %240
  br i1 %241, label %label.16d, label %label.175

label.16d:			; cond.true
  %242 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %243 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %242, i32 0, i32 1
  %244 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %243
  %245 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %246 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %244, i64 61, %struct.std.str.str* %245, %struct.err.span.span* %246)
  br label %label.1d7

label.175:			; cond.false
  %247 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %248 = getelementptr [2 x i8], [2 x i8]* @const.str.156, i64 0, i64 0
  %249 = call i1 @std.str.str.eq_const(%struct.std.str.str* %247, i8* %248)
  %250 = getelementptr i1, i1* %_37.real, i32 0 ; %_37.real -> %250
  store i1 %249, i1* %250
  %251 = load i1, i1* %250
  br i1 %251, label %label.17d, label %label.185

label.17d:			; cond.true
  %252 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %253 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %252, i32 0, i32 1
  %254 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %253
  %255 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %256 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %254, i64 63, %struct.std.str.str* %255, %struct.err.span.span* %256)
  br label %label.1d7

label.185:			; cond.false
  %257 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %258 = getelementptr [3 x i8], [3 x i8]* @const.str.157, i64 0, i64 0
  %259 = call i1 @std.str.str.eq_const(%struct.std.str.str* %257, i8* %258)
  %260 = getelementptr i1, i1* %_37.real, i32 0 ; %_37.real -> %260
  store i1 %259, i1* %260
  %261 = load i1, i1* %260
  br i1 %261, label %label.18d, label %label.195

label.18d:			; cond.true
  %262 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %263 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %262, i32 0, i32 1
  %264 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %263
  %265 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %266 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %264, i64 64, %struct.std.str.str* %265, %struct.err.span.span* %266)
  br label %label.1d7

label.195:			; cond.false
  %267 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %268 = getelementptr [2 x i8], [2 x i8]* @const.str.158, i64 0, i64 0
  %269 = call i1 @std.str.str.eq_const(%struct.std.str.str* %267, i8* %268)
  %270 = getelementptr i1, i1* %_37.real, i32 0 ; %_37.real -> %270
  store i1 %269, i1* %270
  %271 = load i1, i1* %270
  br i1 %271, label %label.19d, label %label.1a5

label.19d:			; cond.true
  %272 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %273 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %272, i32 0, i32 1
  %274 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %273
  %275 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %276 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %274, i64 65, %struct.std.str.str* %275, %struct.err.span.span* %276)
  br label %label.1d7

label.1a5:			; cond.false
  %277 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %278 = getelementptr [3 x i8], [3 x i8]* @const.str.159, i64 0, i64 0
  %279 = call i1 @std.str.str.eq_const(%struct.std.str.str* %277, i8* %278)
  %280 = getelementptr i1, i1* %_37.real, i32 0 ; %_37.real -> %280
  store i1 %279, i1* %280
  %281 = load i1, i1* %280
  br i1 %281, label %label.1ad, label %label.1b5

label.1ad:			; cond.true
  %282 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %283 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %282, i32 0, i32 1
  %284 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %283
  %285 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %286 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %284, i64 66, %struct.std.str.str* %285, %struct.err.span.span* %286)
  br label %label.1d7

label.1b5:			; cond.false
  %287 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %288 = getelementptr [2 x i8], [2 x i8]* @const.str.160, i64 0, i64 0
  %289 = call i1 @std.str.str.eq_const(%struct.std.str.str* %287, i8* %288)
  %290 = getelementptr i1, i1* %_37.real, i32 0 ; %_37.real -> %290
  store i1 %289, i1* %290
  %291 = load i1, i1* %290
  br i1 %291, label %label.1bd, label %label.1c5

label.1bd:			; cond.true
  %292 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %293 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %292, i32 0, i32 1
  %294 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %293
  %295 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %296 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %294, i64 50, %struct.std.str.str* %295, %struct.err.span.span* %296)
  br label %label.1d7

label.1c5:			; cond.false
  %297 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %298 = getelementptr [3 x i8], [3 x i8]* @const.str.161, i64 0, i64 0
  %299 = call i1 @std.str.str.eq_const(%struct.std.str.str* %297, i8* %298)
  %300 = getelementptr i1, i1* %_37.real, i32 0 ; %_37.real -> %300
  store i1 %299, i1* %300
  %301 = load i1, i1* %300
  br i1 %301, label %label.1cd, label %label.1d5

label.1cd:			; cond.true
  %302 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %303 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %302, i32 0, i32 1
  %304 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %303
  %305 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %306 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %304, i64 62, %struct.std.str.str* %305, %struct.err.span.span* %306)
  br label %label.1d7

label.1d5:			; cond.false
  br label %label.1d7

label.1d7:			; branch.end
  ret void 
}

define void @lexer.lexer.generate_lookahead_other(%struct.lexer.lexer* %self.param, %struct.std.str.str* %src.param) {
entry:
  %self = alloca %struct.lexer.lexer*
  %src = alloca %struct.std.str.str*
  %loc.1 = alloca %struct.err.span.span*
  %tmp.11 = alloca %struct.std.str.str*
  %ch.13 = alloca i8
  %_1.real = alloca %struct.err.span.span*
  %_20.real = alloca %struct.std.str.str*
  %_27.real = alloca i8
  %_38.real = alloca i1
  store %struct.lexer.lexer* %self.param, %struct.lexer.lexer** %self
  store %struct.std.str.str* %src.param, %struct.std.str.str** %src
  %0 = call %struct.err.span.span* @err.span.span.new()
  %1 = getelementptr %struct.err.span.span*, %struct.err.span.span** %_1.real, i32 0 ; %_1.real -> %1
  store %struct.err.span.span* %0, %struct.err.span.span** %1
  %2 = load %struct.err.span.span*, %struct.err.span.span** %1
  store %struct.err.span.span* %2, %struct.err.span.span** %loc.1
  %3 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %4 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %3, i32 0, i32 4
  %5 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %6 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %6, i32 0, i32 0
  %8 = load i8*, i8** %7
  call void @std.str.str.copy_const(%struct.std.str.str* %4, i8* %8)
  %9 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %10 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %9, i32 0, i32 0
  %11 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %12 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %11, i32 0, i32 4
  %13 = load i64, i64* %12
  store i64 %13, i64* %10
  %14 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %15 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %14, i32 0, i32 1
  %16 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %17 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %16, i32 0, i32 5
  %18 = load i64, i64* %17
  store i64 %18, i64* %15
  %19 = call %struct.std.str.str* @std.str.str.new()
  %20 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %20
  store %struct.std.str.str* %19, %struct.std.str.str** %20
  %21 = load %struct.std.str.str*, %struct.std.str.str** %20
  store %struct.std.str.str* %21, %struct.std.str.str** %tmp.11
  %22 = load %struct.std.str.str*, %struct.std.str.str** %src
  %23 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %24 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %23, i32 0, i32 2
  %25 = load i64, i64* %24
  %26 = call i8 @std.str.str.get(%struct.std.str.str* %22, i64 %25)
  %27 = getelementptr i8, i8* %_27.real, i32 0 ; %_27.real -> %27
  store i8 %26, i8* %27
  %28 = load i8, i8* %27
  store i8 %28, i8* %ch.13
  %29 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %30 = load i8, i8* %ch.13
  %31 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %29, i8 %30)
  %32 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %32
  store %struct.std.str.str* %31, %struct.std.str.str** %32
  %33 = load %struct.std.str.str*, %struct.std.str.str** %32
  %34 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %35 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %34, i32 0, i32 2
  %36 = load i64, i64* %35
  %37 = add i64 %36, 1
  store i64 %37, i64* %35
  %38 = getelementptr i1, i1* %_38.real, i32 0 ; %_38.real -> %38
  %39 = load i8, i8* %ch.13
  %40 = icmp eq i8 %39, 38
  store i1 %40, i1* %38
  br i1 %40, label %label.38, label %label.42

label.38:			; and.true
  %41 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %42 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %41, i32 0, i32 2
  %43 = load i64, i64* %42
  %44 = load %struct.std.str.str*, %struct.std.str.str** %src
  %45 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %44, i32 0, i32 1
  %46 = load i64, i64* %45
  %47 = icmp ult i64 %43, %46
  store i1 %47, i1* %38
  br label %label.42

label.42:			; and.false
  %48 = load i1, i1* %38
  br i1 %48, label %label.45, label %label.79

label.45:			; cond.true
  %49 = getelementptr i1, i1* %_38.real, i32 0 ; %_38.real -> %49
  %50 = load %struct.std.str.str*, %struct.std.str.str** %src
  %51 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %52 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %51, i32 0, i32 2
  %53 = load i64, i64* %52
  %54 = call i8 @std.str.str.get(%struct.std.str.str* %50, i64 %53)
  %55 = getelementptr i8, i8* %_27.real, i32 0 ; %_27.real -> %55
  store i8 %54, i8* %55
  %56 = load i8, i8* %55
  %57 = icmp eq i8 %56, 38
  store i1 %57, i1* %49
  br i1 %57, label %label.5e, label %label.52

label.52:			; or.false
  %58 = load %struct.std.str.str*, %struct.std.str.str** %src
  %59 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %60 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %59, i32 0, i32 2
  %61 = load i64, i64* %60
  %62 = call i8 @std.str.str.get(%struct.std.str.str* %58, i64 %61)
  %63 = getelementptr i8, i8* %_27.real, i32 0 ; %_27.real -> %63
  store i8 %62, i8* %63
  %64 = load i8, i8* %63
  %65 = icmp eq i8 %64, 61
  store i1 %65, i1* %49
  br label %label.5e

label.5e:			; or.true
  %66 = load i1, i1* %49
  br i1 %66, label %label.61, label %label.75

label.61:			; cond.true
  %67 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %68 = load %struct.std.str.str*, %struct.std.str.str** %src
  %69 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %70 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %69, i32 0, i32 2
  %71 = load i64, i64* %70
  %72 = call i8 @std.str.str.get(%struct.std.str.str* %68, i64 %71)
  %73 = getelementptr i8, i8* %_27.real, i32 0 ; %_27.real -> %73
  store i8 %72, i8* %73
  %74 = load i8, i8* %73
  %75 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %67, i8 %74)
  %76 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %76
  store %struct.std.str.str* %75, %struct.std.str.str** %76
  %77 = load %struct.std.str.str*, %struct.std.str.str** %76
  %78 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %79 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %78, i32 0, i32 2
  %80 = load i64, i64* %79
  %81 = add i64 %80, 1
  store i64 %81, i64* %79
  br label %label.77

label.75:			; cond.false
  br label %label.77

label.77:			; branch.end
  br label %label.c2

label.79:			; cond.false
  %82 = getelementptr i1, i1* %_38.real, i32 0 ; %_38.real -> %82
  %83 = load i8, i8* %ch.13
  %84 = icmp eq i8 %83, 124
  store i1 %84, i1* %82
  br i1 %84, label %label.7f, label %label.89

label.7f:			; and.true
  %85 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %86 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %85, i32 0, i32 2
  %87 = load i64, i64* %86
  %88 = load %struct.std.str.str*, %struct.std.str.str** %src
  %89 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %88, i32 0, i32 1
  %90 = load i64, i64* %89
  %91 = icmp ult i64 %87, %90
  store i1 %91, i1* %82
  br label %label.89

label.89:			; and.false
  %92 = load i1, i1* %82
  br i1 %92, label %label.8c, label %label.c0

label.8c:			; cond.true
  %93 = getelementptr i1, i1* %_38.real, i32 0 ; %_38.real -> %93
  %94 = load %struct.std.str.str*, %struct.std.str.str** %src
  %95 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %96 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %95, i32 0, i32 2
  %97 = load i64, i64* %96
  %98 = call i8 @std.str.str.get(%struct.std.str.str* %94, i64 %97)
  %99 = getelementptr i8, i8* %_27.real, i32 0 ; %_27.real -> %99
  store i8 %98, i8* %99
  %100 = load i8, i8* %99
  %101 = icmp eq i8 %100, 124
  store i1 %101, i1* %93
  br i1 %101, label %label.a5, label %label.99

label.99:			; or.false
  %102 = load %struct.std.str.str*, %struct.std.str.str** %src
  %103 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %104 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %103, i32 0, i32 2
  %105 = load i64, i64* %104
  %106 = call i8 @std.str.str.get(%struct.std.str.str* %102, i64 %105)
  %107 = getelementptr i8, i8* %_27.real, i32 0 ; %_27.real -> %107
  store i8 %106, i8* %107
  %108 = load i8, i8* %107
  %109 = icmp eq i8 %108, 61
  store i1 %109, i1* %93
  br label %label.a5

label.a5:			; or.true
  %110 = load i1, i1* %93
  br i1 %110, label %label.a8, label %label.bc

label.a8:			; cond.true
  %111 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %112 = load %struct.std.str.str*, %struct.std.str.str** %src
  %113 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %114 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %113, i32 0, i32 2
  %115 = load i64, i64* %114
  %116 = call i8 @std.str.str.get(%struct.std.str.str* %112, i64 %115)
  %117 = getelementptr i8, i8* %_27.real, i32 0 ; %_27.real -> %117
  store i8 %116, i8* %117
  %118 = load i8, i8* %117
  %119 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %111, i8 %118)
  %120 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %120
  store %struct.std.str.str* %119, %struct.std.str.str** %120
  %121 = load %struct.std.str.str*, %struct.std.str.str** %120
  %122 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %123 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %122, i32 0, i32 2
  %124 = load i64, i64* %123
  %125 = add i64 %124, 1
  store i64 %125, i64* %123
  br label %label.be

label.bc:			; cond.false
  br label %label.be

label.be:			; branch.end
  br label %label.c2

label.c0:			; cond.false
  br label %label.c2

label.c2:			; branch.end
  %126 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %127 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %126, i32 0, i32 5
  %128 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %129 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %128, i32 0, i32 1
  %130 = load i64, i64* %129
  %131 = add i64 %130, 0 ; i64 -> i64
  %132 = load i64, i64* %127
  %133 = add i64 %132, %131
  store i64 %133, i64* %127
  %134 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %135 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %134, i32 0, i32 2
  %136 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %137 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %136, i32 0, i32 4
  %138 = load i64, i64* %137
  store i64 %138, i64* %135
  %139 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %140 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %139, i32 0, i32 3
  %141 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %142 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %141, i32 0, i32 5
  %143 = load i64, i64* %142
  store i64 %143, i64* %140
  %144 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %145 = getelementptr [2 x i8], [2 x i8]* @const.str.162, i64 0, i64 0
  %146 = call i1 @std.str.str.eq_const(%struct.std.str.str* %144, i8* %145)
  %147 = getelementptr i1, i1* %_38.real, i32 0 ; %_38.real -> %147
  store i1 %146, i1* %147
  %148 = load i1, i1* %147
  br i1 %148, label %label.df, label %label.e7

label.df:			; cond.true
  %149 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %150 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %149, i32 0, i32 1
  %151 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %150
  %152 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %153 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %151, i64 47, %struct.std.str.str* %152, %struct.err.span.span* %153)
  br label %label.139

label.e7:			; cond.false
  %154 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %155 = getelementptr [3 x i8], [3 x i8]* @const.str.163, i64 0, i64 0
  %156 = call i1 @std.str.str.eq_const(%struct.std.str.str* %154, i8* %155)
  %157 = getelementptr i1, i1* %_38.real, i32 0 ; %_38.real -> %157
  store i1 %156, i1* %157
  %158 = load i1, i1* %157
  br i1 %158, label %label.ef, label %label.f7

label.ef:			; cond.true
  %159 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %160 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %159, i32 0, i32 1
  %161 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %160
  %162 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %163 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %161, i64 58, %struct.std.str.str* %162, %struct.err.span.span* %163)
  br label %label.139

label.f7:			; cond.false
  %164 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %165 = getelementptr [3 x i8], [3 x i8]* @const.str.164, i64 0, i64 0
  %166 = call i1 @std.str.str.eq_const(%struct.std.str.str* %164, i8* %165)
  %167 = getelementptr i1, i1* %_38.real, i32 0 ; %_38.real -> %167
  store i1 %166, i1* %167
  %168 = load i1, i1* %167
  br i1 %168, label %label.ff, label %label.107

label.ff:			; cond.true
  %169 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %170 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %169, i32 0, i32 1
  %171 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %170
  %172 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %173 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %171, i64 33, %struct.std.str.str* %172, %struct.err.span.span* %173)
  br label %label.139

label.107:			; cond.false
  %174 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %175 = getelementptr [2 x i8], [2 x i8]* @const.str.165, i64 0, i64 0
  %176 = call i1 @std.str.str.eq_const(%struct.std.str.str* %174, i8* %175)
  %177 = getelementptr i1, i1* %_38.real, i32 0 ; %_38.real -> %177
  store i1 %176, i1* %177
  %178 = load i1, i1* %177
  br i1 %178, label %label.10f, label %label.117

label.10f:			; cond.true
  %179 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %180 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %179, i32 0, i32 1
  %181 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %180
  %182 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %183 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %181, i64 48, %struct.std.str.str* %182, %struct.err.span.span* %183)
  br label %label.139

label.117:			; cond.false
  %184 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %185 = getelementptr [3 x i8], [3 x i8]* @const.str.166, i64 0, i64 0
  %186 = call i1 @std.str.str.eq_const(%struct.std.str.str* %184, i8* %185)
  %187 = getelementptr i1, i1* %_38.real, i32 0 ; %_38.real -> %187
  store i1 %186, i1* %187
  %188 = load i1, i1* %187
  br i1 %188, label %label.11f, label %label.127

label.11f:			; cond.true
  %189 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %190 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %189, i32 0, i32 1
  %191 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %190
  %192 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %193 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %191, i64 59, %struct.std.str.str* %192, %struct.err.span.span* %193)
  br label %label.139

label.127:			; cond.false
  %194 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %195 = getelementptr [3 x i8], [3 x i8]* @const.str.167, i64 0, i64 0
  %196 = call i1 @std.str.str.eq_const(%struct.std.str.str* %194, i8* %195)
  %197 = getelementptr i1, i1* %_38.real, i32 0 ; %_38.real -> %197
  store i1 %196, i1* %197
  %198 = load i1, i1* %197
  br i1 %198, label %label.12f, label %label.137

label.12f:			; cond.true
  %199 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %200 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %199, i32 0, i32 1
  %201 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %200
  %202 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %203 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %201, i64 34, %struct.std.str.str* %202, %struct.err.span.span* %203)
  br label %label.139

label.137:			; cond.false
  br label %label.139

label.139:			; branch.end
  ret void 
}

define void @lexer.lexer.generate_arrow(%struct.lexer.lexer* %self.param, %struct.std.str.str* %src.param) {
entry:
  %self = alloca %struct.lexer.lexer*
  %src = alloca %struct.std.str.str*
  %loc.1 = alloca %struct.err.span.span*
  %tmp.11 = alloca %struct.std.str.str*
  %_1.real = alloca %struct.err.span.span*
  %_20.real = alloca %struct.std.str.str*
  %_28.real = alloca i8
  store %struct.lexer.lexer* %self.param, %struct.lexer.lexer** %self
  store %struct.std.str.str* %src.param, %struct.std.str.str** %src
  %0 = call %struct.err.span.span* @err.span.span.new()
  %1 = getelementptr %struct.err.span.span*, %struct.err.span.span** %_1.real, i32 0 ; %_1.real -> %1
  store %struct.err.span.span* %0, %struct.err.span.span** %1
  %2 = load %struct.err.span.span*, %struct.err.span.span** %1
  store %struct.err.span.span* %2, %struct.err.span.span** %loc.1
  %3 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %4 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %3, i32 0, i32 4
  %5 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %6 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %6, i32 0, i32 0
  %8 = load i8*, i8** %7
  call void @std.str.str.copy_const(%struct.std.str.str* %4, i8* %8)
  %9 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %10 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %9, i32 0, i32 0
  %11 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %12 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %11, i32 0, i32 4
  %13 = load i64, i64* %12
  store i64 %13, i64* %10
  %14 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %15 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %14, i32 0, i32 1
  %16 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %17 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %16, i32 0, i32 5
  %18 = load i64, i64* %17
  store i64 %18, i64* %15
  %19 = call %struct.std.str.str* @std.str.str.new()
  %20 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %20
  store %struct.std.str.str* %19, %struct.std.str.str** %20
  %21 = load %struct.std.str.str*, %struct.std.str.str** %20
  store %struct.std.str.str* %21, %struct.std.str.str** %tmp.11
  %22 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %23 = load %struct.std.str.str*, %struct.std.str.str** %src
  %24 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %25 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %24, i32 0, i32 2
  %26 = load i64, i64* %25
  %27 = call i8 @std.str.str.get(%struct.std.str.str* %23, i64 %26)
  %28 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %28
  store i8 %27, i8* %28
  %29 = load i8, i8* %28
  %30 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %22, i8 %29)
  %31 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %31
  store %struct.std.str.str* %30, %struct.std.str.str** %31
  %32 = load %struct.std.str.str*, %struct.std.str.str** %31
  %33 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %34 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %33, i32 0, i32 2
  %35 = load i64, i64* %34
  %36 = add i64 %35, 1
  store i64 %36, i64* %34
  %37 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %38 = load %struct.std.str.str*, %struct.std.str.str** %src
  %39 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %40 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %39, i32 0, i32 2
  %41 = load i64, i64* %40
  %42 = call i8 @std.str.str.get(%struct.std.str.str* %38, i64 %41)
  %43 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %43
  store i8 %42, i8* %43
  %44 = load i8, i8* %43
  %45 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %37, i8 %44)
  %46 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %46
  store %struct.std.str.str* %45, %struct.std.str.str** %46
  %47 = load %struct.std.str.str*, %struct.std.str.str** %46
  %48 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %49 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %48, i32 0, i32 2
  %50 = load i64, i64* %49
  %51 = add i64 %50, 1
  store i64 %51, i64* %49
  %52 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %53 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %52, i32 0, i32 5
  %54 = load i64, i64* %53
  %55 = add i64 %54, 2
  store i64 %55, i64* %53
  %56 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %57 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %56, i32 0, i32 2
  %58 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %59 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %58, i32 0, i32 4
  %60 = load i64, i64* %59
  store i64 %60, i64* %57
  %61 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %62 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %61, i32 0, i32 3
  %63 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %64 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %63, i32 0, i32 5
  %65 = load i64, i64* %64
  store i64 %65, i64* %62
  %66 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %67 = call i8 @std.str.str.get(%struct.std.str.str* %66, i64 0)
  %68 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %68
  store i8 %67, i8* %68
  %69 = load i8, i8* %68
  %70 = icmp eq i8 %69, 45
  br i1 %70, label %label.5b, label %label.63

label.5b:			; cond.true
  %71 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %72 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %71, i32 0, i32 1
  %73 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %72
  %74 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %75 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %73, i64 67, %struct.std.str.str* %74, %struct.err.span.span* %75)
  br label %label.6b

label.63:			; cond.false
  %76 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %77 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %76, i32 0, i32 1
  %78 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %77
  %79 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %80 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %78, i64 68, %struct.std.str.str* %79, %struct.err.span.span* %80)
  br label %label.6b

label.6b:			; branch.end
  ret void 
}

define void @lexer.lexer.generate_identifier(%struct.lexer.lexer* %self.param, %struct.std.str.str* %src.param) {
entry:
  %self = alloca %struct.lexer.lexer*
  %src = alloca %struct.std.str.str*
  %loc.1 = alloca %struct.err.span.span*
  %tmp.11 = alloca %struct.std.str.str*
  %_1.real = alloca %struct.err.span.span*
  %_20.real = alloca %struct.std.str.str*
  %_22.real = alloca i1
  %_35.real = alloca i8
  %_79.real = alloca i64
  store %struct.lexer.lexer* %self.param, %struct.lexer.lexer** %self
  store %struct.std.str.str* %src.param, %struct.std.str.str** %src
  %0 = call %struct.err.span.span* @err.span.span.new()
  %1 = getelementptr %struct.err.span.span*, %struct.err.span.span** %_1.real, i32 0 ; %_1.real -> %1
  store %struct.err.span.span* %0, %struct.err.span.span** %1
  %2 = load %struct.err.span.span*, %struct.err.span.span** %1
  store %struct.err.span.span* %2, %struct.err.span.span** %loc.1
  %3 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %4 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %3, i32 0, i32 4
  %5 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %6 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %6, i32 0, i32 0
  %8 = load i8*, i8** %7
  call void @std.str.str.copy_const(%struct.std.str.str* %4, i8* %8)
  %9 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %10 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %9, i32 0, i32 0
  %11 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %12 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %11, i32 0, i32 4
  %13 = load i64, i64* %12
  store i64 %13, i64* %10
  %14 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %15 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %14, i32 0, i32 1
  %16 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %17 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %16, i32 0, i32 5
  %18 = load i64, i64* %17
  store i64 %18, i64* %15
  %19 = call %struct.std.str.str* @std.str.str.new()
  %20 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %20
  store %struct.std.str.str* %19, %struct.std.str.str** %20
  %21 = load %struct.std.str.str*, %struct.std.str.str** %20
  store %struct.std.str.str* %21, %struct.std.str.str** %tmp.11
  br label %label.20

label.20:			; loop.entry
  %22 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %22
  %23 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %24 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %23, i32 0, i32 2
  %25 = load i64, i64* %24
  %26 = load %struct.std.str.str*, %struct.std.str.str** %src
  %27 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %26, i32 0, i32 1
  %28 = load i64, i64* %27
  %29 = icmp ult i64 %25, %28
  store i1 %29, i1* %22
  br i1 %29, label %label.2b, label %label.3a

label.2b:			; and.true
  %30 = load %struct.std.str.str*, %struct.std.str.str** %src
  %31 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %32 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %31, i32 0, i32 2
  %33 = load i64, i64* %32
  %34 = call i8 @std.str.str.get(%struct.std.str.str* %30, i64 %33)
  %35 = getelementptr i8, i8* %_35.real, i32 0 ; %_35.real -> %35
  store i8 %34, i8* %35
  %36 = load i8, i8* %35
  %37 = call i1 @lexer.lexer.is_identifier_body(i8 %36)
  %38 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %38
  store i1 %37, i1* %38
  %39 = load i1, i1* %38
  store i1 %39, i1* %22
  br label %label.3a

label.3a:			; and.false
  %40 = load i1, i1* %22
  br i1 %40, label %label.3d, label %label.53

label.3d:			; loop.cond.true
  %41 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %42 = load %struct.std.str.str*, %struct.std.str.str** %src
  %43 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %44 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %43, i32 0, i32 2
  %45 = load i64, i64* %44
  %46 = call i8 @std.str.str.get(%struct.std.str.str* %42, i64 %45)
  %47 = getelementptr i8, i8* %_35.real, i32 0 ; %_35.real -> %47
  store i8 %46, i8* %47
  %48 = load i8, i8* %47
  %49 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %41, i8 %48)
  %50 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %50
  store %struct.std.str.str* %49, %struct.std.str.str** %50
  %51 = load %struct.std.str.str*, %struct.std.str.str** %50
  %52 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %53 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %52, i32 0, i32 2
  %54 = load i64, i64* %53
  %55 = add i64 %54, 1
  store i64 %55, i64* %53
  br label %label.20

label.53:			; loop.exit
  %56 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %57 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %56, i32 0, i32 5
  %58 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %59 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %58, i32 0, i32 1
  %60 = load i64, i64* %59
  %61 = add i64 %60, 0 ; i64 -> i64
  %62 = load i64, i64* %57
  %63 = add i64 %62, %61
  store i64 %63, i64* %57
  %64 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %65 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %64, i32 0, i32 2
  %66 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %67 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %66, i32 0, i32 4
  %68 = load i64, i64* %67
  store i64 %68, i64* %65
  %69 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %70 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %69, i32 0, i32 3
  %71 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %72 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %71, i32 0, i32 5
  %73 = load i64, i64* %72
  store i64 %73, i64* %70
  %74 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %75 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %74, i32 0, i32 1
  %76 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %75
  %77 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %78 = call i64 @lexer.lexer.check_id_kind(%struct.std.str.str* %77)
  %79 = getelementptr i64, i64* %_79.real, i32 0 ; %_79.real -> %79
  store i64 %78, i64* %79
  %80 = load i64, i64* %79
  %81 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %82 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %76, i64 %80, %struct.std.str.str* %81, %struct.err.span.span* %82)
  ret void 
}

define void @lexer.lexer.generate_number(%struct.lexer.lexer* %self.param, %struct.std.str.str* %src.param) {
entry:
  %self = alloca %struct.lexer.lexer*
  %src = alloca %struct.std.str.str*
  %loc.1 = alloca %struct.err.span.span*
  %tmp.11 = alloca %struct.std.str.str*
  %lookahead_pos.200 = alloca i64
  %lookahead_ch.224 = alloca i8
  %lookahead_pos.305 = alloca i64
  %_1.real = alloca %struct.err.span.span*
  %_20.real = alloca %struct.std.str.str*
  %_22.real = alloca i1
  %_28.real = alloca i8
  store %struct.lexer.lexer* %self.param, %struct.lexer.lexer** %self
  store %struct.std.str.str* %src.param, %struct.std.str.str** %src
  %0 = call %struct.err.span.span* @err.span.span.new()
  %1 = getelementptr %struct.err.span.span*, %struct.err.span.span** %_1.real, i32 0 ; %_1.real -> %1
  store %struct.err.span.span* %0, %struct.err.span.span** %1
  %2 = load %struct.err.span.span*, %struct.err.span.span** %1
  store %struct.err.span.span* %2, %struct.err.span.span** %loc.1
  %3 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %4 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %3, i32 0, i32 4
  %5 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %6 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %6, i32 0, i32 0
  %8 = load i8*, i8** %7
  call void @std.str.str.copy_const(%struct.std.str.str* %4, i8* %8)
  %9 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %10 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %9, i32 0, i32 0
  %11 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %12 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %11, i32 0, i32 4
  %13 = load i64, i64* %12
  store i64 %13, i64* %10
  %14 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %15 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %14, i32 0, i32 1
  %16 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %17 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %16, i32 0, i32 5
  %18 = load i64, i64* %17
  store i64 %18, i64* %15
  %19 = call %struct.std.str.str* @std.str.str.new()
  %20 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %20
  store %struct.std.str.str* %19, %struct.std.str.str** %20
  %21 = load %struct.std.str.str*, %struct.std.str.str** %20
  store %struct.std.str.str* %21, %struct.std.str.str** %tmp.11
  %22 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %22
  %23 = load %struct.std.str.str*, %struct.std.str.str** %src
  %24 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %25 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %24, i32 0, i32 2
  %26 = load i64, i64* %25
  %27 = call i8 @std.str.str.get(%struct.std.str.str* %23, i64 %26)
  %28 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %28
  store i8 %27, i8* %28
  %29 = load i8, i8* %28
  %30 = icmp eq i8 %29, 48
  store i1 %30, i1* %22
  br i1 %30, label %label.2b, label %label.48

label.2b:			; and.true
  %31 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %31
  %32 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %33 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %32, i32 0, i32 2
  %34 = load i64, i64* %33
  %35 = add i64 %34, 1
  %36 = load %struct.std.str.str*, %struct.std.str.str** %src
  %37 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %36, i32 0, i32 1
  %38 = load i64, i64* %37
  %39 = icmp ult i64 %35, %38
  store i1 %39, i1* %31
  br i1 %39, label %label.37, label %label.44

label.37:			; and.true
  %40 = load %struct.std.str.str*, %struct.std.str.str** %src
  %41 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %42 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %41, i32 0, i32 2
  %43 = load i64, i64* %42
  %44 = add i64 %43, 1
  %45 = call i8 @std.str.str.get(%struct.std.str.str* %40, i64 %44)
  %46 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %46
  store i8 %45, i8* %46
  %47 = load i8, i8* %46
  %48 = icmp eq i8 %47, 120
  store i1 %48, i1* %31
  br label %label.44

label.44:			; and.false
  %49 = load i1, i1* %31
  store i1 %49, i1* %22
  br label %label.48

label.48:			; and.false
  %50 = load i1, i1* %22
  br i1 %50, label %label.4b, label %label.d4

label.4b:			; cond.true
  %51 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %52 = getelementptr [3 x i8], [3 x i8]* @const.str.168, i64 0, i64 0
  %53 = call %struct.std.str.str* @std.str.str.append_i8_vec(%struct.std.str.str* %51, i8* %52)
  %54 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %54
  store %struct.std.str.str* %53, %struct.std.str.str** %54
  %55 = load %struct.std.str.str*, %struct.std.str.str** %54
  %56 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %57 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %56, i32 0, i32 2
  %58 = load i64, i64* %57
  %59 = add i64 %58, 2
  store i64 %59, i64* %57
  br label %label.58

label.58:			; loop.entry
  %60 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %60
  %61 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %62 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %61, i32 0, i32 2
  %63 = load i64, i64* %62
  %64 = load %struct.std.str.str*, %struct.std.str.str** %src
  %65 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %64, i32 0, i32 1
  %66 = load i64, i64* %65
  %67 = icmp ult i64 %63, %66
  store i1 %67, i1* %60
  br i1 %67, label %label.63, label %label.72

label.63:			; and.true
  %68 = load %struct.std.str.str*, %struct.std.str.str** %src
  %69 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %70 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %69, i32 0, i32 2
  %71 = load i64, i64* %70
  %72 = call i8 @std.str.str.get(%struct.std.str.str* %68, i64 %71)
  %73 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %73
  store i8 %72, i8* %73
  %74 = load i8, i8* %73
  %75 = call i1 @lexer.lexer.is_hex(i8 %74)
  %76 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %76
  store i1 %75, i1* %76
  %77 = load i1, i1* %76
  store i1 %77, i1* %60
  br label %label.72

label.72:			; and.false
  %78 = load i1, i1* %60
  br i1 %78, label %label.75, label %label.8b

label.75:			; loop.cond.true
  %79 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %80 = load %struct.std.str.str*, %struct.std.str.str** %src
  %81 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %82 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %81, i32 0, i32 2
  %83 = load i64, i64* %82
  %84 = call i8 @std.str.str.get(%struct.std.str.str* %80, i64 %83)
  %85 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %85
  store i8 %84, i8* %85
  %86 = load i8, i8* %85
  %87 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %79, i8 %86)
  %88 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %88
  store %struct.std.str.str* %87, %struct.std.str.str** %88
  %89 = load %struct.std.str.str*, %struct.std.str.str** %88
  %90 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %91 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %90, i32 0, i32 2
  %92 = load i64, i64* %91
  %93 = add i64 %92, 1
  store i64 %93, i64* %91
  br label %label.58

label.8b:			; loop.exit
  %94 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %95 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %94, i32 0, i32 1
  %96 = load i64, i64* %95
  %97 = icmp ugt i64 %96, 2
  br i1 %97, label %label.91, label %label.ae

label.91:			; cond.true
  %98 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %99 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %98, i32 0, i32 5
  %100 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %101 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %100, i32 0, i32 1
  %102 = load i64, i64* %101
  %103 = add i64 %102, 0 ; i64 -> i64
  %104 = load i64, i64* %99
  %105 = add i64 %104, %103
  store i64 %105, i64* %99
  %106 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %107 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %106, i32 0, i32 2
  %108 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %109 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %108, i32 0, i32 4
  %110 = load i64, i64* %109
  store i64 %110, i64* %107
  %111 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %112 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %111, i32 0, i32 3
  %113 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %114 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %113, i32 0, i32 5
  %115 = load i64, i64* %114
  store i64 %115, i64* %112
  %116 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %117 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %116, i32 0, i32 1
  %118 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %117
  %119 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %120 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %118, i64 1, %struct.std.str.str* %119, %struct.err.span.span* %120)
  br label %label.d0

label.ae:			; cond.false
  %121 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %122 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %121, i32 0, i32 5
  %123 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %124 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %123, i32 0, i32 1
  %125 = load i64, i64* %124
  %126 = add i64 %125, 0 ; i64 -> i64
  %127 = load i64, i64* %122
  %128 = add i64 %127, %126
  store i64 %128, i64* %122
  %129 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %130 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %129, i32 0, i32 2
  %131 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %132 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %131, i32 0, i32 4
  %133 = load i64, i64* %132
  store i64 %133, i64* %130
  %134 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %135 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %134, i32 0, i32 3
  %136 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %137 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %136, i32 0, i32 5
  %138 = load i64, i64* %137
  store i64 %138, i64* %135
  %139 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %140 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %139, i32 0, i32 0
  %141 = load %struct.err.report.report*, %struct.err.report.report** %140
  %142 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %143 = getelementptr [20 x i8], [20 x i8]* @const.str.169, i64 0, i64 0
  call void @err.report.report.error(%struct.err.report.report* %141, %struct.err.span.span* %142, i8* %143)
  %144 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @err.span.span.delete(%struct.err.span.span* %144)
  %145 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %146 = bitcast %struct.err.span.span* %145 to i8*
  call void @free(i8* %146)
  br label %label.d0

label.d0:			; branch.end
  ret void 

label.place_holder.d2:
  br label %label.d6

label.d4:			; cond.false
  br label %label.d6

label.d6:			; branch.end
  %147 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %147
  %148 = load %struct.std.str.str*, %struct.std.str.str** %src
  %149 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %150 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %149, i32 0, i32 2
  %151 = load i64, i64* %150
  %152 = call i8 @std.str.str.get(%struct.std.str.str* %148, i64 %151)
  %153 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %153
  store i8 %152, i8* %153
  %154 = load i8, i8* %153
  %155 = icmp eq i8 %154, 48
  store i1 %155, i1* %147
  br i1 %155, label %label.e3, label %label.100

label.e3:			; and.true
  %156 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %156
  %157 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %158 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %157, i32 0, i32 2
  %159 = load i64, i64* %158
  %160 = add i64 %159, 1
  %161 = load %struct.std.str.str*, %struct.std.str.str** %src
  %162 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %161, i32 0, i32 1
  %163 = load i64, i64* %162
  %164 = icmp ult i64 %160, %163
  store i1 %164, i1* %156
  br i1 %164, label %label.ef, label %label.fc

label.ef:			; and.true
  %165 = load %struct.std.str.str*, %struct.std.str.str** %src
  %166 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %167 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %166, i32 0, i32 2
  %168 = load i64, i64* %167
  %169 = add i64 %168, 1
  %170 = call i8 @std.str.str.get(%struct.std.str.str* %165, i64 %169)
  %171 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %171
  store i8 %170, i8* %171
  %172 = load i8, i8* %171
  %173 = icmp eq i8 %172, 111
  store i1 %173, i1* %156
  br label %label.fc

label.fc:			; and.false
  %174 = load i1, i1* %156
  store i1 %174, i1* %147
  br label %label.100

label.100:			; and.false
  %175 = load i1, i1* %147
  br i1 %175, label %label.103, label %label.18c

label.103:			; cond.true
  %176 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %177 = getelementptr [3 x i8], [3 x i8]* @const.str.170, i64 0, i64 0
  %178 = call %struct.std.str.str* @std.str.str.append_i8_vec(%struct.std.str.str* %176, i8* %177)
  %179 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %179
  store %struct.std.str.str* %178, %struct.std.str.str** %179
  %180 = load %struct.std.str.str*, %struct.std.str.str** %179
  %181 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %182 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %181, i32 0, i32 2
  %183 = load i64, i64* %182
  %184 = add i64 %183, 2
  store i64 %184, i64* %182
  br label %label.110

label.110:			; loop.entry
  %185 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %185
  %186 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %187 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %186, i32 0, i32 2
  %188 = load i64, i64* %187
  %189 = load %struct.std.str.str*, %struct.std.str.str** %src
  %190 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %189, i32 0, i32 1
  %191 = load i64, i64* %190
  %192 = icmp ult i64 %188, %191
  store i1 %192, i1* %185
  br i1 %192, label %label.11b, label %label.12a

label.11b:			; and.true
  %193 = load %struct.std.str.str*, %struct.std.str.str** %src
  %194 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %195 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %194, i32 0, i32 2
  %196 = load i64, i64* %195
  %197 = call i8 @std.str.str.get(%struct.std.str.str* %193, i64 %196)
  %198 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %198
  store i8 %197, i8* %198
  %199 = load i8, i8* %198
  %200 = call i1 @lexer.lexer.is_oct(i8 %199)
  %201 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %201
  store i1 %200, i1* %201
  %202 = load i1, i1* %201
  store i1 %202, i1* %185
  br label %label.12a

label.12a:			; and.false
  %203 = load i1, i1* %185
  br i1 %203, label %label.12d, label %label.143

label.12d:			; loop.cond.true
  %204 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %205 = load %struct.std.str.str*, %struct.std.str.str** %src
  %206 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %207 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %206, i32 0, i32 2
  %208 = load i64, i64* %207
  %209 = call i8 @std.str.str.get(%struct.std.str.str* %205, i64 %208)
  %210 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %210
  store i8 %209, i8* %210
  %211 = load i8, i8* %210
  %212 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %204, i8 %211)
  %213 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %213
  store %struct.std.str.str* %212, %struct.std.str.str** %213
  %214 = load %struct.std.str.str*, %struct.std.str.str** %213
  %215 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %216 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %215, i32 0, i32 2
  %217 = load i64, i64* %216
  %218 = add i64 %217, 1
  store i64 %218, i64* %216
  br label %label.110

label.143:			; loop.exit
  %219 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %220 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %219, i32 0, i32 1
  %221 = load i64, i64* %220
  %222 = icmp ugt i64 %221, 2
  br i1 %222, label %label.149, label %label.166

label.149:			; cond.true
  %223 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %224 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %223, i32 0, i32 5
  %225 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %226 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %225, i32 0, i32 1
  %227 = load i64, i64* %226
  %228 = add i64 %227, 0 ; i64 -> i64
  %229 = load i64, i64* %224
  %230 = add i64 %229, %228
  store i64 %230, i64* %224
  %231 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %232 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %231, i32 0, i32 2
  %233 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %234 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %233, i32 0, i32 4
  %235 = load i64, i64* %234
  store i64 %235, i64* %232
  %236 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %237 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %236, i32 0, i32 3
  %238 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %239 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %238, i32 0, i32 5
  %240 = load i64, i64* %239
  store i64 %240, i64* %237
  %241 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %242 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %241, i32 0, i32 1
  %243 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %242
  %244 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %245 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %243, i64 1, %struct.std.str.str* %244, %struct.err.span.span* %245)
  br label %label.188

label.166:			; cond.false
  %246 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %247 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %246, i32 0, i32 5
  %248 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %249 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %248, i32 0, i32 1
  %250 = load i64, i64* %249
  %251 = add i64 %250, 0 ; i64 -> i64
  %252 = load i64, i64* %247
  %253 = add i64 %252, %251
  store i64 %253, i64* %247
  %254 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %255 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %254, i32 0, i32 2
  %256 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %257 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %256, i32 0, i32 4
  %258 = load i64, i64* %257
  store i64 %258, i64* %255
  %259 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %260 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %259, i32 0, i32 3
  %261 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %262 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %261, i32 0, i32 5
  %263 = load i64, i64* %262
  store i64 %263, i64* %260
  %264 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %265 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %264, i32 0, i32 0
  %266 = load %struct.err.report.report*, %struct.err.report.report** %265
  %267 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %268 = getelementptr [20 x i8], [20 x i8]* @const.str.171, i64 0, i64 0
  call void @err.report.report.error(%struct.err.report.report* %266, %struct.err.span.span* %267, i8* %268)
  %269 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @err.span.span.delete(%struct.err.span.span* %269)
  %270 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %271 = bitcast %struct.err.span.span* %270 to i8*
  call void @free(i8* %271)
  br label %label.188

label.188:			; branch.end
  ret void 

label.place_holder.18a:
  br label %label.18e

label.18c:			; cond.false
  br label %label.18e

label.18e:			; branch.end
  %272 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %273 = load %struct.std.str.str*, %struct.std.str.str** %src
  %274 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %275 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %274, i32 0, i32 2
  %276 = load i64, i64* %275
  %277 = call i8 @std.str.str.get(%struct.std.str.str* %273, i64 %276)
  %278 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %278
  store i8 %277, i8* %278
  %279 = load i8, i8* %278
  %280 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %272, i8 %279)
  %281 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %281
  store %struct.std.str.str* %280, %struct.std.str.str** %281
  %282 = load %struct.std.str.str*, %struct.std.str.str** %281
  %283 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %284 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %283, i32 0, i32 2
  %285 = load i64, i64* %284
  %286 = add i64 %285, 1
  store i64 %286, i64* %284
  br label %label.1a2

label.1a2:			; loop.entry
  %287 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %287
  %288 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %289 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %288, i32 0, i32 2
  %290 = load i64, i64* %289
  %291 = load %struct.std.str.str*, %struct.std.str.str** %src
  %292 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %291, i32 0, i32 1
  %293 = load i64, i64* %292
  %294 = icmp ult i64 %290, %293
  store i1 %294, i1* %287
  br i1 %294, label %label.1ad, label %label.1bc

label.1ad:			; and.true
  %295 = load %struct.std.str.str*, %struct.std.str.str** %src
  %296 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %297 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %296, i32 0, i32 2
  %298 = load i64, i64* %297
  %299 = call i8 @std.str.str.get(%struct.std.str.str* %295, i64 %298)
  %300 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %300
  store i8 %299, i8* %300
  %301 = load i8, i8* %300
  %302 = call i1 @lexer.lexer.is_digit(i8 %301)
  %303 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %303
  store i1 %302, i1* %303
  %304 = load i1, i1* %303
  store i1 %304, i1* %287
  br label %label.1bc

label.1bc:			; and.false
  %305 = load i1, i1* %287
  br i1 %305, label %label.1bf, label %label.1d5

label.1bf:			; loop.cond.true
  %306 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %307 = load %struct.std.str.str*, %struct.std.str.str** %src
  %308 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %309 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %308, i32 0, i32 2
  %310 = load i64, i64* %309
  %311 = call i8 @std.str.str.get(%struct.std.str.str* %307, i64 %310)
  %312 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %312
  store i8 %311, i8* %312
  %313 = load i8, i8* %312
  %314 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %306, i8 %313)
  %315 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %315
  store %struct.std.str.str* %314, %struct.std.str.str** %315
  %316 = load %struct.std.str.str*, %struct.std.str.str** %315
  %317 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %318 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %317, i32 0, i32 2
  %319 = load i64, i64* %318
  %320 = add i64 %319, 1
  store i64 %320, i64* %318
  br label %label.1a2

label.1d5:			; loop.exit
  %321 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %321
  %322 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %323 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %322, i32 0, i32 2
  %324 = load i64, i64* %323
  %325 = load %struct.std.str.str*, %struct.std.str.str** %src
  %326 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %325, i32 0, i32 1
  %327 = load i64, i64* %326
  %328 = icmp ult i64 %324, %327
  store i1 %328, i1* %321
  br i1 %328, label %label.1e0, label %label.1ec

label.1e0:			; and.true
  %329 = load %struct.std.str.str*, %struct.std.str.str** %src
  %330 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %331 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %330, i32 0, i32 2
  %332 = load i64, i64* %331
  %333 = call i8 @std.str.str.get(%struct.std.str.str* %329, i64 %332)
  %334 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %334
  store i8 %333, i8* %334
  %335 = load i8, i8* %334
  %336 = icmp eq i8 %335, 46
  store i1 %336, i1* %321
  br label %label.1ec

label.1ec:			; and.false
  %337 = load i1, i1* %321
  br i1 %337, label %label.1ef, label %label.28d

label.1ef:			; cond.true
  %338 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %339 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %338, i32 0, i32 2
  %340 = load i64, i64* %339
  %341 = add i64 %340, 1
  store i64 %341, i64* %lookahead_pos.200
  %342 = load i64, i64* %lookahead_pos.200
  %343 = load %struct.std.str.str*, %struct.std.str.str** %src
  %344 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %343, i32 0, i32 1
  %345 = load i64, i64* %344
  %346 = icmp uge i64 %342, %345
  br i1 %346, label %label.1fb, label %label.21a

label.1fb:			; cond.true
  %347 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %348 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %347, i32 0, i32 5
  %349 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %350 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %349, i32 0, i32 1
  %351 = load i64, i64* %350
  %352 = add i64 %351, 0 ; i64 -> i64
  %353 = load i64, i64* %348
  %354 = add i64 %353, %352
  store i64 %354, i64* %348
  %355 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %356 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %355, i32 0, i32 2
  %357 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %358 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %357, i32 0, i32 4
  %359 = load i64, i64* %358
  store i64 %359, i64* %356
  %360 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %361 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %360, i32 0, i32 3
  %362 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %363 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %362, i32 0, i32 5
  %364 = load i64, i64* %363
  store i64 %364, i64* %361
  %365 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %366 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %365, i32 0, i32 1
  %367 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %366
  %368 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %369 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %367, i64 1, %struct.std.str.str* %368, %struct.err.span.span* %369)
  ret void 

label.place_holder.218:
  br label %label.21c

label.21a:			; cond.false
  br label %label.21c

label.21c:			; branch.end
  %370 = load %struct.std.str.str*, %struct.std.str.str** %src
  %371 = load i64, i64* %lookahead_pos.200
  %372 = call i8 @std.str.str.get(%struct.std.str.str* %370, i64 %371)
  %373 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %373
  store i8 %372, i8* %373
  %374 = load i8, i8* %373
  store i8 %374, i8* %lookahead_ch.224
  %375 = load i8, i8* %lookahead_ch.224
  %376 = call i1 @lexer.lexer.is_digit(i8 %375)
  %377 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %377
  store i1 %376, i1* %377
  %378 = load i1, i1* %377
  %379 = xor i1 %378, true
  br i1 %379, label %label.22b, label %label.24a

label.22b:			; cond.true
  %380 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %381 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %380, i32 0, i32 5
  %382 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %383 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %382, i32 0, i32 1
  %384 = load i64, i64* %383
  %385 = add i64 %384, 0 ; i64 -> i64
  %386 = load i64, i64* %381
  %387 = add i64 %386, %385
  store i64 %387, i64* %381
  %388 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %389 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %388, i32 0, i32 2
  %390 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %391 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %390, i32 0, i32 4
  %392 = load i64, i64* %391
  store i64 %392, i64* %389
  %393 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %394 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %393, i32 0, i32 3
  %395 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %396 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %395, i32 0, i32 5
  %397 = load i64, i64* %396
  store i64 %397, i64* %394
  %398 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %399 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %398, i32 0, i32 1
  %400 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %399
  %401 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %402 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %400, i64 1, %struct.std.str.str* %401, %struct.err.span.span* %402)
  ret void 

label.place_holder.248:
  br label %label.24c

label.24a:			; cond.false
  br label %label.24c

label.24c:			; branch.end
  %403 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %404 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %403, i8 46)
  %405 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %405
  store %struct.std.str.str* %404, %struct.std.str.str** %405
  %406 = load %struct.std.str.str*, %struct.std.str.str** %405
  %407 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %408 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %407, i32 0, i32 2
  %409 = load i64, i64* %408
  %410 = add i64 %409, 1
  store i64 %410, i64* %408
  br label %label.258

label.258:			; loop.entry
  %411 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %411
  %412 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %413 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %412, i32 0, i32 2
  %414 = load i64, i64* %413
  %415 = load %struct.std.str.str*, %struct.std.str.str** %src
  %416 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %415, i32 0, i32 1
  %417 = load i64, i64* %416
  %418 = icmp ult i64 %414, %417
  store i1 %418, i1* %411
  br i1 %418, label %label.263, label %label.272

label.263:			; and.true
  %419 = load %struct.std.str.str*, %struct.std.str.str** %src
  %420 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %421 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %420, i32 0, i32 2
  %422 = load i64, i64* %421
  %423 = call i8 @std.str.str.get(%struct.std.str.str* %419, i64 %422)
  %424 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %424
  store i8 %423, i8* %424
  %425 = load i8, i8* %424
  %426 = call i1 @lexer.lexer.is_digit(i8 %425)
  %427 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %427
  store i1 %426, i1* %427
  %428 = load i1, i1* %427
  store i1 %428, i1* %411
  br label %label.272

label.272:			; and.false
  %429 = load i1, i1* %411
  br i1 %429, label %label.275, label %label.28b

label.275:			; loop.cond.true
  %430 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %431 = load %struct.std.str.str*, %struct.std.str.str** %src
  %432 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %433 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %432, i32 0, i32 2
  %434 = load i64, i64* %433
  %435 = call i8 @std.str.str.get(%struct.std.str.str* %431, i64 %434)
  %436 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %436
  store i8 %435, i8* %436
  %437 = load i8, i8* %436
  %438 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %430, i8 %437)
  %439 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %439
  store %struct.std.str.str* %438, %struct.std.str.str** %439
  %440 = load %struct.std.str.str*, %struct.std.str.str** %439
  %441 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %442 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %441, i32 0, i32 2
  %443 = load i64, i64* %442
  %444 = add i64 %443, 1
  store i64 %444, i64* %442
  br label %label.258

label.28b:			; loop.exit
  br label %label.28f

label.28d:			; cond.false
  br label %label.28f

label.28f:			; branch.end
  %445 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %445
  %446 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %447 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %446, i32 0, i32 2
  %448 = load i64, i64* %447
  %449 = load %struct.std.str.str*, %struct.std.str.str** %src
  %450 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %449, i32 0, i32 1
  %451 = load i64, i64* %450
  %452 = icmp ult i64 %448, %451
  store i1 %452, i1* %445
  br i1 %452, label %label.29a, label %label.2b7

label.29a:			; and.true
  %453 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %453
  %454 = load %struct.std.str.str*, %struct.std.str.str** %src
  %455 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %456 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %455, i32 0, i32 2
  %457 = load i64, i64* %456
  %458 = call i8 @std.str.str.get(%struct.std.str.str* %454, i64 %457)
  %459 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %459
  store i8 %458, i8* %459
  %460 = load i8, i8* %459
  %461 = icmp eq i8 %460, 101
  store i1 %461, i1* %453
  br i1 %461, label %label.2b3, label %label.2a7

label.2a7:			; or.false
  %462 = load %struct.std.str.str*, %struct.std.str.str** %src
  %463 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %464 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %463, i32 0, i32 2
  %465 = load i64, i64* %464
  %466 = call i8 @std.str.str.get(%struct.std.str.str* %462, i64 %465)
  %467 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %467
  store i8 %466, i8* %467
  %468 = load i8, i8* %467
  %469 = icmp eq i8 %468, 69
  store i1 %469, i1* %453
  br label %label.2b3

label.2b3:			; or.true
  %470 = load i1, i1* %453
  store i1 %470, i1* %445
  br label %label.2b7

label.2b7:			; and.false
  %471 = load i1, i1* %445
  br i1 %471, label %label.2ba, label %label.40f

label.2ba:			; cond.true
  %472 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %473 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %472, i32 0, i32 2
  %474 = load i64, i64* %473
  %475 = add i64 %474, 1
  %476 = load %struct.std.str.str*, %struct.std.str.str** %src
  %477 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %476, i32 0, i32 1
  %478 = load i64, i64* %477
  %479 = icmp uge i64 %475, %478
  br i1 %479, label %label.2c4, label %label.2e3

label.2c4:			; cond.true
  %480 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %481 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %480, i32 0, i32 5
  %482 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %483 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %482, i32 0, i32 1
  %484 = load i64, i64* %483
  %485 = add i64 %484, 0 ; i64 -> i64
  %486 = load i64, i64* %481
  %487 = add i64 %486, %485
  store i64 %487, i64* %481
  %488 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %489 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %488, i32 0, i32 2
  %490 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %491 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %490, i32 0, i32 4
  %492 = load i64, i64* %491
  store i64 %492, i64* %489
  %493 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %494 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %493, i32 0, i32 3
  %495 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %496 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %495, i32 0, i32 5
  %497 = load i64, i64* %496
  store i64 %497, i64* %494
  %498 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %499 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %498, i32 0, i32 1
  %500 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %499
  %501 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %502 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %500, i64 1, %struct.std.str.str* %501, %struct.err.span.span* %502)
  ret void 

label.place_holder.2e1:
  br label %label.2e5

label.2e3:			; cond.false
  br label %label.2e5

label.2e5:			; branch.end
  %503 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %504 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %503, i32 0, i32 2
  %505 = load i64, i64* %504
  %506 = add i64 %505, 1
  store i64 %506, i64* %lookahead_pos.305
  %507 = load %struct.std.str.str*, %struct.std.str.str** %src
  %508 = load i64, i64* %lookahead_pos.305
  %509 = call i8 @std.str.str.get(%struct.std.str.str* %507, i64 %508)
  %510 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %510
  store i8 %509, i8* %510
  %511 = load i8, i8* %510
  %512 = call i1 @lexer.lexer.is_digit(i8 %511)
  %513 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %513
  store i1 %512, i1* %513
  %514 = load i1, i1* %513
  br i1 %514, label %label.2f6, label %label.35c

label.2f6:			; cond.true
  %515 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %516 = load %struct.std.str.str*, %struct.std.str.str** %src
  %517 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %518 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %517, i32 0, i32 2
  %519 = load i64, i64* %518
  %520 = call i8 @std.str.str.get(%struct.std.str.str* %516, i64 %519)
  %521 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %521
  store i8 %520, i8* %521
  %522 = load i8, i8* %521
  %523 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %515, i8 %522)
  %524 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %524
  store %struct.std.str.str* %523, %struct.std.str.str** %524
  %525 = load %struct.std.str.str*, %struct.std.str.str** %524
  %526 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %527 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %526, i32 0, i32 2
  %528 = load i64, i64* %527
  %529 = add i64 %528, 1
  store i64 %529, i64* %527
  br label %label.30a

label.30a:			; loop.entry
  %530 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %530
  %531 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %532 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %531, i32 0, i32 2
  %533 = load i64, i64* %532
  %534 = load %struct.std.str.str*, %struct.std.str.str** %src
  %535 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %534, i32 0, i32 1
  %536 = load i64, i64* %535
  %537 = icmp ult i64 %533, %536
  store i1 %537, i1* %530
  br i1 %537, label %label.315, label %label.324

label.315:			; and.true
  %538 = load %struct.std.str.str*, %struct.std.str.str** %src
  %539 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %540 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %539, i32 0, i32 2
  %541 = load i64, i64* %540
  %542 = call i8 @std.str.str.get(%struct.std.str.str* %538, i64 %541)
  %543 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %543
  store i8 %542, i8* %543
  %544 = load i8, i8* %543
  %545 = call i1 @lexer.lexer.is_digit(i8 %544)
  %546 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %546
  store i1 %545, i1* %546
  %547 = load i1, i1* %546
  store i1 %547, i1* %530
  br label %label.324

label.324:			; and.false
  %548 = load i1, i1* %530
  br i1 %548, label %label.327, label %label.33d

label.327:			; loop.cond.true
  %549 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %550 = load %struct.std.str.str*, %struct.std.str.str** %src
  %551 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %552 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %551, i32 0, i32 2
  %553 = load i64, i64* %552
  %554 = call i8 @std.str.str.get(%struct.std.str.str* %550, i64 %553)
  %555 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %555
  store i8 %554, i8* %555
  %556 = load i8, i8* %555
  %557 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %549, i8 %556)
  %558 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %558
  store %struct.std.str.str* %557, %struct.std.str.str** %558
  %559 = load %struct.std.str.str*, %struct.std.str.str** %558
  %560 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %561 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %560, i32 0, i32 2
  %562 = load i64, i64* %561
  %563 = add i64 %562, 1
  store i64 %563, i64* %561
  br label %label.30a

label.33d:			; loop.exit
  %564 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %565 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %564, i32 0, i32 5
  %566 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %567 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %566, i32 0, i32 1
  %568 = load i64, i64* %567
  %569 = add i64 %568, 0 ; i64 -> i64
  %570 = load i64, i64* %565
  %571 = add i64 %570, %569
  store i64 %571, i64* %565
  %572 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %573 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %572, i32 0, i32 2
  %574 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %575 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %574, i32 0, i32 4
  %576 = load i64, i64* %575
  store i64 %576, i64* %573
  %577 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %578 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %577, i32 0, i32 3
  %579 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %580 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %579, i32 0, i32 5
  %581 = load i64, i64* %580
  store i64 %581, i64* %578
  %582 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %583 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %582, i32 0, i32 1
  %584 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %583
  %585 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %586 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %584, i64 1, %struct.std.str.str* %585, %struct.err.span.span* %586)
  ret void 

label.place_holder.35a:
  br label %label.35e

label.35c:			; cond.false
  br label %label.35e

label.35e:			; branch.end
  %587 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %587
  %588 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %588
  %589 = load %struct.std.str.str*, %struct.std.str.str** %src
  %590 = load i64, i64* %lookahead_pos.305
  %591 = call i8 @std.str.str.get(%struct.std.str.str* %589, i64 %590)
  %592 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %592
  store i8 %591, i8* %592
  %593 = load i8, i8* %592
  %594 = icmp eq i8 %593, 45
  store i1 %594, i1* %588
  br i1 %594, label %label.374, label %label.36a

label.36a:			; or.false
  %595 = load %struct.std.str.str*, %struct.std.str.str** %src
  %596 = load i64, i64* %lookahead_pos.305
  %597 = call i8 @std.str.str.get(%struct.std.str.str* %595, i64 %596)
  %598 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %598
  store i8 %597, i8* %598
  %599 = load i8, i8* %598
  %600 = icmp eq i8 %599, 43
  store i1 %600, i1* %588
  br label %label.374

label.374:			; or.true
  %601 = load i1, i1* %588
  store i1 %601, i1* %587
  br i1 %601, label %label.378, label %label.394

label.378:			; and.true
  %602 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %602
  %603 = load i64, i64* %lookahead_pos.305
  %604 = add i64 %603, 1
  %605 = load %struct.std.str.str*, %struct.std.str.str** %src
  %606 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %605, i32 0, i32 1
  %607 = load i64, i64* %606
  %608 = icmp ult i64 %604, %607
  store i1 %608, i1* %602
  br i1 %608, label %label.382, label %label.390

label.382:			; and.true
  %609 = load %struct.std.str.str*, %struct.std.str.str** %src
  %610 = load i64, i64* %lookahead_pos.305
  %611 = add i64 %610, 1
  %612 = call i8 @std.str.str.get(%struct.std.str.str* %609, i64 %611)
  %613 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %613
  store i8 %612, i8* %613
  %614 = load i8, i8* %613
  %615 = call i1 @lexer.lexer.is_digit(i8 %614)
  %616 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %616
  store i1 %615, i1* %616
  %617 = load i1, i1* %616
  store i1 %617, i1* %602
  br label %label.390

label.390:			; and.false
  %618 = load i1, i1* %602
  store i1 %618, i1* %587
  br label %label.394

label.394:			; and.false
  %619 = load i1, i1* %587
  br i1 %619, label %label.397, label %label.40b

label.397:			; cond.true
  %620 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %621 = load %struct.std.str.str*, %struct.std.str.str** %src
  %622 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %623 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %622, i32 0, i32 2
  %624 = load i64, i64* %623
  %625 = call i8 @std.str.str.get(%struct.std.str.str* %621, i64 %624)
  %626 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %626
  store i8 %625, i8* %626
  %627 = load i8, i8* %626
  %628 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %620, i8 %627)
  %629 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %629
  store %struct.std.str.str* %628, %struct.std.str.str** %629
  %630 = load %struct.std.str.str*, %struct.std.str.str** %629
  %631 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %632 = load %struct.std.str.str*, %struct.std.str.str** %src
  %633 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %634 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %633, i32 0, i32 2
  %635 = load i64, i64* %634
  %636 = add i64 %635, 1
  %637 = call i8 @std.str.str.get(%struct.std.str.str* %632, i64 %636)
  %638 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %638
  store i8 %637, i8* %638
  %639 = load i8, i8* %638
  %640 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %631, i8 %639)
  %641 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %641
  store %struct.std.str.str* %640, %struct.std.str.str** %641
  %642 = load %struct.std.str.str*, %struct.std.str.str** %641
  %643 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %644 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %643, i32 0, i32 2
  %645 = load i64, i64* %644
  %646 = add i64 %645, 2
  store i64 %646, i64* %644
  br label %label.3b9

label.3b9:			; loop.entry
  %647 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %647
  %648 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %649 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %648, i32 0, i32 2
  %650 = load i64, i64* %649
  %651 = load %struct.std.str.str*, %struct.std.str.str** %src
  %652 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %651, i32 0, i32 1
  %653 = load i64, i64* %652
  %654 = icmp ult i64 %650, %653
  store i1 %654, i1* %647
  br i1 %654, label %label.3c4, label %label.3d3

label.3c4:			; and.true
  %655 = load %struct.std.str.str*, %struct.std.str.str** %src
  %656 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %657 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %656, i32 0, i32 2
  %658 = load i64, i64* %657
  %659 = call i8 @std.str.str.get(%struct.std.str.str* %655, i64 %658)
  %660 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %660
  store i8 %659, i8* %660
  %661 = load i8, i8* %660
  %662 = call i1 @lexer.lexer.is_digit(i8 %661)
  %663 = getelementptr i1, i1* %_22.real, i32 0 ; %_22.real -> %663
  store i1 %662, i1* %663
  %664 = load i1, i1* %663
  store i1 %664, i1* %647
  br label %label.3d3

label.3d3:			; and.false
  %665 = load i1, i1* %647
  br i1 %665, label %label.3d6, label %label.3ec

label.3d6:			; loop.cond.true
  %666 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %667 = load %struct.std.str.str*, %struct.std.str.str** %src
  %668 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %669 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %668, i32 0, i32 2
  %670 = load i64, i64* %669
  %671 = call i8 @std.str.str.get(%struct.std.str.str* %667, i64 %670)
  %672 = getelementptr i8, i8* %_28.real, i32 0 ; %_28.real -> %672
  store i8 %671, i8* %672
  %673 = load i8, i8* %672
  %674 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %666, i8 %673)
  %675 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %675
  store %struct.std.str.str* %674, %struct.std.str.str** %675
  %676 = load %struct.std.str.str*, %struct.std.str.str** %675
  %677 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %678 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %677, i32 0, i32 2
  %679 = load i64, i64* %678
  %680 = add i64 %679, 1
  store i64 %680, i64* %678
  br label %label.3b9

label.3ec:			; loop.exit
  %681 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %682 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %681, i32 0, i32 5
  %683 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %684 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %683, i32 0, i32 1
  %685 = load i64, i64* %684
  %686 = add i64 %685, 0 ; i64 -> i64
  %687 = load i64, i64* %682
  %688 = add i64 %687, %686
  store i64 %688, i64* %682
  %689 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %690 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %689, i32 0, i32 2
  %691 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %692 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %691, i32 0, i32 4
  %693 = load i64, i64* %692
  store i64 %693, i64* %690
  %694 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %695 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %694, i32 0, i32 3
  %696 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %697 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %696, i32 0, i32 5
  %698 = load i64, i64* %697
  store i64 %698, i64* %695
  %699 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %700 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %699, i32 0, i32 1
  %701 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %700
  %702 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %703 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %701, i64 1, %struct.std.str.str* %702, %struct.err.span.span* %703)
  ret void 

label.place_holder.409:
  br label %label.40d

label.40b:			; cond.false
  br label %label.40d

label.40d:			; branch.end
  br label %label.411

label.40f:			; cond.false
  br label %label.411

label.411:			; branch.end
  %704 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %705 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %704, i32 0, i32 5
  %706 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %707 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %706, i32 0, i32 1
  %708 = load i64, i64* %707
  %709 = add i64 %708, 0 ; i64 -> i64
  %710 = load i64, i64* %705
  %711 = add i64 %710, %709
  store i64 %711, i64* %705
  %712 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %713 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %712, i32 0, i32 2
  %714 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %715 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %714, i32 0, i32 4
  %716 = load i64, i64* %715
  store i64 %716, i64* %713
  %717 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %718 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %717, i32 0, i32 3
  %719 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %720 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %719, i32 0, i32 5
  %721 = load i64, i64* %720
  store i64 %721, i64* %718
  %722 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %723 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %722, i32 0, i32 1
  %724 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %723
  %725 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %726 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %724, i64 1, %struct.std.str.str* %725, %struct.err.span.span* %726)
  ret void 
}

define void @lexer.lexer.generate_string(%struct.lexer.lexer* %self.param, %struct.std.str.str* %src.param) {
entry:
  %self = alloca %struct.lexer.lexer*
  %src = alloca %struct.std.str.str*
  %loc.1 = alloca %struct.err.span.span*
  %quote_type.11 = alloca i8
  %tmp.14 = alloca %struct.std.str.str*
  %this_ch.35 = alloca i8
  %next_ch.65 = alloca i8
  %_1.real = alloca %struct.err.span.span*
  %_24.real = alloca i8
  %_27.real = alloca %struct.std.str.str*
  %_42.real = alloca i1
  store %struct.lexer.lexer* %self.param, %struct.lexer.lexer** %self
  store %struct.std.str.str* %src.param, %struct.std.str.str** %src
  %0 = call %struct.err.span.span* @err.span.span.new()
  %1 = getelementptr %struct.err.span.span*, %struct.err.span.span** %_1.real, i32 0 ; %_1.real -> %1
  store %struct.err.span.span* %0, %struct.err.span.span** %1
  %2 = load %struct.err.span.span*, %struct.err.span.span** %1
  store %struct.err.span.span* %2, %struct.err.span.span** %loc.1
  %3 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %4 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %3, i32 0, i32 4
  %5 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %6 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %6, i32 0, i32 0
  %8 = load i8*, i8** %7
  call void @std.str.str.copy_const(%struct.std.str.str* %4, i8* %8)
  %9 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %10 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %9, i32 0, i32 0
  %11 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %12 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %11, i32 0, i32 4
  %13 = load i64, i64* %12
  store i64 %13, i64* %10
  %14 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %15 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %14, i32 0, i32 1
  %16 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %17 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %16, i32 0, i32 5
  %18 = load i64, i64* %17
  store i64 %18, i64* %15
  %19 = load %struct.std.str.str*, %struct.std.str.str** %src
  %20 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %21 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %20, i32 0, i32 2
  %22 = load i64, i64* %21
  %23 = call i8 @std.str.str.get(%struct.std.str.str* %19, i64 %22)
  %24 = getelementptr i8, i8* %_24.real, i32 0 ; %_24.real -> %24
  store i8 %23, i8* %24
  %25 = load i8, i8* %24
  store i8 %25, i8* %quote_type.11
  %26 = call %struct.std.str.str* @std.str.str.new()
  %27 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_27.real, i32 0 ; %_27.real -> %27
  store %struct.std.str.str* %26, %struct.std.str.str** %27
  %28 = load %struct.std.str.str*, %struct.std.str.str** %27
  store %struct.std.str.str* %28, %struct.std.str.str** %tmp.14
  %29 = load %struct.std.str.str*, %struct.std.str.str** %tmp.14
  %30 = load i8, i8* %quote_type.11
  %31 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %29, i8 %30)
  %32 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_27.real, i32 0 ; %_27.real -> %32
  store %struct.std.str.str* %31, %struct.std.str.str** %32
  %33 = load %struct.std.str.str*, %struct.std.str.str** %32
  %34 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %35 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %34, i32 0, i32 2
  %36 = load i64, i64* %35
  %37 = add i64 %36, 1
  store i64 %37, i64* %35
  %38 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %39 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %38, i32 0, i32 5
  %40 = load i64, i64* %39
  %41 = add i64 %40, 1
  store i64 %41, i64* %39
  br label %label.39

label.39:			; loop.entry
  %42 = getelementptr i1, i1* %_42.real, i32 0 ; %_42.real -> %42
  %43 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %44 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %43, i32 0, i32 2
  %45 = load i64, i64* %44
  %46 = load %struct.std.str.str*, %struct.std.str.str** %src
  %47 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %46, i32 0, i32 1
  %48 = load i64, i64* %47
  %49 = icmp ult i64 %45, %48
  store i1 %49, i1* %42
  br i1 %49, label %label.44, label %label.51

label.44:			; and.true
  %50 = load %struct.std.str.str*, %struct.std.str.str** %src
  %51 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %52 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %51, i32 0, i32 2
  %53 = load i64, i64* %52
  %54 = call i8 @std.str.str.get(%struct.std.str.str* %50, i64 %53)
  %55 = getelementptr i8, i8* %_24.real, i32 0 ; %_24.real -> %55
  store i8 %54, i8* %55
  %56 = load i8, i8* %55
  %57 = load i8, i8* %quote_type.11
  %58 = icmp ne i8 %56, %57
  store i1 %58, i1* %42
  br label %label.51

label.51:			; and.false
  %59 = load i1, i1* %42
  br i1 %59, label %label.54, label %label.153

label.54:			; loop.cond.true
  %60 = load %struct.std.str.str*, %struct.std.str.str** %src
  %61 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %62 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %61, i32 0, i32 2
  %63 = load i64, i64* %62
  %64 = call i8 @std.str.str.get(%struct.std.str.str* %60, i64 %63)
  %65 = getelementptr i8, i8* %_24.real, i32 0 ; %_24.real -> %65
  store i8 %64, i8* %65
  %66 = load i8, i8* %65
  store i8 %66, i8* %this_ch.35
  %67 = load i8, i8* %this_ch.35
  %68 = icmp eq i8 %67, 10
  br i1 %68, label %label.61, label %label.6b

label.61:			; cond.true
  %69 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %70 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %69, i32 0, i32 4
  %71 = load i64, i64* %70
  %72 = add i64 %71, 1
  store i64 %72, i64* %70
  %73 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %74 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %73, i32 0, i32 5
  store i64 0, i64* %74
  br label %label.72

label.6b:			; cond.false
  %75 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %76 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %75, i32 0, i32 5
  %77 = load i64, i64* %76
  %78 = add i64 %77, 1
  store i64 %78, i64* %76
  br label %label.72

label.72:			; branch.end
  %79 = getelementptr i1, i1* %_42.real, i32 0 ; %_42.real -> %79
  %80 = load i8, i8* %this_ch.35
  %81 = icmp eq i8 %80, 92
  store i1 %81, i1* %79
  br i1 %81, label %label.78, label %label.83

label.78:			; and.true
  %82 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %83 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %82, i32 0, i32 2
  %84 = load i64, i64* %83
  %85 = add i64 %84, 1
  %86 = load %struct.std.str.str*, %struct.std.str.str** %src
  %87 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %86, i32 0, i32 1
  %88 = load i64, i64* %87
  %89 = icmp ult i64 %85, %88
  store i1 %89, i1* %79
  br label %label.83

label.83:			; and.false
  %90 = load i1, i1* %79
  br i1 %90, label %label.86, label %label.142

label.86:			; cond.true
  %91 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %92 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %91, i32 0, i32 2
  %93 = load i64, i64* %92
  %94 = add i64 %93, 1
  store i64 %94, i64* %92
  %95 = load %struct.std.str.str*, %struct.std.str.str** %src
  %96 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %97 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %96, i32 0, i32 2
  %98 = load i64, i64* %97
  %99 = call i8 @std.str.str.get(%struct.std.str.str* %95, i64 %98)
  %100 = getelementptr i8, i8* %_24.real, i32 0 ; %_24.real -> %100
  store i8 %99, i8* %100
  %101 = load i8, i8* %100
  store i8 %101, i8* %next_ch.65
  %102 = load i8, i8* %next_ch.65
  %103 = icmp eq i8 %102, 48
  br i1 %103, label %label.98, label %label.9f

label.98:			; cond.true
  %104 = load %struct.std.str.str*, %struct.std.str.str** %tmp.14
  %105 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %104, i8 0)
  %106 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_27.real, i32 0 ; %_27.real -> %106
  store %struct.std.str.str* %105, %struct.std.str.str** %106
  %107 = load %struct.std.str.str*, %struct.std.str.str** %106
  br label %label.12b

label.9f:			; cond.false
  %108 = load i8, i8* %next_ch.65
  %109 = icmp eq i8 %108, 97
  br i1 %109, label %label.a3, label %label.aa

label.a3:			; cond.true
  %110 = load %struct.std.str.str*, %struct.std.str.str** %tmp.14
  %111 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %110, i8 7)
  %112 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_27.real, i32 0 ; %_27.real -> %112
  store %struct.std.str.str* %111, %struct.std.str.str** %112
  %113 = load %struct.std.str.str*, %struct.std.str.str** %112
  br label %label.12b

label.aa:			; cond.false
  %114 = load i8, i8* %next_ch.65
  %115 = icmp eq i8 %114, 98
  br i1 %115, label %label.ae, label %label.b5

label.ae:			; cond.true
  %116 = load %struct.std.str.str*, %struct.std.str.str** %tmp.14
  %117 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %116, i8 8)
  %118 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_27.real, i32 0 ; %_27.real -> %118
  store %struct.std.str.str* %117, %struct.std.str.str** %118
  %119 = load %struct.std.str.str*, %struct.std.str.str** %118
  br label %label.12b

label.b5:			; cond.false
  %120 = load i8, i8* %next_ch.65
  %121 = icmp eq i8 %120, 101
  br i1 %121, label %label.b9, label %label.c0

label.b9:			; cond.true
  %122 = load %struct.std.str.str*, %struct.std.str.str** %tmp.14
  %123 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %122, i8 27)
  %124 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_27.real, i32 0 ; %_27.real -> %124
  store %struct.std.str.str* %123, %struct.std.str.str** %124
  %125 = load %struct.std.str.str*, %struct.std.str.str** %124
  br label %label.12b

label.c0:			; cond.false
  %126 = load i8, i8* %next_ch.65
  %127 = icmp eq i8 %126, 116
  br i1 %127, label %label.c4, label %label.cb

label.c4:			; cond.true
  %128 = load %struct.std.str.str*, %struct.std.str.str** %tmp.14
  %129 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %128, i8 9)
  %130 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_27.real, i32 0 ; %_27.real -> %130
  store %struct.std.str.str* %129, %struct.std.str.str** %130
  %131 = load %struct.std.str.str*, %struct.std.str.str** %130
  br label %label.12b

label.cb:			; cond.false
  %132 = load i8, i8* %next_ch.65
  %133 = icmp eq i8 %132, 110
  br i1 %133, label %label.cf, label %label.d6

label.cf:			; cond.true
  %134 = load %struct.std.str.str*, %struct.std.str.str** %tmp.14
  %135 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %134, i8 10)
  %136 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_27.real, i32 0 ; %_27.real -> %136
  store %struct.std.str.str* %135, %struct.std.str.str** %136
  %137 = load %struct.std.str.str*, %struct.std.str.str** %136
  br label %label.12b

label.d6:			; cond.false
  %138 = load i8, i8* %next_ch.65
  %139 = icmp eq i8 %138, 118
  br i1 %139, label %label.da, label %label.e1

label.da:			; cond.true
  %140 = load %struct.std.str.str*, %struct.std.str.str** %tmp.14
  %141 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %140, i8 11)
  %142 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_27.real, i32 0 ; %_27.real -> %142
  store %struct.std.str.str* %141, %struct.std.str.str** %142
  %143 = load %struct.std.str.str*, %struct.std.str.str** %142
  br label %label.12b

label.e1:			; cond.false
  %144 = load i8, i8* %next_ch.65
  %145 = icmp eq i8 %144, 102
  br i1 %145, label %label.e5, label %label.ec

label.e5:			; cond.true
  %146 = load %struct.std.str.str*, %struct.std.str.str** %tmp.14
  %147 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %146, i8 12)
  %148 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_27.real, i32 0 ; %_27.real -> %148
  store %struct.std.str.str* %147, %struct.std.str.str** %148
  %149 = load %struct.std.str.str*, %struct.std.str.str** %148
  br label %label.12b

label.ec:			; cond.false
  %150 = load i8, i8* %next_ch.65
  %151 = icmp eq i8 %150, 114
  br i1 %151, label %label.f0, label %label.f7

label.f0:			; cond.true
  %152 = load %struct.std.str.str*, %struct.std.str.str** %tmp.14
  %153 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %152, i8 13)
  %154 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_27.real, i32 0 ; %_27.real -> %154
  store %struct.std.str.str* %153, %struct.std.str.str** %154
  %155 = load %struct.std.str.str*, %struct.std.str.str** %154
  br label %label.12b

label.f7:			; cond.false
  %156 = load i8, i8* %next_ch.65
  %157 = icmp eq i8 %156, 63
  br i1 %157, label %label.fb, label %label.102

label.fb:			; cond.true
  %158 = load %struct.std.str.str*, %struct.std.str.str** %tmp.14
  %159 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %158, i8 63)
  %160 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_27.real, i32 0 ; %_27.real -> %160
  store %struct.std.str.str* %159, %struct.std.str.str** %160
  %161 = load %struct.std.str.str*, %struct.std.str.str** %160
  br label %label.12b

label.102:			; cond.false
  %162 = load i8, i8* %next_ch.65
  %163 = icmp eq i8 %162, 92
  br i1 %163, label %label.106, label %label.10d

label.106:			; cond.true
  %164 = load %struct.std.str.str*, %struct.std.str.str** %tmp.14
  %165 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %164, i8 92)
  %166 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_27.real, i32 0 ; %_27.real -> %166
  store %struct.std.str.str* %165, %struct.std.str.str** %166
  %167 = load %struct.std.str.str*, %struct.std.str.str** %166
  br label %label.12b

label.10d:			; cond.false
  %168 = load i8, i8* %next_ch.65
  %169 = icmp eq i8 %168, 39
  br i1 %169, label %label.111, label %label.118

label.111:			; cond.true
  %170 = load %struct.std.str.str*, %struct.std.str.str** %tmp.14
  %171 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %170, i8 39)
  %172 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_27.real, i32 0 ; %_27.real -> %172
  store %struct.std.str.str* %171, %struct.std.str.str** %172
  %173 = load %struct.std.str.str*, %struct.std.str.str** %172
  br label %label.12b

label.118:			; cond.false
  %174 = load i8, i8* %next_ch.65
  %175 = icmp eq i8 %174, 34
  br i1 %175, label %label.11c, label %label.123

label.11c:			; cond.true
  %176 = load %struct.std.str.str*, %struct.std.str.str** %tmp.14
  %177 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %176, i8 34)
  %178 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_27.real, i32 0 ; %_27.real -> %178
  store %struct.std.str.str* %177, %struct.std.str.str** %178
  %179 = load %struct.std.str.str*, %struct.std.str.str** %178
  br label %label.12b

label.123:			; cond.false
  %180 = load %struct.std.str.str*, %struct.std.str.str** %tmp.14
  %181 = load i8, i8* %next_ch.65
  %182 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %180, i8 %181)
  %183 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_27.real, i32 0 ; %_27.real -> %183
  store %struct.std.str.str* %182, %struct.std.str.str** %183
  %184 = load %struct.std.str.str*, %struct.std.str.str** %183
  br label %label.12b

label.12b:			; branch.end
  %185 = load i8, i8* %next_ch.65
  %186 = icmp eq i8 %185, 10
  br i1 %186, label %label.12f, label %label.139

label.12f:			; cond.true
  %187 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %188 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %187, i32 0, i32 4
  %189 = load i64, i64* %188
  %190 = add i64 %189, 1
  store i64 %190, i64* %188
  %191 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %192 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %191, i32 0, i32 5
  store i64 0, i64* %192
  br label %label.140

label.139:			; cond.false
  %193 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %194 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %193, i32 0, i32 5
  %195 = load i64, i64* %194
  %196 = add i64 %195, 1
  store i64 %196, i64* %194
  br label %label.140

label.140:			; branch.end
  br label %label.14a

label.142:			; cond.false
  %197 = load %struct.std.str.str*, %struct.std.str.str** %tmp.14
  %198 = load i8, i8* %this_ch.35
  %199 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %197, i8 %198)
  %200 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_27.real, i32 0 ; %_27.real -> %200
  store %struct.std.str.str* %199, %struct.std.str.str** %200
  %201 = load %struct.std.str.str*, %struct.std.str.str** %200
  br label %label.14a

label.14a:			; branch.end
  %202 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %203 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %202, i32 0, i32 2
  %204 = load i64, i64* %203
  %205 = add i64 %204, 1
  store i64 %205, i64* %203
  br label %label.39

label.153:			; loop.exit
  %206 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %207 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %206, i32 0, i32 2
  %208 = load i64, i64* %207
  %209 = load %struct.std.str.str*, %struct.std.str.str** %src
  %210 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %209, i32 0, i32 1
  %211 = load i64, i64* %210
  %212 = icmp uge i64 %208, %211
  br i1 %212, label %label.15c, label %label.177

label.15c:			; cond.true
  %213 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %214 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %213, i32 0, i32 2
  %215 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %216 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %215, i32 0, i32 4
  %217 = load i64, i64* %216
  store i64 %217, i64* %214
  %218 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %219 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %218, i32 0, i32 3
  %220 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %221 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %220, i32 0, i32 5
  %222 = load i64, i64* %221
  store i64 %222, i64* %219
  %223 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %224 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %223, i32 0, i32 0
  %225 = load %struct.err.report.report*, %struct.err.report.report** %224
  %226 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %227 = getelementptr [34 x i8], [34 x i8]* @const.str.172, i64 0, i64 0
  call void @err.report.report.error(%struct.err.report.report* %225, %struct.err.span.span* %226, i8* %227)
  %228 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @err.span.span.delete(%struct.err.span.span* %228)
  %229 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %230 = bitcast %struct.err.span.span* %229 to i8*
  call void @free(i8* %230)
  ret void 

label.place_holder.175:
  br label %label.179

label.177:			; cond.false
  br label %label.179

label.179:			; branch.end
  %231 = load %struct.std.str.str*, %struct.std.str.str** %tmp.14
  %232 = load i8, i8* %quote_type.11
  %233 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %231, i8 %232)
  %234 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_27.real, i32 0 ; %_27.real -> %234
  store %struct.std.str.str* %233, %struct.std.str.str** %234
  %235 = load %struct.std.str.str*, %struct.std.str.str** %234
  %236 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %237 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %236, i32 0, i32 2
  %238 = load i64, i64* %237
  %239 = add i64 %238, 1
  store i64 %239, i64* %237
  %240 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %241 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %240, i32 0, i32 5
  %242 = load i64, i64* %241
  %243 = add i64 %242, 1
  store i64 %243, i64* %241
  %244 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %245 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %244, i32 0, i32 2
  %246 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %247 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %246, i32 0, i32 4
  %248 = load i64, i64* %247
  store i64 %248, i64* %245
  %249 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %250 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %249, i32 0, i32 3
  %251 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %252 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %251, i32 0, i32 5
  %253 = load i64, i64* %252
  store i64 %253, i64* %250
  %254 = load i8, i8* %quote_type.11
  %255 = icmp eq i8 %254, 34
  br i1 %255, label %label.199, label %label.1a1

label.199:			; cond.true
  %256 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %257 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %256, i32 0, i32 1
  %258 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %257
  %259 = load %struct.std.str.str*, %struct.std.str.str** %tmp.14
  %260 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %258, i64 2, %struct.std.str.str* %259, %struct.err.span.span* %260)
  br label %label.1b9

label.1a1:			; cond.false
  %261 = load %struct.std.str.str*, %struct.std.str.str** %tmp.14
  %262 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %261, i32 0, i32 1
  %263 = load i64, i64* %262
  %264 = icmp ne i64 %263, 3
  br i1 %264, label %label.1a7, label %label.1af

label.1a7:			; cond.true
  %265 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %266 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %265, i32 0, i32 0
  %267 = load %struct.err.report.report*, %struct.err.report.report** %266
  %268 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %269 = getelementptr [35 x i8], [35 x i8]* @const.str.173, i64 0, i64 0
  call void @err.report.report.error(%struct.err.report.report* %267, %struct.err.span.span* %268, i8* %269)
  br label %label.1b1

label.1af:			; cond.false
  br label %label.1b1

label.1b1:			; branch.end
  %270 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %271 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %270, i32 0, i32 1
  %272 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %271
  %273 = load %struct.std.str.str*, %struct.std.str.str** %tmp.14
  %274 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %272, i64 3, %struct.std.str.str* %273, %struct.err.span.span* %274)
  br label %label.1b9

label.1b9:			; branch.end
  ret void 
}

define void @lexer.lexer.generate_coloncolon(%struct.lexer.lexer* %self.param, %struct.std.str.str* %src.param) {
entry:
  %self = alloca %struct.lexer.lexer*
  %src = alloca %struct.std.str.str*
  %loc.1 = alloca %struct.err.span.span*
  %tmp.11 = alloca %struct.std.str.str*
  %_1.real = alloca %struct.err.span.span*
  %_20.real = alloca %struct.std.str.str*
  %_34.real = alloca i1
  %_47.real = alloca i8
  store %struct.lexer.lexer* %self.param, %struct.lexer.lexer** %self
  store %struct.std.str.str* %src.param, %struct.std.str.str** %src
  %0 = call %struct.err.span.span* @err.span.span.new()
  %1 = getelementptr %struct.err.span.span*, %struct.err.span.span** %_1.real, i32 0 ; %_1.real -> %1
  store %struct.err.span.span* %0, %struct.err.span.span** %1
  %2 = load %struct.err.span.span*, %struct.err.span.span** %1
  store %struct.err.span.span* %2, %struct.err.span.span** %loc.1
  %3 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %4 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %3, i32 0, i32 4
  %5 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %6 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %6, i32 0, i32 0
  %8 = load i8*, i8** %7
  call void @std.str.str.copy_const(%struct.std.str.str* %4, i8* %8)
  %9 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %10 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %9, i32 0, i32 0
  %11 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %12 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %11, i32 0, i32 4
  %13 = load i64, i64* %12
  store i64 %13, i64* %10
  %14 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %15 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %14, i32 0, i32 1
  %16 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %17 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %16, i32 0, i32 5
  %18 = load i64, i64* %17
  store i64 %18, i64* %15
  %19 = call %struct.std.str.str* @std.str.str.new()
  %20 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %20
  store %struct.std.str.str* %19, %struct.std.str.str** %20
  %21 = load %struct.std.str.str*, %struct.std.str.str** %20
  store %struct.std.str.str* %21, %struct.std.str.str** %tmp.11
  %22 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %23 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %22, i8 58)
  %24 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %24
  store %struct.std.str.str* %23, %struct.std.str.str** %24
  %25 = load %struct.std.str.str*, %struct.std.str.str** %24
  %26 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %27 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %26, i32 0, i32 2
  %28 = load i64, i64* %27
  %29 = add i64 %28, 1
  store i64 %29, i64* %27
  %30 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %31 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %30, i32 0, i32 5
  %32 = load i64, i64* %31
  %33 = add i64 %32, 1
  store i64 %33, i64* %31
  %34 = getelementptr i1, i1* %_34.real, i32 0 ; %_34.real -> %34
  %35 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %36 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %35, i32 0, i32 2
  %37 = load i64, i64* %36
  %38 = load %struct.std.str.str*, %struct.std.str.str** %src
  %39 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %38, i32 0, i32 1
  %40 = load i64, i64* %39
  %41 = icmp ult i64 %37, %40
  store i1 %41, i1* %34
  br i1 %41, label %label.38, label %label.44

label.38:			; and.true
  %42 = load %struct.std.str.str*, %struct.std.str.str** %src
  %43 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %44 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %43, i32 0, i32 2
  %45 = load i64, i64* %44
  %46 = call i8 @std.str.str.get(%struct.std.str.str* %42, i64 %45)
  %47 = getelementptr i8, i8* %_47.real, i32 0 ; %_47.real -> %47
  store i8 %46, i8* %47
  %48 = load i8, i8* %47
  %49 = icmp eq i8 %48, 58
  store i1 %49, i1* %34
  br label %label.44

label.44:			; and.false
  %50 = load i1, i1* %34
  br i1 %50, label %label.47, label %label.6a

label.47:			; cond.true
  %51 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %52 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %51, i8 58)
  %53 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %53
  store %struct.std.str.str* %52, %struct.std.str.str** %53
  %54 = load %struct.std.str.str*, %struct.std.str.str** %53
  %55 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %56 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %55, i32 0, i32 2
  %57 = load i64, i64* %56
  %58 = add i64 %57, 1
  store i64 %58, i64* %56
  %59 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %60 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %59, i32 0, i32 5
  %61 = load i64, i64* %60
  %62 = add i64 %61, 1
  store i64 %62, i64* %60
  %63 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %64 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %63, i32 0, i32 2
  %65 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %66 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %65, i32 0, i32 4
  %67 = load i64, i64* %66
  store i64 %67, i64* %64
  %68 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %69 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %68, i32 0, i32 3
  %70 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %71 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %70, i32 0, i32 5
  %72 = load i64, i64* %71
  store i64 %72, i64* %69
  %73 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %74 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %73, i32 0, i32 1
  %75 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %74
  %76 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %77 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %75, i64 40, %struct.std.str.str* %76, %struct.err.span.span* %77)
  br label %label.7e

label.6a:			; cond.false
  %78 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %79 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %78, i32 0, i32 2
  %80 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %81 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %80, i32 0, i32 4
  %82 = load i64, i64* %81
  store i64 %82, i64* %79
  %83 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %84 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %83, i32 0, i32 3
  %85 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %86 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %85, i32 0, i32 5
  %87 = load i64, i64* %86
  store i64 %87, i64* %84
  %88 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %89 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %88, i32 0, i32 1
  %90 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %89
  %91 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %92 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %90, i64 39, %struct.std.str.str* %91, %struct.err.span.span* %92)
  br label %label.7e

label.7e:			; branch.end
  ret void 
}

define void @lexer.lexer.generate_ellipsis(%struct.lexer.lexer* %self.param, %struct.std.str.str* %src.param) {
entry:
  %self = alloca %struct.lexer.lexer*
  %src = alloca %struct.std.str.str*
  %loc.1 = alloca %struct.err.span.span*
  %tmp.11 = alloca %struct.std.str.str*
  %_1.real = alloca %struct.err.span.span*
  %_20.real = alloca %struct.std.str.str*
  %_34.real = alloca i1
  %_49.real = alloca i8
  store %struct.lexer.lexer* %self.param, %struct.lexer.lexer** %self
  store %struct.std.str.str* %src.param, %struct.std.str.str** %src
  %0 = call %struct.err.span.span* @err.span.span.new()
  %1 = getelementptr %struct.err.span.span*, %struct.err.span.span** %_1.real, i32 0 ; %_1.real -> %1
  store %struct.err.span.span* %0, %struct.err.span.span** %1
  %2 = load %struct.err.span.span*, %struct.err.span.span** %1
  store %struct.err.span.span* %2, %struct.err.span.span** %loc.1
  %3 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %4 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %3, i32 0, i32 4
  %5 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %6 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %6, i32 0, i32 0
  %8 = load i8*, i8** %7
  call void @std.str.str.copy_const(%struct.std.str.str* %4, i8* %8)
  %9 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %10 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %9, i32 0, i32 0
  %11 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %12 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %11, i32 0, i32 4
  %13 = load i64, i64* %12
  store i64 %13, i64* %10
  %14 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %15 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %14, i32 0, i32 1
  %16 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %17 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %16, i32 0, i32 5
  %18 = load i64, i64* %17
  store i64 %18, i64* %15
  %19 = call %struct.std.str.str* @std.str.str.new()
  %20 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %20
  store %struct.std.str.str* %19, %struct.std.str.str** %20
  %21 = load %struct.std.str.str*, %struct.std.str.str** %20
  store %struct.std.str.str* %21, %struct.std.str.str** %tmp.11
  %22 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %23 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %22, i8 46)
  %24 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %24
  store %struct.std.str.str* %23, %struct.std.str.str** %24
  %25 = load %struct.std.str.str*, %struct.std.str.str** %24
  %26 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %27 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %26, i32 0, i32 2
  %28 = load i64, i64* %27
  %29 = add i64 %28, 1
  store i64 %29, i64* %27
  %30 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %31 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %30, i32 0, i32 5
  %32 = load i64, i64* %31
  %33 = add i64 %32, 1
  store i64 %33, i64* %31
  %34 = getelementptr i1, i1* %_34.real, i32 0 ; %_34.real -> %34
  %35 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %36 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %35, i32 0, i32 2
  %37 = load i64, i64* %36
  %38 = add i64 %37, 1
  %39 = load %struct.std.str.str*, %struct.std.str.str** %src
  %40 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %39, i32 0, i32 1
  %41 = load i64, i64* %40
  %42 = icmp ult i64 %38, %41
  store i1 %42, i1* %34
  br i1 %42, label %label.39, label %label.57

label.39:			; and.true
  %43 = getelementptr i1, i1* %_34.real, i32 0 ; %_34.real -> %43
  %44 = load %struct.std.str.str*, %struct.std.str.str** %src
  %45 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %46 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %45, i32 0, i32 2
  %47 = load i64, i64* %46
  %48 = call i8 @std.str.str.get(%struct.std.str.str* %44, i64 %47)
  %49 = getelementptr i8, i8* %_49.real, i32 0 ; %_49.real -> %49
  store i8 %48, i8* %49
  %50 = load i8, i8* %49
  %51 = icmp eq i8 %50, 46
  store i1 %51, i1* %43
  br i1 %51, label %label.46, label %label.53

label.46:			; and.true
  %52 = load %struct.std.str.str*, %struct.std.str.str** %src
  %53 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %54 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %53, i32 0, i32 2
  %55 = load i64, i64* %54
  %56 = add i64 %55, 1
  %57 = call i8 @std.str.str.get(%struct.std.str.str* %52, i64 %56)
  %58 = getelementptr i8, i8* %_49.real, i32 0 ; %_49.real -> %58
  store i8 %57, i8* %58
  %59 = load i8, i8* %58
  %60 = icmp eq i8 %59, 46
  store i1 %60, i1* %43
  br label %label.53

label.53:			; and.false
  %61 = load i1, i1* %43
  store i1 %61, i1* %34
  br label %label.57

label.57:			; and.false
  %62 = load i1, i1* %34
  br i1 %62, label %label.5a, label %label.81

label.5a:			; cond.true
  %63 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %64 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %63, i8 46)
  %65 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %65
  store %struct.std.str.str* %64, %struct.std.str.str** %65
  %66 = load %struct.std.str.str*, %struct.std.str.str** %65
  %67 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %66, i8 46)
  %68 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_20.real, i32 0 ; %_20.real -> %68
  store %struct.std.str.str* %67, %struct.std.str.str** %68
  %69 = load %struct.std.str.str*, %struct.std.str.str** %68
  %70 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %71 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %70, i32 0, i32 2
  %72 = load i64, i64* %71
  %73 = add i64 %72, 2
  store i64 %73, i64* %71
  %74 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %75 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %74, i32 0, i32 5
  %76 = load i64, i64* %75
  %77 = add i64 %76, 2
  store i64 %77, i64* %75
  %78 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %79 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %78, i32 0, i32 2
  %80 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %81 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %80, i32 0, i32 4
  %82 = load i64, i64* %81
  store i64 %82, i64* %79
  %83 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %84 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %83, i32 0, i32 3
  %85 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %86 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %85, i32 0, i32 5
  %87 = load i64, i64* %86
  store i64 %87, i64* %84
  %88 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %89 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %88, i32 0, i32 1
  %90 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %89
  %91 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %92 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %90, i64 37, %struct.std.str.str* %91, %struct.err.span.span* %92)
  br label %label.95

label.81:			; cond.false
  %93 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %94 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %93, i32 0, i32 2
  %95 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %96 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %95, i32 0, i32 4
  %97 = load i64, i64* %96
  store i64 %97, i64* %94
  %98 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  %99 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %98, i32 0, i32 3
  %100 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %101 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %100, i32 0, i32 5
  %102 = load i64, i64* %101
  store i64 %102, i64* %99
  %103 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %104 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %103, i32 0, i32 1
  %105 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %104
  %106 = load %struct.std.str.str*, %struct.std.str.str** %tmp.11
  %107 = load %struct.err.span.span*, %struct.err.span.span** %loc.1
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %105, i64 36, %struct.std.str.str* %106, %struct.err.span.span* %107)
  br label %label.95

label.95:			; branch.end
  ret void 
}

define void @lexer.lexer.skip_note(%struct.lexer.lexer* %self.param, %struct.std.str.str* %src.param) {
entry:
  %self = alloca %struct.lexer.lexer*
  %src = alloca %struct.std.str.str*
  %_0.real = alloca i1
  %_13.real = alloca i8
  store %struct.lexer.lexer* %self.param, %struct.lexer.lexer** %self
  store %struct.std.str.str* %src.param, %struct.std.str.str** %src
  br label %label.3

label.3:			; loop.entry
  %0 = getelementptr i1, i1* %_0.real, i32 0 ; %_0.real -> %0
  %1 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %2 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %1, i32 0, i32 2
  %3 = load i64, i64* %2
  %4 = load %struct.std.str.str*, %struct.std.str.str** %src
  %5 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %4, i32 0, i32 1
  %6 = load i64, i64* %5
  %7 = icmp ult i64 %3, %6
  store i1 %7, i1* %0
  br i1 %7, label %label.e, label %label.1a

label.e:			; and.true
  %8 = load %struct.std.str.str*, %struct.std.str.str** %src
  %9 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %10 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %9, i32 0, i32 2
  %11 = load i64, i64* %10
  %12 = call i8 @std.str.str.get(%struct.std.str.str* %8, i64 %11)
  %13 = getelementptr i8, i8* %_13.real, i32 0 ; %_13.real -> %13
  store i8 %12, i8* %13
  %14 = load i8, i8* %13
  %15 = icmp ne i8 %14, 10
  store i1 %15, i1* %0
  br label %label.1a

label.1a:			; and.false
  %16 = load i1, i1* %0
  br i1 %16, label %label.1d, label %label.2b

label.1d:			; loop.cond.true
  %17 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %18 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %17, i32 0, i32 2
  %19 = load i64, i64* %18
  %20 = add i64 %19, 1
  store i64 %20, i64* %18
  %21 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %22 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %21, i32 0, i32 5
  %23 = load i64, i64* %22
  %24 = add i64 %23, 1
  store i64 %24, i64* %22
  br label %label.3

label.2b:			; loop.exit
  ret void 
}

define void @lexer.lexer.scan(%struct.lexer.lexer* %self.param, i8* %filename.param) {
entry:
  %self = alloca %struct.lexer.lexer*
  %filename = alloca i8*
  %src.6 = alloca %struct.std.str.str*
  %eof_span.117 = alloca %struct.err.span.span*
  %_10.real = alloca %struct.std.str.str*
  %_15.real = alloca i64
  %_35.real = alloca i8
  %_38.real = alloca i1
  %_173.real = alloca %struct.err.span.span*
  store %struct.lexer.lexer* %self.param, %struct.lexer.lexer** %self
  store i8* %filename.param, i8** %filename
  %0 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %1 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %0, i32 0, i32 3
  call void @std.str.str.clear(%struct.std.str.str* %1)
  %2 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %3 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %2, i32 0, i32 3
  %4 = load i8*, i8** %filename
  call void @std.str.str.copy_const(%struct.std.str.str* %3, i8* %4)
  %5 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %6 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %5, i32 0, i32 0
  %7 = load %struct.err.report.report*, %struct.err.report.report** %6
  %8 = load i8*, i8** %filename
  call void @err.report.report.load_file_source(%struct.err.report.report* %7, i8* %8)
  %9 = call %struct.std.str.str* @std.str.str.new()
  %10 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_10.real, i32 0 ; %_10.real -> %10
  store %struct.std.str.str* %9, %struct.std.str.str** %10
  %11 = load %struct.std.str.str*, %struct.std.str.str** %10
  store %struct.std.str.str* %11, %struct.std.str.str** %src.6
  %12 = load i8*, i8** %filename
  %13 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  %14 = call i64 @readfile_into_string(i8* %12, %struct.std.str.str* %13)
  %15 = getelementptr i64, i64* %_15.real, i32 0 ; %_15.real -> %15
  store i64 %14, i64* %15
  %16 = load i64, i64* %15
  %17 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %18 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %17, i32 0, i32 2
  store i64 0, i64* %18
  %19 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %20 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %19, i32 0, i32 4
  store i64 0, i64* %20
  %21 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %22 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %21, i32 0, i32 5
  store i64 0, i64* %22
  br label %label.23

label.23:			; loop.entry
  %23 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %24 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %23, i32 0, i32 2
  %25 = load i64, i64* %24
  %26 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  %27 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %26, i32 0, i32 1
  %28 = load i64, i64* %27
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %label.2c, label %label.114

label.2c:			; loop.cond.true
  %30 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  %31 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %32 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %31, i32 0, i32 2
  %33 = load i64, i64* %32
  %34 = call i8 @std.str.str.get(%struct.std.str.str* %30, i64 %33)
  %35 = getelementptr i8, i8* %_35.real, i32 0 ; %_35.real -> %35
  store i8 %34, i8* %35
  %36 = load i8, i8* %35
  %37 = call i1 @lexer.lexer.is_identifier_head(i8 %36)
  %38 = getelementptr i1, i1* %_38.real, i32 0 ; %_38.real -> %38
  store i1 %37, i1* %38
  %39 = load i1, i1* %38
  br i1 %39, label %label.3a, label %label.3f

label.3a:			; cond.true
  %40 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %41 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  call void @lexer.lexer.generate_identifier(%struct.lexer.lexer* %40, %struct.std.str.str* %41)
  br label %label.110

label.3f:			; cond.false
  %42 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  %43 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %44 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %43, i32 0, i32 2
  %45 = load i64, i64* %44
  %46 = call i8 @std.str.str.get(%struct.std.str.str* %42, i64 %45)
  %47 = getelementptr i8, i8* %_35.real, i32 0 ; %_35.real -> %47
  store i8 %46, i8* %47
  %48 = load i8, i8* %47
  %49 = call i1 @lexer.lexer.is_digit(i8 %48)
  %50 = getelementptr i1, i1* %_38.real, i32 0 ; %_38.real -> %50
  store i1 %49, i1* %50
  %51 = load i1, i1* %50
  br i1 %51, label %label.4d, label %label.52

label.4d:			; cond.true
  %52 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %53 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  call void @lexer.lexer.generate_number(%struct.lexer.lexer* %52, %struct.std.str.str* %53)
  br label %label.110

label.52:			; cond.false
  %54 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  %55 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %56 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %55, i32 0, i32 2
  %57 = load i64, i64* %56
  %58 = call i8 @std.str.str.get(%struct.std.str.str* %54, i64 %57)
  %59 = getelementptr i8, i8* %_35.real, i32 0 ; %_35.real -> %59
  store i8 %58, i8* %59
  %60 = load i8, i8* %59
  %61 = call i1 @lexer.lexer.is_str(i8 %60)
  %62 = getelementptr i1, i1* %_38.real, i32 0 ; %_38.real -> %62
  store i1 %61, i1* %62
  %63 = load i1, i1* %62
  br i1 %63, label %label.60, label %label.65

label.60:			; cond.true
  %64 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %65 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  call void @lexer.lexer.generate_string(%struct.lexer.lexer* %64, %struct.std.str.str* %65)
  br label %label.110

label.65:			; cond.false
  %66 = getelementptr i1, i1* %_38.real, i32 0 ; %_38.real -> %66
  %67 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %68 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %67, i32 0, i32 2
  %69 = load i64, i64* %68
  %70 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  %71 = call i1 @lexer.lexer.is_arrow(i64 %69, %struct.std.str.str* %70)
  %72 = getelementptr i1, i1* %_38.real, i32 0 ; %_38.real -> %72
  store i1 %71, i1* %72
  %73 = load i1, i1* %72
  store i1 %73, i1* %66
  br i1 %73, label %label.7c, label %label.71

label.71:			; or.false
  %74 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %75 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %74, i32 0, i32 2
  %76 = load i64, i64* %75
  %77 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  %78 = call i1 @lexer.lexer.is_wide_arrow(i64 %76, %struct.std.str.str* %77)
  %79 = getelementptr i1, i1* %_38.real, i32 0 ; %_38.real -> %79
  store i1 %78, i1* %79
  %80 = load i1, i1* %79
  store i1 %80, i1* %66
  br label %label.7c

label.7c:			; or.true
  %81 = load i1, i1* %66
  br i1 %81, label %label.7f, label %label.84

label.7f:			; cond.true
  %82 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %83 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  call void @lexer.lexer.generate_arrow(%struct.lexer.lexer* %82, %struct.std.str.str* %83)
  br label %label.110

label.84:			; cond.false
  %84 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  %85 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %86 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %85, i32 0, i32 2
  %87 = load i64, i64* %86
  %88 = call i8 @std.str.str.get(%struct.std.str.str* %84, i64 %87)
  %89 = getelementptr i8, i8* %_35.real, i32 0 ; %_35.real -> %89
  store i8 %88, i8* %89
  %90 = load i8, i8* %89
  %91 = call i1 @lexer.lexer.is_single_char_token(i8 %90)
  %92 = getelementptr i1, i1* %_38.real, i32 0 ; %_38.real -> %92
  store i1 %91, i1* %92
  %93 = load i1, i1* %92
  br i1 %93, label %label.92, label %label.97

label.92:			; cond.true
  %94 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %95 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  call void @lexer.lexer.generate_single_char_token(%struct.lexer.lexer* %94, %struct.std.str.str* %95)
  br label %label.110

label.97:			; cond.false
  %96 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  %97 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %98 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %97, i32 0, i32 2
  %99 = load i64, i64* %98
  %100 = call i8 @std.str.str.get(%struct.std.str.str* %96, i64 %99)
  %101 = getelementptr i8, i8* %_35.real, i32 0 ; %_35.real -> %101
  store i8 %100, i8* %101
  %102 = load i8, i8* %101
  %103 = call i1 @lexer.lexer.need_lookahead_eq(i8 %102)
  %104 = getelementptr i1, i1* %_38.real, i32 0 ; %_38.real -> %104
  store i1 %103, i1* %104
  %105 = load i1, i1* %104
  br i1 %105, label %label.a5, label %label.aa

label.a5:			; cond.true
  %106 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %107 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  call void @lexer.lexer.generate_maybe_need_eq_oprs(%struct.lexer.lexer* %106, %struct.std.str.str* %107)
  br label %label.110

label.aa:			; cond.false
  %108 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  %109 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %110 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %109, i32 0, i32 2
  %111 = load i64, i64* %110
  %112 = call i8 @std.str.str.get(%struct.std.str.str* %108, i64 %111)
  %113 = getelementptr i8, i8* %_35.real, i32 0 ; %_35.real -> %113
  store i8 %112, i8* %113
  %114 = load i8, i8* %113
  %115 = call i1 @lexer.lexer.need_lookahead_other(i8 %114)
  %116 = getelementptr i1, i1* %_38.real, i32 0 ; %_38.real -> %116
  store i1 %115, i1* %116
  %117 = load i1, i1* %116
  br i1 %117, label %label.b8, label %label.bd

label.b8:			; cond.true
  %118 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %119 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  call void @lexer.lexer.generate_lookahead_other(%struct.lexer.lexer* %118, %struct.std.str.str* %119)
  br label %label.110

label.bd:			; cond.false
  %120 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  %121 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %122 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %121, i32 0, i32 2
  %123 = load i64, i64* %122
  %124 = call i8 @std.str.str.get(%struct.std.str.str* %120, i64 %123)
  %125 = getelementptr i8, i8* %_35.real, i32 0 ; %_35.real -> %125
  store i8 %124, i8* %125
  %126 = load i8, i8* %125
  %127 = icmp eq i8 %126, 58
  br i1 %127, label %label.c8, label %label.cd

label.c8:			; cond.true
  %128 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %129 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  call void @lexer.lexer.generate_coloncolon(%struct.lexer.lexer* %128, %struct.std.str.str* %129)
  br label %label.110

label.cd:			; cond.false
  %130 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  %131 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %132 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %131, i32 0, i32 2
  %133 = load i64, i64* %132
  %134 = call i8 @std.str.str.get(%struct.std.str.str* %130, i64 %133)
  %135 = getelementptr i8, i8* %_35.real, i32 0 ; %_35.real -> %135
  store i8 %134, i8* %135
  %136 = load i8, i8* %135
  %137 = icmp eq i8 %136, 46
  br i1 %137, label %label.d8, label %label.dd

label.d8:			; cond.true
  %138 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %139 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  call void @lexer.lexer.generate_ellipsis(%struct.lexer.lexer* %138, %struct.std.str.str* %139)
  br label %label.110

label.dd:			; cond.false
  %140 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  %141 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %142 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %141, i32 0, i32 2
  %143 = load i64, i64* %142
  %144 = call i8 @std.str.str.get(%struct.std.str.str* %140, i64 %143)
  %145 = getelementptr i8, i8* %_35.real, i32 0 ; %_35.real -> %145
  store i8 %144, i8* %145
  %146 = load i8, i8* %145
  %147 = icmp eq i8 %146, 35
  br i1 %147, label %label.e8, label %label.ed

label.e8:			; cond.true
  %148 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %149 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  call void @lexer.lexer.skip_note(%struct.lexer.lexer* %148, %struct.std.str.str* %149)
  br label %label.110

label.ed:			; cond.false
  %150 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  %151 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %152 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %151, i32 0, i32 2
  %153 = load i64, i64* %152
  %154 = call i8 @std.str.str.get(%struct.std.str.str* %150, i64 %153)
  %155 = getelementptr i8, i8* %_35.real, i32 0 ; %_35.real -> %155
  store i8 %154, i8* %155
  %156 = load i8, i8* %155
  %157 = icmp eq i8 %156, 10
  br i1 %157, label %label.f8, label %label.102

label.f8:			; cond.true
  %158 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %159 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %158, i32 0, i32 4
  %160 = load i64, i64* %159
  %161 = add i64 %160, 1
  store i64 %161, i64* %159
  %162 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %163 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %162, i32 0, i32 5
  store i64 0, i64* %163
  br label %label.109

label.102:			; cond.false
  %164 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %165 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %164, i32 0, i32 5
  %166 = load i64, i64* %165
  %167 = add i64 %166, 1
  store i64 %167, i64* %165
  br label %label.109

label.109:			; branch.end
  %168 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %169 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %168, i32 0, i32 2
  %170 = load i64, i64* %169
  %171 = add i64 %170, 1
  store i64 %171, i64* %169
  br label %label.110

label.110:			; branch.end
  br label %label.23

label.114:			; loop.exit
  %172 = call %struct.err.span.span* @err.span.span.new()
  %173 = getelementptr %struct.err.span.span*, %struct.err.span.span** %_173.real, i32 0 ; %_173.real -> %173
  store %struct.err.span.span* %172, %struct.err.span.span** %173
  %174 = load %struct.err.span.span*, %struct.err.span.span** %173
  store %struct.err.span.span* %174, %struct.err.span.span** %eof_span.117
  %175 = load %struct.err.span.span*, %struct.err.span.span** %eof_span.117
  %176 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %175, i32 0, i32 4
  %177 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %178 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %178, i32 0, i32 0
  %180 = load i8*, i8** %179
  call void @std.str.str.copy_const(%struct.std.str.str* %176, i8* %180)
  %181 = load %struct.err.span.span*, %struct.err.span.span** %eof_span.117
  %182 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %181, i32 0, i32 0
  %183 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %184 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %183, i32 0, i32 4
  %185 = load i64, i64* %184
  store i64 %185, i64* %182
  %186 = load %struct.err.span.span*, %struct.err.span.span** %eof_span.117
  %187 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %186, i32 0, i32 1
  %188 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %189 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %188, i32 0, i32 5
  %190 = load i64, i64* %189
  store i64 %190, i64* %187
  %191 = load %struct.err.span.span*, %struct.err.span.span** %eof_span.117
  %192 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %191, i32 0, i32 2
  %193 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %194 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %193, i32 0, i32 4
  %195 = load i64, i64* %194
  store i64 %195, i64* %192
  %196 = load %struct.err.span.span*, %struct.err.span.span** %eof_span.117
  %197 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %196, i32 0, i32 3
  %198 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %199 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %198, i32 0, i32 5
  %200 = load i64, i64* %199
  store i64 %200, i64* %197
  %201 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %202 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %201, i32 0, i32 1
  %203 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %202
  %204 = call %struct.std.str.str* @std.str.str.new()
  %205 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_10.real, i32 0 ; %_10.real -> %205
  store %struct.std.str.str* %204, %struct.std.str.str** %205
  %206 = load %struct.std.str.str*, %struct.std.str.str** %205
  %207 = getelementptr [6 x i8], [6 x i8]* @const.str.174, i64 0, i64 0
  %208 = call %struct.std.str.str* @std.str.str.append_i8_vec(%struct.std.str.str* %206, i8* %207)
  %209 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_10.real, i32 0 ; %_10.real -> %209
  store %struct.std.str.str* %208, %struct.std.str.str** %209
  %210 = load %struct.std.str.str*, %struct.std.str.str** %209
  %211 = load %struct.err.span.span*, %struct.err.span.span** %eof_span.117
  call void @lexer.vec_token.append(%struct.lexer.vec_token* %203, i64 69, %struct.std.str.str* %210, %struct.err.span.span* %211)
  %212 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  call void @std.str.str.delete(%struct.std.str.str* %212)
  %213 = load %struct.std.str.str*, %struct.std.str.str** %src.6
  %214 = bitcast %struct.std.str.str* %213 to i8*
  call void @free(i8* %214)
  ret void 
}

define void @lexer.lexer.dump(%struct.lexer.lexer* %self.param) {
entry:
  %self = alloca %struct.lexer.lexer*
  %index.1 = alloca i64
  %loc.8 = alloca %struct.err.span.span*
  %_17.real = alloca %struct.std.io.io
  %_28.real = alloca i8*
  store %struct.lexer.lexer* %self.param, %struct.lexer.lexer** %self
  store i64 0, i64* %index.1
  br label %label.3

label.3:			; loop.entry
  %0 = load i64, i64* %index.1
  %1 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %2 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %1, i32 0, i32 1
  %3 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %2
  %4 = getelementptr inbounds %struct.lexer.vec_token, %struct.lexer.vec_token* %3, i32 0, i32 1
  %5 = load i64, i64* %4
  %6 = icmp ult i64 %0, %5
  br i1 %6, label %label.c, label %label.89

label.c:			; loop.cond.true
  %7 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %8 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %7, i32 0, i32 1
  %9 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %8
  %10 = getelementptr inbounds %struct.lexer.vec_token, %struct.lexer.vec_token* %9, i32 0, i32 0
  %11 = load i64, i64* %index.1
  %12 = load %struct.lexer.token*, %struct.lexer.token** %10
  %13 = getelementptr %struct.lexer.token, %struct.lexer.token* %12, i64 %11
  %14 = getelementptr inbounds %struct.lexer.token, %struct.lexer.token* %13, i32 0, i32 2
  %15 = load %struct.err.span.span*, %struct.err.span.span** %14
  store %struct.err.span.span* %15, %struct.err.span.span** %loc.8
  %16 = call %struct.std.io.io @std.io.io.stderr()
  %17 = getelementptr %struct.std.io.io, %struct.std.io.io* %_17.real, i32 0 ; %_17.real -> %17
  store %struct.std.io.io %16, %struct.std.io.io* %17
  %18 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %19 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %18, i32 0, i32 1
  %20 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %19
  %21 = getelementptr inbounds %struct.lexer.vec_token, %struct.lexer.vec_token* %20, i32 0, i32 0
  %22 = load i64, i64* %index.1
  %23 = load %struct.lexer.token*, %struct.lexer.token** %21
  %24 = getelementptr %struct.lexer.token, %struct.lexer.token* %23, i64 %22
  %25 = getelementptr inbounds %struct.lexer.token, %struct.lexer.token* %24, i32 0, i32 0
  %26 = load i64, i64* %25
  %27 = call i8* @tok_kind_to_str(i64 %26)
  %28 = getelementptr i8*, i8** %_28.real, i32 0 ; %_28.real -> %28
  store i8* %27, i8** %28
  %29 = load i8*, i8** %28
  %30 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %17, i8* %29)
  %31 = getelementptr %struct.std.io.io, %struct.std.io.io* %_17.real, i32 0 ; %_17.real -> %31
  store %struct.std.io.io %30, %struct.std.io.io* %31
  %32 = getelementptr [3 x i8], [3 x i8]* @const.str.175, i64 0, i64 0
  %33 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %31, i8* %32)
  %34 = getelementptr %struct.std.io.io, %struct.std.io.io* %_17.real, i32 0 ; %_17.real -> %34
  store %struct.std.io.io %33, %struct.std.io.io* %34
  %35 = load %struct.err.span.span*, %struct.err.span.span** %loc.8
  %36 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %36, i32 0, i32 0
  %38 = load i8*, i8** %37
  %39 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %34, i8* %38)
  %40 = getelementptr %struct.std.io.io, %struct.std.io.io* %_17.real, i32 0 ; %_17.real -> %40
  store %struct.std.io.io %39, %struct.std.io.io* %40
  %41 = getelementptr [2 x i8], [2 x i8]* @const.str.176, i64 0, i64 0
  %42 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %40, i8* %41)
  %43 = getelementptr %struct.std.io.io, %struct.std.io.io* %_17.real, i32 0 ; %_17.real -> %43
  store %struct.std.io.io %42, %struct.std.io.io* %43
  %44 = load %struct.err.span.span*, %struct.err.span.span** %loc.8
  %45 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %44, i32 0, i32 0
  %46 = load i64, i64* %45
  %47 = add i64 %46, 1
  %48 = call %struct.std.io.io @std.io.io.out_i64(%struct.std.io.io* %43, i64 %47)
  %49 = getelementptr %struct.std.io.io, %struct.std.io.io* %_17.real, i32 0 ; %_17.real -> %49
  store %struct.std.io.io %48, %struct.std.io.io* %49
  %50 = getelementptr [2 x i8], [2 x i8]* @const.str.176, i64 0, i64 0
  %51 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %49, i8* %50)
  %52 = getelementptr %struct.std.io.io, %struct.std.io.io* %_17.real, i32 0 ; %_17.real -> %52
  store %struct.std.io.io %51, %struct.std.io.io* %52
  %53 = load %struct.err.span.span*, %struct.err.span.span** %loc.8
  %54 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %53, i32 0, i32 1
  %55 = load i64, i64* %54
  %56 = add i64 %55, 1
  %57 = call %struct.std.io.io @std.io.io.out_i64(%struct.std.io.io* %52, i64 %56)
  %58 = getelementptr %struct.std.io.io, %struct.std.io.io* %_17.real, i32 0 ; %_17.real -> %58
  store %struct.std.io.io %57, %struct.std.io.io* %58
  %59 = getelementptr [5 x i8], [5 x i8]* @const.str.177, i64 0, i64 0
  %60 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %58, i8* %59)
  %61 = getelementptr %struct.std.io.io, %struct.std.io.io* %_17.real, i32 0 ; %_17.real -> %61
  store %struct.std.io.io %60, %struct.std.io.io* %61
  %62 = load %struct.err.span.span*, %struct.err.span.span** %loc.8
  %63 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %63, i32 0, i32 0
  %65 = load i8*, i8** %64
  %66 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %61, i8* %65)
  %67 = getelementptr %struct.std.io.io, %struct.std.io.io* %_17.real, i32 0 ; %_17.real -> %67
  store %struct.std.io.io %66, %struct.std.io.io* %67
  %68 = getelementptr [2 x i8], [2 x i8]* @const.str.176, i64 0, i64 0
  %69 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %67, i8* %68)
  %70 = getelementptr %struct.std.io.io, %struct.std.io.io* %_17.real, i32 0 ; %_17.real -> %70
  store %struct.std.io.io %69, %struct.std.io.io* %70
  %71 = load %struct.err.span.span*, %struct.err.span.span** %loc.8
  %72 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %71, i32 0, i32 2
  %73 = load i64, i64* %72
  %74 = add i64 %73, 1
  %75 = call %struct.std.io.io @std.io.io.out_i64(%struct.std.io.io* %70, i64 %74)
  %76 = getelementptr %struct.std.io.io, %struct.std.io.io* %_17.real, i32 0 ; %_17.real -> %76
  store %struct.std.io.io %75, %struct.std.io.io* %76
  %77 = getelementptr [2 x i8], [2 x i8]* @const.str.176, i64 0, i64 0
  %78 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %76, i8* %77)
  %79 = getelementptr %struct.std.io.io, %struct.std.io.io* %_17.real, i32 0 ; %_17.real -> %79
  store %struct.std.io.io %78, %struct.std.io.io* %79
  %80 = load %struct.err.span.span*, %struct.err.span.span** %loc.8
  %81 = getelementptr inbounds %struct.err.span.span, %struct.err.span.span* %80, i32 0, i32 3
  %82 = load i64, i64* %81
  %83 = add i64 %82, 1
  %84 = call %struct.std.io.io @std.io.io.out_i64(%struct.std.io.io* %79, i64 %83)
  %85 = getelementptr %struct.std.io.io, %struct.std.io.io* %_17.real, i32 0 ; %_17.real -> %85
  store %struct.std.io.io %84, %struct.std.io.io* %85
  %86 = getelementptr [4 x i8], [4 x i8]* @const.str.178, i64 0, i64 0
  %87 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %85, i8* %86)
  %88 = getelementptr %struct.std.io.io, %struct.std.io.io* %_17.real, i32 0 ; %_17.real -> %88
  store %struct.std.io.io %87, %struct.std.io.io* %88
  %89 = load %struct.lexer.lexer*, %struct.lexer.lexer** %self
  %90 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %89, i32 0, i32 1
  %91 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %90
  %92 = getelementptr inbounds %struct.lexer.vec_token, %struct.lexer.vec_token* %91, i32 0, i32 0
  %93 = load i64, i64* %index.1
  %94 = load %struct.lexer.token*, %struct.lexer.token** %92
  %95 = getelementptr %struct.lexer.token, %struct.lexer.token* %94, i64 %93
  %96 = getelementptr inbounds %struct.lexer.token, %struct.lexer.token* %95, i32 0, i32 1
  %97 = load %struct.std.str.str*, %struct.std.str.str** %96
  %98 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %97, i32 0, i32 0
  %99 = load i8*, i8** %98
  %100 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %88, i8* %99)
  %101 = getelementptr %struct.std.io.io, %struct.std.io.io* %_17.real, i32 0 ; %_17.real -> %101
  store %struct.std.io.io %100, %struct.std.io.io* %101
  %102 = getelementptr [2 x i8], [2 x i8]* @const.str.179, i64 0, i64 0
  %103 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %101, i8* %102)
  %104 = getelementptr %struct.std.io.io, %struct.std.io.io* %_17.real, i32 0 ; %_17.real -> %104
  store %struct.std.io.io %103, %struct.std.io.io* %104
  call void @std.io.io.endln(%struct.std.io.io* %104)
  %105 = load i64, i64* %index.1
  %106 = add i64 %105, 1
  store i64 %106, i64* %index.1
  br label %label.3

label.89:			; loop.exit
  ret void 
}

define %struct.ast.ast.ast @ast.ast.ast.instance(i64 %k.param, %struct.err.span.span* %loc.param) {
entry:
  %k = alloca i64
  %loc = alloca %struct.err.span.span*
  %_0.real = alloca %struct.ast.ast.ast
  store i64 %k.param, i64* %k
  store %struct.err.span.span* %loc.param, %struct.err.span.span** %loc
  %0 = getelementptr %struct.ast.ast.ast, %struct.ast.ast.ast* %_0.real, i32 0 ; %_0.real -> %0
  store %struct.ast.ast.ast zeroinitializer, %struct.ast.ast.ast* %0
  %1 = getelementptr inbounds %struct.ast.ast.ast, %struct.ast.ast.ast* %0, i32 0, i32 0
  %2 = load i64, i64* %k
  store i64 %2, i64* %1
  %3 = getelementptr inbounds %struct.ast.ast.ast, %struct.ast.ast.ast* %0, i32 0, i32 1
  %4 = load %struct.err.span.span*, %struct.err.span.span** %loc
  store %struct.err.span.span* %4, %struct.err.span.span** %3
  %5 = load %struct.ast.ast.ast, %struct.ast.ast.ast* %0
  ret %struct.ast.ast.ast %5
}

define void @ast.ast.ast.delete(%struct.ast.ast.ast* %self.param) {
entry:
  %self = alloca %struct.ast.ast.ast*
  store %struct.ast.ast.ast* %self.param, %struct.ast.ast.ast** %self
  %0 = load %struct.ast.ast.ast*, %struct.ast.ast.ast** %self
  %1 = getelementptr inbounds %struct.ast.ast.ast, %struct.ast.ast.ast* %0, i32 0, i32 1
  %2 = load %struct.err.span.span*, %struct.err.span.span** %1
  call void @err.span.span.delete(%struct.err.span.span* %2)
  %3 = load %struct.ast.ast.ast*, %struct.ast.ast.ast** %self
  %4 = getelementptr inbounds %struct.ast.ast.ast, %struct.ast.ast.ast* %3, i32 0, i32 1
  %5 = load %struct.err.span.span*, %struct.err.span.span** %4
  %6 = bitcast %struct.err.span.span* %5 to i8*
  call void @free(i8* %6)
  ret void 
}

define void @ast.ast.ptr_vec.init(%struct.ast.ast.ptr_vec* %self.param) {
entry:
  %self = alloca %struct.ast.ast.ptr_vec*
  %ptr_size.1 = alloca i64
  %_12.real = alloca i8*
  store %struct.ast.ast.ptr_vec* %self.param, %struct.ast.ast.ptr_vec** %self
  store i64 8, i64* %ptr_size.1
  %0 = load %struct.ast.ast.ptr_vec*, %struct.ast.ast.ptr_vec** %self
  %1 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %0, i32 0, i32 1
  store i64 0, i64* %1
  %2 = load %struct.ast.ast.ptr_vec*, %struct.ast.ast.ptr_vec** %self
  %3 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %2, i32 0, i32 2
  store i64 256, i64* %3
  %4 = load %struct.ast.ast.ptr_vec*, %struct.ast.ast.ptr_vec** %self
  %5 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %4, i32 0, i32 0
  %6 = load %struct.ast.ast.ptr_vec*, %struct.ast.ast.ptr_vec** %self
  %7 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %6, i32 0, i32 2
  %8 = load i64, i64* %7
  %9 = load i64, i64* %ptr_size.1
  %10 = mul i64 %8, %9
  %11 = call i8* @malloc(i64 %10)
  %12 = getelementptr i8*, i8** %_12.real, i32 0 ; %_12.real -> %12
  store i8* %11, i8** %12
  %13 = load i8*, i8** %12
  %14 = bitcast i8* %13 to i8**
  store i8** %14, i8*** %5
  ret void 
}

define void @ast.ast.ptr_vec.delete(%struct.ast.ast.ptr_vec* %self.param) {
entry:
  %self = alloca %struct.ast.ast.ptr_vec*
  store %struct.ast.ast.ptr_vec* %self.param, %struct.ast.ast.ptr_vec** %self
  %0 = load %struct.ast.ast.ptr_vec*, %struct.ast.ast.ptr_vec** %self
  %1 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %0, i32 0, i32 1
  store i64 0, i64* %1
  %2 = load %struct.ast.ast.ptr_vec*, %struct.ast.ast.ptr_vec** %self
  %3 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %2, i32 0, i32 2
  store i64 0, i64* %3
  %4 = load %struct.ast.ast.ptr_vec*, %struct.ast.ast.ptr_vec** %self
  %5 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %4, i32 0, i32 0
  %6 = load i8**, i8*** %5
  %7 = bitcast i8** %6 to i8*
  call void @free(i8* %7)
  ret void 
}

define void @ast.ast.ptr_vec.expand(%struct.ast.ast.ptr_vec* %self.param) {
entry:
  %self = alloca %struct.ast.ast.ptr_vec*
  %ptr_size.1 = alloca i64
  %_16.real = alloca i8*
  store %struct.ast.ast.ptr_vec* %self.param, %struct.ast.ast.ptr_vec** %self
  store i64 8, i64* %ptr_size.1
  %0 = load %struct.ast.ast.ptr_vec*, %struct.ast.ast.ptr_vec** %self
  %1 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %0, i32 0, i32 2
  %2 = load i64, i64* %1
  %3 = mul i64 %2, 2
  store i64 %3, i64* %1
  %4 = load %struct.ast.ast.ptr_vec*, %struct.ast.ast.ptr_vec** %self
  %5 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %4, i32 0, i32 0
  %6 = load %struct.ast.ast.ptr_vec*, %struct.ast.ast.ptr_vec** %self
  %7 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %6, i32 0, i32 0
  %8 = load i8**, i8*** %7
  %9 = bitcast i8** %8 to i8*
  %10 = load %struct.ast.ast.ptr_vec*, %struct.ast.ast.ptr_vec** %self
  %11 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %10, i32 0, i32 2
  %12 = load i64, i64* %11
  %13 = load i64, i64* %ptr_size.1
  %14 = mul i64 %12, %13
  %15 = call i8* @realloc(i8* %9, i64 %14)
  %16 = getelementptr i8*, i8** %_16.real, i32 0 ; %_16.real -> %16
  store i8* %15, i8** %16
  %17 = load i8*, i8** %16
  %18 = bitcast i8* %17 to i8**
  store i8** %18, i8*** %5
  ret void 
}

define void @ast.ast.ptr_vec.push(%struct.ast.ast.ptr_vec* %self.param, i8* %item.param) {
entry:
  %self = alloca %struct.ast.ast.ptr_vec*
  %item = alloca i8*
  store %struct.ast.ast.ptr_vec* %self.param, %struct.ast.ast.ptr_vec** %self
  store i8* %item.param, i8** %item
  %0 = load %struct.ast.ast.ptr_vec*, %struct.ast.ast.ptr_vec** %self
  %1 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %0, i32 0, i32 1
  %2 = load i64, i64* %1
  %3 = load %struct.ast.ast.ptr_vec*, %struct.ast.ast.ptr_vec** %self
  %4 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %3, i32 0, i32 2
  %5 = load i64, i64* %4
  %6 = icmp eq i64 %2, %5
  br i1 %6, label %label.a, label %label.e

label.a:			; cond.true
  %7 = load %struct.ast.ast.ptr_vec*, %struct.ast.ast.ptr_vec** %self
  call void @ast.ast.ptr_vec.expand(%struct.ast.ast.ptr_vec* %7)
  br label %label.10

label.e:			; cond.false
  br label %label.10

label.10:			; branch.end
  %8 = load %struct.ast.ast.ptr_vec*, %struct.ast.ast.ptr_vec** %self
  %9 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %8, i32 0, i32 0
  %10 = load %struct.ast.ast.ptr_vec*, %struct.ast.ast.ptr_vec** %self
  %11 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %10, i32 0, i32 1
  %12 = load i64, i64* %11
  %13 = load i8**, i8*** %9
  %14 = getelementptr i8*, i8** %13, i64 %12
  %15 = load i8*, i8** %item
  store i8* %15, i8** %14
  %16 = load %struct.ast.ast.ptr_vec*, %struct.ast.ast.ptr_vec** %self
  %17 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %16, i32 0, i32 1
  %18 = load i64, i64* %17
  %19 = add i64 %18, 1
  store i64 %19, i64* %17
  ret void 
}

define i8* @ast.ast.ptr_vec.back(%struct.ast.ast.ptr_vec* %self.param) {
entry:
  %self = alloca %struct.ast.ast.ptr_vec*
  store %struct.ast.ast.ptr_vec* %self.param, %struct.ast.ast.ptr_vec** %self
  %0 = load %struct.ast.ast.ptr_vec*, %struct.ast.ast.ptr_vec** %self
  %1 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %0, i32 0, i32 1
  %2 = load i64, i64* %1
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %label.6, label %label.a

label.6:			; cond.true
  ret i8* null

label.place_holder.8:
  br label %label.c

label.a:			; cond.false
  br label %label.c

label.c:			; branch.end
  %4 = load %struct.ast.ast.ptr_vec*, %struct.ast.ast.ptr_vec** %self
  %5 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %4, i32 0, i32 0
  %6 = load %struct.ast.ast.ptr_vec*, %struct.ast.ast.ptr_vec** %self
  %7 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %6, i32 0, i32 1
  %8 = load i64, i64* %7
  %9 = sub i64 %8, 1
  %10 = load i8**, i8*** %5
  %11 = getelementptr i8*, i8** %10, i64 %9
  %12 = load i8*, i8** %11
  ret i8* %12
}

define void @ast.ast.ptr_vec.pop(%struct.ast.ast.ptr_vec* %self.param) {
entry:
  %self = alloca %struct.ast.ast.ptr_vec*
  store %struct.ast.ast.ptr_vec* %self.param, %struct.ast.ast.ptr_vec** %self
  %0 = load %struct.ast.ast.ptr_vec*, %struct.ast.ast.ptr_vec** %self
  %1 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %0, i32 0, i32 1
  %2 = load i64, i64* %1
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %label.6, label %label.a

label.6:			; cond.true
  ret void 

label.place_holder.8:
  br label %label.c

label.a:			; cond.false
  br label %label.c

label.c:			; branch.end
  %4 = load %struct.ast.ast.ptr_vec*, %struct.ast.ast.ptr_vec** %self
  %5 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %4, i32 0, i32 1
  %6 = load i64, i64* %5
  %7 = sub i64 %6, 1
  store i64 %7, i64* %5
  ret void 
}

define %struct.ast.ast.root* @ast.ast.root.new(%struct.err.span.span* %loc.param) {
entry:
  %loc = alloca %struct.err.span.span*
  %res.1 = alloca %struct.ast.ast.root*
  %_1.real = alloca %struct.ast.ast.root*
  store %struct.err.span.span* %loc.param, %struct.err.span.span** %loc
  %0 = call %struct.ast.ast.root* @ast.ast.root.__alloc__()
  %1 = getelementptr %struct.ast.ast.root*, %struct.ast.ast.root** %_1.real, i32 0 ; %_1.real -> %1
  store %struct.ast.ast.root* %0, %struct.ast.ast.root** %1
  %2 = load %struct.ast.ast.root*, %struct.ast.ast.root** %1
  store %struct.ast.ast.root* %2, %struct.ast.ast.root** %res.1
  %3 = load %struct.ast.ast.root*, %struct.ast.ast.root** %res.1
  %4 = load %struct.err.span.span*, %struct.err.span.span** %loc
  call void @ast.ast.root.init(%struct.ast.ast.root* %3, %struct.err.span.span* %4)
  %5 = load %struct.ast.ast.root*, %struct.ast.ast.root** %res.1
  ret %struct.ast.ast.root* %5
}

define void @ast.ast.root.init(%struct.ast.ast.root* %self.param, %struct.err.span.span* %loc.param) {
entry:
  %self = alloca %struct.ast.ast.root*
  %loc = alloca %struct.err.span.span*
  %_4.real = alloca %struct.ast.ast.ast
  store %struct.ast.ast.root* %self.param, %struct.ast.ast.root** %self
  store %struct.err.span.span* %loc.param, %struct.err.span.span** %loc
  %0 = load %struct.ast.ast.root*, %struct.ast.ast.root** %self
  %1 = getelementptr inbounds %struct.ast.ast.root, %struct.ast.ast.root* %0, i32 0, i32 0
  %2 = load %struct.err.span.span*, %struct.err.span.span** %loc
  %3 = call %struct.ast.ast.ast @ast.ast.ast.instance(i64 1, %struct.err.span.span* %2)
  %4 = getelementptr %struct.ast.ast.ast, %struct.ast.ast.ast* %_4.real, i32 0 ; %_4.real -> %4
  store %struct.ast.ast.ast %3, %struct.ast.ast.ast* %4
  %5 = load %struct.ast.ast.ast, %struct.ast.ast.ast* %4
  store %struct.ast.ast.ast %5, %struct.ast.ast.ast* %1
  %6 = load %struct.ast.ast.root*, %struct.ast.ast.root** %self
  %7 = getelementptr inbounds %struct.ast.ast.root, %struct.ast.ast.root* %6, i32 0, i32 1
  call void @ast.ast.ptr_vec.init(%struct.ast.ast.ptr_vec* %7)
  %8 = load %struct.ast.ast.root*, %struct.ast.ast.root** %self
  %9 = getelementptr inbounds %struct.ast.ast.root, %struct.ast.ast.root* %8, i32 0, i32 2
  call void @ast.ast.ptr_vec.init(%struct.ast.ast.ptr_vec* %9)
  ret void 
}

define void @ast.ast.root.delete(%struct.ast.ast.root* %self.param) {
entry:
  %self = alloca %struct.ast.ast.root*
  store %struct.ast.ast.root* %self.param, %struct.ast.ast.root** %self
  %0 = load %struct.ast.ast.root*, %struct.ast.ast.root** %self
  %1 = getelementptr inbounds %struct.ast.ast.root, %struct.ast.ast.root* %0, i32 0, i32 0
  call void @ast.ast.ast.delete(%struct.ast.ast.ast* %1)
  %2 = load %struct.ast.ast.root*, %struct.ast.ast.root** %self
  %3 = getelementptr inbounds %struct.ast.ast.root, %struct.ast.ast.root* %2, i32 0, i32 1
  call void @ast.ast.ptr_vec.delete(%struct.ast.ast.ptr_vec* %3)
  %4 = load %struct.ast.ast.root*, %struct.ast.ast.root** %self
  %5 = getelementptr inbounds %struct.ast.ast.root, %struct.ast.ast.root* %4, i32 0, i32 2
  call void @ast.ast.ptr_vec.delete(%struct.ast.ast.ptr_vec* %5)
  ret void 
}

define %struct.ast.ast.ast_identifier* @ast.ast.ast_identifier.new(%struct.err.span.span* %loc.param, %struct.std.str.str* %name.param) {
entry:
  %loc = alloca %struct.err.span.span*
  %name = alloca %struct.std.str.str*
  %res.1 = alloca %struct.ast.ast.ast_identifier*
  %_1.real = alloca %struct.ast.ast.ast_identifier*
  %_7.real = alloca %struct.ast.ast.ast
  %_13.real = alloca %struct.std.str.str
  store %struct.err.span.span* %loc.param, %struct.err.span.span** %loc
  store %struct.std.str.str* %name.param, %struct.std.str.str** %name
  %0 = call %struct.ast.ast.ast_identifier* @ast.ast.ast_identifier.__alloc__()
  %1 = getelementptr %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %_1.real, i32 0 ; %_1.real -> %1
  store %struct.ast.ast.ast_identifier* %0, %struct.ast.ast.ast_identifier** %1
  %2 = load %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %1
  store %struct.ast.ast.ast_identifier* %2, %struct.ast.ast.ast_identifier** %res.1
  %3 = load %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %res.1
  %4 = getelementptr inbounds %struct.ast.ast.ast_identifier, %struct.ast.ast.ast_identifier* %3, i32 0, i32 0
  %5 = load %struct.err.span.span*, %struct.err.span.span** %loc
  %6 = call %struct.ast.ast.ast @ast.ast.ast.instance(i64 5, %struct.err.span.span* %5)
  %7 = getelementptr %struct.ast.ast.ast, %struct.ast.ast.ast* %_7.real, i32 0 ; %_7.real -> %7
  store %struct.ast.ast.ast %6, %struct.ast.ast.ast* %7
  %8 = load %struct.ast.ast.ast, %struct.ast.ast.ast* %7
  store %struct.ast.ast.ast %8, %struct.ast.ast.ast* %4
  %9 = load %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %res.1
  %10 = getelementptr inbounds %struct.ast.ast.ast_identifier, %struct.ast.ast.ast_identifier* %9, i32 0, i32 1
  %11 = load %struct.std.str.str*, %struct.std.str.str** %name
  %12 = call %struct.std.str.str @std.str.str.copy_instance(%struct.std.str.str* %11)
  %13 = getelementptr %struct.std.str.str, %struct.std.str.str* %_13.real, i32 0 ; %_13.real -> %13
  store %struct.std.str.str %12, %struct.std.str.str* %13
  %14 = load %struct.std.str.str, %struct.std.str.str* %13
  store %struct.std.str.str %14, %struct.std.str.str* %10
  %15 = load %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %res.1
  ret %struct.ast.ast.ast_identifier* %15
}

define void @ast.ast.ast_identifier.delete(%struct.ast.ast.ast_identifier* %self.param) {
entry:
  %self = alloca %struct.ast.ast.ast_identifier*
  store %struct.ast.ast.ast_identifier* %self.param, %struct.ast.ast.ast_identifier** %self
  %0 = load %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %self
  %1 = getelementptr inbounds %struct.ast.ast.ast_identifier, %struct.ast.ast.ast_identifier* %0, i32 0, i32 0
  call void @ast.ast.ast.delete(%struct.ast.ast.ast* %1)
  %2 = load %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %self
  %3 = getelementptr inbounds %struct.ast.ast.ast_identifier, %struct.ast.ast.ast_identifier* %2, i32 0, i32 1
  call void @std.str.str.delete(%struct.std.str.str* %3)
  ret void 
}

define %struct.ast.ast.ast_type_def* @ast.ast.ast_type_def.new(%struct.err.span.span* %loc.param) {
entry:
  %loc = alloca %struct.err.span.span*
  %res.1 = alloca %struct.ast.ast.ast_type_def*
  %_1.real = alloca %struct.ast.ast.ast_type_def*
  %_7.real = alloca %struct.ast.ast.ast
  store %struct.err.span.span* %loc.param, %struct.err.span.span** %loc
  %0 = call %struct.ast.ast.ast_type_def* @ast.ast.ast_type_def.__alloc__()
  %1 = getelementptr %struct.ast.ast.ast_type_def*, %struct.ast.ast.ast_type_def** %_1.real, i32 0 ; %_1.real -> %1
  store %struct.ast.ast.ast_type_def* %0, %struct.ast.ast.ast_type_def** %1
  %2 = load %struct.ast.ast.ast_type_def*, %struct.ast.ast.ast_type_def** %1
  store %struct.ast.ast.ast_type_def* %2, %struct.ast.ast.ast_type_def** %res.1
  %3 = load %struct.ast.ast.ast_type_def*, %struct.ast.ast.ast_type_def** %res.1
  %4 = getelementptr inbounds %struct.ast.ast.ast_type_def, %struct.ast.ast.ast_type_def* %3, i32 0, i32 0
  %5 = load %struct.err.span.span*, %struct.err.span.span** %loc
  %6 = call %struct.ast.ast.ast @ast.ast.ast.instance(i64 20, %struct.err.span.span* %5)
  %7 = getelementptr %struct.ast.ast.ast, %struct.ast.ast.ast* %_7.real, i32 0 ; %_7.real -> %7
  store %struct.ast.ast.ast %6, %struct.ast.ast.ast* %7
  %8 = load %struct.ast.ast.ast, %struct.ast.ast.ast* %7
  store %struct.ast.ast.ast %8, %struct.ast.ast.ast* %4
  %9 = load %struct.ast.ast.ast_type_def*, %struct.ast.ast.ast_type_def** %res.1
  %10 = getelementptr inbounds %struct.ast.ast.ast_type_def, %struct.ast.ast.ast_type_def* %9, i32 0, i32 1
  %11 = bitcast i8* null to %struct.ast.ast.ast_identifier*
  store %struct.ast.ast.ast_identifier* %11, %struct.ast.ast.ast_identifier** %10
  %12 = load %struct.ast.ast.ast_type_def*, %struct.ast.ast.ast_type_def** %res.1
  %13 = getelementptr inbounds %struct.ast.ast.ast_type_def, %struct.ast.ast.ast_type_def* %12, i32 0, i32 2
  store i64 0, i64* %13
  %14 = load %struct.ast.ast.ast_type_def*, %struct.ast.ast.ast_type_def** %res.1
  ret %struct.ast.ast.ast_type_def* %14
}

define void @ast.ast.ast_type_def.delete(%struct.ast.ast.ast_type_def* %self.param) {
entry:
  %self = alloca %struct.ast.ast.ast_type_def*
  store %struct.ast.ast.ast_type_def* %self.param, %struct.ast.ast.ast_type_def** %self
  %0 = load %struct.ast.ast.ast_type_def*, %struct.ast.ast.ast_type_def** %self
  %1 = getelementptr inbounds %struct.ast.ast.ast_type_def, %struct.ast.ast.ast_type_def* %0, i32 0, i32 0
  call void @ast.ast.ast.delete(%struct.ast.ast.ast* %1)
  %2 = load %struct.ast.ast.ast_type_def*, %struct.ast.ast.ast_type_def** %self
  %3 = getelementptr inbounds %struct.ast.ast.ast_type_def, %struct.ast.ast.ast_type_def* %2, i32 0, i32 1
  %4 = load %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %3
  %5 = bitcast %struct.ast.ast.ast_identifier* %4 to i8*
  %6 = icmp ne i8* %5, null
  br i1 %6, label %label.a, label %label.10

label.a:			; cond.true
  %7 = load %struct.ast.ast.ast_type_def*, %struct.ast.ast.ast_type_def** %self
  %8 = getelementptr inbounds %struct.ast.ast.ast_type_def, %struct.ast.ast.ast_type_def* %7, i32 0, i32 1
  %9 = load %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %8
  call void @ast.ast.ast_identifier.delete(%struct.ast.ast.ast_identifier* %9)
  br label %label.12

label.10:			; cond.false
  br label %label.12

label.12:			; branch.end
  ret void 
}

define %struct.ast.ast.ast_struct_field* @ast.ast.ast_struct_field.new(%struct.err.span.span* %loc.param) {
entry:
  %loc = alloca %struct.err.span.span*
  %res.1 = alloca %struct.ast.ast.ast_struct_field*
  %_1.real = alloca %struct.ast.ast.ast_struct_field*
  %_7.real = alloca %struct.ast.ast.ast
  store %struct.err.span.span* %loc.param, %struct.err.span.span** %loc
  %0 = call %struct.ast.ast.ast_struct_field* @ast.ast.ast_struct_field.__alloc__()
  %1 = getelementptr %struct.ast.ast.ast_struct_field*, %struct.ast.ast.ast_struct_field** %_1.real, i32 0 ; %_1.real -> %1
  store %struct.ast.ast.ast_struct_field* %0, %struct.ast.ast.ast_struct_field** %1
  %2 = load %struct.ast.ast.ast_struct_field*, %struct.ast.ast.ast_struct_field** %1
  store %struct.ast.ast.ast_struct_field* %2, %struct.ast.ast.ast_struct_field** %res.1
  %3 = load %struct.ast.ast.ast_struct_field*, %struct.ast.ast.ast_struct_field** %res.1
  %4 = getelementptr inbounds %struct.ast.ast.ast_struct_field, %struct.ast.ast.ast_struct_field* %3, i32 0, i32 0
  %5 = load %struct.err.span.span*, %struct.err.span.span** %loc
  %6 = call %struct.ast.ast.ast @ast.ast.ast.instance(i64 22, %struct.err.span.span* %5)
  %7 = getelementptr %struct.ast.ast.ast, %struct.ast.ast.ast* %_7.real, i32 0 ; %_7.real -> %7
  store %struct.ast.ast.ast %6, %struct.ast.ast.ast* %7
  %8 = load %struct.ast.ast.ast, %struct.ast.ast.ast* %7
  store %struct.ast.ast.ast %8, %struct.ast.ast.ast* %4
  %9 = load %struct.ast.ast.ast_struct_field*, %struct.ast.ast.ast_struct_field** %res.1
  %10 = getelementptr inbounds %struct.ast.ast.ast_struct_field, %struct.ast.ast.ast_struct_field* %9, i32 0, i32 1
  %11 = bitcast i8* null to %struct.ast.ast.ast_identifier*
  store %struct.ast.ast.ast_identifier* %11, %struct.ast.ast.ast_identifier** %10
  %12 = load %struct.ast.ast.ast_struct_field*, %struct.ast.ast.ast_struct_field** %res.1
  %13 = getelementptr inbounds %struct.ast.ast.ast_struct_field, %struct.ast.ast.ast_struct_field* %12, i32 0, i32 2
  %14 = bitcast i8* null to %struct.ast.ast.ast_type_def*
  store %struct.ast.ast.ast_type_def* %14, %struct.ast.ast.ast_type_def** %13
  %15 = load %struct.ast.ast.ast_struct_field*, %struct.ast.ast.ast_struct_field** %res.1
  ret %struct.ast.ast.ast_struct_field* %15
}

define void @ast.ast.ast_struct_field.delete(%struct.ast.ast.ast_struct_field* %self.param) {
entry:
  %self = alloca %struct.ast.ast.ast_struct_field*
  store %struct.ast.ast.ast_struct_field* %self.param, %struct.ast.ast.ast_struct_field** %self
  %0 = load %struct.ast.ast.ast_struct_field*, %struct.ast.ast.ast_struct_field** %self
  %1 = getelementptr inbounds %struct.ast.ast.ast_struct_field, %struct.ast.ast.ast_struct_field* %0, i32 0, i32 0
  call void @ast.ast.ast.delete(%struct.ast.ast.ast* %1)
  %2 = load %struct.ast.ast.ast_struct_field*, %struct.ast.ast.ast_struct_field** %self
  %3 = getelementptr inbounds %struct.ast.ast.ast_struct_field, %struct.ast.ast.ast_struct_field* %2, i32 0, i32 1
  %4 = load %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %3
  %5 = bitcast %struct.ast.ast.ast_identifier* %4 to i8*
  %6 = icmp ne i8* %5, null
  br i1 %6, label %label.a, label %label.10

label.a:			; cond.true
  %7 = load %struct.ast.ast.ast_struct_field*, %struct.ast.ast.ast_struct_field** %self
  %8 = getelementptr inbounds %struct.ast.ast.ast_struct_field, %struct.ast.ast.ast_struct_field* %7, i32 0, i32 1
  %9 = load %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %8
  call void @ast.ast.ast_identifier.delete(%struct.ast.ast.ast_identifier* %9)
  br label %label.12

label.10:			; cond.false
  br label %label.12

label.12:			; branch.end
  %10 = load %struct.ast.ast.ast_struct_field*, %struct.ast.ast.ast_struct_field** %self
  %11 = getelementptr inbounds %struct.ast.ast.ast_struct_field, %struct.ast.ast.ast_struct_field* %10, i32 0, i32 2
  %12 = load %struct.ast.ast.ast_type_def*, %struct.ast.ast.ast_type_def** %11
  %13 = bitcast %struct.ast.ast.ast_type_def* %12 to i8*
  %14 = icmp ne i8* %13, null
  br i1 %14, label %label.19, label %label.1f

label.19:			; cond.true
  %15 = load %struct.ast.ast.ast_struct_field*, %struct.ast.ast.ast_struct_field** %self
  %16 = getelementptr inbounds %struct.ast.ast.ast_struct_field, %struct.ast.ast.ast_struct_field* %15, i32 0, i32 2
  %17 = load %struct.ast.ast.ast_type_def*, %struct.ast.ast.ast_type_def** %16
  call void @ast.ast.ast_type_def.delete(%struct.ast.ast.ast_type_def* %17)
  br label %label.21

label.1f:			; cond.false
  br label %label.21

label.21:			; branch.end
  ret void 
}

define %struct.ast.ast.ast_struct_decl* @ast.ast.ast_struct_decl.new(%struct.err.span.span* %loc.param, %struct.std.str.str* %name.param) {
entry:
  %loc = alloca %struct.err.span.span*
  %name = alloca %struct.std.str.str*
  %res.1 = alloca %struct.ast.ast.ast_struct_decl*
  %_1.real = alloca %struct.ast.ast.ast_struct_decl*
  %_7.real = alloca %struct.ast.ast.ast
  %_15.real = alloca %struct.std.str.str
  store %struct.err.span.span* %loc.param, %struct.err.span.span** %loc
  store %struct.std.str.str* %name.param, %struct.std.str.str** %name
  %0 = call %struct.ast.ast.ast_struct_decl* @ast.ast.ast_struct_decl.__alloc__()
  %1 = getelementptr %struct.ast.ast.ast_struct_decl*, %struct.ast.ast.ast_struct_decl** %_1.real, i32 0 ; %_1.real -> %1
  store %struct.ast.ast.ast_struct_decl* %0, %struct.ast.ast.ast_struct_decl** %1
  %2 = load %struct.ast.ast.ast_struct_decl*, %struct.ast.ast.ast_struct_decl** %1
  store %struct.ast.ast.ast_struct_decl* %2, %struct.ast.ast.ast_struct_decl** %res.1
  %3 = load %struct.ast.ast.ast_struct_decl*, %struct.ast.ast.ast_struct_decl** %res.1
  %4 = getelementptr inbounds %struct.ast.ast.ast_struct_decl, %struct.ast.ast.ast_struct_decl* %3, i32 0, i32 0
  %5 = load %struct.err.span.span*, %struct.err.span.span** %loc
  %6 = call %struct.ast.ast.ast @ast.ast.ast.instance(i64 23, %struct.err.span.span* %5)
  %7 = getelementptr %struct.ast.ast.ast, %struct.ast.ast.ast* %_7.real, i32 0 ; %_7.real -> %7
  store %struct.ast.ast.ast %6, %struct.ast.ast.ast* %7
  %8 = load %struct.ast.ast.ast, %struct.ast.ast.ast* %7
  store %struct.ast.ast.ast %8, %struct.ast.ast.ast* %4
  %9 = load %struct.ast.ast.ast_struct_decl*, %struct.ast.ast.ast_struct_decl** %res.1
  %10 = getelementptr inbounds %struct.ast.ast.ast_struct_decl, %struct.ast.ast.ast_struct_decl* %9, i32 0, i32 1
  call void @ast.ast.ptr_vec.init(%struct.ast.ast.ptr_vec* %10)
  %11 = load %struct.ast.ast.ast_struct_decl*, %struct.ast.ast.ast_struct_decl** %res.1
  %12 = getelementptr inbounds %struct.ast.ast.ast_struct_decl, %struct.ast.ast.ast_struct_decl* %11, i32 0, i32 2
  %13 = load %struct.std.str.str*, %struct.std.str.str** %name
  %14 = call %struct.std.str.str @std.str.str.copy_instance(%struct.std.str.str* %13)
  %15 = getelementptr %struct.std.str.str, %struct.std.str.str* %_15.real, i32 0 ; %_15.real -> %15
  store %struct.std.str.str %14, %struct.std.str.str* %15
  %16 = load %struct.std.str.str, %struct.std.str.str* %15
  store %struct.std.str.str %16, %struct.std.str.str* %12
  %17 = load %struct.ast.ast.ast_struct_decl*, %struct.ast.ast.ast_struct_decl** %res.1
  ret %struct.ast.ast.ast_struct_decl* %17
}

define void @ast.ast.ast_struct_decl.delete(%struct.ast.ast.ast_struct_decl* %self.param) {
entry:
  %self = alloca %struct.ast.ast.ast_struct_decl*
  store %struct.ast.ast.ast_struct_decl* %self.param, %struct.ast.ast.ast_struct_decl** %self
  %0 = load %struct.ast.ast.ast_struct_decl*, %struct.ast.ast.ast_struct_decl** %self
  %1 = getelementptr inbounds %struct.ast.ast.ast_struct_decl, %struct.ast.ast.ast_struct_decl* %0, i32 0, i32 0
  call void @ast.ast.ast.delete(%struct.ast.ast.ast* %1)
  %2 = load %struct.ast.ast.ast_struct_decl*, %struct.ast.ast.ast_struct_decl** %self
  %3 = getelementptr inbounds %struct.ast.ast.ast_struct_decl, %struct.ast.ast.ast_struct_decl* %2, i32 0, i32 1
  call void @ast.ast.ptr_vec.delete(%struct.ast.ast.ptr_vec* %3)
  %4 = load %struct.ast.ast.ast_struct_decl*, %struct.ast.ast.ast_struct_decl** %self
  %5 = getelementptr inbounds %struct.ast.ast.ast_struct_decl, %struct.ast.ast.ast_struct_decl* %4, i32 0, i32 2
  call void @std.str.str.delete(%struct.std.str.str* %5)
  ret void 
}

define %struct.ast.ast.ast_use_stmt* @ast.ast.ast_use_stmt.new(%struct.err.span.span* %loc.param) {
entry:
  %loc = alloca %struct.err.span.span*
  %res.1 = alloca %struct.ast.ast.ast_use_stmt*
  %_1.real = alloca %struct.ast.ast.ast_use_stmt*
  %_7.real = alloca %struct.ast.ast.ast
  store %struct.err.span.span* %loc.param, %struct.err.span.span** %loc
  %0 = call %struct.ast.ast.ast_use_stmt* @ast.ast.ast_use_stmt.__alloc__()
  %1 = getelementptr %struct.ast.ast.ast_use_stmt*, %struct.ast.ast.ast_use_stmt** %_1.real, i32 0 ; %_1.real -> %1
  store %struct.ast.ast.ast_use_stmt* %0, %struct.ast.ast.ast_use_stmt** %1
  %2 = load %struct.ast.ast.ast_use_stmt*, %struct.ast.ast.ast_use_stmt** %1
  store %struct.ast.ast.ast_use_stmt* %2, %struct.ast.ast.ast_use_stmt** %res.1
  %3 = load %struct.ast.ast.ast_use_stmt*, %struct.ast.ast.ast_use_stmt** %res.1
  %4 = getelementptr inbounds %struct.ast.ast.ast_use_stmt, %struct.ast.ast.ast_use_stmt* %3, i32 0, i32 0
  %5 = load %struct.err.span.span*, %struct.err.span.span** %loc
  %6 = call %struct.ast.ast.ast @ast.ast.ast.instance(i64 28, %struct.err.span.span* %5)
  %7 = getelementptr %struct.ast.ast.ast, %struct.ast.ast.ast* %_7.real, i32 0 ; %_7.real -> %7
  store %struct.ast.ast.ast %6, %struct.ast.ast.ast* %7
  %8 = load %struct.ast.ast.ast, %struct.ast.ast.ast* %7
  store %struct.ast.ast.ast %8, %struct.ast.ast.ast* %4
  %9 = load %struct.ast.ast.ast_use_stmt*, %struct.ast.ast.ast_use_stmt** %res.1
  %10 = getelementptr inbounds %struct.ast.ast.ast_use_stmt, %struct.ast.ast.ast_use_stmt* %9, i32 0, i32 1
  call void @ast.ast.ptr_vec.init(%struct.ast.ast.ptr_vec* %10)
  %11 = load %struct.ast.ast.ast_use_stmt*, %struct.ast.ast.ast_use_stmt** %res.1
  %12 = getelementptr inbounds %struct.ast.ast.ast_use_stmt, %struct.ast.ast.ast_use_stmt* %11, i32 0, i32 2
  call void @ast.ast.ptr_vec.init(%struct.ast.ast.ptr_vec* %12)
  %13 = load %struct.ast.ast.ast_use_stmt*, %struct.ast.ast.ast_use_stmt** %res.1
  ret %struct.ast.ast.ast_use_stmt* %13
}

define %struct.ast.dumper.ast_dumper @ast.dumper.ast_dumper.instance() {
entry:
  %res.1 = alloca %struct.ast.dumper.ast_dumper
  %_0.real = alloca %struct.ast.dumper.ast_dumper
  %_3.real = alloca %struct.std.str.str
  %0 = getelementptr %struct.ast.dumper.ast_dumper, %struct.ast.dumper.ast_dumper* %_0.real, i32 0 ; %_0.real -> %0
  store %struct.ast.dumper.ast_dumper zeroinitializer, %struct.ast.dumper.ast_dumper* %0
  %1 = getelementptr inbounds %struct.ast.dumper.ast_dumper, %struct.ast.dumper.ast_dumper* %0, i32 0, i32 0
  %2 = call %struct.std.str.str @std.str.str.instance()
  %3 = getelementptr %struct.std.str.str, %struct.std.str.str* %_3.real, i32 0 ; %_3.real -> %3
  store %struct.std.str.str %2, %struct.std.str.str* %3
  %4 = load %struct.std.str.str, %struct.std.str.str* %3
  store %struct.std.str.str %4, %struct.std.str.str* %1
  %5 = load %struct.ast.dumper.ast_dumper, %struct.ast.dumper.ast_dumper* %0
  store %struct.ast.dumper.ast_dumper %5, %struct.ast.dumper.ast_dumper* %res.1
  %6 = getelementptr inbounds %struct.ast.dumper.ast_dumper, %struct.ast.dumper.ast_dumper* %res.1, i32 0, i32 0
  call void @std.str.str.clear(%struct.std.str.str* %6)
  %7 = load %struct.ast.dumper.ast_dumper, %struct.ast.dumper.ast_dumper* %res.1
  ret %struct.ast.dumper.ast_dumper %7
}

define void @ast.dumper.ast_dumper.delete(%struct.ast.dumper.ast_dumper* %self.param) {
entry:
  %self = alloca %struct.ast.dumper.ast_dumper*
  store %struct.ast.dumper.ast_dumper* %self.param, %struct.ast.dumper.ast_dumper** %self
  %0 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %1 = getelementptr inbounds %struct.ast.dumper.ast_dumper, %struct.ast.dumper.ast_dumper* %0, i32 0, i32 0
  call void @std.str.str.delete(%struct.std.str.str* %1)
  ret void 
}

define void @ast.dumper.ast_dumper.push_indent(%struct.ast.dumper.ast_dumper* %self.param) {
entry:
  %self = alloca %struct.ast.dumper.ast_dumper*
  %_4.real = alloca %struct.std.str.str*
  store %struct.ast.dumper.ast_dumper* %self.param, %struct.ast.dumper.ast_dumper** %self
  %0 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %1 = getelementptr inbounds %struct.ast.dumper.ast_dumper, %struct.ast.dumper.ast_dumper* %0, i32 0, i32 0
  %2 = getelementptr [3 x i8], [3 x i8]* @const.str.180, i64 0, i64 0
  %3 = call %struct.std.str.str* @std.str.str.append_i8_vec(%struct.std.str.str* %1, i8* %2)
  %4 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_4.real, i32 0 ; %_4.real -> %4
  store %struct.std.str.str* %3, %struct.std.str.str** %4
  %5 = load %struct.std.str.str*, %struct.std.str.str** %4
  ret void 
}

define void @ast.dumper.ast_dumper.pop_indent(%struct.ast.dumper.ast_dumper* %self.param) {
entry:
  %self = alloca %struct.ast.dumper.ast_dumper*
  store %struct.ast.dumper.ast_dumper* %self.param, %struct.ast.dumper.ast_dumper** %self
  %0 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %1 = getelementptr inbounds %struct.ast.dumper.ast_dumper, %struct.ast.dumper.ast_dumper* %0, i32 0, i32 0
  call void @std.str.str.pop(%struct.std.str.str* %1)
  %2 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %3 = getelementptr inbounds %struct.ast.dumper.ast_dumper, %struct.ast.dumper.ast_dumper* %2, i32 0, i32 0
  call void @std.str.str.pop(%struct.std.str.str* %3)
  ret void 
}

define void @ast.dumper.ast_dumper.dump(%struct.ast.dumper.ast_dumper* %self.param, %struct.ast.ast.ast* %node.param, %struct.std.io.io %out.param) {
entry:
  %self = alloca %struct.ast.dumper.ast_dumper*
  %node = alloca %struct.ast.ast.ast*
  %out = alloca %struct.std.io.io
  %match.94713953461264.1 = alloca i64
  store %struct.ast.dumper.ast_dumper* %self.param, %struct.ast.dumper.ast_dumper** %self
  store %struct.ast.ast.ast* %node.param, %struct.ast.ast.ast** %node
  store %struct.std.io.io %out.param, %struct.std.io.io* %out
  %0 = load %struct.ast.ast.ast*, %struct.ast.ast.ast** %node
  %1 = getelementptr inbounds %struct.ast.ast.ast, %struct.ast.ast.ast* %0, i32 0, i32 0
  %2 = load i64, i64* %1
  store i64 %2, i64* %match.94713953461264.1
  %3 = load i64, i64* %match.94713953461264.1
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %label.a, label %label.e

label.a:			; cond.true
  ret void 

label.place_holder.c:
  br label %label.52

label.e:			; cond.false
  %5 = load i64, i64* %match.94713953461264.1
  %6 = icmp eq i64 %5, 1
  br i1 %6, label %label.12, label %label.19

label.12:			; cond.true
  %7 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %8 = load %struct.ast.ast.ast*, %struct.ast.ast.ast** %node
  %9 = bitcast %struct.ast.ast.ast* %8 to %struct.ast.ast.root*
  %10 = load %struct.std.io.io, %struct.std.io.io* %out
  call void @ast.dumper.ast_dumper.dump_root(%struct.ast.dumper.ast_dumper* %7, %struct.ast.ast.root* %9, %struct.std.io.io %10)
  br label %label.52

label.19:			; cond.false
  %11 = load i64, i64* %match.94713953461264.1
  %12 = icmp eq i64 %11, 5
  br i1 %12, label %label.1d, label %label.24

label.1d:			; cond.true
  %13 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %14 = load %struct.ast.ast.ast*, %struct.ast.ast.ast** %node
  %15 = bitcast %struct.ast.ast.ast* %14 to %struct.ast.ast.ast_identifier*
  %16 = load %struct.std.io.io, %struct.std.io.io* %out
  call void @ast.dumper.ast_dumper.dump_identifier(%struct.ast.dumper.ast_dumper* %13, %struct.ast.ast.ast_identifier* %15, %struct.std.io.io %16)
  br label %label.52

label.24:			; cond.false
  %17 = load i64, i64* %match.94713953461264.1
  %18 = icmp eq i64 %17, 28
  br i1 %18, label %label.28, label %label.2f

label.28:			; cond.true
  %19 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %20 = load %struct.ast.ast.ast*, %struct.ast.ast.ast** %node
  %21 = bitcast %struct.ast.ast.ast* %20 to %struct.ast.ast.ast_use_stmt*
  %22 = load %struct.std.io.io, %struct.std.io.io* %out
  call void @ast.dumper.ast_dumper.dump_use_stmt(%struct.ast.dumper.ast_dumper* %19, %struct.ast.ast.ast_use_stmt* %21, %struct.std.io.io %22)
  br label %label.52

label.2f:			; cond.false
  %23 = load i64, i64* %match.94713953461264.1
  %24 = icmp eq i64 %23, 20
  br i1 %24, label %label.33, label %label.3a

label.33:			; cond.true
  %25 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %26 = load %struct.ast.ast.ast*, %struct.ast.ast.ast** %node
  %27 = bitcast %struct.ast.ast.ast* %26 to %struct.ast.ast.ast_type_def*
  %28 = load %struct.std.io.io, %struct.std.io.io* %out
  call void @ast.dumper.ast_dumper.dump_type_def(%struct.ast.dumper.ast_dumper* %25, %struct.ast.ast.ast_type_def* %27, %struct.std.io.io %28)
  br label %label.52

label.3a:			; cond.false
  %29 = load i64, i64* %match.94713953461264.1
  %30 = icmp eq i64 %29, 22
  br i1 %30, label %label.3e, label %label.45

label.3e:			; cond.true
  %31 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %32 = load %struct.ast.ast.ast*, %struct.ast.ast.ast** %node
  %33 = bitcast %struct.ast.ast.ast* %32 to %struct.ast.ast.ast_struct_field*
  %34 = load %struct.std.io.io, %struct.std.io.io* %out
  call void @ast.dumper.ast_dumper.dump_struct_field(%struct.ast.dumper.ast_dumper* %31, %struct.ast.ast.ast_struct_field* %33, %struct.std.io.io %34)
  br label %label.52

label.45:			; cond.false
  %35 = load i64, i64* %match.94713953461264.1
  %36 = icmp eq i64 %35, 23
  br i1 %36, label %label.49, label %label.50

label.49:			; cond.true
  %37 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %38 = load %struct.ast.ast.ast*, %struct.ast.ast.ast** %node
  %39 = bitcast %struct.ast.ast.ast* %38 to %struct.ast.ast.ast_struct_decl*
  %40 = load %struct.std.io.io, %struct.std.io.io* %out
  call void @ast.dumper.ast_dumper.dump_struct_decl(%struct.ast.dumper.ast_dumper* %37, %struct.ast.ast.ast_struct_decl* %39, %struct.std.io.io %40)
  br label %label.52

label.50:			; cond.false
  br label %label.52

label.52:			; branch.end
  ret void 
}

define void @ast.dumper.ast_dumper.dump_root(%struct.ast.dumper.ast_dumper* %self.param, %struct.ast.ast.root* %node.param, %struct.std.io.io %out.param) {
entry:
  %self = alloca %struct.ast.dumper.ast_dumper*
  %node = alloca %struct.ast.ast.root*
  %out = alloca %struct.std.io.io
  %index.7 = alloca i64
  %index.24 = alloca i64
  %_5.real = alloca %struct.std.io.io
  store %struct.ast.dumper.ast_dumper* %self.param, %struct.ast.dumper.ast_dumper** %self
  store %struct.ast.ast.root* %node.param, %struct.ast.ast.root** %node
  store %struct.std.io.io %out.param, %struct.std.io.io* %out
  %0 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %1 = getelementptr inbounds %struct.ast.dumper.ast_dumper, %struct.ast.dumper.ast_dumper* %0, i32 0, i32 0
  %2 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %1, i32 0, i32 0
  %3 = load i8*, i8** %2
  %4 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %out, i8* %3)
  %5 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %5
  store %struct.std.io.io %4, %struct.std.io.io* %5
  %6 = getelementptr [9 x i8], [9 x i8]* @const.str.181, i64 0, i64 0
  %7 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %5, i8* %6)
  %8 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %8
  store %struct.std.io.io %7, %struct.std.io.io* %8
  %9 = load %struct.std.io.io, %struct.std.io.io* %8
  %10 = load %struct.ast.ast.root*, %struct.ast.ast.root** %node
  %11 = getelementptr inbounds %struct.ast.ast.root, %struct.ast.ast.root* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.ast.ast.ast, %struct.ast.ast.ast* %11, i32 0, i32 1
  %13 = load %struct.err.span.span*, %struct.err.span.span** %12
  %14 = load %struct.std.io.io, %struct.std.io.io* %out
  call void @err.span.span.dump(%struct.err.span.span* %13, %struct.std.io.io %14)
  %15 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  call void @ast.dumper.ast_dumper.push_indent(%struct.ast.dumper.ast_dumper* %15)
  store i64 0, i64* %index.7
  br label %label.19

label.19:			; loop.entry
  %16 = load i64, i64* %index.7
  %17 = load %struct.ast.ast.root*, %struct.ast.ast.root** %node
  %18 = getelementptr inbounds %struct.ast.ast.root, %struct.ast.ast.root* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %18, i32 0, i32 1
  %20 = load i64, i64* %19
  %21 = icmp ult i64 %16, %20
  br i1 %21, label %label.21, label %label.33

label.21:			; loop.cond.true
  %22 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %23 = load %struct.ast.ast.root*, %struct.ast.ast.root** %node
  %24 = getelementptr inbounds %struct.ast.ast.root, %struct.ast.ast.root* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %24, i32 0, i32 0
  %26 = load i64, i64* %index.7
  %27 = load i8**, i8*** %25
  %28 = getelementptr i8*, i8** %27, i64 %26
  %29 = load i8*, i8** %28
  %30 = bitcast i8* %29 to %struct.ast.ast.ast*
  %31 = load %struct.std.io.io, %struct.std.io.io* %out
  call void @ast.dumper.ast_dumper.dump(%struct.ast.dumper.ast_dumper* %22, %struct.ast.ast.ast* %30, %struct.std.io.io %31)
  %32 = load i64, i64* %index.7
  %33 = add i64 %32, 1
  store i64 %33, i64* %index.7
  br label %label.19

label.33:			; loop.exit
  store i64 0, i64* %index.24
  br label %label.36

label.36:			; loop.entry
  %34 = load i64, i64* %index.24
  %35 = load %struct.ast.ast.root*, %struct.ast.ast.root** %node
  %36 = getelementptr inbounds %struct.ast.ast.root, %struct.ast.ast.root* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %36, i32 0, i32 1
  %38 = load i64, i64* %37
  %39 = icmp ult i64 %34, %38
  br i1 %39, label %label.3e, label %label.50

label.3e:			; loop.cond.true
  %40 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %41 = load %struct.ast.ast.root*, %struct.ast.ast.root** %node
  %42 = getelementptr inbounds %struct.ast.ast.root, %struct.ast.ast.root* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %42, i32 0, i32 0
  %44 = load i64, i64* %index.24
  %45 = load i8**, i8*** %43
  %46 = getelementptr i8*, i8** %45, i64 %44
  %47 = load i8*, i8** %46
  %48 = bitcast i8* %47 to %struct.ast.ast.ast*
  %49 = load %struct.std.io.io, %struct.std.io.io* %out
  call void @ast.dumper.ast_dumper.dump(%struct.ast.dumper.ast_dumper* %40, %struct.ast.ast.ast* %48, %struct.std.io.io %49)
  %50 = load i64, i64* %index.24
  %51 = add i64 %50, 1
  store i64 %51, i64* %index.24
  br label %label.36

label.50:			; loop.exit
  %52 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  call void @ast.dumper.ast_dumper.pop_indent(%struct.ast.dumper.ast_dumper* %52)
  ret void 
}

define void @ast.dumper.ast_dumper.dump_identifier(%struct.ast.dumper.ast_dumper* %self.param, %struct.ast.ast.ast_identifier* %node.param, %struct.std.io.io %out.param) {
entry:
  %self = alloca %struct.ast.dumper.ast_dumper*
  %node = alloca %struct.ast.ast.ast_identifier*
  %out = alloca %struct.std.io.io
  %_5.real = alloca %struct.std.io.io
  store %struct.ast.dumper.ast_dumper* %self.param, %struct.ast.dumper.ast_dumper** %self
  store %struct.ast.ast.ast_identifier* %node.param, %struct.ast.ast.ast_identifier** %node
  store %struct.std.io.io %out.param, %struct.std.io.io* %out
  %0 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %1 = getelementptr inbounds %struct.ast.dumper.ast_dumper, %struct.ast.dumper.ast_dumper* %0, i32 0, i32 0
  %2 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %1, i32 0, i32 0
  %3 = load i8*, i8** %2
  %4 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %out, i8* %3)
  %5 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %5
  store %struct.std.io.io %4, %struct.std.io.io* %5
  %6 = getelementptr [13 x i8], [13 x i8]* @const.str.182, i64 0, i64 0
  %7 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %5, i8* %6)
  %8 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %8
  store %struct.std.io.io %7, %struct.std.io.io* %8
  %9 = load %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %node
  %10 = getelementptr inbounds %struct.ast.ast.ast_identifier, %struct.ast.ast.ast_identifier* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %10, i32 0, i32 0
  %12 = load i8*, i8** %11
  %13 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %8, i8* %12)
  %14 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %14
  store %struct.std.io.io %13, %struct.std.io.io* %14
  %15 = getelementptr [5 x i8], [5 x i8]* @const.str.177, i64 0, i64 0
  %16 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %14, i8* %15)
  %17 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %17
  store %struct.std.io.io %16, %struct.std.io.io* %17
  %18 = load %struct.std.io.io, %struct.std.io.io* %17
  %19 = load %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %node
  %20 = getelementptr inbounds %struct.ast.ast.ast_identifier, %struct.ast.ast.ast_identifier* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.ast.ast.ast, %struct.ast.ast.ast* %20, i32 0, i32 1
  %22 = load %struct.err.span.span*, %struct.err.span.span** %21
  %23 = load %struct.std.io.io, %struct.std.io.io* %out
  call void @err.span.span.dump(%struct.err.span.span* %22, %struct.std.io.io %23)
  ret void 
}

define void @ast.dumper.ast_dumper.dump_use_stmt(%struct.ast.dumper.ast_dumper* %self.param, %struct.ast.ast.ast_use_stmt* %node.param, %struct.std.io.io %out.param) {
entry:
  %self = alloca %struct.ast.dumper.ast_dumper*
  %node = alloca %struct.ast.ast.ast_use_stmt*
  %out = alloca %struct.std.io.io
  %index.10 = alloca i64
  %index.39 = alloca i64
  %_5.real = alloca %struct.std.io.io
  store %struct.ast.dumper.ast_dumper* %self.param, %struct.ast.dumper.ast_dumper** %self
  store %struct.ast.ast.ast_use_stmt* %node.param, %struct.ast.ast.ast_use_stmt** %node
  store %struct.std.io.io %out.param, %struct.std.io.io* %out
  %0 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %1 = getelementptr inbounds %struct.ast.dumper.ast_dumper, %struct.ast.dumper.ast_dumper* %0, i32 0, i32 0
  %2 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %1, i32 0, i32 0
  %3 = load i8*, i8** %2
  %4 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %out, i8* %3)
  %5 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %5
  store %struct.std.io.io %4, %struct.std.io.io* %5
  %6 = getelementptr [8 x i8], [8 x i8]* @const.str.183, i64 0, i64 0
  %7 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %5, i8* %6)
  %8 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %8
  store %struct.std.io.io %7, %struct.std.io.io* %8
  %9 = load %struct.std.io.io, %struct.std.io.io* %8
  %10 = load %struct.ast.ast.ast_use_stmt*, %struct.ast.ast.ast_use_stmt** %node
  %11 = getelementptr inbounds %struct.ast.ast.ast_use_stmt, %struct.ast.ast.ast_use_stmt* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.ast.ast.ast, %struct.ast.ast.ast* %11, i32 0, i32 1
  %13 = load %struct.err.span.span*, %struct.err.span.span** %12
  %14 = load %struct.std.io.io, %struct.std.io.io* %out
  call void @err.span.span.dump(%struct.err.span.span* %13, %struct.std.io.io %14)
  %15 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  call void @ast.dumper.ast_dumper.push_indent(%struct.ast.dumper.ast_dumper* %15)
  %16 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %17 = getelementptr inbounds %struct.ast.dumper.ast_dumper, %struct.ast.dumper.ast_dumper* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %17, i32 0, i32 0
  %19 = load i8*, i8** %18
  %20 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %out, i8* %19)
  %21 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %21
  store %struct.std.io.io %20, %struct.std.io.io* %21
  %22 = getelementptr [8 x i8], [8 x i8]* @const.str.184, i64 0, i64 0
  %23 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %21, i8* %22)
  %24 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %24
  store %struct.std.io.io %23, %struct.std.io.io* %24
  %25 = load %struct.std.io.io, %struct.std.io.io* %24
  %26 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  call void @ast.dumper.ast_dumper.push_indent(%struct.ast.dumper.ast_dumper* %26)
  store i64 0, i64* %index.10
  br label %label.27

label.27:			; loop.entry
  %27 = load i64, i64* %index.10
  %28 = load %struct.ast.ast.ast_use_stmt*, %struct.ast.ast.ast_use_stmt** %node
  %29 = getelementptr inbounds %struct.ast.ast.ast_use_stmt, %struct.ast.ast.ast_use_stmt* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %29, i32 0, i32 1
  %31 = load i64, i64* %30
  %32 = icmp ult i64 %27, %31
  br i1 %32, label %label.2f, label %label.41

label.2f:			; loop.cond.true
  %33 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %34 = load %struct.ast.ast.ast_use_stmt*, %struct.ast.ast.ast_use_stmt** %node
  %35 = getelementptr inbounds %struct.ast.ast.ast_use_stmt, %struct.ast.ast.ast_use_stmt* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %35, i32 0, i32 0
  %37 = load i64, i64* %index.10
  %38 = load i8**, i8*** %36
  %39 = getelementptr i8*, i8** %38, i64 %37
  %40 = load i8*, i8** %39
  %41 = bitcast i8* %40 to %struct.ast.ast.ast*
  %42 = load %struct.std.io.io, %struct.std.io.io* %out
  call void @ast.dumper.ast_dumper.dump(%struct.ast.dumper.ast_dumper* %33, %struct.ast.ast.ast* %41, %struct.std.io.io %42)
  %43 = load i64, i64* %index.10
  %44 = add i64 %43, 1
  store i64 %44, i64* %index.10
  br label %label.27

label.41:			; loop.exit
  %45 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  call void @ast.dumper.ast_dumper.pop_indent(%struct.ast.dumper.ast_dumper* %45)
  %46 = load %struct.ast.ast.ast_use_stmt*, %struct.ast.ast.ast_use_stmt** %node
  %47 = getelementptr inbounds %struct.ast.ast.ast_use_stmt, %struct.ast.ast.ast_use_stmt* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %47, i32 0, i32 1
  %49 = load i64, i64* %48
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %label.4a, label %label.58

label.4a:			; cond.true
  %51 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %52 = getelementptr inbounds %struct.ast.dumper.ast_dumper, %struct.ast.dumper.ast_dumper* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %52, i32 0, i32 0
  %54 = load i8*, i8** %53
  %55 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %out, i8* %54)
  %56 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %56
  store %struct.std.io.io %55, %struct.std.io.io* %56
  %57 = getelementptr [12 x i8], [12 x i8]* @const.str.185, i64 0, i64 0
  %58 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %56, i8* %57)
  %59 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %59
  store %struct.std.io.io %58, %struct.std.io.io* %59
  %60 = load %struct.std.io.io, %struct.std.io.io* %59
  br label %label.87

label.58:			; cond.false
  %61 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %62 = getelementptr inbounds %struct.ast.dumper.ast_dumper, %struct.ast.dumper.ast_dumper* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %62, i32 0, i32 0
  %64 = load i8*, i8** %63
  %65 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %out, i8* %64)
  %66 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %66
  store %struct.std.io.io %65, %struct.std.io.io* %66
  %67 = getelementptr [18 x i8], [18 x i8]* @const.str.186, i64 0, i64 0
  %68 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %66, i8* %67)
  %69 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %69
  store %struct.std.io.io %68, %struct.std.io.io* %69
  %70 = load %struct.std.io.io, %struct.std.io.io* %69
  %71 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  call void @ast.dumper.ast_dumper.push_indent(%struct.ast.dumper.ast_dumper* %71)
  store i64 0, i64* %index.39
  br label %label.69

label.69:			; loop.entry
  %72 = load i64, i64* %index.39
  %73 = load %struct.ast.ast.ast_use_stmt*, %struct.ast.ast.ast_use_stmt** %node
  %74 = getelementptr inbounds %struct.ast.ast.ast_use_stmt, %struct.ast.ast.ast_use_stmt* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %74, i32 0, i32 1
  %76 = load i64, i64* %75
  %77 = icmp ult i64 %72, %76
  br i1 %77, label %label.71, label %label.83

label.71:			; loop.cond.true
  %78 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %79 = load %struct.ast.ast.ast_use_stmt*, %struct.ast.ast.ast_use_stmt** %node
  %80 = getelementptr inbounds %struct.ast.ast.ast_use_stmt, %struct.ast.ast.ast_use_stmt* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %80, i32 0, i32 0
  %82 = load i64, i64* %index.39
  %83 = load i8**, i8*** %81
  %84 = getelementptr i8*, i8** %83, i64 %82
  %85 = load i8*, i8** %84
  %86 = bitcast i8* %85 to %struct.ast.ast.ast*
  %87 = load %struct.std.io.io, %struct.std.io.io* %out
  call void @ast.dumper.ast_dumper.dump(%struct.ast.dumper.ast_dumper* %78, %struct.ast.ast.ast* %86, %struct.std.io.io %87)
  %88 = load i64, i64* %index.39
  %89 = add i64 %88, 1
  store i64 %89, i64* %index.39
  br label %label.69

label.83:			; loop.exit
  %90 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  call void @ast.dumper.ast_dumper.pop_indent(%struct.ast.dumper.ast_dumper* %90)
  br label %label.87

label.87:			; branch.end
  %91 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  call void @ast.dumper.ast_dumper.pop_indent(%struct.ast.dumper.ast_dumper* %91)
  ret void 
}

define void @ast.dumper.ast_dumper.dump_type_def(%struct.ast.dumper.ast_dumper* %self.param, %struct.ast.ast.ast_type_def* %node.param, %struct.std.io.io %out.param) {
entry:
  %self = alloca %struct.ast.dumper.ast_dumper*
  %node = alloca %struct.ast.ast.ast_type_def*
  %out = alloca %struct.std.io.io
  %_5.real = alloca %struct.std.io.io
  store %struct.ast.dumper.ast_dumper* %self.param, %struct.ast.dumper.ast_dumper** %self
  store %struct.ast.ast.ast_type_def* %node.param, %struct.ast.ast.ast_type_def** %node
  store %struct.std.io.io %out.param, %struct.std.io.io* %out
  %0 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %1 = getelementptr inbounds %struct.ast.dumper.ast_dumper, %struct.ast.dumper.ast_dumper* %0, i32 0, i32 0
  %2 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %1, i32 0, i32 0
  %3 = load i8*, i8** %2
  %4 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %out, i8* %3)
  %5 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %5
  store %struct.std.io.io %4, %struct.std.io.io* %5
  %6 = getelementptr [11 x i8], [11 x i8]* @const.str.187, i64 0, i64 0
  %7 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %5, i8* %6)
  %8 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %8
  store %struct.std.io.io %7, %struct.std.io.io* %8
  %9 = load %struct.ast.ast.ast_type_def*, %struct.ast.ast.ast_type_def** %node
  %10 = getelementptr inbounds %struct.ast.ast.ast_type_def, %struct.ast.ast.ast_type_def* %9, i32 0, i32 2
  %11 = load i64, i64* %10
  %12 = call %struct.std.io.io @std.io.io.out_i64(%struct.std.io.io* %8, i64 %11)
  %13 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %13
  store %struct.std.io.io %12, %struct.std.io.io* %13
  %14 = getelementptr [6 x i8], [6 x i8]* @const.str.188, i64 0, i64 0
  %15 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %13, i8* %14)
  %16 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %16
  store %struct.std.io.io %15, %struct.std.io.io* %16
  %17 = load %struct.std.io.io, %struct.std.io.io* %16
  %18 = load %struct.ast.ast.ast_type_def*, %struct.ast.ast.ast_type_def** %node
  %19 = getelementptr inbounds %struct.ast.ast.ast_type_def, %struct.ast.ast.ast_type_def* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.ast.ast.ast, %struct.ast.ast.ast* %19, i32 0, i32 1
  %21 = load %struct.err.span.span*, %struct.err.span.span** %20
  %22 = load %struct.std.io.io, %struct.std.io.io* %out
  call void @err.span.span.dump(%struct.err.span.span* %21, %struct.std.io.io %22)
  %23 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  call void @ast.dumper.ast_dumper.push_indent(%struct.ast.dumper.ast_dumper* %23)
  %24 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %25 = load %struct.ast.ast.ast_type_def*, %struct.ast.ast.ast_type_def** %node
  %26 = getelementptr inbounds %struct.ast.ast.ast_type_def, %struct.ast.ast.ast_type_def* %25, i32 0, i32 1
  %27 = load %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %26
  %28 = bitcast %struct.ast.ast.ast_identifier* %27 to %struct.ast.ast.ast*
  %29 = load %struct.std.io.io, %struct.std.io.io* %out
  call void @ast.dumper.ast_dumper.dump(%struct.ast.dumper.ast_dumper* %24, %struct.ast.ast.ast* %28, %struct.std.io.io %29)
  %30 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  call void @ast.dumper.ast_dumper.pop_indent(%struct.ast.dumper.ast_dumper* %30)
  ret void 
}

define void @ast.dumper.ast_dumper.dump_struct_field(%struct.ast.dumper.ast_dumper* %self.param, %struct.ast.ast.ast_struct_field* %node.param, %struct.std.io.io %out.param) {
entry:
  %self = alloca %struct.ast.dumper.ast_dumper*
  %node = alloca %struct.ast.ast.ast_struct_field*
  %out = alloca %struct.std.io.io
  %_5.real = alloca %struct.std.io.io
  store %struct.ast.dumper.ast_dumper* %self.param, %struct.ast.dumper.ast_dumper** %self
  store %struct.ast.ast.ast_struct_field* %node.param, %struct.ast.ast.ast_struct_field** %node
  store %struct.std.io.io %out.param, %struct.std.io.io* %out
  %0 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %1 = getelementptr inbounds %struct.ast.dumper.ast_dumper, %struct.ast.dumper.ast_dumper* %0, i32 0, i32 0
  %2 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %1, i32 0, i32 0
  %3 = load i8*, i8** %2
  %4 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %out, i8* %3)
  %5 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %5
  store %struct.std.io.io %4, %struct.std.io.io* %5
  %6 = getelementptr [17 x i8], [17 x i8]* @const.str.189, i64 0, i64 0
  %7 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %5, i8* %6)
  %8 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %8
  store %struct.std.io.io %7, %struct.std.io.io* %8
  %9 = load %struct.std.io.io, %struct.std.io.io* %8
  %10 = load %struct.ast.ast.ast_struct_field*, %struct.ast.ast.ast_struct_field** %node
  %11 = getelementptr inbounds %struct.ast.ast.ast_struct_field, %struct.ast.ast.ast_struct_field* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.ast.ast.ast, %struct.ast.ast.ast* %11, i32 0, i32 1
  %13 = load %struct.err.span.span*, %struct.err.span.span** %12
  %14 = load %struct.std.io.io, %struct.std.io.io* %out
  call void @err.span.span.dump(%struct.err.span.span* %13, %struct.std.io.io %14)
  %15 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  call void @ast.dumper.ast_dumper.push_indent(%struct.ast.dumper.ast_dumper* %15)
  %16 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %17 = load %struct.ast.ast.ast_struct_field*, %struct.ast.ast.ast_struct_field** %node
  %18 = getelementptr inbounds %struct.ast.ast.ast_struct_field, %struct.ast.ast.ast_struct_field* %17, i32 0, i32 1
  %19 = load %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %18
  %20 = bitcast %struct.ast.ast.ast_identifier* %19 to %struct.ast.ast.ast*
  %21 = load %struct.std.io.io, %struct.std.io.io* %out
  call void @ast.dumper.ast_dumper.dump(%struct.ast.dumper.ast_dumper* %16, %struct.ast.ast.ast* %20, %struct.std.io.io %21)
  %22 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %23 = load %struct.ast.ast.ast_struct_field*, %struct.ast.ast.ast_struct_field** %node
  %24 = getelementptr inbounds %struct.ast.ast.ast_struct_field, %struct.ast.ast.ast_struct_field* %23, i32 0, i32 2
  %25 = load %struct.ast.ast.ast_type_def*, %struct.ast.ast.ast_type_def** %24
  %26 = bitcast %struct.ast.ast.ast_type_def* %25 to %struct.ast.ast.ast*
  %27 = load %struct.std.io.io, %struct.std.io.io* %out
  call void @ast.dumper.ast_dumper.dump(%struct.ast.dumper.ast_dumper* %22, %struct.ast.ast.ast* %26, %struct.std.io.io %27)
  %28 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  call void @ast.dumper.ast_dumper.pop_indent(%struct.ast.dumper.ast_dumper* %28)
  ret void 
}

define void @ast.dumper.ast_dumper.dump_struct_decl(%struct.ast.dumper.ast_dumper* %self.param, %struct.ast.ast.ast_struct_decl* %node.param, %struct.std.io.io %out.param) {
entry:
  %self = alloca %struct.ast.dumper.ast_dumper*
  %node = alloca %struct.ast.ast.ast_struct_decl*
  %out = alloca %struct.std.io.io
  %index.8 = alloca i64
  %_5.real = alloca %struct.std.io.io
  store %struct.ast.dumper.ast_dumper* %self.param, %struct.ast.dumper.ast_dumper** %self
  store %struct.ast.ast.ast_struct_decl* %node.param, %struct.ast.ast.ast_struct_decl** %node
  store %struct.std.io.io %out.param, %struct.std.io.io* %out
  %0 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %1 = getelementptr inbounds %struct.ast.dumper.ast_dumper, %struct.ast.dumper.ast_dumper* %0, i32 0, i32 0
  %2 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %1, i32 0, i32 0
  %3 = load i8*, i8** %2
  %4 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %out, i8* %3)
  %5 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %5
  store %struct.std.io.io %4, %struct.std.io.io* %5
  %6 = getelementptr [14 x i8], [14 x i8]* @const.str.190, i64 0, i64 0
  %7 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %5, i8* %6)
  %8 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %8
  store %struct.std.io.io %7, %struct.std.io.io* %8
  %9 = load %struct.ast.ast.ast_struct_decl*, %struct.ast.ast.ast_struct_decl** %node
  %10 = getelementptr inbounds %struct.ast.ast.ast_struct_decl, %struct.ast.ast.ast_struct_decl* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %10, i32 0, i32 0
  %12 = load i8*, i8** %11
  %13 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %8, i8* %12)
  %14 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %14
  store %struct.std.io.io %13, %struct.std.io.io* %14
  %15 = getelementptr [6 x i8], [6 x i8]* @const.str.188, i64 0, i64 0
  %16 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %14, i8* %15)
  %17 = getelementptr %struct.std.io.io, %struct.std.io.io* %_5.real, i32 0 ; %_5.real -> %17
  store %struct.std.io.io %16, %struct.std.io.io* %17
  %18 = load %struct.std.io.io, %struct.std.io.io* %17
  %19 = load %struct.ast.ast.ast_struct_decl*, %struct.ast.ast.ast_struct_decl** %node
  %20 = getelementptr inbounds %struct.ast.ast.ast_struct_decl, %struct.ast.ast.ast_struct_decl* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.ast.ast.ast, %struct.ast.ast.ast* %20, i32 0, i32 1
  %22 = load %struct.err.span.span*, %struct.err.span.span** %21
  %23 = load %struct.std.io.io, %struct.std.io.io* %out
  call void @err.span.span.dump(%struct.err.span.span* %22, %struct.std.io.io %23)
  %24 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  call void @ast.dumper.ast_dumper.push_indent(%struct.ast.dumper.ast_dumper* %24)
  store i64 0, i64* %index.8
  br label %label.24

label.24:			; loop.entry
  %25 = load i64, i64* %index.8
  %26 = load %struct.ast.ast.ast_struct_decl*, %struct.ast.ast.ast_struct_decl** %node
  %27 = getelementptr inbounds %struct.ast.ast.ast_struct_decl, %struct.ast.ast.ast_struct_decl* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %27, i32 0, i32 1
  %29 = load i64, i64* %28
  %30 = icmp ult i64 %25, %29
  br i1 %30, label %label.2c, label %label.3e

label.2c:			; loop.cond.true
  %31 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  %32 = load %struct.ast.ast.ast_struct_decl*, %struct.ast.ast.ast_struct_decl** %node
  %33 = getelementptr inbounds %struct.ast.ast.ast_struct_decl, %struct.ast.ast.ast_struct_decl* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.ast.ast.ptr_vec, %struct.ast.ast.ptr_vec* %33, i32 0, i32 0
  %35 = load i64, i64* %index.8
  %36 = load i8**, i8*** %34
  %37 = getelementptr i8*, i8** %36, i64 %35
  %38 = load i8*, i8** %37
  %39 = bitcast i8* %38 to %struct.ast.ast.ast*
  %40 = load %struct.std.io.io, %struct.std.io.io* %out
  call void @ast.dumper.ast_dumper.dump(%struct.ast.dumper.ast_dumper* %31, %struct.ast.ast.ast* %39, %struct.std.io.io %40)
  %41 = load i64, i64* %index.8
  %42 = add i64 %41, 1
  store i64 %42, i64* %index.8
  br label %label.24

label.3e:			; loop.exit
  %43 = load %struct.ast.dumper.ast_dumper*, %struct.ast.dumper.ast_dumper** %self
  call void @ast.dumper.ast_dumper.pop_indent(%struct.ast.dumper.ast_dumper* %43)
  ret void 
}

define %struct.parser.parser* @parser.parser.new(%struct.err.report.report* %e.param, %struct.lexer.lexer* %l.param) {
entry:
  %e = alloca %struct.err.report.report*
  %l = alloca %struct.lexer.lexer*
  %res.1 = alloca %struct.parser.parser*
  %_1.real = alloca %struct.parser.parser*
  store %struct.err.report.report* %e.param, %struct.err.report.report** %e
  store %struct.lexer.lexer* %l.param, %struct.lexer.lexer** %l
  %0 = call %struct.parser.parser* @parser.parser.__alloc__()
  %1 = getelementptr %struct.parser.parser*, %struct.parser.parser** %_1.real, i32 0 ; %_1.real -> %1
  store %struct.parser.parser* %0, %struct.parser.parser** %1
  %2 = load %struct.parser.parser*, %struct.parser.parser** %1
  store %struct.parser.parser* %2, %struct.parser.parser** %res.1
  %3 = load %struct.parser.parser*, %struct.parser.parser** %res.1
  %4 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %3, i32 0, i32 0
  %5 = load %struct.err.report.report*, %struct.err.report.report** %e
  store %struct.err.report.report* %5, %struct.err.report.report** %4
  %6 = load %struct.parser.parser*, %struct.parser.parser** %res.1
  %7 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %6, i32 0, i32 1
  %8 = load %struct.lexer.lexer*, %struct.lexer.lexer** %l
  %9 = getelementptr inbounds %struct.lexer.lexer, %struct.lexer.lexer* %8, i32 0, i32 1
  %10 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %9
  store %struct.lexer.vec_token* %10, %struct.lexer.vec_token** %7
  %11 = load %struct.parser.parser*, %struct.parser.parser** %res.1
  %12 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %11, i32 0, i32 2
  %13 = bitcast i8* null to %struct.ast.ast.root*
  store %struct.ast.ast.root* %13, %struct.ast.ast.root** %12
  %14 = load %struct.parser.parser*, %struct.parser.parser** %res.1
  %15 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %14, i32 0, i32 3
  store i64 0, i64* %15
  %16 = load %struct.parser.parser*, %struct.parser.parser** %res.1
  ret %struct.parser.parser* %16
}

define void @parser.parser.delete(%struct.parser.parser* %self.param) {
entry:
  %self = alloca %struct.parser.parser*
  %_6.real = alloca %struct.std.io.io
  store %struct.parser.parser* %self.param, %struct.parser.parser** %self
  %0 = load %struct.parser.parser*, %struct.parser.parser** %self
  %1 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %0, i32 0, i32 2
  %2 = load %struct.ast.ast.root*, %struct.ast.ast.root** %1
  %3 = bitcast i8* null to %struct.ast.ast.root*
  %4 = icmp ne %struct.ast.ast.root* %2, %3
  br i1 %4, label %label.7, label %label.2c

label.7:			; cond.true
  %5 = call %struct.std.io.io @std.io.io.stderr()
  %6 = getelementptr %struct.std.io.io, %struct.std.io.io* %_6.real, i32 0 ; %_6.real -> %6
  store %struct.std.io.io %5, %struct.std.io.io* %6
  %7 = getelementptr [2 x i8], [2 x i8]* @const.str.112, i64 0, i64 0
  %8 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %6, i8* %7)
  %9 = getelementptr %struct.std.io.io, %struct.std.io.io* %_6.real, i32 0 ; %_6.real -> %9
  store %struct.std.io.io %8, %struct.std.io.io* %9
  %10 = call %struct.std.io.io @std.io.io.green(%struct.std.io.io* %9)
  %11 = getelementptr %struct.std.io.io, %struct.std.io.io* %_6.real, i32 0 ; %_6.real -> %11
  store %struct.std.io.io %10, %struct.std.io.io* %11
  %12 = getelementptr [6 x i8], [6 x i8]* @const.str.191, i64 0, i64 0
  %13 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %11, i8* %12)
  %14 = getelementptr %struct.std.io.io, %struct.std.io.io* %_6.real, i32 0 ; %_6.real -> %14
  store %struct.std.io.io %13, %struct.std.io.io* %14
  %15 = call %struct.std.io.io @std.io.io.reset(%struct.std.io.io* %14)
  %16 = getelementptr %struct.std.io.io, %struct.std.io.io* %_6.real, i32 0 ; %_6.real -> %16
  store %struct.std.io.io %15, %struct.std.io.io* %16
  %17 = getelementptr [2 x i8], [2 x i8]* @const.str.114, i64 0, i64 0
  %18 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %16, i8* %17)
  %19 = getelementptr %struct.std.io.io, %struct.std.io.io* %_6.real, i32 0 ; %_6.real -> %19
  store %struct.std.io.io %18, %struct.std.io.io* %19
  %20 = getelementptr [21 x i8], [21 x i8]* @const.str.192, i64 0, i64 0
  %21 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %19, i8* %20)
  %22 = getelementptr %struct.std.io.io, %struct.std.io.io* %_6.real, i32 0 ; %_6.real -> %22
  store %struct.std.io.io %21, %struct.std.io.io* %22
  %23 = load %struct.std.io.io, %struct.std.io.io* %22
  %24 = load %struct.parser.parser*, %struct.parser.parser** %self
  %25 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %24, i32 0, i32 2
  %26 = load %struct.ast.ast.root*, %struct.ast.ast.root** %25
  call void @ast.ast.root.delete(%struct.ast.ast.root* %26)
  %27 = load %struct.parser.parser*, %struct.parser.parser** %self
  %28 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %27, i32 0, i32 2
  %29 = load %struct.ast.ast.root*, %struct.ast.ast.root** %28
  %30 = bitcast %struct.ast.ast.root* %29 to i8*
  call void @free(i8* %30)
  br label %label.2e

label.2c:			; cond.false
  br label %label.2e

label.2e:			; branch.end
  ret void 
}

define %struct.err.span.span* @parser.parser.this_tok_loc_copy(%struct.parser.parser* %self.param) {
entry:
  %self = alloca %struct.parser.parser*
  %_7.real = alloca %struct.lexer.token
  %_11.real = alloca %struct.err.span.span*
  store %struct.parser.parser* %self.param, %struct.parser.parser** %self
  %0 = load %struct.parser.parser*, %struct.parser.parser** %self
  %1 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %0, i32 0, i32 1
  %2 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %1
  %3 = load %struct.parser.parser*, %struct.parser.parser** %self
  %4 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %3, i32 0, i32 3
  %5 = load i64, i64* %4
  %6 = call %struct.lexer.token @lexer.vec_token.get(%struct.lexer.vec_token* %2, i64 %5)
  %7 = getelementptr %struct.lexer.token, %struct.lexer.token* %_7.real, i32 0 ; %_7.real -> %7
  store %struct.lexer.token %6, %struct.lexer.token* %7
  %8 = getelementptr inbounds %struct.lexer.token, %struct.lexer.token* %7, i32 0, i32 2
  %9 = load %struct.err.span.span*, %struct.err.span.span** %8
  %10 = call %struct.err.span.span* @err.span.span.copy(%struct.err.span.span* %9)
  %11 = getelementptr %struct.err.span.span*, %struct.err.span.span** %_11.real, i32 0 ; %_11.real -> %11
  store %struct.err.span.span* %10, %struct.err.span.span** %11
  %12 = load %struct.err.span.span*, %struct.err.span.span** %11
  ret %struct.err.span.span* %12
}

define i1 @parser.parser.lookahead(%struct.parser.parser* %self.param, i64 %kind.param) {
entry:
  %self = alloca %struct.parser.parser*
  %kind = alloca i64
  %_7.real = alloca %struct.lexer.token
  store %struct.parser.parser* %self.param, %struct.parser.parser** %self
  store i64 %kind.param, i64* %kind
  %0 = load %struct.parser.parser*, %struct.parser.parser** %self
  %1 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %0, i32 0, i32 1
  %2 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %1
  %3 = load %struct.parser.parser*, %struct.parser.parser** %self
  %4 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %3, i32 0, i32 3
  %5 = load i64, i64* %4
  %6 = call %struct.lexer.token @lexer.vec_token.get(%struct.lexer.vec_token* %2, i64 %5)
  %7 = getelementptr %struct.lexer.token, %struct.lexer.token* %_7.real, i32 0 ; %_7.real -> %7
  store %struct.lexer.token %6, %struct.lexer.token* %7
  %8 = getelementptr inbounds %struct.lexer.token, %struct.lexer.token* %7, i32 0, i32 0
  %9 = load i64, i64* %8
  %10 = load i64, i64* %kind
  %11 = icmp eq i64 %9, %10
  ret i1 %11
}

define void @parser.parser.next(%struct.parser.parser* %self.param) {
entry:
  %self = alloca %struct.parser.parser*
  %_7.real = alloca %struct.lexer.token
  store %struct.parser.parser* %self.param, %struct.parser.parser** %self
  %0 = load %struct.parser.parser*, %struct.parser.parser** %self
  %1 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %0, i32 0, i32 1
  %2 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %1
  %3 = load %struct.parser.parser*, %struct.parser.parser** %self
  %4 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %3, i32 0, i32 3
  %5 = load i64, i64* %4
  %6 = call %struct.lexer.token @lexer.vec_token.get(%struct.lexer.vec_token* %2, i64 %5)
  %7 = getelementptr %struct.lexer.token, %struct.lexer.token* %_7.real, i32 0 ; %_7.real -> %7
  store %struct.lexer.token %6, %struct.lexer.token* %7
  %8 = getelementptr inbounds %struct.lexer.token, %struct.lexer.token* %7, i32 0, i32 0
  %9 = load i64, i64* %8
  %10 = icmp eq i64 %9, 69
  br i1 %10, label %label.e, label %label.12

label.e:			; cond.true
  ret void 

label.place_holder.10:
  br label %label.14

label.12:			; cond.false
  br label %label.14

label.14:			; branch.end
  %11 = load %struct.parser.parser*, %struct.parser.parser** %self
  %12 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %11, i32 0, i32 3
  %13 = load i64, i64* %12
  %14 = add i64 %13, 1
  store i64 %14, i64* %12
  ret void 
}

define void @parser.parser.match_token(%struct.parser.parser* %self.param, i64 %kind.param) {
entry:
  %self = alloca %struct.parser.parser*
  %kind = alloca i64
  %tp.1 = alloca i64
  %loc.11 = alloca %struct.err.span.span*
  %match.94713949968912.14 = alloca i64
  %error_message.43 = alloca %struct.std.str.str
  %_7.real = alloca %struct.lexer.token
  %_50.real = alloca %struct.std.str.str
  %_54.real = alloca %struct.std.str.str*
  store %struct.parser.parser* %self.param, %struct.parser.parser** %self
  store i64 %kind.param, i64* %kind
  %0 = load %struct.parser.parser*, %struct.parser.parser** %self
  %1 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %0, i32 0, i32 1
  %2 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %1
  %3 = load %struct.parser.parser*, %struct.parser.parser** %self
  %4 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %3, i32 0, i32 3
  %5 = load i64, i64* %4
  %6 = call %struct.lexer.token @lexer.vec_token.get(%struct.lexer.vec_token* %2, i64 %5)
  %7 = getelementptr %struct.lexer.token, %struct.lexer.token* %_7.real, i32 0 ; %_7.real -> %7
  store %struct.lexer.token %6, %struct.lexer.token* %7
  %8 = getelementptr inbounds %struct.lexer.token, %struct.lexer.token* %7, i32 0, i32 0
  %9 = load i64, i64* %8
  store i64 %9, i64* %tp.1
  %10 = load i64, i64* %tp.1
  %11 = load i64, i64* %kind
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %label.12, label %label.18

label.12:			; cond.true
  %13 = load %struct.parser.parser*, %struct.parser.parser** %self
  call void @parser.parser.next(%struct.parser.parser* %13)
  ret void 

label.place_holder.16:
  br label %label.1a

label.18:			; cond.false
  br label %label.1a

label.1a:			; branch.end
  %14 = load %struct.parser.parser*, %struct.parser.parser** %self
  %15 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %14, i32 0, i32 1
  %16 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %15
  %17 = load %struct.parser.parser*, %struct.parser.parser** %self
  %18 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %17, i32 0, i32 3
  %19 = load i64, i64* %18
  %20 = call %struct.lexer.token @lexer.vec_token.get(%struct.lexer.vec_token* %16, i64 %19)
  %21 = getelementptr %struct.lexer.token, %struct.lexer.token* %_7.real, i32 0 ; %_7.real -> %21
  store %struct.lexer.token %20, %struct.lexer.token* %21
  %22 = getelementptr inbounds %struct.lexer.token, %struct.lexer.token* %21, i32 0, i32 2
  %23 = load %struct.err.span.span*, %struct.err.span.span** %22
  store %struct.err.span.span* %23, %struct.err.span.span** %loc.11
  %24 = load i64, i64* %tp.1
  store i64 %24, i64* %match.94713949968912.14
  %25 = load i64, i64* %match.94713949968912.14
  %26 = icmp eq i64 %25, 4
  br i1 %26, label %label.2c, label %label.38

label.2c:			; cond.true
  %27 = load %struct.parser.parser*, %struct.parser.parser** %self
  %28 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %27, i32 0, i32 0
  %29 = load %struct.err.report.report*, %struct.err.report.report** %28
  %30 = load %struct.err.span.span*, %struct.err.span.span** %loc.11
  %31 = getelementptr [26 x i8], [26 x i8]* @const.str.193, i64 0, i64 0
  call void @err.report.report.error(%struct.err.report.report* %29, %struct.err.span.span* %30, i8* %31)
  %32 = load %struct.parser.parser*, %struct.parser.parser** %self
  call void @parser.parser.next(%struct.parser.parser* %32)
  ret void 

label.place_holder.36:
  br label %label.5a

label.38:			; cond.false
  %33 = load i64, i64* %match.94713949968912.14
  %34 = icmp eq i64 %33, 1
  br i1 %34, label %label.3c, label %label.48

label.3c:			; cond.true
  %35 = load %struct.parser.parser*, %struct.parser.parser** %self
  %36 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %35, i32 0, i32 0
  %37 = load %struct.err.report.report*, %struct.err.report.report** %36
  %38 = load %struct.err.span.span*, %struct.err.span.span** %loc.11
  %39 = getelementptr [22 x i8], [22 x i8]* @const.str.194, i64 0, i64 0
  call void @err.report.report.error(%struct.err.report.report* %37, %struct.err.span.span* %38, i8* %39)
  %40 = load %struct.parser.parser*, %struct.parser.parser** %self
  call void @parser.parser.next(%struct.parser.parser* %40)
  ret void 

label.place_holder.46:
  br label %label.5a

label.48:			; cond.false
  %41 = load i64, i64* %match.94713949968912.14
  %42 = icmp eq i64 %41, 2
  br i1 %42, label %label.4c, label %label.58

label.4c:			; cond.true
  %43 = load %struct.parser.parser*, %struct.parser.parser** %self
  %44 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %43, i32 0, i32 0
  %45 = load %struct.err.report.report*, %struct.err.report.report** %44
  %46 = load %struct.err.span.span*, %struct.err.span.span** %loc.11
  %47 = getelementptr [22 x i8], [22 x i8]* @const.str.195, i64 0, i64 0
  call void @err.report.report.error(%struct.err.report.report* %45, %struct.err.span.span* %46, i8* %47)
  %48 = load %struct.parser.parser*, %struct.parser.parser** %self
  call void @parser.parser.next(%struct.parser.parser* %48)
  ret void 

label.place_holder.56:
  br label %label.5a

label.58:			; cond.false
  br label %label.5a

label.5a:			; branch.end
  %49 = call %struct.std.str.str @std.str.str.instance()
  %50 = getelementptr %struct.std.str.str, %struct.std.str.str* %_50.real, i32 0 ; %_50.real -> %50
  store %struct.std.str.str %49, %struct.std.str.str* %50
  %51 = load %struct.std.str.str, %struct.std.str.str* %50
  store %struct.std.str.str %51, %struct.std.str.str* %error_message.43
  %52 = getelementptr [18 x i8], [18 x i8]* @const.str.196, i64 0, i64 0
  %53 = call %struct.std.str.str* @std.str.str.append_i8_vec(%struct.std.str.str* %error_message.43, i8* %52)
  %54 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_54.real, i32 0 ; %_54.real -> %54
  store %struct.std.str.str* %53, %struct.std.str.str** %54
  %55 = load %struct.std.str.str*, %struct.std.str.str** %54
  %56 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %55, i8 34)
  %57 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_54.real, i32 0 ; %_54.real -> %57
  store %struct.std.str.str* %56, %struct.std.str.str** %57
  %58 = load %struct.std.str.str*, %struct.std.str.str** %57
  %59 = load %struct.parser.parser*, %struct.parser.parser** %self
  %60 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %59, i32 0, i32 1
  %61 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %60
  %62 = load %struct.parser.parser*, %struct.parser.parser** %self
  %63 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %62, i32 0, i32 3
  %64 = load i64, i64* %63
  %65 = call %struct.lexer.token @lexer.vec_token.get(%struct.lexer.vec_token* %61, i64 %64)
  %66 = getelementptr %struct.lexer.token, %struct.lexer.token* %_7.real, i32 0 ; %_7.real -> %66
  store %struct.lexer.token %65, %struct.lexer.token* %66
  %67 = getelementptr inbounds %struct.lexer.token, %struct.lexer.token* %66, i32 0, i32 1
  %68 = load %struct.std.str.str*, %struct.std.str.str** %67
  %69 = call %struct.std.str.str* @std.str.str.append_str(%struct.std.str.str* %58, %struct.std.str.str* %68)
  %70 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_54.real, i32 0 ; %_54.real -> %70
  store %struct.std.str.str* %69, %struct.std.str.str** %70
  %71 = load %struct.std.str.str*, %struct.std.str.str** %70
  %72 = call %struct.std.str.str* @std.str.str.append_char(%struct.std.str.str* %71, i8 34)
  %73 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_54.real, i32 0 ; %_54.real -> %73
  store %struct.std.str.str* %72, %struct.std.str.str** %73
  %74 = load %struct.std.str.str*, %struct.std.str.str** %73
  %75 = getelementptr [7 x i8], [7 x i8]* @const.str.197, i64 0, i64 0
  %76 = call %struct.std.str.str* @std.str.str.append_i8_vec(%struct.std.str.str* %74, i8* %75)
  %77 = getelementptr %struct.std.str.str*, %struct.std.str.str** %_54.real, i32 0 ; %_54.real -> %77
  store %struct.std.str.str* %76, %struct.std.str.str** %77
  %78 = load %struct.std.str.str*, %struct.std.str.str** %77
  %79 = load %struct.parser.parser*, %struct.parser.parser** %self
  %80 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %79, i32 0, i32 0
  %81 = load %struct.err.report.report*, %struct.err.report.report** %80
  %82 = load %struct.err.span.span*, %struct.err.span.span** %loc.11
  %83 = getelementptr inbounds %struct.std.str.str, %struct.std.str.str* %error_message.43, i32 0, i32 0
  %84 = load i8*, i8** %83
  call void @err.report.report.error(%struct.err.report.report* %81, %struct.err.span.span* %82, i8* %84)
  call void @std.str.str.delete(%struct.std.str.str* %error_message.43)
  %85 = load %struct.parser.parser*, %struct.parser.parser** %self
  call void @parser.parser.next(%struct.parser.parser* %85)
  ret void 
}

define %struct.ast.ast.ast_identifier* @parser.parser.identifier_gen(%struct.parser.parser* %self.param) {
entry:
  %self = alloca %struct.parser.parser*
  %res.1 = alloca %struct.ast.ast.ast_identifier*
  %_2.real = alloca %struct.err.span.span*
  %_11.real = alloca %struct.lexer.token
  %_15.real = alloca %struct.ast.ast.ast_identifier*
  store %struct.parser.parser* %self.param, %struct.parser.parser** %self
  %0 = load %struct.parser.parser*, %struct.parser.parser** %self
  %1 = call %struct.err.span.span* @parser.parser.this_tok_loc_copy(%struct.parser.parser* %0)
  %2 = getelementptr %struct.err.span.span*, %struct.err.span.span** %_2.real, i32 0 ; %_2.real -> %2
  store %struct.err.span.span* %1, %struct.err.span.span** %2
  %3 = load %struct.err.span.span*, %struct.err.span.span** %2
  %4 = load %struct.parser.parser*, %struct.parser.parser** %self
  %5 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %4, i32 0, i32 1
  %6 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %5
  %7 = load %struct.parser.parser*, %struct.parser.parser** %self
  %8 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %7, i32 0, i32 3
  %9 = load i64, i64* %8
  %10 = call %struct.lexer.token @lexer.vec_token.get(%struct.lexer.vec_token* %6, i64 %9)
  %11 = getelementptr %struct.lexer.token, %struct.lexer.token* %_11.real, i32 0 ; %_11.real -> %11
  store %struct.lexer.token %10, %struct.lexer.token* %11
  %12 = getelementptr inbounds %struct.lexer.token, %struct.lexer.token* %11, i32 0, i32 1
  %13 = load %struct.std.str.str*, %struct.std.str.str** %12
  %14 = call %struct.ast.ast.ast_identifier* @ast.ast.ast_identifier.new(%struct.err.span.span* %3, %struct.std.str.str* %13)
  %15 = getelementptr %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %_15.real, i32 0 ; %_15.real -> %15
  store %struct.ast.ast.ast_identifier* %14, %struct.ast.ast.ast_identifier** %15
  %16 = load %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %15
  store %struct.ast.ast.ast_identifier* %16, %struct.ast.ast.ast_identifier** %res.1
  %17 = load %struct.parser.parser*, %struct.parser.parser** %self
  call void @parser.parser.match_token(%struct.parser.parser* %17, i64 4)
  %18 = load %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %res.1
  ret %struct.ast.ast.ast_identifier* %18
}

define %struct.ast.ast.ast_type_def* @parser.parser.type_def_gen(%struct.parser.parser* %self.param) {
entry:
  %self = alloca %struct.parser.parser*
  %res.1 = alloca %struct.ast.ast.ast_type_def*
  %_2.real = alloca %struct.err.span.span*
  %_5.real = alloca %struct.ast.ast.ast_type_def*
  %_11.real = alloca %struct.ast.ast.ast_identifier*
  %_15.real = alloca i1
  store %struct.parser.parser* %self.param, %struct.parser.parser** %self
  %0 = load %struct.parser.parser*, %struct.parser.parser** %self
  %1 = call %struct.err.span.span* @parser.parser.this_tok_loc_copy(%struct.parser.parser* %0)
  %2 = getelementptr %struct.err.span.span*, %struct.err.span.span** %_2.real, i32 0 ; %_2.real -> %2
  store %struct.err.span.span* %1, %struct.err.span.span** %2
  %3 = load %struct.err.span.span*, %struct.err.span.span** %2
  %4 = call %struct.ast.ast.ast_type_def* @ast.ast.ast_type_def.new(%struct.err.span.span* %3)
  %5 = getelementptr %struct.ast.ast.ast_type_def*, %struct.ast.ast.ast_type_def** %_5.real, i32 0 ; %_5.real -> %5
  store %struct.ast.ast.ast_type_def* %4, %struct.ast.ast.ast_type_def** %5
  %6 = load %struct.ast.ast.ast_type_def*, %struct.ast.ast.ast_type_def** %5
  store %struct.ast.ast.ast_type_def* %6, %struct.ast.ast.ast_type_def** %res.1
  %7 = load %struct.ast.ast.ast_type_def*, %struct.ast.ast.ast_type_def** %res.1
  %8 = getelementptr inbounds %struct.ast.ast.ast_type_def, %struct.ast.ast.ast_type_def* %7, i32 0, i32 1
  %9 = load %struct.parser.parser*, %struct.parser.parser** %self
  %10 = call %struct.ast.ast.ast_identifier* @parser.parser.identifier_gen(%struct.parser.parser* %9)
  %11 = getelementptr %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %_11.real, i32 0 ; %_11.real -> %11
  store %struct.ast.ast.ast_identifier* %10, %struct.ast.ast.ast_identifier** %11
  %12 = load %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %11
  store %struct.ast.ast.ast_identifier* %12, %struct.ast.ast.ast_identifier** %8
  br label %label.14

label.14:			; loop.entry
  %13 = load %struct.parser.parser*, %struct.parser.parser** %self
  %14 = call i1 @parser.parser.lookahead(%struct.parser.parser* %13, i64 43)
  %15 = getelementptr i1, i1* %_15.real, i32 0 ; %_15.real -> %15
  store i1 %14, i1* %15
  %16 = load i1, i1* %15
  br i1 %16, label %label.1b, label %label.26

label.1b:			; loop.cond.true
  %17 = load %struct.ast.ast.ast_type_def*, %struct.ast.ast.ast_type_def** %res.1
  %18 = getelementptr inbounds %struct.ast.ast.ast_type_def, %struct.ast.ast.ast_type_def* %17, i32 0, i32 2
  %19 = load i64, i64* %18
  %20 = add i64 %19, 1
  store i64 %20, i64* %18
  %21 = load %struct.parser.parser*, %struct.parser.parser** %self
  call void @parser.parser.match_token(%struct.parser.parser* %21, i64 43)
  br label %label.14

label.26:			; loop.exit
  %22 = load %struct.ast.ast.ast_type_def*, %struct.ast.ast.ast_type_def** %res.1
  ret %struct.ast.ast.ast_type_def* %22
}

define %struct.ast.ast.ast_struct_field* @parser.parser.struct_field_gen(%struct.parser.parser* %self.param) {
entry:
  %self = alloca %struct.parser.parser*
  %res.1 = alloca %struct.ast.ast.ast_struct_field*
  %_2.real = alloca %struct.err.span.span*
  %_5.real = alloca %struct.ast.ast.ast_struct_field*
  %_11.real = alloca %struct.ast.ast.ast_identifier*
  %_18.real = alloca %struct.ast.ast.ast_type_def*
  store %struct.parser.parser* %self.param, %struct.parser.parser** %self
  %0 = load %struct.parser.parser*, %struct.parser.parser** %self
  %1 = call %struct.err.span.span* @parser.parser.this_tok_loc_copy(%struct.parser.parser* %0)
  %2 = getelementptr %struct.err.span.span*, %struct.err.span.span** %_2.real, i32 0 ; %_2.real -> %2
  store %struct.err.span.span* %1, %struct.err.span.span** %2
  %3 = load %struct.err.span.span*, %struct.err.span.span** %2
  %4 = call %struct.ast.ast.ast_struct_field* @ast.ast.ast_struct_field.new(%struct.err.span.span* %3)
  %5 = getelementptr %struct.ast.ast.ast_struct_field*, %struct.ast.ast.ast_struct_field** %_5.real, i32 0 ; %_5.real -> %5
  store %struct.ast.ast.ast_struct_field* %4, %struct.ast.ast.ast_struct_field** %5
  %6 = load %struct.ast.ast.ast_struct_field*, %struct.ast.ast.ast_struct_field** %5
  store %struct.ast.ast.ast_struct_field* %6, %struct.ast.ast.ast_struct_field** %res.1
  %7 = load %struct.ast.ast.ast_struct_field*, %struct.ast.ast.ast_struct_field** %res.1
  %8 = getelementptr inbounds %struct.ast.ast.ast_struct_field, %struct.ast.ast.ast_struct_field* %7, i32 0, i32 1
  %9 = load %struct.parser.parser*, %struct.parser.parser** %self
  %10 = call %struct.ast.ast.ast_identifier* @parser.parser.identifier_gen(%struct.parser.parser* %9)
  %11 = getelementptr %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %_11.real, i32 0 ; %_11.real -> %11
  store %struct.ast.ast.ast_identifier* %10, %struct.ast.ast.ast_identifier** %11
  %12 = load %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %11
  store %struct.ast.ast.ast_identifier* %12, %struct.ast.ast.ast_identifier** %8
  %13 = load %struct.parser.parser*, %struct.parser.parser** %self
  call void @parser.parser.match_token(%struct.parser.parser* %13, i64 39)
  %14 = load %struct.ast.ast.ast_struct_field*, %struct.ast.ast.ast_struct_field** %res.1
  %15 = getelementptr inbounds %struct.ast.ast.ast_struct_field, %struct.ast.ast.ast_struct_field* %14, i32 0, i32 2
  %16 = load %struct.parser.parser*, %struct.parser.parser** %self
  %17 = call %struct.ast.ast.ast_type_def* @parser.parser.type_def_gen(%struct.parser.parser* %16)
  %18 = getelementptr %struct.ast.ast.ast_type_def*, %struct.ast.ast.ast_type_def** %_18.real, i32 0 ; %_18.real -> %18
  store %struct.ast.ast.ast_type_def* %17, %struct.ast.ast.ast_type_def** %18
  %19 = load %struct.ast.ast.ast_type_def*, %struct.ast.ast.ast_type_def** %18
  store %struct.ast.ast.ast_type_def* %19, %struct.ast.ast.ast_type_def** %15
  %20 = load %struct.ast.ast.ast_struct_field*, %struct.ast.ast.ast_struct_field** %res.1
  ret %struct.ast.ast.ast_struct_field* %20
}

define %struct.ast.ast.ast_struct_decl* @parser.parser.struct_decl_gen(%struct.parser.parser* %self.param) {
entry:
  %self = alloca %struct.parser.parser*
  %begin_loc.1 = alloca %struct.err.span.span*
  %res.5 = alloca %struct.ast.ast.ast_struct_decl*
  %_2.real = alloca %struct.err.span.span*
  %_13.real = alloca %struct.lexer.token
  %_17.real = alloca %struct.ast.ast.ast_struct_decl*
  %_23.real = alloca i1
  %_30.real = alloca %struct.ast.ast.ast_struct_field*
  store %struct.parser.parser* %self.param, %struct.parser.parser** %self
  %0 = load %struct.parser.parser*, %struct.parser.parser** %self
  %1 = call %struct.err.span.span* @parser.parser.this_tok_loc_copy(%struct.parser.parser* %0)
  %2 = getelementptr %struct.err.span.span*, %struct.err.span.span** %_2.real, i32 0 ; %_2.real -> %2
  store %struct.err.span.span* %1, %struct.err.span.span** %2
  %3 = load %struct.err.span.span*, %struct.err.span.span** %2
  store %struct.err.span.span* %3, %struct.err.span.span** %begin_loc.1
  %4 = load %struct.parser.parser*, %struct.parser.parser** %self
  call void @parser.parser.match_token(%struct.parser.parser* %4, i64 14)
  %5 = load %struct.err.span.span*, %struct.err.span.span** %begin_loc.1
  %6 = load %struct.parser.parser*, %struct.parser.parser** %self
  %7 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %6, i32 0, i32 1
  %8 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %7
  %9 = load %struct.parser.parser*, %struct.parser.parser** %self
  %10 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %9, i32 0, i32 3
  %11 = load i64, i64* %10
  %12 = call %struct.lexer.token @lexer.vec_token.get(%struct.lexer.vec_token* %8, i64 %11)
  %13 = getelementptr %struct.lexer.token, %struct.lexer.token* %_13.real, i32 0 ; %_13.real -> %13
  store %struct.lexer.token %12, %struct.lexer.token* %13
  %14 = getelementptr inbounds %struct.lexer.token, %struct.lexer.token* %13, i32 0, i32 1
  %15 = load %struct.std.str.str*, %struct.std.str.str** %14
  %16 = call %struct.ast.ast.ast_struct_decl* @ast.ast.ast_struct_decl.new(%struct.err.span.span* %5, %struct.std.str.str* %15)
  %17 = getelementptr %struct.ast.ast.ast_struct_decl*, %struct.ast.ast.ast_struct_decl** %_17.real, i32 0 ; %_17.real -> %17
  store %struct.ast.ast.ast_struct_decl* %16, %struct.ast.ast.ast_struct_decl** %17
  %18 = load %struct.ast.ast.ast_struct_decl*, %struct.ast.ast.ast_struct_decl** %17
  store %struct.ast.ast.ast_struct_decl* %18, %struct.ast.ast.ast_struct_decl** %res.5
  %19 = load %struct.parser.parser*, %struct.parser.parser** %self
  call void @parser.parser.match_token(%struct.parser.parser* %19, i64 4)
  %20 = load %struct.parser.parser*, %struct.parser.parser** %self
  call void @parser.parser.match_token(%struct.parser.parser* %20, i64 30)
  br label %label.1f

label.1f:			; loop.entry
  %21 = load %struct.parser.parser*, %struct.parser.parser** %self
  %22 = call i1 @parser.parser.lookahead(%struct.parser.parser* %21, i64 31)
  %23 = getelementptr i1, i1* %_23.real, i32 0 ; %_23.real -> %23
  store i1 %22, i1* %23
  %24 = load i1, i1* %23
  %25 = xor i1 %24, true
  br i1 %25, label %label.27, label %label.43

label.27:			; loop.cond.true
  %26 = load %struct.ast.ast.ast_struct_decl*, %struct.ast.ast.ast_struct_decl** %res.5
  %27 = getelementptr inbounds %struct.ast.ast.ast_struct_decl, %struct.ast.ast.ast_struct_decl* %26, i32 0, i32 1
  %28 = load %struct.parser.parser*, %struct.parser.parser** %self
  %29 = call %struct.ast.ast.ast_struct_field* @parser.parser.struct_field_gen(%struct.parser.parser* %28)
  %30 = getelementptr %struct.ast.ast.ast_struct_field*, %struct.ast.ast.ast_struct_field** %_30.real, i32 0 ; %_30.real -> %30
  store %struct.ast.ast.ast_struct_field* %29, %struct.ast.ast.ast_struct_field** %30
  %31 = load %struct.ast.ast.ast_struct_field*, %struct.ast.ast.ast_struct_field** %30
  %32 = bitcast %struct.ast.ast.ast_struct_field* %31 to i8*
  call void @ast.ast.ptr_vec.push(%struct.ast.ast.ptr_vec* %27, i8* %32)
  %33 = load %struct.parser.parser*, %struct.parser.parser** %self
  %34 = call i1 @parser.parser.lookahead(%struct.parser.parser* %33, i64 35)
  %35 = getelementptr i1, i1* %_23.real, i32 0 ; %_23.real -> %35
  store i1 %34, i1* %35
  %36 = load i1, i1* %35
  br i1 %36, label %label.37, label %label.3b

label.37:			; cond.true
  %37 = load %struct.parser.parser*, %struct.parser.parser** %self
  call void @parser.parser.match_token(%struct.parser.parser* %37, i64 35)
  br label %label.3f

label.3b:			; cond.false
  br label %label.43

label.place_holder.3d:
  br label %label.3f

label.3f:			; branch.end
  br label %label.1f

label.43:			; loop.exit
  %38 = load %struct.parser.parser*, %struct.parser.parser** %self
  call void @parser.parser.match_token(%struct.parser.parser* %38, i64 31)
  %39 = load %struct.ast.ast.ast_struct_decl*, %struct.ast.ast.ast_struct_decl** %res.5
  ret %struct.ast.ast.ast_struct_decl* %39
}

define %struct.ast.ast.ast_use_stmt* @parser.parser.use_stmt_gen(%struct.parser.parser* %self.param) {
entry:
  %self = alloca %struct.parser.parser*
  %res.1 = alloca %struct.ast.ast.ast_use_stmt*
  %last.54 = alloca i8*
  %_2.real = alloca %struct.err.span.span*
  %_5.real = alloca %struct.ast.ast.ast_use_stmt*
  %_12.real = alloca %struct.ast.ast.ast_identifier*
  %_17.real = alloca i1
  %_67.real = alloca i8*
  store %struct.parser.parser* %self.param, %struct.parser.parser** %self
  %0 = load %struct.parser.parser*, %struct.parser.parser** %self
  %1 = call %struct.err.span.span* @parser.parser.this_tok_loc_copy(%struct.parser.parser* %0)
  %2 = getelementptr %struct.err.span.span*, %struct.err.span.span** %_2.real, i32 0 ; %_2.real -> %2
  store %struct.err.span.span* %1, %struct.err.span.span** %2
  %3 = load %struct.err.span.span*, %struct.err.span.span** %2
  %4 = call %struct.ast.ast.ast_use_stmt* @ast.ast.ast_use_stmt.new(%struct.err.span.span* %3)
  %5 = getelementptr %struct.ast.ast.ast_use_stmt*, %struct.ast.ast.ast_use_stmt** %_5.real, i32 0 ; %_5.real -> %5
  store %struct.ast.ast.ast_use_stmt* %4, %struct.ast.ast.ast_use_stmt** %5
  %6 = load %struct.ast.ast.ast_use_stmt*, %struct.ast.ast.ast_use_stmt** %5
  store %struct.ast.ast.ast_use_stmt* %6, %struct.ast.ast.ast_use_stmt** %res.1
  %7 = load %struct.parser.parser*, %struct.parser.parser** %self
  call void @parser.parser.match_token(%struct.parser.parser* %7, i64 7)
  %8 = load %struct.ast.ast.ast_use_stmt*, %struct.ast.ast.ast_use_stmt** %res.1
  %9 = getelementptr inbounds %struct.ast.ast.ast_use_stmt, %struct.ast.ast.ast_use_stmt* %8, i32 0, i32 1
  %10 = load %struct.parser.parser*, %struct.parser.parser** %self
  %11 = call %struct.ast.ast.ast_identifier* @parser.parser.identifier_gen(%struct.parser.parser* %10)
  %12 = getelementptr %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %_12.real, i32 0 ; %_12.real -> %12
  store %struct.ast.ast.ast_identifier* %11, %struct.ast.ast.ast_identifier** %12
  %13 = load %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %12
  %14 = bitcast %struct.ast.ast.ast_identifier* %13 to i8*
  call void @ast.ast.ptr_vec.push(%struct.ast.ast.ptr_vec* %9, i8* %14)
  br label %label.17

label.17:			; loop.entry
  %15 = load %struct.parser.parser*, %struct.parser.parser** %self
  %16 = call i1 @parser.parser.lookahead(%struct.parser.parser* %15, i64 40)
  %17 = getelementptr i1, i1* %_17.real, i32 0 ; %_17.real -> %17
  store i1 %16, i1* %17
  %18 = load i1, i1* %17
  br i1 %18, label %label.1e, label %label.47

label.1e:			; loop.cond.true
  %19 = load %struct.parser.parser*, %struct.parser.parser** %self
  call void @parser.parser.match_token(%struct.parser.parser* %19, i64 40)
  %20 = getelementptr i1, i1* %_17.real, i32 0 ; %_17.real -> %20
  %21 = load %struct.parser.parser*, %struct.parser.parser** %self
  %22 = call i1 @parser.parser.lookahead(%struct.parser.parser* %21, i64 30)
  %23 = getelementptr i1, i1* %_17.real, i32 0 ; %_17.real -> %23
  store i1 %22, i1* %23
  %24 = load i1, i1* %23
  store i1 %24, i1* %20
  br i1 %24, label %label.31, label %label.29

label.29:			; or.false
  %25 = load %struct.parser.parser*, %struct.parser.parser** %self
  %26 = call i1 @parser.parser.lookahead(%struct.parser.parser* %25, i64 43)
  %27 = getelementptr i1, i1* %_17.real, i32 0 ; %_17.real -> %27
  store i1 %26, i1* %27
  %28 = load i1, i1* %27
  store i1 %28, i1* %20
  br label %label.31

label.31:			; or.true
  %29 = load i1, i1* %20
  br i1 %29, label %label.34, label %label.38

label.34:			; cond.true
  br label %label.47

label.place_holder.36:
  br label %label.3a

label.38:			; cond.false
  br label %label.3a

label.3a:			; branch.end
  %30 = load %struct.ast.ast.ast_use_stmt*, %struct.ast.ast.ast_use_stmt** %res.1
  %31 = getelementptr inbounds %struct.ast.ast.ast_use_stmt, %struct.ast.ast.ast_use_stmt* %30, i32 0, i32 1
  %32 = load %struct.parser.parser*, %struct.parser.parser** %self
  %33 = call %struct.ast.ast.ast_identifier* @parser.parser.identifier_gen(%struct.parser.parser* %32)
  %34 = getelementptr %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %_12.real, i32 0 ; %_12.real -> %34
  store %struct.ast.ast.ast_identifier* %33, %struct.ast.ast.ast_identifier** %34
  %35 = load %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %34
  %36 = bitcast %struct.ast.ast.ast_identifier* %35 to i8*
  call void @ast.ast.ptr_vec.push(%struct.ast.ast.ptr_vec* %31, i8* %36)
  br label %label.17

label.47:			; loop.exit
  %37 = load %struct.parser.parser*, %struct.parser.parser** %self
  %38 = call i1 @parser.parser.lookahead(%struct.parser.parser* %37, i64 30)
  %39 = getelementptr i1, i1* %_17.real, i32 0 ; %_17.real -> %39
  store i1 %38, i1* %39
  %40 = load i1, i1* %39
  br i1 %40, label %label.4e, label %label.79

label.4e:			; cond.true
  %41 = load %struct.parser.parser*, %struct.parser.parser** %self
  call void @parser.parser.match_token(%struct.parser.parser* %41, i64 30)
  br label %label.52

label.52:			; loop.entry
  %42 = load %struct.parser.parser*, %struct.parser.parser** %self
  %43 = call i1 @parser.parser.lookahead(%struct.parser.parser* %42, i64 4)
  %44 = getelementptr i1, i1* %_17.real, i32 0 ; %_17.real -> %44
  store i1 %43, i1* %44
  %45 = load i1, i1* %44
  br i1 %45, label %label.59, label %label.75

label.59:			; loop.cond.true
  %46 = load %struct.ast.ast.ast_use_stmt*, %struct.ast.ast.ast_use_stmt** %res.1
  %47 = getelementptr inbounds %struct.ast.ast.ast_use_stmt, %struct.ast.ast.ast_use_stmt* %46, i32 0, i32 2
  %48 = load %struct.parser.parser*, %struct.parser.parser** %self
  %49 = call %struct.ast.ast.ast_identifier* @parser.parser.identifier_gen(%struct.parser.parser* %48)
  %50 = getelementptr %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %_12.real, i32 0 ; %_12.real -> %50
  store %struct.ast.ast.ast_identifier* %49, %struct.ast.ast.ast_identifier** %50
  %51 = load %struct.ast.ast.ast_identifier*, %struct.ast.ast.ast_identifier** %50
  %52 = bitcast %struct.ast.ast.ast_identifier* %51 to i8*
  call void @ast.ast.ptr_vec.push(%struct.ast.ast.ptr_vec* %47, i8* %52)
  %53 = load %struct.parser.parser*, %struct.parser.parser** %self
  %54 = call i1 @parser.parser.lookahead(%struct.parser.parser* %53, i64 35)
  %55 = getelementptr i1, i1* %_17.real, i32 0 ; %_17.real -> %55
  store i1 %54, i1* %55
  %56 = load i1, i1* %55
  br i1 %56, label %label.69, label %label.6d

label.69:			; cond.true
  %57 = load %struct.parser.parser*, %struct.parser.parser** %self
  call void @parser.parser.match_token(%struct.parser.parser* %57, i64 35)
  br label %label.71

label.6d:			; cond.false
  br label %label.75

label.place_holder.6f:
  br label %label.71

label.71:			; branch.end
  br label %label.52

label.75:			; loop.exit
  %58 = load %struct.parser.parser*, %struct.parser.parser** %self
  call void @parser.parser.match_token(%struct.parser.parser* %58, i64 31)
  br label %label.97

label.79:			; cond.false
  %59 = load %struct.parser.parser*, %struct.parser.parser** %self
  %60 = call i1 @parser.parser.lookahead(%struct.parser.parser* %59, i64 43)
  %61 = getelementptr i1, i1* %_17.real, i32 0 ; %_17.real -> %61
  store i1 %60, i1* %61
  %62 = load i1, i1* %61
  %63 = xor i1 %62, true
  br i1 %63, label %label.81, label %label.91

label.81:			; cond.true
  %64 = load %struct.ast.ast.ast_use_stmt*, %struct.ast.ast.ast_use_stmt** %res.1
  %65 = getelementptr inbounds %struct.ast.ast.ast_use_stmt, %struct.ast.ast.ast_use_stmt* %64, i32 0, i32 1
  %66 = call i8* @ast.ast.ptr_vec.back(%struct.ast.ast.ptr_vec* %65)
  %67 = getelementptr i8*, i8** %_67.real, i32 0 ; %_67.real -> %67
  store i8* %66, i8** %67
  %68 = load i8*, i8** %67
  store i8* %68, i8** %last.54
  %69 = load %struct.ast.ast.ast_use_stmt*, %struct.ast.ast.ast_use_stmt** %res.1
  %70 = getelementptr inbounds %struct.ast.ast.ast_use_stmt, %struct.ast.ast.ast_use_stmt* %69, i32 0, i32 1
  call void @ast.ast.ptr_vec.pop(%struct.ast.ast.ptr_vec* %70)
  %71 = load %struct.ast.ast.ast_use_stmt*, %struct.ast.ast.ast_use_stmt** %res.1
  %72 = getelementptr inbounds %struct.ast.ast.ast_use_stmt, %struct.ast.ast.ast_use_stmt* %71, i32 0, i32 2
  %73 = load i8*, i8** %last.54
  call void @ast.ast.ptr_vec.push(%struct.ast.ast.ptr_vec* %72, i8* %73)
  br label %label.95

label.91:			; cond.false
  %74 = load %struct.parser.parser*, %struct.parser.parser** %self
  call void @parser.parser.match_token(%struct.parser.parser* %74, i64 43)
  br label %label.95

label.95:			; branch.end
  br label %label.97

label.97:			; branch.end
  %75 = load %struct.parser.parser*, %struct.parser.parser** %self
  call void @parser.parser.match_token(%struct.parser.parser* %75, i64 32)
  %76 = load %struct.ast.ast.ast_use_stmt*, %struct.ast.ast.ast_use_stmt** %res.1
  ret %struct.ast.ast.ast_use_stmt* %76
}

define void @parser.parser.parse(%struct.parser.parser* %self.param) {
entry:
  %self = alloca %struct.parser.parser*
  %match.94713953196800.23 = alloca i64
  %_6.real = alloca %struct.err.span.span*
  %_9.real = alloca %struct.ast.ast.root*
  %_13.real = alloca i1
  %_25.real = alloca %struct.ast.ast.ast_use_stmt*
  %_40.real = alloca %struct.lexer.token
  %_51.real = alloca %struct.ast.ast.ast_struct_decl*
  store %struct.parser.parser* %self.param, %struct.parser.parser** %self
  %0 = load %struct.parser.parser*, %struct.parser.parser** %self
  %1 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %0, i32 0, i32 3
  store i64 0, i64* %1
  %2 = load %struct.parser.parser*, %struct.parser.parser** %self
  %3 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %2, i32 0, i32 2
  %4 = load %struct.parser.parser*, %struct.parser.parser** %self
  %5 = call %struct.err.span.span* @parser.parser.this_tok_loc_copy(%struct.parser.parser* %4)
  %6 = getelementptr %struct.err.span.span*, %struct.err.span.span** %_6.real, i32 0 ; %_6.real -> %6
  store %struct.err.span.span* %5, %struct.err.span.span** %6
  %7 = load %struct.err.span.span*, %struct.err.span.span** %6
  %8 = call %struct.ast.ast.root* @ast.ast.root.new(%struct.err.span.span* %7)
  %9 = getelementptr %struct.ast.ast.root*, %struct.ast.ast.root** %_9.real, i32 0 ; %_9.real -> %9
  store %struct.ast.ast.root* %8, %struct.ast.ast.root** %9
  %10 = load %struct.ast.ast.root*, %struct.ast.ast.root** %9
  store %struct.ast.ast.root* %10, %struct.ast.ast.root** %3
  %11 = load %struct.parser.parser*, %struct.parser.parser** %self
  %12 = call i1 @parser.parser.lookahead(%struct.parser.parser* %11, i64 69)
  %13 = getelementptr i1, i1* %_13.real, i32 0 ; %_13.real -> %13
  store i1 %12, i1* %13
  %14 = load i1, i1* %13
  br i1 %14, label %label.16, label %label.1a

label.16:			; cond.true
  ret void 

label.place_holder.18:
  br label %label.1c

label.1a:			; cond.false
  br label %label.1c

label.1c:			; branch.end
  br label %label.1e

label.1e:			; loop.entry
  %15 = load %struct.parser.parser*, %struct.parser.parser** %self
  %16 = call i1 @parser.parser.lookahead(%struct.parser.parser* %15, i64 7)
  %17 = getelementptr i1, i1* %_13.real, i32 0 ; %_13.real -> %17
  store i1 %16, i1* %17
  %18 = load i1, i1* %17
  br i1 %18, label %label.25, label %label.34

label.25:			; loop.cond.true
  %19 = load %struct.parser.parser*, %struct.parser.parser** %self
  %20 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %19, i32 0, i32 2
  %21 = load %struct.ast.ast.root*, %struct.ast.ast.root** %20
  %22 = getelementptr inbounds %struct.ast.ast.root, %struct.ast.ast.root* %21, i32 0, i32 1
  %23 = load %struct.parser.parser*, %struct.parser.parser** %self
  %24 = call %struct.ast.ast.ast_use_stmt* @parser.parser.use_stmt_gen(%struct.parser.parser* %23)
  %25 = getelementptr %struct.ast.ast.ast_use_stmt*, %struct.ast.ast.ast_use_stmt** %_25.real, i32 0 ; %_25.real -> %25
  store %struct.ast.ast.ast_use_stmt* %24, %struct.ast.ast.ast_use_stmt** %25
  %26 = load %struct.ast.ast.ast_use_stmt*, %struct.ast.ast.ast_use_stmt** %25
  %27 = bitcast %struct.ast.ast.ast_use_stmt* %26 to i8*
  call void @ast.ast.ptr_vec.push(%struct.ast.ast.ptr_vec* %22, i8* %27)
  br label %label.1e

label.34:			; loop.exit
  br label %label.36

label.36:			; loop.entry
  %28 = load %struct.parser.parser*, %struct.parser.parser** %self
  %29 = call i1 @parser.parser.lookahead(%struct.parser.parser* %28, i64 69)
  %30 = getelementptr i1, i1* %_13.real, i32 0 ; %_13.real -> %30
  store i1 %29, i1* %30
  %31 = load i1, i1* %30
  %32 = xor i1 %31, true
  br i1 %32, label %label.3e, label %label.65

label.3e:			; loop.cond.true
  %33 = load %struct.parser.parser*, %struct.parser.parser** %self
  %34 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %33, i32 0, i32 1
  %35 = load %struct.lexer.vec_token*, %struct.lexer.vec_token** %34
  %36 = load %struct.parser.parser*, %struct.parser.parser** %self
  %37 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %36, i32 0, i32 3
  %38 = load i64, i64* %37
  %39 = call %struct.lexer.token @lexer.vec_token.get(%struct.lexer.vec_token* %35, i64 %38)
  %40 = getelementptr %struct.lexer.token, %struct.lexer.token* %_40.real, i32 0 ; %_40.real -> %40
  store %struct.lexer.token %39, %struct.lexer.token* %40
  %41 = getelementptr inbounds %struct.lexer.token, %struct.lexer.token* %40, i32 0, i32 0
  %42 = load i64, i64* %41
  store i64 %42, i64* %match.94713953196800.23
  %43 = load i64, i64* %match.94713953196800.23
  %44 = icmp eq i64 %43, 14
  br i1 %44, label %label.4e, label %label.5d

label.4e:			; cond.true
  %45 = load %struct.parser.parser*, %struct.parser.parser** %self
  %46 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %45, i32 0, i32 2
  %47 = load %struct.ast.ast.root*, %struct.ast.ast.root** %46
  %48 = getelementptr inbounds %struct.ast.ast.root, %struct.ast.ast.root* %47, i32 0, i32 2
  %49 = load %struct.parser.parser*, %struct.parser.parser** %self
  %50 = call %struct.ast.ast.ast_struct_decl* @parser.parser.struct_decl_gen(%struct.parser.parser* %49)
  %51 = getelementptr %struct.ast.ast.ast_struct_decl*, %struct.ast.ast.ast_struct_decl** %_51.real, i32 0 ; %_51.real -> %51
  store %struct.ast.ast.ast_struct_decl* %50, %struct.ast.ast.ast_struct_decl** %51
  %52 = load %struct.ast.ast.ast_struct_decl*, %struct.ast.ast.ast_struct_decl** %51
  %53 = bitcast %struct.ast.ast.ast_struct_decl* %52 to i8*
  call void @ast.ast.ptr_vec.push(%struct.ast.ast.ptr_vec* %48, i8* %53)
  br label %label.63

label.place_holder.5b:
  br label %label.5f

label.5d:			; cond.false
  br label %label.5f

label.5f:			; branch.end
  %54 = load %struct.parser.parser*, %struct.parser.parser** %self
  call void @parser.parser.next(%struct.parser.parser* %54)
  br label %label.63

label.63:			; loop.continue
  br label %label.36

label.65:			; loop.exit
  ret void 
}

define void @parser.parser.dump(%struct.parser.parser* %self.param) {
entry:
  %self = alloca %struct.parser.parser*
  %dumper.1 = alloca %struct.ast.dumper.ast_dumper
  %_1.real = alloca %struct.ast.dumper.ast_dumper
  %_8.real = alloca %struct.std.io.io
  store %struct.parser.parser* %self.param, %struct.parser.parser** %self
  %0 = call %struct.ast.dumper.ast_dumper @ast.dumper.ast_dumper.instance()
  %1 = getelementptr %struct.ast.dumper.ast_dumper, %struct.ast.dumper.ast_dumper* %_1.real, i32 0 ; %_1.real -> %1
  store %struct.ast.dumper.ast_dumper %0, %struct.ast.dumper.ast_dumper* %1
  %2 = load %struct.ast.dumper.ast_dumper, %struct.ast.dumper.ast_dumper* %1
  store %struct.ast.dumper.ast_dumper %2, %struct.ast.dumper.ast_dumper* %dumper.1
  %3 = load %struct.parser.parser*, %struct.parser.parser** %self
  %4 = getelementptr inbounds %struct.parser.parser, %struct.parser.parser* %3, i32 0, i32 2
  %5 = load %struct.ast.ast.root*, %struct.ast.ast.root** %4
  %6 = bitcast %struct.ast.ast.root* %5 to %struct.ast.ast.ast*
  %7 = call %struct.std.io.io @std.io.io.stdout()
  %8 = getelementptr %struct.std.io.io, %struct.std.io.io* %_8.real, i32 0 ; %_8.real -> %8
  store %struct.std.io.io %7, %struct.std.io.io* %8
  %9 = load %struct.std.io.io, %struct.std.io.io* %8
  call void @ast.dumper.ast_dumper.dump(%struct.ast.dumper.ast_dumper* %dumper.1, %struct.ast.ast.ast* %6, %struct.std.io.io %9)
  call void @ast.dumper.ast_dumper.delete(%struct.ast.dumper.ast_dumper* %dumper.1)
  ret void 
}

define void @free_components(%struct.err.report.report* %rep.param, %struct.lexer.lexer* %lex.param, %struct.parser.parser* %par.param) {
entry:
  %rep = alloca %struct.err.report.report*
  %lex = alloca %struct.lexer.lexer*
  %par = alloca %struct.parser.parser*
  store %struct.err.report.report* %rep.param, %struct.err.report.report** %rep
  store %struct.lexer.lexer* %lex.param, %struct.lexer.lexer** %lex
  store %struct.parser.parser* %par.param, %struct.parser.parser** %par
  %0 = load %struct.err.report.report*, %struct.err.report.report** %rep
  %1 = bitcast %struct.err.report.report* %0 to i8*
  %2 = icmp ne i8* %1, null
  br i1 %2, label %label.7, label %label.e

label.7:			; cond.true
  %3 = load %struct.err.report.report*, %struct.err.report.report** %rep
  call void @err.report.report.delete(%struct.err.report.report* %3)
  %4 = load %struct.err.report.report*, %struct.err.report.report** %rep
  %5 = bitcast %struct.err.report.report* %4 to i8*
  call void @free(i8* %5)
  br label %label.10

label.e:			; cond.false
  br label %label.10

label.10:			; branch.end
  %6 = load %struct.lexer.lexer*, %struct.lexer.lexer** %lex
  %7 = bitcast %struct.lexer.lexer* %6 to i8*
  %8 = icmp ne i8* %7, null
  br i1 %8, label %label.15, label %label.1c

label.15:			; cond.true
  %9 = load %struct.lexer.lexer*, %struct.lexer.lexer** %lex
  call void @lexer.lexer.delete(%struct.lexer.lexer* %9)
  %10 = load %struct.lexer.lexer*, %struct.lexer.lexer** %lex
  %11 = bitcast %struct.lexer.lexer* %10 to i8*
  call void @free(i8* %11)
  br label %label.1e

label.1c:			; cond.false
  br label %label.1e

label.1e:			; branch.end
  %12 = load %struct.parser.parser*, %struct.parser.parser** %par
  %13 = bitcast %struct.parser.parser* %12 to i8*
  %14 = icmp ne i8* %13, null
  br i1 %14, label %label.23, label %label.2a

label.23:			; cond.true
  %15 = load %struct.parser.parser*, %struct.parser.parser** %par
  call void @parser.parser.delete(%struct.parser.parser* %15)
  %16 = load %struct.parser.parser*, %struct.parser.parser** %par
  %17 = bitcast %struct.parser.parser* %16 to i8*
  call void @free(i8* %17)
  br label %label.2c

label.2a:			; cond.false
  br label %label.2c

label.2c:			; branch.end
  ret void 
}

define void @compile(%struct.cli.cli_option %option.param) {
entry:
  %option = alloca %struct.cli.cli_option
  %rep.20 = alloca %struct.err.report.report*
  %lex.22 = alloca %struct.lexer.lexer*
  %par.25 = alloca %struct.parser.parser*
  %_3.real = alloca i1
  %_7.real = alloca %struct.std.io.io
  %_101.real = alloca %struct.err.report.report*
  %_105.real = alloca %struct.lexer.lexer*
  %_110.real = alloca %struct.parser.parser*
  store %struct.cli.cli_option %option.param, %struct.cli.cli_option* %option
  %0 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %option, i32 0, i32 6
  %1 = load i8*, i8** %0
  %2 = call i1 @std.io.fs.exists(i8* %1)
  %3 = getelementptr i1, i1* %_3.real, i32 0 ; %_3.real -> %3
  store i1 %2, i1* %3
  %4 = load i1, i1* %3
  %5 = xor i1 %4, true
  br i1 %5, label %label.9, label %label.2c

label.9:			; cond.true
  %6 = call %struct.std.io.io @std.io.io.stderr()
  %7 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %7
  store %struct.std.io.io %6, %struct.std.io.io* %7
  %8 = call %struct.std.io.io @std.io.io.red(%struct.std.io.io* %7)
  %9 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %9
  store %struct.std.io.io %8, %struct.std.io.io* %9
  %10 = getelementptr [8 x i8], [8 x i8]* @const.str.8, i64 0, i64 0
  %11 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %9, i8* %10)
  %12 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %12
  store %struct.std.io.io %11, %struct.std.io.io* %12
  %13 = call %struct.std.io.io @std.io.io.reset(%struct.std.io.io* %12)
  %14 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %14
  store %struct.std.io.io %13, %struct.std.io.io* %14
  %15 = load %struct.std.io.io, %struct.std.io.io* %14
  %16 = call %struct.std.io.io @std.io.io.stderr()
  %17 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %17
  store %struct.std.io.io %16, %struct.std.io.io* %17
  %18 = getelementptr [22 x i8], [22 x i8]* @const.str.9, i64 0, i64 0
  %19 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %17, i8* %18)
  %20 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %20
  store %struct.std.io.io %19, %struct.std.io.io* %20
  %21 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %option, i32 0, i32 6
  %22 = load i8*, i8** %21
  %23 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %20, i8* %22)
  %24 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %24
  store %struct.std.io.io %23, %struct.std.io.io* %24
  %25 = getelementptr [39 x i8], [39 x i8]* @const.str.10, i64 0, i64 0
  %26 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %24, i8* %25)
  %27 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %27
  store %struct.std.io.io %26, %struct.std.io.io* %27
  %28 = load %struct.std.io.io, %struct.std.io.io* %27
  ret void 

label.place_holder.2a:
  br label %label.2e

label.2c:			; cond.false
  br label %label.2e

label.2e:			; branch.end
  %29 = call %struct.std.io.io @std.io.io.stderr()
  %30 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %30
  store %struct.std.io.io %29, %struct.std.io.io* %30
  %31 = getelementptr [2 x i8], [2 x i8]* @const.str.112, i64 0, i64 0
  %32 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %30, i8* %31)
  %33 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %33
  store %struct.std.io.io %32, %struct.std.io.io* %33
  %34 = call %struct.std.io.io @std.io.io.green(%struct.std.io.io* %33)
  %35 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %35
  store %struct.std.io.io %34, %struct.std.io.io* %35
  %36 = getelementptr [6 x i8], [6 x i8]* @const.str.198, i64 0, i64 0
  %37 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %35, i8* %36)
  %38 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %38
  store %struct.std.io.io %37, %struct.std.io.io* %38
  %39 = call %struct.std.io.io @std.io.io.reset(%struct.std.io.io* %38)
  %40 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %40
  store %struct.std.io.io %39, %struct.std.io.io* %40
  %41 = getelementptr [2 x i8], [2 x i8]* @const.str.114, i64 0, i64 0
  %42 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %40, i8* %41)
  %43 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %43
  store %struct.std.io.io %42, %struct.std.io.io* %43
  %44 = getelementptr [16 x i8], [16 x i8]* @const.str.199, i64 0, i64 0
  %45 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %43, i8* %44)
  %46 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %46
  store %struct.std.io.io %45, %struct.std.io.io* %46
  %47 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %option, i32 0, i32 6
  %48 = load i8*, i8** %47
  %49 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %46, i8* %48)
  %50 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %50
  store %struct.std.io.io %49, %struct.std.io.io* %50
  %51 = getelementptr [2 x i8], [2 x i8]* @const.str.179, i64 0, i64 0
  %52 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %50, i8* %51)
  %53 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %53
  store %struct.std.io.io %52, %struct.std.io.io* %53
  call void @std.io.io.endln(%struct.std.io.io* %53)
  %54 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %option, i32 0, i32 7
  %55 = load i8*, i8** %54
  %56 = icmp ne i8* %55, null
  br i1 %56, label %label.56, label %label.7b

label.56:			; cond.true
  %57 = call %struct.std.io.io @std.io.io.stderr()
  %58 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %58
  store %struct.std.io.io %57, %struct.std.io.io* %58
  %59 = getelementptr [2 x i8], [2 x i8]* @const.str.112, i64 0, i64 0
  %60 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %58, i8* %59)
  %61 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %61
  store %struct.std.io.io %60, %struct.std.io.io* %61
  %62 = call %struct.std.io.io @std.io.io.green(%struct.std.io.io* %61)
  %63 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %63
  store %struct.std.io.io %62, %struct.std.io.io* %63
  %64 = getelementptr [6 x i8], [6 x i8]* @const.str.198, i64 0, i64 0
  %65 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %63, i8* %64)
  %66 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %66
  store %struct.std.io.io %65, %struct.std.io.io* %66
  %67 = call %struct.std.io.io @std.io.io.reset(%struct.std.io.io* %66)
  %68 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %68
  store %struct.std.io.io %67, %struct.std.io.io* %68
  %69 = getelementptr [2 x i8], [2 x i8]* @const.str.114, i64 0, i64 0
  %70 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %68, i8* %69)
  %71 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %71
  store %struct.std.io.io %70, %struct.std.io.io* %71
  %72 = getelementptr [17 x i8], [17 x i8]* @const.str.200, i64 0, i64 0
  %73 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %71, i8* %72)
  %74 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %74
  store %struct.std.io.io %73, %struct.std.io.io* %74
  %75 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %option, i32 0, i32 7
  %76 = load i8*, i8** %75
  %77 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %74, i8* %76)
  %78 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %78
  store %struct.std.io.io %77, %struct.std.io.io* %78
  %79 = getelementptr [2 x i8], [2 x i8]* @const.str.179, i64 0, i64 0
  %80 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %78, i8* %79)
  %81 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %81
  store %struct.std.io.io %80, %struct.std.io.io* %81
  call void @std.io.io.endln(%struct.std.io.io* %81)
  br label %label.97

label.7b:			; cond.false
  %82 = call %struct.std.io.io @std.io.io.stderr()
  %83 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %83
  store %struct.std.io.io %82, %struct.std.io.io* %83
  %84 = getelementptr [2 x i8], [2 x i8]* @const.str.112, i64 0, i64 0
  %85 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %83, i8* %84)
  %86 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %86
  store %struct.std.io.io %85, %struct.std.io.io* %86
  %87 = call %struct.std.io.io @std.io.io.green(%struct.std.io.io* %86)
  %88 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %88
  store %struct.std.io.io %87, %struct.std.io.io* %88
  %89 = getelementptr [6 x i8], [6 x i8]* @const.str.198, i64 0, i64 0
  %90 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %88, i8* %89)
  %91 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %91
  store %struct.std.io.io %90, %struct.std.io.io* %91
  %92 = call %struct.std.io.io @std.io.io.reset(%struct.std.io.io* %91)
  %93 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %93
  store %struct.std.io.io %92, %struct.std.io.io* %93
  %94 = getelementptr [2 x i8], [2 x i8]* @const.str.114, i64 0, i64 0
  %95 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %93, i8* %94)
  %96 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %96
  store %struct.std.io.io %95, %struct.std.io.io* %96
  %97 = getelementptr [22 x i8], [22 x i8]* @const.str.201, i64 0, i64 0
  %98 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %96, i8* %97)
  %99 = getelementptr %struct.std.io.io, %struct.std.io.io* %_7.real, i32 0 ; %_7.real -> %99
  store %struct.std.io.io %98, %struct.std.io.io* %99
  call void @std.io.io.endln(%struct.std.io.io* %99)
  br label %label.97

label.97:			; branch.end
  %100 = call %struct.err.report.report* @err.report.report.new()
  %101 = getelementptr %struct.err.report.report*, %struct.err.report.report** %_101.real, i32 0 ; %_101.real -> %101
  store %struct.err.report.report* %100, %struct.err.report.report** %101
  %102 = load %struct.err.report.report*, %struct.err.report.report** %101
  store %struct.err.report.report* %102, %struct.err.report.report** %rep.20
  %103 = load %struct.err.report.report*, %struct.err.report.report** %rep.20
  %104 = call %struct.lexer.lexer* @lexer.lexer.new(%struct.err.report.report* %103)
  %105 = getelementptr %struct.lexer.lexer*, %struct.lexer.lexer** %_105.real, i32 0 ; %_105.real -> %105
  store %struct.lexer.lexer* %104, %struct.lexer.lexer** %105
  %106 = load %struct.lexer.lexer*, %struct.lexer.lexer** %105
  store %struct.lexer.lexer* %106, %struct.lexer.lexer** %lex.22
  %107 = load %struct.err.report.report*, %struct.err.report.report** %rep.20
  %108 = load %struct.lexer.lexer*, %struct.lexer.lexer** %lex.22
  %109 = call %struct.parser.parser* @parser.parser.new(%struct.err.report.report* %107, %struct.lexer.lexer* %108)
  %110 = getelementptr %struct.parser.parser*, %struct.parser.parser** %_110.real, i32 0 ; %_110.real -> %110
  store %struct.parser.parser* %109, %struct.parser.parser** %110
  %111 = load %struct.parser.parser*, %struct.parser.parser** %110
  store %struct.parser.parser* %111, %struct.parser.parser** %par.25
  %112 = load %struct.lexer.lexer*, %struct.lexer.lexer** %lex.22
  %113 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %option, i32 0, i32 6
  %114 = load i8*, i8** %113
  call void @lexer.lexer.scan(%struct.lexer.lexer* %112, i8* %114)
  %115 = load %struct.err.report.report*, %struct.err.report.report** %rep.20
  %116 = getelementptr inbounds %struct.err.report.report, %struct.err.report.report* %115, i32 0, i32 2
  %117 = load i64, i64* %116
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %label.b3, label %label.bb

label.b3:			; cond.true
  %119 = load %struct.err.report.report*, %struct.err.report.report** %rep.20
  %120 = load %struct.lexer.lexer*, %struct.lexer.lexer** %lex.22
  %121 = load %struct.parser.parser*, %struct.parser.parser** %par.25
  call void @free_components(%struct.err.report.report* %119, %struct.lexer.lexer* %120, %struct.parser.parser* %121)
  ret void 

label.place_holder.b9:
  br label %label.bd

label.bb:			; cond.false
  br label %label.bd

label.bd:			; branch.end
  %122 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %option, i32 0, i32 0
  %123 = load i1, i1* %122
  br i1 %123, label %label.c1, label %label.c5

label.c1:			; cond.true
  %124 = load %struct.lexer.lexer*, %struct.lexer.lexer** %lex.22
  call void @lexer.lexer.dump(%struct.lexer.lexer* %124)
  br label %label.c7

label.c5:			; cond.false
  br label %label.c7

label.c7:			; branch.end
  %125 = load %struct.parser.parser*, %struct.parser.parser** %par.25
  call void @parser.parser.parse(%struct.parser.parser* %125)
  %126 = load %struct.err.report.report*, %struct.err.report.report** %rep.20
  %127 = getelementptr inbounds %struct.err.report.report, %struct.err.report.report* %126, i32 0, i32 2
  %128 = load i64, i64* %127
  %129 = icmp sgt i64 %128, 0
  br i1 %129, label %label.cf, label %label.d7

label.cf:			; cond.true
  %130 = load %struct.err.report.report*, %struct.err.report.report** %rep.20
  %131 = load %struct.lexer.lexer*, %struct.lexer.lexer** %lex.22
  %132 = load %struct.parser.parser*, %struct.parser.parser** %par.25
  call void @free_components(%struct.err.report.report* %130, %struct.lexer.lexer* %131, %struct.parser.parser* %132)
  ret void 

label.place_holder.d5:
  br label %label.d9

label.d7:			; cond.false
  br label %label.d9

label.d9:			; branch.end
  %133 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %option, i32 0, i32 1
  %134 = load i1, i1* %133
  br i1 %134, label %label.dd, label %label.e1

label.dd:			; cond.true
  %135 = load %struct.parser.parser*, %struct.parser.parser** %par.25
  call void @parser.parser.dump(%struct.parser.parser* %135)
  br label %label.e3

label.e1:			; cond.false
  br label %label.e3

label.e3:			; branch.end
  %136 = load %struct.err.report.report*, %struct.err.report.report** %rep.20
  %137 = load %struct.lexer.lexer*, %struct.lexer.lexer** %lex.22
  %138 = load %struct.parser.parser*, %struct.parser.parser** %par.25
  call void @free_components(%struct.err.report.report* %136, %struct.lexer.lexer* %137, %struct.parser.parser* %138)
  ret void 
}

define i32 @main(i32 %argc.param, i8** %argv.param) {
entry:
  %argc = alloca i32
  %argv = alloca i8**
  %option.45 = alloca %struct.cli.cli_option
  %i.48 = alloca i32
  %_5.real = alloca i1
  %_46.real = alloca %struct.std.io.io
  %_48.real = alloca i8*
  %_53.real = alloca %struct.cli.cli_option
  %_161.real = alloca i64
  store i32 %argc.param, i32* %argc
  store i8** %argv.param, i8*** %argv
  %0 = load i32, i32* %argc
  %1 = icmp eq i32 %0, 1
  br i1 %1, label %label.5, label %label.d

label.5:			; cond.true
  %2 = load i8**, i8*** %argv
  %3 = getelementptr i8*, i8** %2, i64 0
  %4 = load i8*, i8** %3
  call void @logo(i8* %4)
  ret i32 0

label.place_holder.b:
  br label %label.f

label.d:			; cond.false
  br label %label.f

label.f:			; branch.end
  %5 = getelementptr i1, i1* %_5.real, i32 0 ; %_5.real -> %5
  %6 = load i32, i32* %argc
  %7 = icmp eq i32 %6, 2
  store i1 %7, i1* %5
  br i1 %7, label %label.15, label %label.30

label.15:			; and.true
  %8 = getelementptr i1, i1* %_5.real, i32 0 ; %_5.real -> %8
  %9 = load i8**, i8*** %argv
  %10 = getelementptr i8*, i8** %9, i64 1
  %11 = load i8*, i8** %10
  %12 = getelementptr [3 x i8], [3 x i8]* @const.str.202, i64 0, i64 0
  %13 = call i1 @streq(i8* %11, i8* %12)
  %14 = getelementptr i1, i1* %_5.real, i32 0 ; %_5.real -> %14
  store i1 %13, i1* %14
  %15 = load i1, i1* %14
  store i1 %15, i1* %8
  br i1 %15, label %label.2c, label %label.21

label.21:			; or.false
  %16 = load i8**, i8*** %argv
  %17 = getelementptr i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17
  %19 = getelementptr [7 x i8], [7 x i8]* @const.str.203, i64 0, i64 0
  %20 = call i1 @streq(i8* %18, i8* %19)
  %21 = getelementptr i1, i1* %_5.real, i32 0 ; %_5.real -> %21
  store i1 %20, i1* %21
  %22 = load i1, i1* %21
  store i1 %22, i1* %8
  br label %label.2c

label.2c:			; or.true
  %23 = load i1, i1* %8
  store i1 %23, i1* %5
  br label %label.30

label.30:			; and.false
  %24 = load i1, i1* %5
  br i1 %24, label %label.33, label %label.38

label.33:			; cond.true
  call void @help()
  ret i32 0

label.place_holder.36:
  br label %label.3a

label.38:			; cond.false
  br label %label.3a

label.3a:			; branch.end
  %25 = getelementptr i1, i1* %_5.real, i32 0 ; %_5.real -> %25
  %26 = load i32, i32* %argc
  %27 = icmp eq i32 %26, 2
  store i1 %27, i1* %25
  br i1 %27, label %label.40, label %label.5b

label.40:			; and.true
  %28 = getelementptr i1, i1* %_5.real, i32 0 ; %_5.real -> %28
  %29 = load i8**, i8*** %argv
  %30 = getelementptr i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30
  %32 = getelementptr [3 x i8], [3 x i8]* @const.str.204, i64 0, i64 0
  %33 = call i1 @streq(i8* %31, i8* %32)
  %34 = getelementptr i1, i1* %_5.real, i32 0 ; %_5.real -> %34
  store i1 %33, i1* %34
  %35 = load i1, i1* %34
  store i1 %35, i1* %28
  br i1 %35, label %label.57, label %label.4c

label.4c:			; or.false
  %36 = load i8**, i8*** %argv
  %37 = getelementptr i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37
  %39 = getelementptr [10 x i8], [10 x i8]* @const.str.205, i64 0, i64 0
  %40 = call i1 @streq(i8* %38, i8* %39)
  %41 = getelementptr i1, i1* %_5.real, i32 0 ; %_5.real -> %41
  store i1 %40, i1* %41
  %42 = load i1, i1* %41
  store i1 %42, i1* %28
  br label %label.57

label.57:			; or.true
  %43 = load i1, i1* %28
  store i1 %43, i1* %25
  br label %label.5b

label.5b:			; and.false
  %44 = load i1, i1* %25
  br i1 %44, label %label.5e, label %label.6d

label.5e:			; cond.true
  %45 = call %struct.std.io.io @std.io.io.stderr()
  %46 = getelementptr %struct.std.io.io, %struct.std.io.io* %_46.real, i32 0 ; %_46.real -> %46
  store %struct.std.io.io %45, %struct.std.io.io* %46
  %47 = call i8* @version()
  %48 = getelementptr i8*, i8** %_48.real, i32 0 ; %_48.real -> %48
  store i8* %47, i8** %48
  %49 = load i8*, i8** %48
  %50 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %46, i8* %49)
  %51 = getelementptr %struct.std.io.io, %struct.std.io.io* %_46.real, i32 0 ; %_46.real -> %51
  store %struct.std.io.io %50, %struct.std.io.io* %51
  call void @std.io.io.endln(%struct.std.io.io* %51)
  ret i32 0

label.place_holder.6b:
  br label %label.6f

label.6d:			; cond.false
  br label %label.6f

label.6f:			; branch.end
  %52 = call %struct.cli.cli_option @cli.cli_option.instance()
  %53 = getelementptr %struct.cli.cli_option, %struct.cli.cli_option* %_53.real, i32 0 ; %_53.real -> %53
  store %struct.cli.cli_option %52, %struct.cli.cli_option* %53
  %54 = load %struct.cli.cli_option, %struct.cli.cli_option* %53
  store %struct.cli.cli_option %54, %struct.cli.cli_option* %option.45
  store i32 1, i32* %i.48
  br label %label.77

label.77:			; loop.entry
  %55 = load i32, i32* %i.48
  %56 = load i32, i32* %argc
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %label.7c, label %label.1c1

label.7c:			; loop.cond.true
  %58 = getelementptr i1, i1* %_5.real, i32 0 ; %_5.real -> %58
  %59 = load i32, i32* %i.48
  %60 = load i8**, i8*** %argv
  %61 = getelementptr i8*, i8** %60, i32 %59
  %62 = load i8*, i8** %61
  %63 = getelementptr [3 x i8], [3 x i8]* @const.str.206, i64 0, i64 0
  %64 = call i1 @streq(i8* %62, i8* %63)
  %65 = getelementptr i1, i1* %_5.real, i32 0 ; %_5.real -> %65
  store i1 %64, i1* %65
  %66 = load i1, i1* %65
  store i1 %66, i1* %58
  br i1 %66, label %label.95, label %label.89

label.89:			; or.false
  %67 = load i32, i32* %i.48
  %68 = load i8**, i8*** %argv
  %69 = getelementptr i8*, i8** %68, i32 %67
  %70 = load i8*, i8** %69
  %71 = getelementptr [6 x i8], [6 x i8]* @const.str.207, i64 0, i64 0
  %72 = call i1 @streq(i8* %70, i8* %71)
  %73 = getelementptr i1, i1* %_5.real, i32 0 ; %_5.real -> %73
  store i1 %72, i1* %73
  %74 = load i1, i1* %73
  store i1 %74, i1* %58
  br label %label.95

label.95:			; or.true
  %75 = load i1, i1* %58
  br i1 %75, label %label.98, label %label.9c

label.98:			; cond.true
  %76 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %option.45, i32 0, i32 0
  store i1 1, i1* %76
  br label %label.1ba

label.9c:			; cond.false
  %77 = getelementptr i1, i1* %_5.real, i32 0 ; %_5.real -> %77
  %78 = load i32, i32* %i.48
  %79 = load i8**, i8*** %argv
  %80 = getelementptr i8*, i8** %79, i32 %78
  %81 = load i8*, i8** %80
  %82 = getelementptr [3 x i8], [3 x i8]* @const.str.208, i64 0, i64 0
  %83 = call i1 @streq(i8* %81, i8* %82)
  %84 = getelementptr i1, i1* %_5.real, i32 0 ; %_5.real -> %84
  store i1 %83, i1* %84
  %85 = load i1, i1* %84
  store i1 %85, i1* %77
  br i1 %85, label %label.b5, label %label.a9

label.a9:			; or.false
  %86 = load i32, i32* %i.48
  %87 = load i8**, i8*** %argv
  %88 = getelementptr i8*, i8** %87, i32 %86
  %89 = load i8*, i8** %88
  %90 = getelementptr [6 x i8], [6 x i8]* @const.str.209, i64 0, i64 0
  %91 = call i1 @streq(i8* %89, i8* %90)
  %92 = getelementptr i1, i1* %_5.real, i32 0 ; %_5.real -> %92
  store i1 %91, i1* %92
  %93 = load i1, i1* %92
  store i1 %93, i1* %77
  br label %label.b5

label.b5:			; or.true
  %94 = load i1, i1* %77
  br i1 %94, label %label.b8, label %label.bc

label.b8:			; cond.true
  %95 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %option.45, i32 0, i32 1
  store i1 1, i1* %95
  br label %label.1ba

label.bc:			; cond.false
  %96 = getelementptr i1, i1* %_5.real, i32 0 ; %_5.real -> %96
  %97 = load i32, i32* %i.48
  %98 = load i8**, i8*** %argv
  %99 = getelementptr i8*, i8** %98, i32 %97
  %100 = load i8*, i8** %99
  %101 = getelementptr [3 x i8], [3 x i8]* @const.str.210, i64 0, i64 0
  %102 = call i1 @streq(i8* %100, i8* %101)
  %103 = getelementptr i1, i1* %_5.real, i32 0 ; %_5.real -> %103
  store i1 %102, i1* %103
  %104 = load i1, i1* %103
  store i1 %104, i1* %96
  br i1 %104, label %label.d5, label %label.c9

label.c9:			; or.false
  %105 = load i32, i32* %i.48
  %106 = load i8**, i8*** %argv
  %107 = getelementptr i8*, i8** %106, i32 %105
  %108 = load i8*, i8** %107
  %109 = getelementptr [7 x i8], [7 x i8]* @const.str.211, i64 0, i64 0
  %110 = call i1 @streq(i8* %108, i8* %109)
  %111 = getelementptr i1, i1* %_5.real, i32 0 ; %_5.real -> %111
  store i1 %110, i1* %111
  %112 = load i1, i1* %111
  store i1 %112, i1* %96
  br label %label.d5

label.d5:			; or.true
  %113 = load i1, i1* %96
  br i1 %113, label %label.d8, label %label.dc

label.d8:			; cond.true
  %114 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %option.45, i32 0, i32 3
  store i1 1, i1* %114
  br label %label.1ba

label.dc:			; cond.false
  %115 = getelementptr i1, i1* %_5.real, i32 0 ; %_5.real -> %115
  %116 = load i32, i32* %i.48
  %117 = load i8**, i8*** %argv
  %118 = getelementptr i8*, i8** %117, i32 %116
  %119 = load i8*, i8** %118
  %120 = getelementptr [3 x i8], [3 x i8]* @const.str.212, i64 0, i64 0
  %121 = call i1 @streq(i8* %119, i8* %120)
  %122 = getelementptr i1, i1* %_5.real, i32 0 ; %_5.real -> %122
  store i1 %121, i1* %122
  %123 = load i1, i1* %122
  store i1 %123, i1* %115
  br i1 %123, label %label.f5, label %label.e9

label.e9:			; or.false
  %124 = load i32, i32* %i.48
  %125 = load i8**, i8*** %argv
  %126 = getelementptr i8*, i8** %125, i32 %124
  %127 = load i8*, i8** %126
  %128 = getelementptr [10 x i8], [10 x i8]* @const.str.213, i64 0, i64 0
  %129 = call i1 @streq(i8* %127, i8* %128)
  %130 = getelementptr i1, i1* %_5.real, i32 0 ; %_5.real -> %130
  store i1 %129, i1* %130
  %131 = load i1, i1* %130
  store i1 %131, i1* %115
  br label %label.f5

label.f5:			; or.true
  %132 = load i1, i1* %115
  br i1 %132, label %label.f8, label %label.15d

label.f8:			; cond.true
  %133 = load i32, i32* %i.48
  %134 = add i32 %133, 1
  %135 = load i32, i32* %argc
  %136 = icmp sge i32 %134, %135
  br i1 %136, label %label.fe, label %label.116

label.fe:			; cond.true
  %137 = call %struct.std.io.io @std.io.io.stderr()
  %138 = getelementptr %struct.std.io.io, %struct.std.io.io* %_46.real, i32 0 ; %_46.real -> %138
  store %struct.std.io.io %137, %struct.std.io.io* %138
  %139 = call %struct.std.io.io @std.io.io.red(%struct.std.io.io* %138)
  %140 = getelementptr %struct.std.io.io, %struct.std.io.io* %_46.real, i32 0 ; %_46.real -> %140
  store %struct.std.io.io %139, %struct.std.io.io* %140
  %141 = getelementptr [7 x i8], [7 x i8]* @const.str.214, i64 0, i64 0
  %142 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %140, i8* %141)
  %143 = getelementptr %struct.std.io.io, %struct.std.io.io* %_46.real, i32 0 ; %_46.real -> %143
  store %struct.std.io.io %142, %struct.std.io.io* %143
  %144 = call %struct.std.io.io @std.io.io.reset(%struct.std.io.io* %143)
  %145 = getelementptr %struct.std.io.io, %struct.std.io.io* %_46.real, i32 0 ; %_46.real -> %145
  store %struct.std.io.io %144, %struct.std.io.io* %145
  %146 = getelementptr [22 x i8], [22 x i8]* @const.str.215, i64 0, i64 0
  %147 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %145, i8* %146)
  %148 = getelementptr %struct.std.io.io, %struct.std.io.io* %_46.real, i32 0 ; %_46.real -> %148
  store %struct.std.io.io %147, %struct.std.io.io* %148
  call void @std.io.io.endln(%struct.std.io.io* %148)
  %149 = sub i64 0, 1
  %150 = trunc i64 %149 to i32 ; i64 -> i32
  ret i32 %150

label.place_holder.114:
  br label %label.118

label.116:			; cond.false
  br label %label.118

label.118:			; branch.end
  %151 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %option.45, i32 0, i32 7
  %152 = load i32, i32* %i.48
  %153 = add i32 %152, 1
  %154 = load i8**, i8*** %argv
  %155 = getelementptr i8*, i8** %154, i32 %153
  %156 = load i8*, i8** %155
  store i8* %156, i8** %151
  %157 = getelementptr i1, i1* %_5.real, i32 0 ; %_5.real -> %157
  %158 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %option.45, i32 0, i32 7
  %159 = load i8*, i8** %158
  %160 = call i64 @strlen(i8* %159)
  %161 = getelementptr i64, i64* %_161.real, i32 0 ; %_161.real -> %161
  store i64 %160, i64* %161
  %162 = load i64, i64* %161
  %163 = icmp eq i64 %162, 0
  store i1 %163, i1* %157
  br i1 %163, label %label.132, label %label.12a

label.12a:			; or.false
  %164 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %option.45, i32 0, i32 7
  %165 = load i8*, i8** %164
  %166 = getelementptr i8, i8* %165, i64 0
  %167 = load i8, i8* %166
  %168 = icmp eq i8 %167, 45
  store i1 %168, i1* %157
  br label %label.132

label.132:			; or.true
  %169 = load i1, i1* %157
  br i1 %169, label %label.135, label %label.156

label.135:			; cond.true
  %170 = call %struct.std.io.io @std.io.io.stderr()
  %171 = getelementptr %struct.std.io.io, %struct.std.io.io* %_46.real, i32 0 ; %_46.real -> %171
  store %struct.std.io.io %170, %struct.std.io.io* %171
  %172 = call %struct.std.io.io @std.io.io.red(%struct.std.io.io* %171)
  %173 = getelementptr %struct.std.io.io, %struct.std.io.io* %_46.real, i32 0 ; %_46.real -> %173
  store %struct.std.io.io %172, %struct.std.io.io* %173
  %174 = getelementptr [7 x i8], [7 x i8]* @const.str.214, i64 0, i64 0
  %175 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %173, i8* %174)
  %176 = getelementptr %struct.std.io.io, %struct.std.io.io* %_46.real, i32 0 ; %_46.real -> %176
  store %struct.std.io.io %175, %struct.std.io.io* %176
  %177 = call %struct.std.io.io @std.io.io.reset(%struct.std.io.io* %176)
  %178 = getelementptr %struct.std.io.io, %struct.std.io.io* %_46.real, i32 0 ; %_46.real -> %178
  store %struct.std.io.io %177, %struct.std.io.io* %178
  %179 = getelementptr [24 x i8], [24 x i8]* @const.str.216, i64 0, i64 0
  %180 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %178, i8* %179)
  %181 = getelementptr %struct.std.io.io, %struct.std.io.io* %_46.real, i32 0 ; %_46.real -> %181
  store %struct.std.io.io %180, %struct.std.io.io* %181
  %182 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %option.45, i32 0, i32 7
  %183 = load i8*, i8** %182
  %184 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %181, i8* %183)
  %185 = getelementptr %struct.std.io.io, %struct.std.io.io* %_46.real, i32 0 ; %_46.real -> %185
  store %struct.std.io.io %184, %struct.std.io.io* %185
  %186 = getelementptr [2 x i8], [2 x i8]* @const.str.158, i64 0, i64 0
  %187 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %185, i8* %186)
  %188 = getelementptr %struct.std.io.io, %struct.std.io.io* %_46.real, i32 0 ; %_46.real -> %188
  store %struct.std.io.io %187, %struct.std.io.io* %188
  call void @std.io.io.endln(%struct.std.io.io* %188)
  %189 = sub i64 0, 1
  %190 = trunc i64 %189 to i32 ; i64 -> i32
  ret i32 %190

label.place_holder.154:
  br label %label.158

label.156:			; cond.false
  br label %label.158

label.158:			; branch.end
  %191 = load i32, i32* %i.48
  %192 = add i32 %191, 1
  store i32 %192, i32* %i.48
  br label %label.1ba

label.15d:			; cond.false
  %193 = load i32, i32* %i.48
  %194 = load i8**, i8*** %argv
  %195 = getelementptr i8*, i8** %194, i32 %193
  %196 = load i8*, i8** %195
  %197 = getelementptr [11 x i8], [11 x i8]* @const.str.217, i64 0, i64 0
  %198 = call i1 @streq(i8* %196, i8* %197)
  %199 = getelementptr i1, i1* %_5.real, i32 0 ; %_5.real -> %199
  store i1 %198, i1* %199
  %200 = load i1, i1* %199
  br i1 %200, label %label.168, label %label.16c

label.168:			; cond.true
  %201 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %option.45, i32 0, i32 2
  store i1 1, i1* %201
  br label %label.1ba

label.16c:			; cond.false
  %202 = load i32, i32* %i.48
  %203 = load i8**, i8*** %argv
  %204 = getelementptr i8*, i8** %203, i32 %202
  %205 = load i8*, i8** %204
  %206 = getelementptr [6 x i8], [6 x i8]* @const.str.218, i64 0, i64 0
  %207 = call i1 @streq(i8* %205, i8* %206)
  %208 = getelementptr i1, i1* %_5.real, i32 0 ; %_5.real -> %208
  store i1 %207, i1* %208
  %209 = load i1, i1* %208
  br i1 %209, label %label.177, label %label.17b

label.177:			; cond.true
  %210 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %option.45, i32 0, i32 5
  store i1 1, i1* %210
  br label %label.1ba

label.17b:			; cond.false
  %211 = load i32, i32* %i.48
  %212 = load i8**, i8*** %argv
  %213 = getelementptr i8*, i8** %212, i32 %211
  %214 = load i8*, i8** %213
  %215 = getelementptr [6 x i8], [6 x i8]* @const.str.219, i64 0, i64 0
  %216 = call i1 @streq(i8* %214, i8* %215)
  %217 = getelementptr i1, i1* %_5.real, i32 0 ; %_5.real -> %217
  store i1 %216, i1* %217
  %218 = load i1, i1* %217
  br i1 %218, label %label.186, label %label.18a

label.186:			; cond.true
  %219 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %option.45, i32 0, i32 4
  store i1 1, i1* %219
  br label %label.1ba

label.18a:			; cond.false
  %220 = load i32, i32* %i.48
  %221 = load i8**, i8*** %argv
  %222 = getelementptr i8*, i8** %221, i32 %220
  %223 = load i8*, i8** %222
  %224 = getelementptr i8, i8* %223, i64 0
  %225 = load i8, i8* %224
  %226 = icmp eq i8 %225, 45
  br i1 %226, label %label.193, label %label.1b2

label.193:			; cond.true
  %227 = call %struct.std.io.io @std.io.io.stderr()
  %228 = getelementptr %struct.std.io.io, %struct.std.io.io* %_46.real, i32 0 ; %_46.real -> %228
  store %struct.std.io.io %227, %struct.std.io.io* %228
  %229 = call %struct.std.io.io @std.io.io.red(%struct.std.io.io* %228)
  %230 = getelementptr %struct.std.io.io, %struct.std.io.io* %_46.real, i32 0 ; %_46.real -> %230
  store %struct.std.io.io %229, %struct.std.io.io* %230
  %231 = getelementptr [7 x i8], [7 x i8]* @const.str.214, i64 0, i64 0
  %232 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %230, i8* %231)
  %233 = getelementptr %struct.std.io.io, %struct.std.io.io* %_46.real, i32 0 ; %_46.real -> %233
  store %struct.std.io.io %232, %struct.std.io.io* %233
  %234 = call %struct.std.io.io @std.io.io.reset(%struct.std.io.io* %233)
  %235 = getelementptr %struct.std.io.io, %struct.std.io.io* %_46.real, i32 0 ; %_46.real -> %235
  store %struct.std.io.io %234, %struct.std.io.io* %235
  %236 = getelementptr [20 x i8], [20 x i8]* @const.str.220, i64 0, i64 0
  %237 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %235, i8* %236)
  %238 = getelementptr %struct.std.io.io, %struct.std.io.io* %_46.real, i32 0 ; %_46.real -> %238
  store %struct.std.io.io %237, %struct.std.io.io* %238
  %239 = load i32, i32* %i.48
  %240 = load i8**, i8*** %argv
  %241 = getelementptr i8*, i8** %240, i32 %239
  %242 = load i8*, i8** %241
  %243 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %238, i8* %242)
  %244 = getelementptr %struct.std.io.io, %struct.std.io.io* %_46.real, i32 0 ; %_46.real -> %244
  store %struct.std.io.io %243, %struct.std.io.io* %244
  call void @std.io.io.endln(%struct.std.io.io* %244)
  %245 = sub i64 0, 1
  %246 = trunc i64 %245 to i32 ; i64 -> i32
  ret i32 %246

label.place_holder.1b0:
  br label %label.1ba

label.1b2:			; cond.false
  %247 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %option.45, i32 0, i32 6
  %248 = load i32, i32* %i.48
  %249 = load i8**, i8*** %argv
  %250 = getelementptr i8*, i8** %249, i32 %248
  %251 = load i8*, i8** %250
  store i8* %251, i8** %247
  br label %label.1ba

label.1ba:			; branch.end
  %252 = load i32, i32* %i.48
  %253 = add i32 %252, 1
  store i32 %253, i32* %i.48
  br label %label.77

label.1c1:			; loop.exit
  %254 = getelementptr inbounds %struct.cli.cli_option, %struct.cli.cli_option* %option.45, i32 0, i32 6
  %255 = load i8*, i8** %254
  %256 = icmp eq i8* %255, null
  br i1 %256, label %label.1c6, label %label.1de

label.1c6:			; cond.true
  %257 = call %struct.std.io.io @std.io.io.stderr()
  %258 = getelementptr %struct.std.io.io, %struct.std.io.io* %_46.real, i32 0 ; %_46.real -> %258
  store %struct.std.io.io %257, %struct.std.io.io* %258
  %259 = call %struct.std.io.io @std.io.io.red(%struct.std.io.io* %258)
  %260 = getelementptr %struct.std.io.io, %struct.std.io.io* %_46.real, i32 0 ; %_46.real -> %260
  store %struct.std.io.io %259, %struct.std.io.io* %260
  %261 = getelementptr [7 x i8], [7 x i8]* @const.str.214, i64 0, i64 0
  %262 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %260, i8* %261)
  %263 = getelementptr %struct.std.io.io, %struct.std.io.io* %_46.real, i32 0 ; %_46.real -> %263
  store %struct.std.io.io %262, %struct.std.io.io* %263
  %264 = call %struct.std.io.io @std.io.io.reset(%struct.std.io.io* %263)
  %265 = getelementptr %struct.std.io.io, %struct.std.io.io* %_46.real, i32 0 ; %_46.real -> %265
  store %struct.std.io.io %264, %struct.std.io.io* %265
  %266 = getelementptr [26 x i8], [26 x i8]* @const.str.221, i64 0, i64 0
  %267 = call %struct.std.io.io @std.io.io.out(%struct.std.io.io* %265, i8* %266)
  %268 = getelementptr %struct.std.io.io, %struct.std.io.io* %_46.real, i32 0 ; %_46.real -> %268
  store %struct.std.io.io %267, %struct.std.io.io* %268
  call void @std.io.io.endln(%struct.std.io.io* %268)
  %269 = sub i64 0, 1
  %270 = trunc i64 %269 to i32 ; i64 -> i32
  ret i32 %270

label.place_holder.1dc:
  br label %label.1e0

label.1de:			; cond.false
  br label %label.1e0

label.1e0:			; branch.end
  %271 = load %struct.cli.cli_option, %struct.cli.cli_option* %option.45
  call void @compile(%struct.cli.cli_option %271)
  ret i32 0
}

!llvm.ident = !{!0}
!0 = !{!"colgm compiler version 0.1"}
