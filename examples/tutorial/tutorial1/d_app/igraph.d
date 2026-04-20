module igraph;

extern(C) nothrow @nogc:

struct igraph_safelocale_s;

void* igraph_calloc(size_t count, size_t size);
void* igraph_malloc(size_t size);
void* igraph_realloc(void* ptr, size_t size);
void igraph_free(void* ptr);

enum igraph_error_type_t {
    IGRAPH_SUCCESS = 0,
    IGRAPH_FAILURE = 1,
    IGRAPH_ENOMEM = 2,
    IGRAPH_PARSEERROR = 3,
    IGRAPH_EINVAL = 4,
    IGRAPH_EXISTS = 5,
    IGRAPH_EINVEVECTOR = 6,
    IGRAPH_EINVVID = 7,
    IGRAPH_NONSQUARE = 8,
    IGRAPH_EINVMODE = 9,
    IGRAPH_EFILE = 10,
    IGRAPH_UNIMPLEMENTED = 12,
    IGRAPH_INTERRUPTED = 13,
    IGRAPH_DIVERGED = 14,
    IGRAPH_ARPACK_PROD = 15,
    IGRAPH_ARPACK_NPOS = 16,
    IGRAPH_ARPACK_NEVNPOS = 17,
    IGRAPH_ARPACK_NCVSMALL = 18,
    IGRAPH_ARPACK_NONPOSI = 19,
    IGRAPH_ARPACK_WHICHINV = 20,
    IGRAPH_ARPACK_BMATINV = 21,
    IGRAPH_ARPACK_WORKLSMALL = 22,
    IGRAPH_ARPACK_TRIDERR = 23,
    IGRAPH_ARPACK_ZEROSTART = 24,
    IGRAPH_ARPACK_MODEINV = 25,
    IGRAPH_ARPACK_MODEBMAT = 26,
    IGRAPH_ARPACK_ISHIFT = 27,
    IGRAPH_ARPACK_NEVBE = 28,
    IGRAPH_ARPACK_NOFACT = 29,
    IGRAPH_ARPACK_FAILED = 30,
    IGRAPH_ARPACK_HOWMNY = 31,
    IGRAPH_ARPACK_HOWMNYS = 32,
    IGRAPH_ARPACK_EVDIFF = 33,
    IGRAPH_ARPACK_SHUR = 34,
    IGRAPH_ARPACK_LAPACK = 35,
    IGRAPH_ARPACK_UNKNOWN = 36,
    IGRAPH_ENEGLOOP = 37,
    IGRAPH_EINTERNAL = 38,
    IGRAPH_ARPACK_MAXIT = 39,
    IGRAPH_ARPACK_NOSHIFT = 40,
    IGRAPH_ARPACK_REORDER = 41,
    IGRAPH_EDIVZERO = 42,
    IGRAPH_GLP_EBOUND = 43,
    IGRAPH_GLP_EROOT = 44,
    IGRAPH_GLP_ENOPFS = 45,
    IGRAPH_GLP_ENODFS = 46,
    IGRAPH_GLP_EFAIL = 47,
    IGRAPH_GLP_EMIPGAP = 48,
    IGRAPH_GLP_ETMLIM = 49,
    IGRAPH_GLP_ESTOP = 50,
    IGRAPH_EATTRIBUTES = 51,
    IGRAPH_EATTRCOMBINE = 52,
    IGRAPH_ELAPACK = 53,
    IGRAPH_EDRL = 54,
    IGRAPH_EOVERFLOW = 55,
    IGRAPH_EGLP = 56,
    IGRAPH_CPUTIME = 57,
    IGRAPH_EUNDERFLOW = 58,
    IGRAPH_ERWSTUCK = 59,
    IGRAPH_STOP = 60,
    IGRAPH_ERANGE = 61,
    IGRAPH_ENOSOL = 62,
}

alias IGRAPH_SUCCESS = igraph_error_type_t.IGRAPH_SUCCESS;
alias IGRAPH_FAILURE = igraph_error_type_t.IGRAPH_FAILURE;
alias IGRAPH_ENOMEM = igraph_error_type_t.IGRAPH_ENOMEM;
alias IGRAPH_PARSEERROR = igraph_error_type_t.IGRAPH_PARSEERROR;
alias IGRAPH_EINVAL = igraph_error_type_t.IGRAPH_EINVAL;
alias IGRAPH_EXISTS = igraph_error_type_t.IGRAPH_EXISTS;
alias IGRAPH_EINVEVECTOR = igraph_error_type_t.IGRAPH_EINVEVECTOR;
alias IGRAPH_EINVVID = igraph_error_type_t.IGRAPH_EINVVID;
alias IGRAPH_NONSQUARE = igraph_error_type_t.IGRAPH_NONSQUARE;
alias IGRAPH_EINVMODE = igraph_error_type_t.IGRAPH_EINVMODE;
alias IGRAPH_EFILE = igraph_error_type_t.IGRAPH_EFILE;
alias IGRAPH_UNIMPLEMENTED = igraph_error_type_t.IGRAPH_UNIMPLEMENTED;
alias IGRAPH_INTERRUPTED = igraph_error_type_t.IGRAPH_INTERRUPTED;
alias IGRAPH_DIVERGED = igraph_error_type_t.IGRAPH_DIVERGED;
alias IGRAPH_ARPACK_PROD = igraph_error_type_t.IGRAPH_ARPACK_PROD;
alias IGRAPH_ARPACK_NPOS = igraph_error_type_t.IGRAPH_ARPACK_NPOS;
alias IGRAPH_ARPACK_NEVNPOS = igraph_error_type_t.IGRAPH_ARPACK_NEVNPOS;
alias IGRAPH_ARPACK_NCVSMALL = igraph_error_type_t.IGRAPH_ARPACK_NCVSMALL;
alias IGRAPH_ARPACK_NONPOSI = igraph_error_type_t.IGRAPH_ARPACK_NONPOSI;
alias IGRAPH_ARPACK_WHICHINV = igraph_error_type_t.IGRAPH_ARPACK_WHICHINV;
alias IGRAPH_ARPACK_BMATINV = igraph_error_type_t.IGRAPH_ARPACK_BMATINV;
alias IGRAPH_ARPACK_WORKLSMALL = igraph_error_type_t.IGRAPH_ARPACK_WORKLSMALL;
alias IGRAPH_ARPACK_TRIDERR = igraph_error_type_t.IGRAPH_ARPACK_TRIDERR;
alias IGRAPH_ARPACK_ZEROSTART = igraph_error_type_t.IGRAPH_ARPACK_ZEROSTART;
alias IGRAPH_ARPACK_MODEINV = igraph_error_type_t.IGRAPH_ARPACK_MODEINV;
alias IGRAPH_ARPACK_MODEBMAT = igraph_error_type_t.IGRAPH_ARPACK_MODEBMAT;
alias IGRAPH_ARPACK_ISHIFT = igraph_error_type_t.IGRAPH_ARPACK_ISHIFT;
alias IGRAPH_ARPACK_NEVBE = igraph_error_type_t.IGRAPH_ARPACK_NEVBE;
alias IGRAPH_ARPACK_NOFACT = igraph_error_type_t.IGRAPH_ARPACK_NOFACT;
alias IGRAPH_ARPACK_FAILED = igraph_error_type_t.IGRAPH_ARPACK_FAILED;
alias IGRAPH_ARPACK_HOWMNY = igraph_error_type_t.IGRAPH_ARPACK_HOWMNY;
alias IGRAPH_ARPACK_HOWMNYS = igraph_error_type_t.IGRAPH_ARPACK_HOWMNYS;
alias IGRAPH_ARPACK_EVDIFF = igraph_error_type_t.IGRAPH_ARPACK_EVDIFF;
alias IGRAPH_ARPACK_SHUR = igraph_error_type_t.IGRAPH_ARPACK_SHUR;
alias IGRAPH_ARPACK_LAPACK = igraph_error_type_t.IGRAPH_ARPACK_LAPACK;
alias IGRAPH_ARPACK_UNKNOWN = igraph_error_type_t.IGRAPH_ARPACK_UNKNOWN;
alias IGRAPH_ENEGLOOP = igraph_error_type_t.IGRAPH_ENEGLOOP;
alias IGRAPH_EINTERNAL = igraph_error_type_t.IGRAPH_EINTERNAL;
alias IGRAPH_ARPACK_MAXIT = igraph_error_type_t.IGRAPH_ARPACK_MAXIT;
alias IGRAPH_ARPACK_NOSHIFT = igraph_error_type_t.IGRAPH_ARPACK_NOSHIFT;
alias IGRAPH_ARPACK_REORDER = igraph_error_type_t.IGRAPH_ARPACK_REORDER;
alias IGRAPH_EDIVZERO = igraph_error_type_t.IGRAPH_EDIVZERO;
alias IGRAPH_GLP_EBOUND = igraph_error_type_t.IGRAPH_GLP_EBOUND;
alias IGRAPH_GLP_EROOT = igraph_error_type_t.IGRAPH_GLP_EROOT;
alias IGRAPH_GLP_ENOPFS = igraph_error_type_t.IGRAPH_GLP_ENOPFS;
alias IGRAPH_GLP_ENODFS = igraph_error_type_t.IGRAPH_GLP_ENODFS;
alias IGRAPH_GLP_EFAIL = igraph_error_type_t.IGRAPH_GLP_EFAIL;
alias IGRAPH_GLP_EMIPGAP = igraph_error_type_t.IGRAPH_GLP_EMIPGAP;
alias IGRAPH_GLP_ETMLIM = igraph_error_type_t.IGRAPH_GLP_ETMLIM;
alias IGRAPH_GLP_ESTOP = igraph_error_type_t.IGRAPH_GLP_ESTOP;
alias IGRAPH_EATTRIBUTES = igraph_error_type_t.IGRAPH_EATTRIBUTES;
alias IGRAPH_EATTRCOMBINE = igraph_error_type_t.IGRAPH_EATTRCOMBINE;
alias IGRAPH_ELAPACK = igraph_error_type_t.IGRAPH_ELAPACK;
alias IGRAPH_EDRL = igraph_error_type_t.IGRAPH_EDRL;
alias IGRAPH_EOVERFLOW = igraph_error_type_t.IGRAPH_EOVERFLOW;
alias IGRAPH_EGLP = igraph_error_type_t.IGRAPH_EGLP;
alias IGRAPH_CPUTIME = igraph_error_type_t.IGRAPH_CPUTIME;
alias IGRAPH_EUNDERFLOW = igraph_error_type_t.IGRAPH_EUNDERFLOW;
alias IGRAPH_ERWSTUCK = igraph_error_type_t.IGRAPH_ERWSTUCK;
alias IGRAPH_STOP = igraph_error_type_t.IGRAPH_STOP;
alias IGRAPH_ERANGE = igraph_error_type_t.IGRAPH_ERANGE;
alias IGRAPH_ENOSOL = igraph_error_type_t.IGRAPH_ENOSOL;
alias igraph_error_t = igraph_error_type_t;
const(char)* igraph_strerror(igraph_error_t igraph_errno);

struct igraph_i_protectedPtr {
    int level;
    void* ptr;
    void function(void*) func;
}

void IGRAPH_FINALLY_REAL(void function(void*) func, void* ptr);
void IGRAPH_FINALLY_CLEAN(int num);
void IGRAPH_FINALLY_FREE();
void IGRAPH_FINALLY_ENTER();
void IGRAPH_FINALLY_EXIT();

enum {
    FP_NAN = 0,
    FP_INFINITE = 1,
    FP_ZERO = 2,
    FP_SUBNORMAL = 3,
    FP_NORMAL = 4,
}

union __tag1 {
    uint __wch;
    char[4] __wchb;
}

alias igraph_integer_t = long;
alias igraph_uint_t = ulong;
alias igraph_real_t = double;
alias igraph_bool_t = bool;

struct igraph_complex_t {
    igraph_real_t[2] dat;
}

igraph_complex_t igraph_complex(igraph_real_t x, igraph_real_t y);
igraph_complex_t igraph_complex_polar(igraph_real_t r, igraph_real_t theta);
igraph_bool_t igraph_complex_eq_tol(igraph_complex_t z1, igraph_complex_t z2, igraph_real_t tol);
igraph_bool_t igraph_complex_almost_equals(igraph_complex_t z1, igraph_complex_t z2, igraph_real_t eps);
igraph_real_t igraph_complex_mod(igraph_complex_t z);
igraph_real_t igraph_complex_arg(igraph_complex_t z);
igraph_real_t igraph_complex_abs(igraph_complex_t z);
igraph_real_t igraph_complex_logabs(igraph_complex_t z);
igraph_complex_t igraph_complex_add(igraph_complex_t z1, igraph_complex_t z2);
igraph_complex_t igraph_complex_sub(igraph_complex_t z1, igraph_complex_t z2);
igraph_complex_t igraph_complex_mul(igraph_complex_t z1, igraph_complex_t z2);
igraph_complex_t igraph_complex_div(igraph_complex_t z1, igraph_complex_t z2);
igraph_complex_t igraph_complex_add_real(igraph_complex_t z, igraph_real_t x);
igraph_complex_t igraph_complex_add_imag(igraph_complex_t z, igraph_real_t y);
igraph_complex_t igraph_complex_sub_real(igraph_complex_t z, igraph_real_t x);
igraph_complex_t igraph_complex_sub_imag(igraph_complex_t z, igraph_real_t y);
igraph_complex_t igraph_complex_mul_real(igraph_complex_t z, igraph_real_t x);
igraph_complex_t igraph_complex_mul_imag(igraph_complex_t z, igraph_real_t y);
igraph_complex_t igraph_complex_div_real(igraph_complex_t z, igraph_real_t x);
igraph_complex_t igraph_complex_div_imag(igraph_complex_t z, igraph_real_t y);
igraph_complex_t igraph_complex_conj(igraph_complex_t z);
igraph_complex_t igraph_complex_neg(igraph_complex_t z);
igraph_complex_t igraph_complex_inv(igraph_complex_t z);
igraph_complex_t igraph_complex_sqrt(igraph_complex_t z);
igraph_complex_t igraph_complex_sqrt_real(igraph_real_t x);
igraph_complex_t igraph_complex_exp(igraph_complex_t z);
igraph_complex_t igraph_complex_pow(igraph_complex_t z1, igraph_complex_t z2);
igraph_complex_t igraph_complex_pow_real(igraph_complex_t z, igraph_real_t x);
igraph_complex_t igraph_complex_log(igraph_complex_t z);
igraph_complex_t igraph_complex_log10(igraph_complex_t z);
igraph_complex_t igraph_complex_log_b(igraph_complex_t z, igraph_complex_t b);
igraph_complex_t igraph_complex_sin(igraph_complex_t z);
igraph_complex_t igraph_complex_cos(igraph_complex_t z);
igraph_complex_t igraph_complex_tan(igraph_complex_t z);
igraph_complex_t igraph_complex_sec(igraph_complex_t z);
igraph_complex_t igraph_complex_csc(igraph_complex_t z);
igraph_complex_t igraph_complex_cot(igraph_complex_t z);

enum igraph_i_directed_t {
    IGRAPH_UNDIRECTED = 0,
    IGRAPH_DIRECTED = 1,
}

alias IGRAPH_UNDIRECTED = igraph_i_directed_t.IGRAPH_UNDIRECTED;
alias IGRAPH_DIRECTED = igraph_i_directed_t.IGRAPH_DIRECTED;

enum igraph_loops_t {
    IGRAPH_NO_LOOPS = 0,
    IGRAPH_LOOPS = 1,
    IGRAPH_LOOPS_TWICE = 1,
    IGRAPH_LOOPS_ONCE = 2,
}

alias IGRAPH_NO_LOOPS = igraph_loops_t.IGRAPH_NO_LOOPS;
alias IGRAPH_LOOPS = igraph_loops_t.IGRAPH_LOOPS;
alias IGRAPH_LOOPS_TWICE = igraph_loops_t.IGRAPH_LOOPS_TWICE;
alias IGRAPH_LOOPS_ONCE = igraph_loops_t.IGRAPH_LOOPS_ONCE;

enum igraph_multiple_t {
    IGRAPH_NO_MULTIPLE = 0,
    IGRAPH_MULTIPLE = 1,
}

alias IGRAPH_NO_MULTIPLE = igraph_multiple_t.IGRAPH_NO_MULTIPLE;
alias IGRAPH_MULTIPLE = igraph_multiple_t.IGRAPH_MULTIPLE;

enum igraph_order_t {
    IGRAPH_ASCENDING = 0,
    IGRAPH_DESCENDING = 1,
}

alias IGRAPH_ASCENDING = igraph_order_t.IGRAPH_ASCENDING;
alias IGRAPH_DESCENDING = igraph_order_t.IGRAPH_DESCENDING;

enum igraph_optimal_t {
    IGRAPH_MINIMUM = 0,
    IGRAPH_MAXIMUM = 1,
}

alias IGRAPH_MINIMUM = igraph_optimal_t.IGRAPH_MINIMUM;
alias IGRAPH_MAXIMUM = igraph_optimal_t.IGRAPH_MAXIMUM;

enum igraph_neimode_t {
    IGRAPH_OUT = 1,
    IGRAPH_IN = 2,
    IGRAPH_ALL = 3,
}

alias IGRAPH_OUT = igraph_neimode_t.IGRAPH_OUT;
alias IGRAPH_IN = igraph_neimode_t.IGRAPH_IN;
alias IGRAPH_ALL = igraph_neimode_t.IGRAPH_ALL;

enum igraph_connectedness_t {
    IGRAPH_WEAK = 1,
    IGRAPH_STRONG = 2,
}

alias IGRAPH_WEAK = igraph_connectedness_t.IGRAPH_WEAK;
alias IGRAPH_STRONG = igraph_connectedness_t.IGRAPH_STRONG;

enum igraph_reciprocity_t {
    IGRAPH_RECIPROCITY_DEFAULT = 0,
    IGRAPH_RECIPROCITY_RATIO = 1,
}

alias IGRAPH_RECIPROCITY_DEFAULT = igraph_reciprocity_t.IGRAPH_RECIPROCITY_DEFAULT;
alias IGRAPH_RECIPROCITY_RATIO = igraph_reciprocity_t.IGRAPH_RECIPROCITY_RATIO;

enum igraph_adjacency_t {
    IGRAPH_ADJ_DIRECTED = 0,
    IGRAPH_ADJ_UNDIRECTED,
    IGRAPH_ADJ_UPPER,
    IGRAPH_ADJ_LOWER,
    IGRAPH_ADJ_MIN,
    IGRAPH_ADJ_PLUS,
    IGRAPH_ADJ_MAX,
}

alias IGRAPH_ADJ_DIRECTED = igraph_adjacency_t.IGRAPH_ADJ_DIRECTED;
alias IGRAPH_ADJ_UNDIRECTED = igraph_adjacency_t.IGRAPH_ADJ_UNDIRECTED;
alias IGRAPH_ADJ_UPPER = igraph_adjacency_t.IGRAPH_ADJ_UPPER;
alias IGRAPH_ADJ_LOWER = igraph_adjacency_t.IGRAPH_ADJ_LOWER;
alias IGRAPH_ADJ_MIN = igraph_adjacency_t.IGRAPH_ADJ_MIN;
alias IGRAPH_ADJ_PLUS = igraph_adjacency_t.IGRAPH_ADJ_PLUS;
alias IGRAPH_ADJ_MAX = igraph_adjacency_t.IGRAPH_ADJ_MAX;

enum igraph_star_mode_t {
    IGRAPH_STAR_OUT = 0,
    IGRAPH_STAR_IN,
    IGRAPH_STAR_UNDIRECTED,
    IGRAPH_STAR_MUTUAL,
}

alias IGRAPH_STAR_OUT = igraph_star_mode_t.IGRAPH_STAR_OUT;
alias IGRAPH_STAR_IN = igraph_star_mode_t.IGRAPH_STAR_IN;
alias IGRAPH_STAR_UNDIRECTED = igraph_star_mode_t.IGRAPH_STAR_UNDIRECTED;
alias IGRAPH_STAR_MUTUAL = igraph_star_mode_t.IGRAPH_STAR_MUTUAL;

enum igraph_wheel_mode_t {
    IGRAPH_WHEEL_OUT = 0,
    IGRAPH_WHEEL_IN,
    IGRAPH_WHEEL_UNDIRECTED,
    IGRAPH_WHEEL_MUTUAL,
}

alias IGRAPH_WHEEL_OUT = igraph_wheel_mode_t.IGRAPH_WHEEL_OUT;
alias IGRAPH_WHEEL_IN = igraph_wheel_mode_t.IGRAPH_WHEEL_IN;
alias IGRAPH_WHEEL_UNDIRECTED = igraph_wheel_mode_t.IGRAPH_WHEEL_UNDIRECTED;
alias IGRAPH_WHEEL_MUTUAL = igraph_wheel_mode_t.IGRAPH_WHEEL_MUTUAL;

enum igraph_tree_mode_t {
    IGRAPH_TREE_OUT = 0,
    IGRAPH_TREE_IN,
    IGRAPH_TREE_UNDIRECTED,
}

alias IGRAPH_TREE_OUT = igraph_tree_mode_t.IGRAPH_TREE_OUT;
alias IGRAPH_TREE_IN = igraph_tree_mode_t.IGRAPH_TREE_IN;
alias IGRAPH_TREE_UNDIRECTED = igraph_tree_mode_t.IGRAPH_TREE_UNDIRECTED;

enum igraph_erdos_renyi_t {
    IGRAPH_ERDOS_RENYI_GNP = 0,
    IGRAPH_ERDOS_RENYI_GNM,
}

alias IGRAPH_ERDOS_RENYI_GNP = igraph_erdos_renyi_t.IGRAPH_ERDOS_RENYI_GNP;
alias IGRAPH_ERDOS_RENYI_GNM = igraph_erdos_renyi_t.IGRAPH_ERDOS_RENYI_GNM;

enum igraph_get_adjacency_t {
    IGRAPH_GET_ADJACENCY_UPPER = 0,
    IGRAPH_GET_ADJACENCY_LOWER,
    IGRAPH_GET_ADJACENCY_BOTH,
}

alias IGRAPH_GET_ADJACENCY_UPPER = igraph_get_adjacency_t.IGRAPH_GET_ADJACENCY_UPPER;
alias IGRAPH_GET_ADJACENCY_LOWER = igraph_get_adjacency_t.IGRAPH_GET_ADJACENCY_LOWER;
alias IGRAPH_GET_ADJACENCY_BOTH = igraph_get_adjacency_t.IGRAPH_GET_ADJACENCY_BOTH;

enum igraph_degseq_t {
    IGRAPH_DEGSEQ_CONFIGURATION = 0,
    IGRAPH_DEGSEQ_VL,
    IGRAPH_DEGSEQ_FAST_HEUR_SIMPLE,
    IGRAPH_DEGSEQ_CONFIGURATION_SIMPLE,
    IGRAPH_DEGSEQ_EDGE_SWITCHING_SIMPLE,
    IGRAPH_DEGSEQ_SIMPLE = IGRAPH_DEGSEQ_CONFIGURATION,
    IGRAPH_DEGSEQ_SIMPLE_NO_MULTIPLE = IGRAPH_DEGSEQ_FAST_HEUR_SIMPLE,
    IGRAPH_DEGSEQ_SIMPLE_NO_MULTIPLE_UNIFORM = IGRAPH_DEGSEQ_CONFIGURATION_SIMPLE,
}

alias IGRAPH_DEGSEQ_CONFIGURATION = igraph_degseq_t.IGRAPH_DEGSEQ_CONFIGURATION;
alias IGRAPH_DEGSEQ_VL = igraph_degseq_t.IGRAPH_DEGSEQ_VL;
alias IGRAPH_DEGSEQ_FAST_HEUR_SIMPLE = igraph_degseq_t.IGRAPH_DEGSEQ_FAST_HEUR_SIMPLE;
alias IGRAPH_DEGSEQ_CONFIGURATION_SIMPLE = igraph_degseq_t.IGRAPH_DEGSEQ_CONFIGURATION_SIMPLE;
alias IGRAPH_DEGSEQ_EDGE_SWITCHING_SIMPLE = igraph_degseq_t.IGRAPH_DEGSEQ_EDGE_SWITCHING_SIMPLE;
alias IGRAPH_DEGSEQ_SIMPLE = igraph_degseq_t.IGRAPH_DEGSEQ_SIMPLE;
alias IGRAPH_DEGSEQ_SIMPLE_NO_MULTIPLE = igraph_degseq_t.IGRAPH_DEGSEQ_SIMPLE_NO_MULTIPLE;
alias IGRAPH_DEGSEQ_SIMPLE_NO_MULTIPLE_UNIFORM = igraph_degseq_t.IGRAPH_DEGSEQ_SIMPLE_NO_MULTIPLE_UNIFORM;

enum igraph_realize_degseq_t {
    IGRAPH_REALIZE_DEGSEQ_SMALLEST = 0,
    IGRAPH_REALIZE_DEGSEQ_LARGEST,
    IGRAPH_REALIZE_DEGSEQ_INDEX,
}

alias IGRAPH_REALIZE_DEGSEQ_SMALLEST = igraph_realize_degseq_t.IGRAPH_REALIZE_DEGSEQ_SMALLEST;
alias IGRAPH_REALIZE_DEGSEQ_LARGEST = igraph_realize_degseq_t.IGRAPH_REALIZE_DEGSEQ_LARGEST;
alias IGRAPH_REALIZE_DEGSEQ_INDEX = igraph_realize_degseq_t.IGRAPH_REALIZE_DEGSEQ_INDEX;

enum igraph_random_tree_t {
    IGRAPH_RANDOM_TREE_PRUFER = 0,
    IGRAPH_RANDOM_TREE_LERW,
}

alias IGRAPH_RANDOM_TREE_PRUFER = igraph_random_tree_t.IGRAPH_RANDOM_TREE_PRUFER;
alias IGRAPH_RANDOM_TREE_LERW = igraph_random_tree_t.IGRAPH_RANDOM_TREE_LERW;

enum igraph_fileformat_type_t {
    IGRAPH_FILEFORMAT_EDGELIST = 0,
    IGRAPH_FILEFORMAT_NCOL,
    IGRAPH_FILEFORMAT_PAJEK,
    IGRAPH_FILEFORMAT_LGL,
    IGRAPH_FILEFORMAT_GRAPHML,
}

alias IGRAPH_FILEFORMAT_EDGELIST = igraph_fileformat_type_t.IGRAPH_FILEFORMAT_EDGELIST;
alias IGRAPH_FILEFORMAT_NCOL = igraph_fileformat_type_t.IGRAPH_FILEFORMAT_NCOL;
alias IGRAPH_FILEFORMAT_PAJEK = igraph_fileformat_type_t.IGRAPH_FILEFORMAT_PAJEK;
alias IGRAPH_FILEFORMAT_LGL = igraph_fileformat_type_t.IGRAPH_FILEFORMAT_LGL;
alias IGRAPH_FILEFORMAT_GRAPHML = igraph_fileformat_type_t.IGRAPH_FILEFORMAT_GRAPHML;

enum igraph_rewiring_t {
    IGRAPH_REWIRING_SIMPLE = 0,
    IGRAPH_REWIRING_SIMPLE_LOOPS,
}

alias IGRAPH_REWIRING_SIMPLE = igraph_rewiring_t.IGRAPH_REWIRING_SIMPLE;
alias IGRAPH_REWIRING_SIMPLE_LOOPS = igraph_rewiring_t.IGRAPH_REWIRING_SIMPLE_LOOPS;

enum igraph_edgeorder_type_t {
    IGRAPH_EDGEORDER_ID = 0,
    IGRAPH_EDGEORDER_FROM,
    IGRAPH_EDGEORDER_TO,
}

alias IGRAPH_EDGEORDER_ID = igraph_edgeorder_type_t.IGRAPH_EDGEORDER_ID;
alias IGRAPH_EDGEORDER_FROM = igraph_edgeorder_type_t.IGRAPH_EDGEORDER_FROM;
alias IGRAPH_EDGEORDER_TO = igraph_edgeorder_type_t.IGRAPH_EDGEORDER_TO;

enum igraph_to_directed_t {
    IGRAPH_TO_DIRECTED_ARBITRARY = 0,
    IGRAPH_TO_DIRECTED_MUTUAL,
    IGRAPH_TO_DIRECTED_RANDOM,
    IGRAPH_TO_DIRECTED_ACYCLIC,
}

alias IGRAPH_TO_DIRECTED_ARBITRARY = igraph_to_directed_t.IGRAPH_TO_DIRECTED_ARBITRARY;
alias IGRAPH_TO_DIRECTED_MUTUAL = igraph_to_directed_t.IGRAPH_TO_DIRECTED_MUTUAL;
alias IGRAPH_TO_DIRECTED_RANDOM = igraph_to_directed_t.IGRAPH_TO_DIRECTED_RANDOM;
alias IGRAPH_TO_DIRECTED_ACYCLIC = igraph_to_directed_t.IGRAPH_TO_DIRECTED_ACYCLIC;

enum igraph_to_undirected_t {
    IGRAPH_TO_UNDIRECTED_EACH = 0,
    IGRAPH_TO_UNDIRECTED_COLLAPSE,
    IGRAPH_TO_UNDIRECTED_MUTUAL,
}

alias IGRAPH_TO_UNDIRECTED_EACH = igraph_to_undirected_t.IGRAPH_TO_UNDIRECTED_EACH;
alias IGRAPH_TO_UNDIRECTED_COLLAPSE = igraph_to_undirected_t.IGRAPH_TO_UNDIRECTED_COLLAPSE;
alias IGRAPH_TO_UNDIRECTED_MUTUAL = igraph_to_undirected_t.IGRAPH_TO_UNDIRECTED_MUTUAL;

enum igraph_vconn_nei_t {
    IGRAPH_VCONN_NEI_ERROR = 0,
    IGRAPH_VCONN_NEI_NUMBER_OF_NODES,
    IGRAPH_VCONN_NEI_IGNORE,
    IGRAPH_VCONN_NEI_NEGATIVE,
}

alias IGRAPH_VCONN_NEI_ERROR = igraph_vconn_nei_t.IGRAPH_VCONN_NEI_ERROR;
alias IGRAPH_VCONN_NEI_NUMBER_OF_NODES = igraph_vconn_nei_t.IGRAPH_VCONN_NEI_NUMBER_OF_NODES;
alias IGRAPH_VCONN_NEI_IGNORE = igraph_vconn_nei_t.IGRAPH_VCONN_NEI_IGNORE;
alias IGRAPH_VCONN_NEI_NEGATIVE = igraph_vconn_nei_t.IGRAPH_VCONN_NEI_NEGATIVE;

enum igraph_spincomm_update_t {
    IGRAPH_SPINCOMM_UPDATE_SIMPLE = 0,
    IGRAPH_SPINCOMM_UPDATE_CONFIG,
}

alias IGRAPH_SPINCOMM_UPDATE_SIMPLE = igraph_spincomm_update_t.IGRAPH_SPINCOMM_UPDATE_SIMPLE;
alias IGRAPH_SPINCOMM_UPDATE_CONFIG = igraph_spincomm_update_t.IGRAPH_SPINCOMM_UPDATE_CONFIG;

enum igraph_lazy_adlist_simplify_t {
    IGRAPH_DONT_SIMPLIFY = 0,
    IGRAPH_SIMPLIFY,
}

alias IGRAPH_DONT_SIMPLIFY = igraph_lazy_adlist_simplify_t.IGRAPH_DONT_SIMPLIFY;
alias IGRAPH_SIMPLIFY = igraph_lazy_adlist_simplify_t.IGRAPH_SIMPLIFY;

enum igraph_transitivity_mode_t {
    IGRAPH_TRANSITIVITY_NAN = 0,
    IGRAPH_TRANSITIVITY_ZERO,
}

alias IGRAPH_TRANSITIVITY_NAN = igraph_transitivity_mode_t.IGRAPH_TRANSITIVITY_NAN;
alias IGRAPH_TRANSITIVITY_ZERO = igraph_transitivity_mode_t.IGRAPH_TRANSITIVITY_ZERO;

enum igraph_spinglass_implementation_t {
    IGRAPH_SPINCOMM_IMP_ORIG = 0,
    IGRAPH_SPINCOMM_IMP_NEG,
}

alias IGRAPH_SPINCOMM_IMP_ORIG = igraph_spinglass_implementation_t.IGRAPH_SPINCOMM_IMP_ORIG;
alias IGRAPH_SPINCOMM_IMP_NEG = igraph_spinglass_implementation_t.IGRAPH_SPINCOMM_IMP_NEG;

enum igraph_community_comparison_t {
    IGRAPH_COMMCMP_VI = 0,
    IGRAPH_COMMCMP_NMI,
    IGRAPH_COMMCMP_SPLIT_JOIN,
    IGRAPH_COMMCMP_RAND,
    IGRAPH_COMMCMP_ADJUSTED_RAND,
}

alias IGRAPH_COMMCMP_VI = igraph_community_comparison_t.IGRAPH_COMMCMP_VI;
alias IGRAPH_COMMCMP_NMI = igraph_community_comparison_t.IGRAPH_COMMCMP_NMI;
alias IGRAPH_COMMCMP_SPLIT_JOIN = igraph_community_comparison_t.IGRAPH_COMMCMP_SPLIT_JOIN;
alias IGRAPH_COMMCMP_RAND = igraph_community_comparison_t.IGRAPH_COMMCMP_RAND;
alias IGRAPH_COMMCMP_ADJUSTED_RAND = igraph_community_comparison_t.IGRAPH_COMMCMP_ADJUSTED_RAND;

enum igraph_add_weights_t {
    IGRAPH_ADD_WEIGHTS_NO = 0,
    IGRAPH_ADD_WEIGHTS_YES,
    IGRAPH_ADD_WEIGHTS_IF_PRESENT,
}

alias IGRAPH_ADD_WEIGHTS_NO = igraph_add_weights_t.IGRAPH_ADD_WEIGHTS_NO;
alias IGRAPH_ADD_WEIGHTS_YES = igraph_add_weights_t.IGRAPH_ADD_WEIGHTS_YES;
alias IGRAPH_ADD_WEIGHTS_IF_PRESENT = igraph_add_weights_t.IGRAPH_ADD_WEIGHTS_IF_PRESENT;

enum igraph_barabasi_algorithm_t {
    IGRAPH_BARABASI_BAG = 0,
    IGRAPH_BARABASI_PSUMTREE,
    IGRAPH_BARABASI_PSUMTREE_MULTIPLE,
}

alias IGRAPH_BARABASI_BAG = igraph_barabasi_algorithm_t.IGRAPH_BARABASI_BAG;
alias IGRAPH_BARABASI_PSUMTREE = igraph_barabasi_algorithm_t.IGRAPH_BARABASI_PSUMTREE;
alias IGRAPH_BARABASI_PSUMTREE_MULTIPLE = igraph_barabasi_algorithm_t.IGRAPH_BARABASI_PSUMTREE_MULTIPLE;

enum igraph_fas_algorithm_t {
    IGRAPH_FAS_EXACT_IP = 0,
    IGRAPH_FAS_APPROX_EADES,
}

alias IGRAPH_FAS_EXACT_IP = igraph_fas_algorithm_t.IGRAPH_FAS_EXACT_IP;
alias IGRAPH_FAS_APPROX_EADES = igraph_fas_algorithm_t.IGRAPH_FAS_APPROX_EADES;

enum igraph_subgraph_implementation_t {
    IGRAPH_SUBGRAPH_AUTO = 0,
    IGRAPH_SUBGRAPH_COPY_AND_DELETE,
    IGRAPH_SUBGRAPH_CREATE_FROM_SCRATCH,
}

alias IGRAPH_SUBGRAPH_AUTO = igraph_subgraph_implementation_t.IGRAPH_SUBGRAPH_AUTO;
alias IGRAPH_SUBGRAPH_COPY_AND_DELETE = igraph_subgraph_implementation_t.IGRAPH_SUBGRAPH_COPY_AND_DELETE;
alias IGRAPH_SUBGRAPH_CREATE_FROM_SCRATCH = igraph_subgraph_implementation_t.IGRAPH_SUBGRAPH_CREATE_FROM_SCRATCH;

enum igraph_imitate_algorithm_t {
    IGRAPH_IMITATE_AUGMENTED = 0,
    IGRAPH_IMITATE_BLIND,
    IGRAPH_IMITATE_CONTRACTED,
}

alias IGRAPH_IMITATE_AUGMENTED = igraph_imitate_algorithm_t.IGRAPH_IMITATE_AUGMENTED;
alias IGRAPH_IMITATE_BLIND = igraph_imitate_algorithm_t.IGRAPH_IMITATE_BLIND;
alias IGRAPH_IMITATE_CONTRACTED = igraph_imitate_algorithm_t.IGRAPH_IMITATE_CONTRACTED;

enum igraph_layout_grid_t {
    IGRAPH_LAYOUT_GRID = 0,
    IGRAPH_LAYOUT_NOGRID,
    IGRAPH_LAYOUT_AUTOGRID,
}

alias IGRAPH_LAYOUT_GRID = igraph_layout_grid_t.IGRAPH_LAYOUT_GRID;
alias IGRAPH_LAYOUT_NOGRID = igraph_layout_grid_t.IGRAPH_LAYOUT_NOGRID;
alias IGRAPH_LAYOUT_AUTOGRID = igraph_layout_grid_t.IGRAPH_LAYOUT_AUTOGRID;

enum igraph_random_walk_stuck_t {
    IGRAPH_RANDOM_WALK_STUCK_ERROR = 0,
    IGRAPH_RANDOM_WALK_STUCK_RETURN,
}

alias IGRAPH_RANDOM_WALK_STUCK_ERROR = igraph_random_walk_stuck_t.IGRAPH_RANDOM_WALK_STUCK_ERROR;
alias IGRAPH_RANDOM_WALK_STUCK_RETURN = igraph_random_walk_stuck_t.IGRAPH_RANDOM_WALK_STUCK_RETURN;

enum igraph_voronoi_tiebreaker_t {
    IGRAPH_VORONOI_FIRST = 0,
    IGRAPH_VORONOI_LAST,
    IGRAPH_VORONOI_RANDOM,
}

alias IGRAPH_VORONOI_FIRST = igraph_voronoi_tiebreaker_t.IGRAPH_VORONOI_FIRST;
alias IGRAPH_VORONOI_LAST = igraph_voronoi_tiebreaker_t.IGRAPH_VORONOI_LAST;
alias IGRAPH_VORONOI_RANDOM = igraph_voronoi_tiebreaker_t.IGRAPH_VORONOI_RANDOM;

enum igraph_matrix_storage_t {
    IGRAPH_ROW_MAJOR = 0,
    IGRAPH_COLUMN_MAJOR = 1,
}

alias IGRAPH_ROW_MAJOR = igraph_matrix_storage_t.IGRAPH_ROW_MAJOR;
alias IGRAPH_COLUMN_MAJOR = igraph_matrix_storage_t.IGRAPH_COLUMN_MAJOR;

struct igraph_vector_t {
    igraph_real_t* stor_begin;
    igraph_real_t* stor_end;
    igraph_real_t* end;
}

struct igraph_vector_char_t {
    char* stor_begin;
    char* stor_end;
    char* end;
}

struct igraph_vector_bool_t {
    igraph_bool_t* stor_begin;
    igraph_bool_t* stor_end;
    igraph_bool_t* end;
}

struct igraph_vector_int_t {
    igraph_integer_t* stor_begin;
    igraph_integer_t* stor_end;
    igraph_integer_t* end;
}

struct igraph_vector_complex_t {
    igraph_complex_t* stor_begin;
    igraph_complex_t* stor_end;
    igraph_complex_t* end;
}

igraph_error_t igraph_vector_init(igraph_vector_t* v, igraph_integer_t size);
igraph_error_t igraph_vector_init_array(igraph_vector_t* v, const(double)* data, igraph_integer_t length);
igraph_error_t igraph_vector_init_copy(igraph_vector_t* to, igraph_vector_t* from);
igraph_error_t igraph_vector_init_range(igraph_vector_t* v, igraph_real_t start, igraph_real_t end);
igraph_error_t igraph_vector_init_seq(igraph_vector_t* v, igraph_real_t from, igraph_real_t to);
igraph_error_t igraph_vector_copy(igraph_vector_t* to, igraph_vector_t* from);
void igraph_vector_destroy(igraph_vector_t* v);
igraph_integer_t igraph_vector_capacity(igraph_vector_t* v);
igraph_real_t igraph_vector_e(igraph_vector_t* v, igraph_integer_t pos);
igraph_real_t* igraph_vector_e_ptr(igraph_vector_t* v, igraph_integer_t pos);
igraph_real_t igraph_vector_get(igraph_vector_t* v, igraph_integer_t pos);
igraph_real_t* igraph_vector_get_ptr(igraph_vector_t* v, igraph_integer_t pos);
void igraph_vector_set(igraph_vector_t* v, igraph_integer_t pos, igraph_real_t value);
igraph_real_t igraph_vector_tail(igraph_vector_t* v);
void igraph_vector_null(igraph_vector_t* v);
void igraph_vector_fill(igraph_vector_t* v, igraph_real_t e);
igraph_error_t igraph_vector_range(igraph_vector_t* v, igraph_real_t start, igraph_real_t end);
igraph_vector_t* igraph_vector_view(igraph_vector_t* v, const(double)* data, igraph_integer_t length);
void igraph_vector_copy_to(igraph_vector_t* v, igraph_real_t* to);
igraph_error_t igraph_vector_update(igraph_vector_t* to, igraph_vector_t* from);
igraph_error_t igraph_vector_append(igraph_vector_t* to, igraph_vector_t* from);
igraph_error_t igraph_vector_swap(igraph_vector_t* v1, igraph_vector_t* v2);
igraph_error_t igraph_vector_swap_elements(igraph_vector_t* v, igraph_integer_t i, igraph_integer_t j);
igraph_error_t igraph_vector_reverse(igraph_vector_t* v);
igraph_error_t igraph_vector_permute(igraph_vector_t* v, igraph_vector_int_t* ind);
igraph_error_t igraph_vector_shuffle(igraph_vector_t* v);
void igraph_vector_add_constant(igraph_vector_t* v, igraph_real_t plus);
void igraph_vector_scale(igraph_vector_t* v, igraph_real_t by);
igraph_error_t igraph_vector_add(igraph_vector_t* v1, igraph_vector_t* v2);
igraph_error_t igraph_vector_sub(igraph_vector_t* v1, igraph_vector_t* v2);
igraph_error_t igraph_vector_mul(igraph_vector_t* v1, igraph_vector_t* v2);
igraph_error_t igraph_vector_div(igraph_vector_t* v1, igraph_vector_t* v2);
igraph_error_t igraph_vector_cumsum(igraph_vector_t* to, igraph_vector_t* from);
igraph_error_t igraph_vector_abs(igraph_vector_t* v);
igraph_bool_t igraph_vector_all_e(igraph_vector_t* lhs, igraph_vector_t* rhs);
igraph_bool_t igraph_vector_all_l(igraph_vector_t* lhs, igraph_vector_t* rhs);
igraph_bool_t igraph_vector_all_g(igraph_vector_t* lhs, igraph_vector_t* rhs);
igraph_bool_t igraph_vector_all_le(igraph_vector_t* lhs, igraph_vector_t* rhs);
igraph_bool_t igraph_vector_all_ge(igraph_vector_t* lhs, igraph_vector_t* rhs);
igraph_real_t igraph_vector_min(igraph_vector_t* v);
igraph_real_t igraph_vector_max(igraph_vector_t* v);
igraph_integer_t igraph_vector_which_min(igraph_vector_t* v);
igraph_integer_t igraph_vector_which_max(igraph_vector_t* v);
void igraph_vector_minmax(igraph_vector_t* v, igraph_real_t* min, igraph_real_t* max);
void igraph_vector_which_minmax(igraph_vector_t* v, igraph_integer_t* which_min, igraph_integer_t* which_max);
igraph_bool_t igraph_vector_empty(igraph_vector_t* v);
igraph_integer_t igraph_vector_size(igraph_vector_t* v);
igraph_bool_t igraph_vector_isnull(igraph_vector_t* v);
igraph_real_t igraph_vector_sum(igraph_vector_t* v);
igraph_real_t igraph_vector_sumsq(igraph_vector_t* v);
igraph_real_t igraph_vector_prod(igraph_vector_t* v);
igraph_bool_t igraph_vector_isininterval(igraph_vector_t* v, igraph_real_t low, igraph_real_t high);
igraph_bool_t igraph_vector_any_smaller(igraph_vector_t* v, igraph_real_t limit);
igraph_bool_t igraph_vector_is_equal(igraph_vector_t* lhs, igraph_vector_t* rhs);
igraph_real_t igraph_vector_maxdifference(igraph_vector_t* m1, igraph_vector_t* m2);
igraph_bool_t igraph_vector_contains(igraph_vector_t* v, igraph_real_t e);
igraph_bool_t igraph_vector_search(igraph_vector_t* v, igraph_integer_t from, igraph_real_t what, igraph_integer_t* pos);
igraph_bool_t igraph_vector_binsearch_slice(igraph_vector_t* v, igraph_real_t what, igraph_integer_t* pos, igraph_integer_t start, igraph_integer_t end);
igraph_bool_t igraph_vector_binsearch(igraph_vector_t* v, igraph_real_t what, igraph_integer_t* pos);
igraph_bool_t igraph_vector_binsearch2(igraph_vector_t* v, igraph_real_t what);
void igraph_vector_clear(igraph_vector_t* v);
igraph_error_t igraph_vector_resize(igraph_vector_t* v, igraph_integer_t new_size);
void igraph_vector_resize_min(igraph_vector_t* v);
igraph_error_t igraph_vector_reserve(igraph_vector_t* v, igraph_integer_t capacity);
igraph_error_t igraph_vector_push_back(igraph_vector_t* v, igraph_real_t e);
igraph_real_t igraph_vector_pop_back(igraph_vector_t* v);
igraph_error_t igraph_vector_insert(igraph_vector_t* v, igraph_integer_t pos, igraph_real_t value);
void igraph_vector_remove(igraph_vector_t* v, igraph_integer_t elem);
void igraph_vector_remove_fast(igraph_vector_t* v, igraph_integer_t elem);
void igraph_vector_remove_section(igraph_vector_t* v, igraph_integer_t from, igraph_integer_t to);
void igraph_vector_sort(igraph_vector_t* v);
void igraph_vector_reverse_sort(igraph_vector_t* v);
igraph_error_t igraph_vector_qsort_ind(igraph_vector_t* v, igraph_vector_int_t* inds, igraph_order_t order);
igraph_error_t igraph_vector_print(igraph_vector_t* v);
igraph_error_t igraph_vector_fprint(igraph_vector_t* v, void* file);
igraph_error_t igraph_vector_printf(igraph_vector_t* v, const(char)* format);
igraph_error_t igraph_vector_init_real_end(igraph_vector_t* v, double endmark, ...);
igraph_error_t igraph_vector_move_interval(igraph_vector_t* v, igraph_integer_t begin, igraph_integer_t end, igraph_integer_t to);
igraph_error_t igraph_vector_move_interval2(igraph_vector_t* v, igraph_integer_t begin, igraph_integer_t end, igraph_integer_t to);
igraph_error_t igraph_vector_filter_smaller(igraph_vector_t* v, igraph_real_t elem);
igraph_error_t igraph_vector_get_interval(igraph_vector_t* v, igraph_vector_t* res, igraph_integer_t from, igraph_integer_t to);
igraph_error_t igraph_vector_difference_sorted(igraph_vector_t* v1, igraph_vector_t* v2, igraph_vector_t* result);
igraph_error_t igraph_vector_intersect_sorted(igraph_vector_t* v1, igraph_vector_t* v2, igraph_vector_t* result);
igraph_error_t igraph_vector_index(igraph_vector_t* v, igraph_vector_t* newv, igraph_vector_int_t* idx);
igraph_error_t igraph_vector_index_int(igraph_vector_t* v, igraph_vector_int_t* idx);
igraph_error_t igraph_vector_char_init(igraph_vector_char_t* v, igraph_integer_t size);
igraph_error_t igraph_vector_char_init_array(igraph_vector_char_t* v, const(char)* data, igraph_integer_t length);
igraph_error_t igraph_vector_char_init_copy(igraph_vector_char_t* to, igraph_vector_char_t* from);
igraph_error_t igraph_vector_char_init_range(igraph_vector_char_t* v, char start, char end);
igraph_error_t igraph_vector_char_init_seq(igraph_vector_char_t* v, char from, char to);
igraph_error_t igraph_vector_char_copy(igraph_vector_char_t* to, igraph_vector_char_t* from);
void igraph_vector_char_destroy(igraph_vector_char_t* v);
igraph_integer_t igraph_vector_char_capacity(igraph_vector_char_t* v);
char igraph_vector_char_e(igraph_vector_char_t* v, igraph_integer_t pos);
char* igraph_vector_char_e_ptr(igraph_vector_char_t* v, igraph_integer_t pos);
char igraph_vector_char_get(igraph_vector_char_t* v, igraph_integer_t pos);
char* igraph_vector_char_get_ptr(igraph_vector_char_t* v, igraph_integer_t pos);
void igraph_vector_char_set(igraph_vector_char_t* v, igraph_integer_t pos, char value);
char igraph_vector_char_tail(igraph_vector_char_t* v);
void igraph_vector_char_null(igraph_vector_char_t* v);
void igraph_vector_char_fill(igraph_vector_char_t* v, char e);
igraph_error_t igraph_vector_char_range(igraph_vector_char_t* v, char start, char end);
igraph_vector_char_t* igraph_vector_char_view(igraph_vector_char_t* v, const(char)* data, igraph_integer_t length);
void igraph_vector_char_copy_to(igraph_vector_char_t* v, char* to);
igraph_error_t igraph_vector_char_update(igraph_vector_char_t* to, igraph_vector_char_t* from);
igraph_error_t igraph_vector_char_append(igraph_vector_char_t* to, igraph_vector_char_t* from);
igraph_error_t igraph_vector_char_swap(igraph_vector_char_t* v1, igraph_vector_char_t* v2);
igraph_error_t igraph_vector_char_swap_elements(igraph_vector_char_t* v, igraph_integer_t i, igraph_integer_t j);
igraph_error_t igraph_vector_char_reverse(igraph_vector_char_t* v);
igraph_error_t igraph_vector_char_permute(igraph_vector_char_t* v, igraph_vector_int_t* ind);
igraph_error_t igraph_vector_char_shuffle(igraph_vector_char_t* v);
void igraph_vector_char_add_constant(igraph_vector_char_t* v, char plus);
void igraph_vector_char_scale(igraph_vector_char_t* v, char by);
igraph_error_t igraph_vector_char_add(igraph_vector_char_t* v1, igraph_vector_char_t* v2);
igraph_error_t igraph_vector_char_sub(igraph_vector_char_t* v1, igraph_vector_char_t* v2);
igraph_error_t igraph_vector_char_mul(igraph_vector_char_t* v1, igraph_vector_char_t* v2);
igraph_error_t igraph_vector_char_div(igraph_vector_char_t* v1, igraph_vector_char_t* v2);
igraph_error_t igraph_vector_char_cumsum(igraph_vector_char_t* to, igraph_vector_char_t* from);
igraph_error_t igraph_vector_char_abs(igraph_vector_char_t* v);
igraph_bool_t igraph_vector_char_all_e(igraph_vector_char_t* lhs, igraph_vector_char_t* rhs);
igraph_bool_t igraph_vector_char_all_l(igraph_vector_char_t* lhs, igraph_vector_char_t* rhs);
igraph_bool_t igraph_vector_char_all_g(igraph_vector_char_t* lhs, igraph_vector_char_t* rhs);
igraph_bool_t igraph_vector_char_all_le(igraph_vector_char_t* lhs, igraph_vector_char_t* rhs);
igraph_bool_t igraph_vector_char_all_ge(igraph_vector_char_t* lhs, igraph_vector_char_t* rhs);
char igraph_vector_char_min(igraph_vector_char_t* v);
char igraph_vector_char_max(igraph_vector_char_t* v);
igraph_integer_t igraph_vector_char_which_min(igraph_vector_char_t* v);
igraph_integer_t igraph_vector_char_which_max(igraph_vector_char_t* v);
void igraph_vector_char_minmax(igraph_vector_char_t* v, char* min, char* max);
void igraph_vector_char_which_minmax(igraph_vector_char_t* v, igraph_integer_t* which_min, igraph_integer_t* which_max);
igraph_bool_t igraph_vector_char_empty(igraph_vector_char_t* v);
igraph_integer_t igraph_vector_char_size(igraph_vector_char_t* v);
igraph_bool_t igraph_vector_char_isnull(igraph_vector_char_t* v);
char igraph_vector_char_sum(igraph_vector_char_t* v);
igraph_real_t igraph_vector_char_sumsq(igraph_vector_char_t* v);
char igraph_vector_char_prod(igraph_vector_char_t* v);
igraph_bool_t igraph_vector_char_isininterval(igraph_vector_char_t* v, char low, char high);
igraph_bool_t igraph_vector_char_any_smaller(igraph_vector_char_t* v, char limit);
igraph_bool_t igraph_vector_char_is_equal(igraph_vector_char_t* lhs, igraph_vector_char_t* rhs);
igraph_real_t igraph_vector_char_maxdifference(igraph_vector_char_t* m1, igraph_vector_char_t* m2);
igraph_bool_t igraph_vector_char_contains(igraph_vector_char_t* v, char e);
igraph_bool_t igraph_vector_char_search(igraph_vector_char_t* v, igraph_integer_t from, char what, igraph_integer_t* pos);
igraph_bool_t igraph_vector_char_binsearch_slice(igraph_vector_char_t* v, char what, igraph_integer_t* pos, igraph_integer_t start, igraph_integer_t end);
igraph_bool_t igraph_vector_char_binsearch(igraph_vector_char_t* v, char what, igraph_integer_t* pos);
igraph_bool_t igraph_vector_char_binsearch2(igraph_vector_char_t* v, char what);
void igraph_vector_char_clear(igraph_vector_char_t* v);
igraph_error_t igraph_vector_char_resize(igraph_vector_char_t* v, igraph_integer_t new_size);
void igraph_vector_char_resize_min(igraph_vector_char_t* v);
igraph_error_t igraph_vector_char_reserve(igraph_vector_char_t* v, igraph_integer_t capacity);
igraph_error_t igraph_vector_char_push_back(igraph_vector_char_t* v, char e);
char igraph_vector_char_pop_back(igraph_vector_char_t* v);
igraph_error_t igraph_vector_char_insert(igraph_vector_char_t* v, igraph_integer_t pos, char value);
void igraph_vector_char_remove(igraph_vector_char_t* v, igraph_integer_t elem);
void igraph_vector_char_remove_fast(igraph_vector_char_t* v, igraph_integer_t elem);
void igraph_vector_char_remove_section(igraph_vector_char_t* v, igraph_integer_t from, igraph_integer_t to);
void igraph_vector_char_sort(igraph_vector_char_t* v);
void igraph_vector_char_reverse_sort(igraph_vector_char_t* v);
igraph_error_t igraph_vector_char_qsort_ind(igraph_vector_char_t* v, igraph_vector_int_t* inds, igraph_order_t order);
igraph_error_t igraph_vector_char_print(igraph_vector_char_t* v);
igraph_error_t igraph_vector_char_fprint(igraph_vector_char_t* v, void* file);
igraph_error_t igraph_vector_char_printf(igraph_vector_char_t* v, const(char)* format);
igraph_error_t igraph_vector_char_init_real_end(igraph_vector_char_t* v, double endmark, ...);
igraph_error_t igraph_vector_char_move_interval(igraph_vector_char_t* v, igraph_integer_t begin, igraph_integer_t end, igraph_integer_t to);
igraph_error_t igraph_vector_char_move_interval2(igraph_vector_char_t* v, igraph_integer_t begin, igraph_integer_t end, igraph_integer_t to);
igraph_error_t igraph_vector_char_filter_smaller(igraph_vector_char_t* v, char elem);
igraph_error_t igraph_vector_char_get_interval(igraph_vector_char_t* v, igraph_vector_char_t* res, igraph_integer_t from, igraph_integer_t to);
igraph_error_t igraph_vector_char_difference_sorted(igraph_vector_char_t* v1, igraph_vector_char_t* v2, igraph_vector_char_t* result);
igraph_error_t igraph_vector_char_intersect_sorted(igraph_vector_char_t* v1, igraph_vector_char_t* v2, igraph_vector_char_t* result);
igraph_error_t igraph_vector_char_index(igraph_vector_char_t* v, igraph_vector_char_t* newv, igraph_vector_int_t* idx);
igraph_error_t igraph_vector_char_index_int(igraph_vector_char_t* v, igraph_vector_int_t* idx);
igraph_error_t igraph_vector_bool_init(igraph_vector_bool_t* v, igraph_integer_t size);
igraph_error_t igraph_vector_bool_init_array(igraph_vector_bool_t* v, const(bool)* data, igraph_integer_t length);
igraph_error_t igraph_vector_bool_init_copy(igraph_vector_bool_t* to, igraph_vector_bool_t* from);
igraph_error_t igraph_vector_bool_copy(igraph_vector_bool_t* to, igraph_vector_bool_t* from);
void igraph_vector_bool_destroy(igraph_vector_bool_t* v);
igraph_integer_t igraph_vector_bool_capacity(igraph_vector_bool_t* v);
igraph_bool_t igraph_vector_bool_e(igraph_vector_bool_t* v, igraph_integer_t pos);
igraph_bool_t* igraph_vector_bool_e_ptr(igraph_vector_bool_t* v, igraph_integer_t pos);
igraph_bool_t igraph_vector_bool_get(igraph_vector_bool_t* v, igraph_integer_t pos);
igraph_bool_t* igraph_vector_bool_get_ptr(igraph_vector_bool_t* v, igraph_integer_t pos);
void igraph_vector_bool_set(igraph_vector_bool_t* v, igraph_integer_t pos, igraph_bool_t value);
igraph_bool_t igraph_vector_bool_tail(igraph_vector_bool_t* v);
void igraph_vector_bool_null(igraph_vector_bool_t* v);
void igraph_vector_bool_fill(igraph_vector_bool_t* v, igraph_bool_t e);
igraph_vector_bool_t* igraph_vector_bool_view(igraph_vector_bool_t* v, const(bool)* data, igraph_integer_t length);
void igraph_vector_bool_copy_to(igraph_vector_bool_t* v, igraph_bool_t* to);
igraph_error_t igraph_vector_bool_update(igraph_vector_bool_t* to, igraph_vector_bool_t* from);
igraph_error_t igraph_vector_bool_append(igraph_vector_bool_t* to, igraph_vector_bool_t* from);
igraph_error_t igraph_vector_bool_swap(igraph_vector_bool_t* v1, igraph_vector_bool_t* v2);
igraph_error_t igraph_vector_bool_swap_elements(igraph_vector_bool_t* v, igraph_integer_t i, igraph_integer_t j);
igraph_error_t igraph_vector_bool_reverse(igraph_vector_bool_t* v);
igraph_error_t igraph_vector_bool_permute(igraph_vector_bool_t* v, igraph_vector_int_t* ind);
igraph_error_t igraph_vector_bool_shuffle(igraph_vector_bool_t* v);
void igraph_vector_bool_add_constant(igraph_vector_bool_t* v, igraph_bool_t plus);
void igraph_vector_bool_scale(igraph_vector_bool_t* v, igraph_bool_t by);
igraph_error_t igraph_vector_bool_add(igraph_vector_bool_t* v1, igraph_vector_bool_t* v2);
igraph_error_t igraph_vector_bool_sub(igraph_vector_bool_t* v1, igraph_vector_bool_t* v2);
igraph_error_t igraph_vector_bool_mul(igraph_vector_bool_t* v1, igraph_vector_bool_t* v2);
igraph_error_t igraph_vector_bool_div(igraph_vector_bool_t* v1, igraph_vector_bool_t* v2);
igraph_error_t igraph_vector_bool_cumsum(igraph_vector_bool_t* to, igraph_vector_bool_t* from);
igraph_bool_t igraph_vector_bool_all_e(igraph_vector_bool_t* lhs, igraph_vector_bool_t* rhs);
igraph_bool_t igraph_vector_bool_empty(igraph_vector_bool_t* v);
igraph_integer_t igraph_vector_bool_size(igraph_vector_bool_t* v);
igraph_bool_t igraph_vector_bool_isnull(igraph_vector_bool_t* v);
igraph_bool_t igraph_vector_bool_sum(igraph_vector_bool_t* v);
igraph_real_t igraph_vector_bool_sumsq(igraph_vector_bool_t* v);
igraph_bool_t igraph_vector_bool_prod(igraph_vector_bool_t* v);
igraph_bool_t igraph_vector_bool_is_equal(igraph_vector_bool_t* lhs, igraph_vector_bool_t* rhs);
igraph_bool_t igraph_vector_bool_contains(igraph_vector_bool_t* v, igraph_bool_t e);
igraph_bool_t igraph_vector_bool_search(igraph_vector_bool_t* v, igraph_integer_t from, igraph_bool_t what, igraph_integer_t* pos);
void igraph_vector_bool_clear(igraph_vector_bool_t* v);
igraph_error_t igraph_vector_bool_resize(igraph_vector_bool_t* v, igraph_integer_t new_size);
void igraph_vector_bool_resize_min(igraph_vector_bool_t* v);
igraph_error_t igraph_vector_bool_reserve(igraph_vector_bool_t* v, igraph_integer_t capacity);
igraph_error_t igraph_vector_bool_push_back(igraph_vector_bool_t* v, igraph_bool_t e);
igraph_bool_t igraph_vector_bool_pop_back(igraph_vector_bool_t* v);
igraph_error_t igraph_vector_bool_insert(igraph_vector_bool_t* v, igraph_integer_t pos, igraph_bool_t value);
void igraph_vector_bool_remove(igraph_vector_bool_t* v, igraph_integer_t elem);
void igraph_vector_bool_remove_fast(igraph_vector_bool_t* v, igraph_integer_t elem);
void igraph_vector_bool_remove_section(igraph_vector_bool_t* v, igraph_integer_t from, igraph_integer_t to);
igraph_error_t igraph_vector_bool_print(igraph_vector_bool_t* v);
igraph_error_t igraph_vector_bool_fprint(igraph_vector_bool_t* v, void* file);
igraph_error_t igraph_vector_bool_printf(igraph_vector_bool_t* v, const(char)* format);
igraph_error_t igraph_vector_bool_init_real_end(igraph_vector_bool_t* v, double endmark, ...);
igraph_error_t igraph_vector_bool_move_interval(igraph_vector_bool_t* v, igraph_integer_t begin, igraph_integer_t end, igraph_integer_t to);
igraph_error_t igraph_vector_bool_move_interval2(igraph_vector_bool_t* v, igraph_integer_t begin, igraph_integer_t end, igraph_integer_t to);
igraph_error_t igraph_vector_bool_get_interval(igraph_vector_bool_t* v, igraph_vector_bool_t* res, igraph_integer_t from, igraph_integer_t to);
igraph_error_t igraph_vector_bool_index(igraph_vector_bool_t* v, igraph_vector_bool_t* newv, igraph_vector_int_t* idx);
igraph_error_t igraph_vector_bool_index_int(igraph_vector_bool_t* v, igraph_vector_int_t* idx);
igraph_error_t igraph_vector_int_init(igraph_vector_int_t* v, igraph_integer_t size);
igraph_error_t igraph_vector_int_init_array(igraph_vector_int_t* v, const(long)* data, igraph_integer_t length);
igraph_error_t igraph_vector_int_init_copy(igraph_vector_int_t* to, igraph_vector_int_t* from);
igraph_error_t igraph_vector_int_init_range(igraph_vector_int_t* v, igraph_integer_t start, igraph_integer_t end);
igraph_error_t igraph_vector_int_init_seq(igraph_vector_int_t* v, igraph_integer_t from, igraph_integer_t to);
igraph_error_t igraph_vector_int_copy(igraph_vector_int_t* to, igraph_vector_int_t* from);
void igraph_vector_int_destroy(igraph_vector_int_t* v);
igraph_integer_t igraph_vector_int_capacity(igraph_vector_int_t* v);
igraph_integer_t igraph_vector_int_e(igraph_vector_int_t* v, igraph_integer_t pos);
igraph_integer_t* igraph_vector_int_e_ptr(igraph_vector_int_t* v, igraph_integer_t pos);
igraph_integer_t igraph_vector_int_get(igraph_vector_int_t* v, igraph_integer_t pos);
igraph_integer_t* igraph_vector_int_get_ptr(igraph_vector_int_t* v, igraph_integer_t pos);
void igraph_vector_int_set(igraph_vector_int_t* v, igraph_integer_t pos, igraph_integer_t value);
igraph_integer_t igraph_vector_int_tail(igraph_vector_int_t* v);
void igraph_vector_int_null(igraph_vector_int_t* v);
void igraph_vector_int_fill(igraph_vector_int_t* v, igraph_integer_t e);
igraph_error_t igraph_vector_int_range(igraph_vector_int_t* v, igraph_integer_t start, igraph_integer_t end);
igraph_vector_int_t* igraph_vector_int_view(igraph_vector_int_t* v, const(long)* data, igraph_integer_t length);
void igraph_vector_int_copy_to(igraph_vector_int_t* v, igraph_integer_t* to);
igraph_error_t igraph_vector_int_update(igraph_vector_int_t* to, igraph_vector_int_t* from);
igraph_error_t igraph_vector_int_append(igraph_vector_int_t* to, igraph_vector_int_t* from);
igraph_error_t igraph_vector_int_swap(igraph_vector_int_t* v1, igraph_vector_int_t* v2);
igraph_error_t igraph_vector_int_swap_elements(igraph_vector_int_t* v, igraph_integer_t i, igraph_integer_t j);
igraph_error_t igraph_vector_int_reverse(igraph_vector_int_t* v);
igraph_error_t igraph_vector_int_permute(igraph_vector_int_t* v, igraph_vector_int_t* ind);
igraph_error_t igraph_vector_int_shuffle(igraph_vector_int_t* v);
void igraph_vector_int_add_constant(igraph_vector_int_t* v, igraph_integer_t plus);
void igraph_vector_int_scale(igraph_vector_int_t* v, igraph_integer_t by);
igraph_error_t igraph_vector_int_add(igraph_vector_int_t* v1, igraph_vector_int_t* v2);
igraph_error_t igraph_vector_int_sub(igraph_vector_int_t* v1, igraph_vector_int_t* v2);
igraph_error_t igraph_vector_int_mul(igraph_vector_int_t* v1, igraph_vector_int_t* v2);
igraph_error_t igraph_vector_int_div(igraph_vector_int_t* v1, igraph_vector_int_t* v2);
igraph_error_t igraph_vector_int_cumsum(igraph_vector_int_t* to, igraph_vector_int_t* from);
igraph_error_t igraph_vector_int_abs(igraph_vector_int_t* v);
igraph_bool_t igraph_vector_int_all_e(igraph_vector_int_t* lhs, igraph_vector_int_t* rhs);
igraph_bool_t igraph_vector_int_all_l(igraph_vector_int_t* lhs, igraph_vector_int_t* rhs);
igraph_bool_t igraph_vector_int_all_g(igraph_vector_int_t* lhs, igraph_vector_int_t* rhs);
igraph_bool_t igraph_vector_int_all_le(igraph_vector_int_t* lhs, igraph_vector_int_t* rhs);
igraph_bool_t igraph_vector_int_all_ge(igraph_vector_int_t* lhs, igraph_vector_int_t* rhs);
igraph_integer_t igraph_vector_int_min(igraph_vector_int_t* v);
igraph_integer_t igraph_vector_int_max(igraph_vector_int_t* v);
igraph_integer_t igraph_vector_int_which_min(igraph_vector_int_t* v);
igraph_integer_t igraph_vector_int_which_max(igraph_vector_int_t* v);
void igraph_vector_int_minmax(igraph_vector_int_t* v, igraph_integer_t* min, igraph_integer_t* max);
void igraph_vector_int_which_minmax(igraph_vector_int_t* v, igraph_integer_t* which_min, igraph_integer_t* which_max);
igraph_bool_t igraph_vector_int_empty(igraph_vector_int_t* v);
igraph_integer_t igraph_vector_int_size(igraph_vector_int_t* v);
igraph_bool_t igraph_vector_int_isnull(igraph_vector_int_t* v);
igraph_integer_t igraph_vector_int_sum(igraph_vector_int_t* v);
igraph_real_t igraph_vector_int_sumsq(igraph_vector_int_t* v);
igraph_integer_t igraph_vector_int_prod(igraph_vector_int_t* v);
igraph_bool_t igraph_vector_int_isininterval(igraph_vector_int_t* v, igraph_integer_t low, igraph_integer_t high);
igraph_bool_t igraph_vector_int_any_smaller(igraph_vector_int_t* v, igraph_integer_t limit);
igraph_bool_t igraph_vector_int_is_equal(igraph_vector_int_t* lhs, igraph_vector_int_t* rhs);
igraph_real_t igraph_vector_int_maxdifference(igraph_vector_int_t* m1, igraph_vector_int_t* m2);
igraph_bool_t igraph_vector_int_contains(igraph_vector_int_t* v, igraph_integer_t e);
igraph_bool_t igraph_vector_int_search(igraph_vector_int_t* v, igraph_integer_t from, igraph_integer_t what, igraph_integer_t* pos);
igraph_bool_t igraph_vector_int_binsearch_slice(igraph_vector_int_t* v, igraph_integer_t what, igraph_integer_t* pos, igraph_integer_t start, igraph_integer_t end);
igraph_bool_t igraph_vector_int_binsearch(igraph_vector_int_t* v, igraph_integer_t what, igraph_integer_t* pos);
igraph_bool_t igraph_vector_int_binsearch2(igraph_vector_int_t* v, igraph_integer_t what);
void igraph_vector_int_clear(igraph_vector_int_t* v);
igraph_error_t igraph_vector_int_resize(igraph_vector_int_t* v, igraph_integer_t new_size);
void igraph_vector_int_resize_min(igraph_vector_int_t* v);
igraph_error_t igraph_vector_int_reserve(igraph_vector_int_t* v, igraph_integer_t capacity);
igraph_error_t igraph_vector_int_push_back(igraph_vector_int_t* v, igraph_integer_t e);
igraph_integer_t igraph_vector_int_pop_back(igraph_vector_int_t* v);
igraph_error_t igraph_vector_int_insert(igraph_vector_int_t* v, igraph_integer_t pos, igraph_integer_t value);
void igraph_vector_int_remove(igraph_vector_int_t* v, igraph_integer_t elem);
void igraph_vector_int_remove_fast(igraph_vector_int_t* v, igraph_integer_t elem);
void igraph_vector_int_remove_section(igraph_vector_int_t* v, igraph_integer_t from, igraph_integer_t to);
void igraph_vector_int_sort(igraph_vector_int_t* v);
void igraph_vector_int_reverse_sort(igraph_vector_int_t* v);
igraph_error_t igraph_vector_int_qsort_ind(igraph_vector_int_t* v, igraph_vector_int_t* inds, igraph_order_t order);
igraph_error_t igraph_vector_int_print(igraph_vector_int_t* v);
igraph_error_t igraph_vector_int_fprint(igraph_vector_int_t* v, void* file);
igraph_error_t igraph_vector_int_printf(igraph_vector_int_t* v, const(char)* format);
igraph_error_t igraph_vector_int_init_real_end(igraph_vector_int_t* v, double endmark, ...);
igraph_error_t igraph_vector_int_move_interval(igraph_vector_int_t* v, igraph_integer_t begin, igraph_integer_t end, igraph_integer_t to);
igraph_error_t igraph_vector_int_move_interval2(igraph_vector_int_t* v, igraph_integer_t begin, igraph_integer_t end, igraph_integer_t to);
igraph_error_t igraph_vector_int_filter_smaller(igraph_vector_int_t* v, igraph_integer_t elem);
igraph_error_t igraph_vector_int_get_interval(igraph_vector_int_t* v, igraph_vector_int_t* res, igraph_integer_t from, igraph_integer_t to);
igraph_error_t igraph_vector_int_difference_sorted(igraph_vector_int_t* v1, igraph_vector_int_t* v2, igraph_vector_int_t* result);
igraph_error_t igraph_vector_int_intersect_sorted(igraph_vector_int_t* v1, igraph_vector_int_t* v2, igraph_vector_int_t* result);
igraph_error_t igraph_vector_int_index(igraph_vector_int_t* v, igraph_vector_int_t* newv, igraph_vector_int_t* idx);
igraph_error_t igraph_vector_int_index_int(igraph_vector_int_t* v, igraph_vector_int_t* idx);
igraph_error_t igraph_vector_complex_init(igraph_vector_complex_t* v, igraph_integer_t size);
igraph_error_t igraph_vector_complex_init_array(igraph_vector_complex_t* v, igraph_complex_t* data, igraph_integer_t length);
igraph_error_t igraph_vector_complex_init_copy(igraph_vector_complex_t* to, igraph_vector_complex_t* from);
igraph_error_t igraph_vector_complex_copy(igraph_vector_complex_t* to, igraph_vector_complex_t* from);
void igraph_vector_complex_destroy(igraph_vector_complex_t* v);
igraph_integer_t igraph_vector_complex_capacity(igraph_vector_complex_t* v);
igraph_complex_t igraph_vector_complex_e(igraph_vector_complex_t* v, igraph_integer_t pos);
igraph_complex_t* igraph_vector_complex_e_ptr(igraph_vector_complex_t* v, igraph_integer_t pos);
igraph_complex_t igraph_vector_complex_get(igraph_vector_complex_t* v, igraph_integer_t pos);
igraph_complex_t* igraph_vector_complex_get_ptr(igraph_vector_complex_t* v, igraph_integer_t pos);
void igraph_vector_complex_set(igraph_vector_complex_t* v, igraph_integer_t pos, igraph_complex_t value);
igraph_complex_t igraph_vector_complex_tail(igraph_vector_complex_t* v);
void igraph_vector_complex_null(igraph_vector_complex_t* v);
void igraph_vector_complex_fill(igraph_vector_complex_t* v, igraph_complex_t e);
igraph_vector_complex_t* igraph_vector_complex_view(igraph_vector_complex_t* v, igraph_complex_t* data, igraph_integer_t length);
void igraph_vector_complex_copy_to(igraph_vector_complex_t* v, igraph_complex_t* to);
igraph_error_t igraph_vector_complex_update(igraph_vector_complex_t* to, igraph_vector_complex_t* from);
igraph_error_t igraph_vector_complex_append(igraph_vector_complex_t* to, igraph_vector_complex_t* from);
igraph_error_t igraph_vector_complex_swap(igraph_vector_complex_t* v1, igraph_vector_complex_t* v2);
igraph_error_t igraph_vector_complex_swap_elements(igraph_vector_complex_t* v, igraph_integer_t i, igraph_integer_t j);
igraph_error_t igraph_vector_complex_reverse(igraph_vector_complex_t* v);
igraph_error_t igraph_vector_complex_permute(igraph_vector_complex_t* v, igraph_vector_int_t* ind);
igraph_error_t igraph_vector_complex_shuffle(igraph_vector_complex_t* v);
void igraph_vector_complex_add_constant(igraph_vector_complex_t* v, igraph_complex_t plus);
void igraph_vector_complex_scale(igraph_vector_complex_t* v, igraph_complex_t by);
igraph_error_t igraph_vector_complex_add(igraph_vector_complex_t* v1, igraph_vector_complex_t* v2);
igraph_error_t igraph_vector_complex_sub(igraph_vector_complex_t* v1, igraph_vector_complex_t* v2);
igraph_error_t igraph_vector_complex_mul(igraph_vector_complex_t* v1, igraph_vector_complex_t* v2);
igraph_error_t igraph_vector_complex_div(igraph_vector_complex_t* v1, igraph_vector_complex_t* v2);
igraph_error_t igraph_vector_complex_cumsum(igraph_vector_complex_t* to, igraph_vector_complex_t* from);
igraph_bool_t igraph_vector_complex_all_e(igraph_vector_complex_t* lhs, igraph_vector_complex_t* rhs);
igraph_bool_t igraph_vector_complex_empty(igraph_vector_complex_t* v);
igraph_integer_t igraph_vector_complex_size(igraph_vector_complex_t* v);
igraph_bool_t igraph_vector_complex_isnull(igraph_vector_complex_t* v);
igraph_complex_t igraph_vector_complex_sum(igraph_vector_complex_t* v);
igraph_real_t igraph_vector_complex_sumsq(igraph_vector_complex_t* v);
igraph_complex_t igraph_vector_complex_prod(igraph_vector_complex_t* v);
igraph_bool_t igraph_vector_complex_is_equal(igraph_vector_complex_t* lhs, igraph_vector_complex_t* rhs);
igraph_bool_t igraph_vector_complex_contains(igraph_vector_complex_t* v, igraph_complex_t e);
igraph_bool_t igraph_vector_complex_search(igraph_vector_complex_t* v, igraph_integer_t from, igraph_complex_t what, igraph_integer_t* pos);
void igraph_vector_complex_clear(igraph_vector_complex_t* v);
igraph_error_t igraph_vector_complex_resize(igraph_vector_complex_t* v, igraph_integer_t new_size);
void igraph_vector_complex_resize_min(igraph_vector_complex_t* v);
igraph_error_t igraph_vector_complex_reserve(igraph_vector_complex_t* v, igraph_integer_t capacity);
igraph_error_t igraph_vector_complex_push_back(igraph_vector_complex_t* v, igraph_complex_t e);
igraph_complex_t igraph_vector_complex_pop_back(igraph_vector_complex_t* v);
igraph_error_t igraph_vector_complex_insert(igraph_vector_complex_t* v, igraph_integer_t pos, igraph_complex_t value);
void igraph_vector_complex_remove(igraph_vector_complex_t* v, igraph_integer_t elem);
void igraph_vector_complex_remove_fast(igraph_vector_complex_t* v, igraph_integer_t elem);
void igraph_vector_complex_remove_section(igraph_vector_complex_t* v, igraph_integer_t from, igraph_integer_t to);
igraph_error_t igraph_vector_complex_print(igraph_vector_complex_t* v);
igraph_error_t igraph_vector_complex_fprint(igraph_vector_complex_t* v, void* file);
igraph_error_t igraph_vector_complex_real(igraph_vector_complex_t* v, igraph_vector_t* real_);
igraph_error_t igraph_vector_complex_imag(igraph_vector_complex_t* v, igraph_vector_t* imag);
igraph_error_t igraph_vector_complex_realimag(igraph_vector_complex_t* v, igraph_vector_t* real_, igraph_vector_t* imag);
igraph_error_t igraph_vector_complex_create(igraph_vector_complex_t* v, igraph_vector_t* real_, igraph_vector_t* imag);
igraph_error_t igraph_vector_complex_create_polar(igraph_vector_complex_t* v, igraph_vector_t* r, igraph_vector_t* theta);
igraph_bool_t igraph_vector_complex_all_almost_e(igraph_vector_complex_t* lhs, igraph_vector_complex_t* rhs, igraph_real_t eps);
igraph_error_t igraph_vector_complex_init_real_end(igraph_vector_complex_t* v, double endmark, ...);
igraph_error_t igraph_vector_complex_move_interval(igraph_vector_complex_t* v, igraph_integer_t begin, igraph_integer_t end, igraph_integer_t to);
igraph_error_t igraph_vector_complex_move_interval2(igraph_vector_complex_t* v, igraph_integer_t begin, igraph_integer_t end, igraph_integer_t to);
igraph_error_t igraph_vector_complex_get_interval(igraph_vector_complex_t* v, igraph_vector_complex_t* res, igraph_integer_t from, igraph_integer_t to);
igraph_error_t igraph_vector_complex_index(igraph_vector_complex_t* v, igraph_vector_complex_t* newv, igraph_vector_int_t* idx);
igraph_error_t igraph_vector_complex_index_int(igraph_vector_complex_t* v, igraph_vector_int_t* idx);
igraph_error_t igraph_vector_floor(igraph_vector_t* from, igraph_vector_int_t* to);
igraph_error_t igraph_vector_round(igraph_vector_t* from, igraph_vector_int_t* to);
igraph_bool_t igraph_vector_e_tol(igraph_vector_t* lhs, igraph_vector_t* rhs, igraph_real_t tol);
igraph_bool_t igraph_vector_all_almost_e(igraph_vector_t* lhs, igraph_vector_t* rhs, igraph_real_t eps);
igraph_error_t igraph_vector_zapsmall(igraph_vector_t* v, igraph_real_t tol);
igraph_error_t igraph_vector_complex_zapsmall(igraph_vector_complex_t* v, igraph_real_t tol);
igraph_error_t igraph_vector_is_nan(igraph_vector_t* v, igraph_vector_bool_t* is_nan);
igraph_bool_t igraph_vector_is_any_nan(igraph_vector_t* v);
igraph_error_t igraph_vector_order2(igraph_vector_t* v);
igraph_error_t igraph_vector_rank(igraph_vector_t* v, igraph_vector_int_t* res, igraph_integer_t nodes);
igraph_error_t igraph_vector_int_pair_order(igraph_vector_int_t* v, igraph_vector_int_t* v2, igraph_vector_int_t* res, igraph_integer_t maxval);
igraph_error_t igraph_vector_int_order1(igraph_vector_int_t* v, igraph_vector_int_t* res, igraph_integer_t maxval);
igraph_error_t igraph_vector_int_rank(igraph_vector_int_t* v, igraph_vector_int_t* res, igraph_integer_t nodes);

struct igraph_rng_type_t {
    const(char)* name;
    ubyte bits;
    igraph_error_t function(void** state) init;
    void function(void* state) destroy;
    igraph_error_t function(void* state, igraph_uint_t seed) seed;
    igraph_uint_t function(void* state) get;
    igraph_integer_t function(void* state, igraph_integer_t l, igraph_integer_t h) get_int;
    igraph_real_t function(void* state) get_real;
    igraph_real_t function(void* state) get_norm;
    igraph_real_t function(void* state, igraph_real_t p) get_geom;
    igraph_real_t function(void* state, igraph_integer_t n, igraph_real_t p) get_binom;
    igraph_real_t function(void* state, igraph_real_t rate) get_exp;
    igraph_real_t function(void* state, igraph_real_t shape, igraph_real_t scale) get_gamma;
    igraph_real_t function(void* state, igraph_real_t mu) get_pois;
}

struct igraph_rng_t {
    igraph_rng_type_t* type;
    void* state;
    igraph_bool_t is_seeded;
}

igraph_error_t igraph_rng_init(igraph_rng_t* rng, igraph_rng_type_t* type);
void igraph_rng_destroy(igraph_rng_t* rng);
igraph_error_t igraph_rng_seed(igraph_rng_t* rng, igraph_uint_t seed);
igraph_integer_t igraph_rng_bits(igraph_rng_t* rng);
igraph_uint_t igraph_rng_max(igraph_rng_t* rng);
const(char)* igraph_rng_name(igraph_rng_t* rng);
igraph_integer_t igraph_rng_get_integer(igraph_rng_t* rng, igraph_integer_t l, igraph_integer_t h);
igraph_real_t igraph_rng_get_normal(igraph_rng_t* rng, igraph_real_t m, igraph_real_t s);
igraph_real_t igraph_rng_get_unif(igraph_rng_t* rng, igraph_real_t l, igraph_real_t h);
igraph_real_t igraph_rng_get_unif01(igraph_rng_t* rng);
igraph_real_t igraph_rng_get_geom(igraph_rng_t* rng, igraph_real_t p);
igraph_real_t igraph_rng_get_binom(igraph_rng_t* rng, igraph_integer_t n, igraph_real_t p);
igraph_real_t igraph_rng_get_exp(igraph_rng_t* rng, igraph_real_t rate);
igraph_real_t igraph_rng_get_gamma(igraph_rng_t* rng, igraph_real_t shape, igraph_real_t scale);
igraph_real_t igraph_rng_get_pois(igraph_rng_t* rng, igraph_real_t rate);
igraph_error_t igraph_rng_get_dirichlet(igraph_rng_t* rng, igraph_vector_t* alpha, igraph_vector_t* result);
igraph_rng_t* igraph_rng_default();
void igraph_rng_set_default(igraph_rng_t* rng);
alias igraph_progress_handler_t = igraph_error_t function(const(char)* message, igraph_real_t percent, void* data);
igraph_error_t igraph_progress_handler_stderr(const(char)* message, igraph_real_t percent, void* data);
igraph_error_t igraph_progress(const(char)* message, igraph_real_t percent, void* data);
igraph_error_t igraph_progressf(const(char)* message, igraph_real_t percent, void* data, ...);
alias igraph_status_handler_t = igraph_error_t function(const(char)* message, void* data);
igraph_error_t igraph_status_handler_stderr(const(char)* message, void* data);
igraph_error_t igraph_status(const(char)* message, void* data);
igraph_error_t igraph_statusf(const(char)* message, void* data, ...);

struct igraph_matrix_t {
    igraph_vector_t data;
    igraph_integer_t nrow;
    igraph_integer_t ncol;
}

igraph_error_t igraph_matrix_init(igraph_matrix_t* m, igraph_integer_t nrow, igraph_integer_t ncol);
igraph_error_t igraph_matrix_init_array(igraph_matrix_t* m, const(double)* data, igraph_integer_t nrow, igraph_integer_t ncol, igraph_matrix_storage_t storage);
igraph_error_t igraph_matrix_init_copy(igraph_matrix_t* to, igraph_matrix_t* from);
void igraph_matrix_destroy(igraph_matrix_t* m);
igraph_integer_t igraph_matrix_capacity(igraph_matrix_t* m);
igraph_error_t igraph_matrix_copy(igraph_matrix_t* to, igraph_matrix_t* from);
igraph_real_t igraph_matrix_e(igraph_matrix_t* m, igraph_integer_t row, igraph_integer_t col);
igraph_real_t* igraph_matrix_e_ptr(igraph_matrix_t* m, igraph_integer_t row, igraph_integer_t col);
igraph_real_t igraph_matrix_get(igraph_matrix_t* m, igraph_integer_t row, igraph_integer_t col);
igraph_real_t* igraph_matrix_get_ptr(igraph_matrix_t* m, igraph_integer_t row, igraph_integer_t col);
void igraph_matrix_set(igraph_matrix_t* m, igraph_integer_t row, igraph_integer_t col, igraph_real_t value);
void igraph_matrix_null(igraph_matrix_t* m);
void igraph_matrix_fill(igraph_matrix_t* m, igraph_real_t e);
igraph_matrix_t* igraph_matrix_view(igraph_matrix_t* m, const(double)* data, igraph_integer_t nrow, igraph_integer_t ncol);
igraph_matrix_t* igraph_matrix_view_from_vector(igraph_matrix_t* m, igraph_vector_t* v, igraph_integer_t ncol);
void igraph_matrix_copy_to(igraph_matrix_t* m, igraph_real_t* to);
igraph_error_t igraph_matrix_update(igraph_matrix_t* to, igraph_matrix_t* from);
igraph_error_t igraph_matrix_rbind(igraph_matrix_t* to, igraph_matrix_t* from);
igraph_error_t igraph_matrix_cbind(igraph_matrix_t* to, igraph_matrix_t* from);
igraph_error_t igraph_matrix_swap(igraph_matrix_t* m1, igraph_matrix_t* m2);
igraph_error_t igraph_matrix_get_row(igraph_matrix_t* m, igraph_vector_t* res, igraph_integer_t index);
igraph_error_t igraph_matrix_get_col(igraph_matrix_t* m, igraph_vector_t* res, igraph_integer_t index);
igraph_error_t igraph_matrix_set_row(igraph_matrix_t* m, igraph_vector_t* v, igraph_integer_t index);
igraph_error_t igraph_matrix_set_col(igraph_matrix_t* m, igraph_vector_t* v, igraph_integer_t index);
igraph_error_t igraph_matrix_select_rows(igraph_matrix_t* m, igraph_matrix_t* res, igraph_vector_int_t* rows);
igraph_error_t igraph_matrix_select_cols(igraph_matrix_t* m, igraph_matrix_t* res, igraph_vector_int_t* cols);
igraph_error_t igraph_matrix_select_rows_cols(igraph_matrix_t* m, igraph_matrix_t* res, igraph_vector_int_t* rows, igraph_vector_int_t* cols);
igraph_error_t igraph_matrix_swap_rows(igraph_matrix_t* m, igraph_integer_t i, igraph_integer_t j);
igraph_error_t igraph_matrix_swap_cols(igraph_matrix_t* m, igraph_integer_t i, igraph_integer_t j);
igraph_error_t igraph_matrix_swap_rowcol(igraph_matrix_t* m, igraph_integer_t i, igraph_integer_t j);
igraph_error_t igraph_matrix_transpose(igraph_matrix_t* m);
igraph_error_t igraph_matrix_add(igraph_matrix_t* m1, igraph_matrix_t* m2);
igraph_error_t igraph_matrix_sub(igraph_matrix_t* m1, igraph_matrix_t* m2);
igraph_error_t igraph_matrix_mul_elements(igraph_matrix_t* m1, igraph_matrix_t* m2);
igraph_error_t igraph_matrix_div_elements(igraph_matrix_t* m1, igraph_matrix_t* m2);
void igraph_matrix_scale(igraph_matrix_t* m, igraph_real_t by);
void igraph_matrix_add_constant(igraph_matrix_t* m, igraph_real_t plus);
igraph_real_t igraph_matrix_min(igraph_matrix_t* m);
igraph_real_t igraph_matrix_max(igraph_matrix_t* m);
void igraph_matrix_which_min(igraph_matrix_t* m, igraph_integer_t* i, igraph_integer_t* j);
void igraph_matrix_which_max(igraph_matrix_t* m, igraph_integer_t* i, igraph_integer_t* j);
void igraph_matrix_minmax(igraph_matrix_t* m, igraph_real_t* min, igraph_real_t* max);
void igraph_matrix_which_minmax(igraph_matrix_t* m, igraph_integer_t* imin, igraph_integer_t* jmin, igraph_integer_t* imax, igraph_integer_t* jmax);
igraph_bool_t igraph_matrix_all_e(igraph_matrix_t* lhs, igraph_matrix_t* rhs);
igraph_bool_t igraph_matrix_all_l(igraph_matrix_t* lhs, igraph_matrix_t* rhs);
igraph_bool_t igraph_matrix_all_g(igraph_matrix_t* lhs, igraph_matrix_t* rhs);
igraph_bool_t igraph_matrix_all_le(igraph_matrix_t* lhs, igraph_matrix_t* rhs);
igraph_bool_t igraph_matrix_all_ge(igraph_matrix_t* lhs, igraph_matrix_t* rhs);
igraph_bool_t igraph_matrix_isnull(igraph_matrix_t* m);
igraph_bool_t igraph_matrix_empty(igraph_matrix_t* m);
igraph_integer_t igraph_matrix_size(igraph_matrix_t* m);
igraph_integer_t igraph_matrix_nrow(igraph_matrix_t* m);
igraph_integer_t igraph_matrix_ncol(igraph_matrix_t* m);
igraph_bool_t igraph_matrix_is_symmetric(igraph_matrix_t* m);
igraph_real_t igraph_matrix_sum(igraph_matrix_t* m);
igraph_real_t igraph_matrix_prod(igraph_matrix_t* m);
igraph_error_t igraph_matrix_rowsum(igraph_matrix_t* m, igraph_vector_t* res);
igraph_error_t igraph_matrix_colsum(igraph_matrix_t* m, igraph_vector_t* res);
igraph_bool_t igraph_matrix_is_equal(igraph_matrix_t* m1, igraph_matrix_t* m2);
igraph_real_t igraph_matrix_maxdifference(igraph_matrix_t* m1, igraph_matrix_t* m2);
igraph_bool_t igraph_matrix_contains(igraph_matrix_t* m, igraph_real_t e);
igraph_bool_t igraph_matrix_search(igraph_matrix_t* m, igraph_integer_t from, igraph_real_t what, igraph_integer_t* pos, igraph_integer_t* row, igraph_integer_t* col);
igraph_error_t igraph_matrix_resize(igraph_matrix_t* m, igraph_integer_t nrow, igraph_integer_t ncol);
void igraph_matrix_resize_min(igraph_matrix_t* m);
igraph_error_t igraph_matrix_add_cols(igraph_matrix_t* m, igraph_integer_t n);
igraph_error_t igraph_matrix_add_rows(igraph_matrix_t* m, igraph_integer_t n);
igraph_error_t igraph_matrix_remove_col(igraph_matrix_t* m, igraph_integer_t col);
igraph_error_t igraph_matrix_remove_row(igraph_matrix_t* m, igraph_integer_t row);
igraph_error_t igraph_matrix_print(igraph_matrix_t* m);
igraph_error_t igraph_matrix_fprint(igraph_matrix_t* m, void* file);
igraph_error_t igraph_matrix_printf(igraph_matrix_t* m, const(char)* format);
igraph_error_t igraph_matrix_permdelete_rows(igraph_matrix_t* m, igraph_integer_t* index, igraph_integer_t nremove);

struct igraph_matrix_int_t {
    igraph_vector_int_t data;
    igraph_integer_t nrow;
    igraph_integer_t ncol;
}

igraph_error_t igraph_matrix_int_init(igraph_matrix_int_t* m, igraph_integer_t nrow, igraph_integer_t ncol);
igraph_error_t igraph_matrix_int_init_array(igraph_matrix_int_t* m, const(long)* data, igraph_integer_t nrow, igraph_integer_t ncol, igraph_matrix_storage_t storage);
igraph_error_t igraph_matrix_int_init_copy(igraph_matrix_int_t* to, igraph_matrix_int_t* from);
void igraph_matrix_int_destroy(igraph_matrix_int_t* m);
igraph_integer_t igraph_matrix_int_capacity(igraph_matrix_int_t* m);
igraph_error_t igraph_matrix_int_copy(igraph_matrix_int_t* to, igraph_matrix_int_t* from);
igraph_integer_t igraph_matrix_int_e(igraph_matrix_int_t* m, igraph_integer_t row, igraph_integer_t col);
igraph_integer_t* igraph_matrix_int_e_ptr(igraph_matrix_int_t* m, igraph_integer_t row, igraph_integer_t col);
igraph_integer_t igraph_matrix_int_get(igraph_matrix_int_t* m, igraph_integer_t row, igraph_integer_t col);
igraph_integer_t* igraph_matrix_int_get_ptr(igraph_matrix_int_t* m, igraph_integer_t row, igraph_integer_t col);
void igraph_matrix_int_set(igraph_matrix_int_t* m, igraph_integer_t row, igraph_integer_t col, igraph_integer_t value);
void igraph_matrix_int_null(igraph_matrix_int_t* m);
void igraph_matrix_int_fill(igraph_matrix_int_t* m, igraph_integer_t e);
igraph_matrix_int_t* igraph_matrix_int_view(igraph_matrix_int_t* m, const(long)* data, igraph_integer_t nrow, igraph_integer_t ncol);
igraph_matrix_int_t* igraph_matrix_int_view_from_vector(igraph_matrix_int_t* m, igraph_vector_int_t* v, igraph_integer_t ncol);
void igraph_matrix_int_copy_to(igraph_matrix_int_t* m, igraph_integer_t* to);
igraph_error_t igraph_matrix_int_update(igraph_matrix_int_t* to, igraph_matrix_int_t* from);
igraph_error_t igraph_matrix_int_rbind(igraph_matrix_int_t* to, igraph_matrix_int_t* from);
igraph_error_t igraph_matrix_int_cbind(igraph_matrix_int_t* to, igraph_matrix_int_t* from);
igraph_error_t igraph_matrix_int_swap(igraph_matrix_int_t* m1, igraph_matrix_int_t* m2);
igraph_error_t igraph_matrix_int_get_row(igraph_matrix_int_t* m, igraph_vector_int_t* res, igraph_integer_t index);
igraph_error_t igraph_matrix_int_get_col(igraph_matrix_int_t* m, igraph_vector_int_t* res, igraph_integer_t index);
igraph_error_t igraph_matrix_int_set_row(igraph_matrix_int_t* m, igraph_vector_int_t* v, igraph_integer_t index);
igraph_error_t igraph_matrix_int_set_col(igraph_matrix_int_t* m, igraph_vector_int_t* v, igraph_integer_t index);
igraph_error_t igraph_matrix_int_select_rows(igraph_matrix_int_t* m, igraph_matrix_int_t* res, igraph_vector_int_t* rows);
igraph_error_t igraph_matrix_int_select_cols(igraph_matrix_int_t* m, igraph_matrix_int_t* res, igraph_vector_int_t* cols);
igraph_error_t igraph_matrix_int_select_rows_cols(igraph_matrix_int_t* m, igraph_matrix_int_t* res, igraph_vector_int_t* rows, igraph_vector_int_t* cols);
igraph_error_t igraph_matrix_int_swap_rows(igraph_matrix_int_t* m, igraph_integer_t i, igraph_integer_t j);
igraph_error_t igraph_matrix_int_swap_cols(igraph_matrix_int_t* m, igraph_integer_t i, igraph_integer_t j);
igraph_error_t igraph_matrix_int_swap_rowcol(igraph_matrix_int_t* m, igraph_integer_t i, igraph_integer_t j);
igraph_error_t igraph_matrix_int_transpose(igraph_matrix_int_t* m);
igraph_error_t igraph_matrix_int_add(igraph_matrix_int_t* m1, igraph_matrix_int_t* m2);
igraph_error_t igraph_matrix_int_sub(igraph_matrix_int_t* m1, igraph_matrix_int_t* m2);
igraph_error_t igraph_matrix_int_mul_elements(igraph_matrix_int_t* m1, igraph_matrix_int_t* m2);
igraph_error_t igraph_matrix_int_div_elements(igraph_matrix_int_t* m1, igraph_matrix_int_t* m2);
void igraph_matrix_int_scale(igraph_matrix_int_t* m, igraph_integer_t by);
void igraph_matrix_int_add_constant(igraph_matrix_int_t* m, igraph_integer_t plus);
igraph_real_t igraph_matrix_int_min(igraph_matrix_int_t* m);
igraph_real_t igraph_matrix_int_max(igraph_matrix_int_t* m);
void igraph_matrix_int_which_min(igraph_matrix_int_t* m, igraph_integer_t* i, igraph_integer_t* j);
void igraph_matrix_int_which_max(igraph_matrix_int_t* m, igraph_integer_t* i, igraph_integer_t* j);
void igraph_matrix_int_minmax(igraph_matrix_int_t* m, igraph_integer_t* min, igraph_integer_t* max);
void igraph_matrix_int_which_minmax(igraph_matrix_int_t* m, igraph_integer_t* imin, igraph_integer_t* jmin, igraph_integer_t* imax, igraph_integer_t* jmax);
igraph_bool_t igraph_matrix_int_all_e(igraph_matrix_int_t* lhs, igraph_matrix_int_t* rhs);
igraph_bool_t igraph_matrix_int_all_l(igraph_matrix_int_t* lhs, igraph_matrix_int_t* rhs);
igraph_bool_t igraph_matrix_int_all_g(igraph_matrix_int_t* lhs, igraph_matrix_int_t* rhs);
igraph_bool_t igraph_matrix_int_all_le(igraph_matrix_int_t* lhs, igraph_matrix_int_t* rhs);
igraph_bool_t igraph_matrix_int_all_ge(igraph_matrix_int_t* lhs, igraph_matrix_int_t* rhs);
igraph_bool_t igraph_matrix_int_isnull(igraph_matrix_int_t* m);
igraph_bool_t igraph_matrix_int_empty(igraph_matrix_int_t* m);
igraph_integer_t igraph_matrix_int_size(igraph_matrix_int_t* m);
igraph_integer_t igraph_matrix_int_nrow(igraph_matrix_int_t* m);
igraph_integer_t igraph_matrix_int_ncol(igraph_matrix_int_t* m);
igraph_bool_t igraph_matrix_int_is_symmetric(igraph_matrix_int_t* m);
igraph_integer_t igraph_matrix_int_sum(igraph_matrix_int_t* m);
igraph_integer_t igraph_matrix_int_prod(igraph_matrix_int_t* m);
igraph_error_t igraph_matrix_int_rowsum(igraph_matrix_int_t* m, igraph_vector_int_t* res);
igraph_error_t igraph_matrix_int_colsum(igraph_matrix_int_t* m, igraph_vector_int_t* res);
igraph_bool_t igraph_matrix_int_is_equal(igraph_matrix_int_t* m1, igraph_matrix_int_t* m2);
igraph_real_t igraph_matrix_int_maxdifference(igraph_matrix_int_t* m1, igraph_matrix_int_t* m2);
igraph_bool_t igraph_matrix_int_contains(igraph_matrix_int_t* m, igraph_integer_t e);
igraph_bool_t igraph_matrix_int_search(igraph_matrix_int_t* m, igraph_integer_t from, igraph_integer_t what, igraph_integer_t* pos, igraph_integer_t* row, igraph_integer_t* col);
igraph_error_t igraph_matrix_int_resize(igraph_matrix_int_t* m, igraph_integer_t nrow, igraph_integer_t ncol);
void igraph_matrix_int_resize_min(igraph_matrix_int_t* m);
igraph_error_t igraph_matrix_int_add_cols(igraph_matrix_int_t* m, igraph_integer_t n);
igraph_error_t igraph_matrix_int_add_rows(igraph_matrix_int_t* m, igraph_integer_t n);
igraph_error_t igraph_matrix_int_remove_col(igraph_matrix_int_t* m, igraph_integer_t col);
igraph_error_t igraph_matrix_int_remove_row(igraph_matrix_int_t* m, igraph_integer_t row);
igraph_error_t igraph_matrix_int_print(igraph_matrix_int_t* m);
igraph_error_t igraph_matrix_int_fprint(igraph_matrix_int_t* m, void* file);
igraph_error_t igraph_matrix_int_printf(igraph_matrix_int_t* m, const(char)* format);
igraph_error_t igraph_matrix_int_permdelete_rows(igraph_matrix_int_t* m, igraph_integer_t* index, igraph_integer_t nremove);

struct igraph_matrix_char_t {
    igraph_vector_char_t data;
    igraph_integer_t nrow;
    igraph_integer_t ncol;
}

igraph_error_t igraph_matrix_char_init(igraph_matrix_char_t* m, igraph_integer_t nrow, igraph_integer_t ncol);
igraph_error_t igraph_matrix_char_init_array(igraph_matrix_char_t* m, const(char)* data, igraph_integer_t nrow, igraph_integer_t ncol, igraph_matrix_storage_t storage);
igraph_error_t igraph_matrix_char_init_copy(igraph_matrix_char_t* to, igraph_matrix_char_t* from);
void igraph_matrix_char_destroy(igraph_matrix_char_t* m);
igraph_integer_t igraph_matrix_char_capacity(igraph_matrix_char_t* m);
igraph_error_t igraph_matrix_char_copy(igraph_matrix_char_t* to, igraph_matrix_char_t* from);
char igraph_matrix_char_e(igraph_matrix_char_t* m, igraph_integer_t row, igraph_integer_t col);
char* igraph_matrix_char_e_ptr(igraph_matrix_char_t* m, igraph_integer_t row, igraph_integer_t col);
char igraph_matrix_char_get(igraph_matrix_char_t* m, igraph_integer_t row, igraph_integer_t col);
char* igraph_matrix_char_get_ptr(igraph_matrix_char_t* m, igraph_integer_t row, igraph_integer_t col);
void igraph_matrix_char_set(igraph_matrix_char_t* m, igraph_integer_t row, igraph_integer_t col, char value);
void igraph_matrix_char_null(igraph_matrix_char_t* m);
void igraph_matrix_char_fill(igraph_matrix_char_t* m, char e);
igraph_matrix_char_t* igraph_matrix_char_view(igraph_matrix_char_t* m, const(char)* data, igraph_integer_t nrow, igraph_integer_t ncol);
igraph_matrix_char_t* igraph_matrix_char_view_from_vector(igraph_matrix_char_t* m, igraph_vector_char_t* v, igraph_integer_t ncol);
void igraph_matrix_char_copy_to(igraph_matrix_char_t* m, char* to);
igraph_error_t igraph_matrix_char_update(igraph_matrix_char_t* to, igraph_matrix_char_t* from);
igraph_error_t igraph_matrix_char_rbind(igraph_matrix_char_t* to, igraph_matrix_char_t* from);
igraph_error_t igraph_matrix_char_cbind(igraph_matrix_char_t* to, igraph_matrix_char_t* from);
igraph_error_t igraph_matrix_char_swap(igraph_matrix_char_t* m1, igraph_matrix_char_t* m2);
igraph_error_t igraph_matrix_char_get_row(igraph_matrix_char_t* m, igraph_vector_char_t* res, igraph_integer_t index);
igraph_error_t igraph_matrix_char_get_col(igraph_matrix_char_t* m, igraph_vector_char_t* res, igraph_integer_t index);
igraph_error_t igraph_matrix_char_set_row(igraph_matrix_char_t* m, igraph_vector_char_t* v, igraph_integer_t index);
igraph_error_t igraph_matrix_char_set_col(igraph_matrix_char_t* m, igraph_vector_char_t* v, igraph_integer_t index);
igraph_error_t igraph_matrix_char_select_rows(igraph_matrix_char_t* m, igraph_matrix_char_t* res, igraph_vector_int_t* rows);
igraph_error_t igraph_matrix_char_select_cols(igraph_matrix_char_t* m, igraph_matrix_char_t* res, igraph_vector_int_t* cols);
igraph_error_t igraph_matrix_char_select_rows_cols(igraph_matrix_char_t* m, igraph_matrix_char_t* res, igraph_vector_int_t* rows, igraph_vector_int_t* cols);
igraph_error_t igraph_matrix_char_swap_rows(igraph_matrix_char_t* m, igraph_integer_t i, igraph_integer_t j);
igraph_error_t igraph_matrix_char_swap_cols(igraph_matrix_char_t* m, igraph_integer_t i, igraph_integer_t j);
igraph_error_t igraph_matrix_char_swap_rowcol(igraph_matrix_char_t* m, igraph_integer_t i, igraph_integer_t j);
igraph_error_t igraph_matrix_char_transpose(igraph_matrix_char_t* m);
igraph_error_t igraph_matrix_char_add(igraph_matrix_char_t* m1, igraph_matrix_char_t* m2);
igraph_error_t igraph_matrix_char_sub(igraph_matrix_char_t* m1, igraph_matrix_char_t* m2);
igraph_error_t igraph_matrix_char_mul_elements(igraph_matrix_char_t* m1, igraph_matrix_char_t* m2);
igraph_error_t igraph_matrix_char_div_elements(igraph_matrix_char_t* m1, igraph_matrix_char_t* m2);
void igraph_matrix_char_scale(igraph_matrix_char_t* m, char by);
void igraph_matrix_char_add_constant(igraph_matrix_char_t* m, char plus);
igraph_real_t igraph_matrix_char_min(igraph_matrix_char_t* m);
igraph_real_t igraph_matrix_char_max(igraph_matrix_char_t* m);
void igraph_matrix_char_which_min(igraph_matrix_char_t* m, igraph_integer_t* i, igraph_integer_t* j);
void igraph_matrix_char_which_max(igraph_matrix_char_t* m, igraph_integer_t* i, igraph_integer_t* j);
void igraph_matrix_char_minmax(igraph_matrix_char_t* m, char* min, char* max);
void igraph_matrix_char_which_minmax(igraph_matrix_char_t* m, igraph_integer_t* imin, igraph_integer_t* jmin, igraph_integer_t* imax, igraph_integer_t* jmax);
igraph_bool_t igraph_matrix_char_all_e(igraph_matrix_char_t* lhs, igraph_matrix_char_t* rhs);
igraph_bool_t igraph_matrix_char_all_l(igraph_matrix_char_t* lhs, igraph_matrix_char_t* rhs);
igraph_bool_t igraph_matrix_char_all_g(igraph_matrix_char_t* lhs, igraph_matrix_char_t* rhs);
igraph_bool_t igraph_matrix_char_all_le(igraph_matrix_char_t* lhs, igraph_matrix_char_t* rhs);
igraph_bool_t igraph_matrix_char_all_ge(igraph_matrix_char_t* lhs, igraph_matrix_char_t* rhs);
igraph_bool_t igraph_matrix_char_isnull(igraph_matrix_char_t* m);
igraph_bool_t igraph_matrix_char_empty(igraph_matrix_char_t* m);
igraph_integer_t igraph_matrix_char_size(igraph_matrix_char_t* m);
igraph_integer_t igraph_matrix_char_nrow(igraph_matrix_char_t* m);
igraph_integer_t igraph_matrix_char_ncol(igraph_matrix_char_t* m);
igraph_bool_t igraph_matrix_char_is_symmetric(igraph_matrix_char_t* m);
char igraph_matrix_char_sum(igraph_matrix_char_t* m);
char igraph_matrix_char_prod(igraph_matrix_char_t* m);
igraph_error_t igraph_matrix_char_rowsum(igraph_matrix_char_t* m, igraph_vector_char_t* res);
igraph_error_t igraph_matrix_char_colsum(igraph_matrix_char_t* m, igraph_vector_char_t* res);
igraph_bool_t igraph_matrix_char_is_equal(igraph_matrix_char_t* m1, igraph_matrix_char_t* m2);
igraph_real_t igraph_matrix_char_maxdifference(igraph_matrix_char_t* m1, igraph_matrix_char_t* m2);
igraph_bool_t igraph_matrix_char_contains(igraph_matrix_char_t* m, char e);
igraph_bool_t igraph_matrix_char_search(igraph_matrix_char_t* m, igraph_integer_t from, char what, igraph_integer_t* pos, igraph_integer_t* row, igraph_integer_t* col);
igraph_error_t igraph_matrix_char_resize(igraph_matrix_char_t* m, igraph_integer_t nrow, igraph_integer_t ncol);
void igraph_matrix_char_resize_min(igraph_matrix_char_t* m);
igraph_error_t igraph_matrix_char_add_cols(igraph_matrix_char_t* m, igraph_integer_t n);
igraph_error_t igraph_matrix_char_add_rows(igraph_matrix_char_t* m, igraph_integer_t n);
igraph_error_t igraph_matrix_char_remove_col(igraph_matrix_char_t* m, igraph_integer_t col);
igraph_error_t igraph_matrix_char_remove_row(igraph_matrix_char_t* m, igraph_integer_t row);
igraph_error_t igraph_matrix_char_print(igraph_matrix_char_t* m);
igraph_error_t igraph_matrix_char_fprint(igraph_matrix_char_t* m, void* file);
igraph_error_t igraph_matrix_char_printf(igraph_matrix_char_t* m, const(char)* format);
igraph_error_t igraph_matrix_char_permdelete_rows(igraph_matrix_char_t* m, igraph_integer_t* index, igraph_integer_t nremove);

struct igraph_matrix_bool_t {
    igraph_vector_bool_t data;
    igraph_integer_t nrow;
    igraph_integer_t ncol;
}

igraph_error_t igraph_matrix_bool_init(igraph_matrix_bool_t* m, igraph_integer_t nrow, igraph_integer_t ncol);
igraph_error_t igraph_matrix_bool_init_array(igraph_matrix_bool_t* m, const(bool)* data, igraph_integer_t nrow, igraph_integer_t ncol, igraph_matrix_storage_t storage);
igraph_error_t igraph_matrix_bool_init_copy(igraph_matrix_bool_t* to, igraph_matrix_bool_t* from);
void igraph_matrix_bool_destroy(igraph_matrix_bool_t* m);
igraph_integer_t igraph_matrix_bool_capacity(igraph_matrix_bool_t* m);
igraph_error_t igraph_matrix_bool_copy(igraph_matrix_bool_t* to, igraph_matrix_bool_t* from);
igraph_bool_t igraph_matrix_bool_e(igraph_matrix_bool_t* m, igraph_integer_t row, igraph_integer_t col);
igraph_bool_t* igraph_matrix_bool_e_ptr(igraph_matrix_bool_t* m, igraph_integer_t row, igraph_integer_t col);
igraph_bool_t igraph_matrix_bool_get(igraph_matrix_bool_t* m, igraph_integer_t row, igraph_integer_t col);
igraph_bool_t* igraph_matrix_bool_get_ptr(igraph_matrix_bool_t* m, igraph_integer_t row, igraph_integer_t col);
void igraph_matrix_bool_set(igraph_matrix_bool_t* m, igraph_integer_t row, igraph_integer_t col, igraph_bool_t value);
void igraph_matrix_bool_null(igraph_matrix_bool_t* m);
void igraph_matrix_bool_fill(igraph_matrix_bool_t* m, igraph_bool_t e);
igraph_matrix_bool_t* igraph_matrix_bool_view(igraph_matrix_bool_t* m, const(bool)* data, igraph_integer_t nrow, igraph_integer_t ncol);
igraph_matrix_bool_t* igraph_matrix_bool_view_from_vector(igraph_matrix_bool_t* m, igraph_vector_bool_t* v, igraph_integer_t ncol);
void igraph_matrix_bool_copy_to(igraph_matrix_bool_t* m, igraph_bool_t* to);
igraph_error_t igraph_matrix_bool_update(igraph_matrix_bool_t* to, igraph_matrix_bool_t* from);
igraph_error_t igraph_matrix_bool_rbind(igraph_matrix_bool_t* to, igraph_matrix_bool_t* from);
igraph_error_t igraph_matrix_bool_cbind(igraph_matrix_bool_t* to, igraph_matrix_bool_t* from);
igraph_error_t igraph_matrix_bool_swap(igraph_matrix_bool_t* m1, igraph_matrix_bool_t* m2);
igraph_error_t igraph_matrix_bool_get_row(igraph_matrix_bool_t* m, igraph_vector_bool_t* res, igraph_integer_t index);
igraph_error_t igraph_matrix_bool_get_col(igraph_matrix_bool_t* m, igraph_vector_bool_t* res, igraph_integer_t index);
igraph_error_t igraph_matrix_bool_set_row(igraph_matrix_bool_t* m, igraph_vector_bool_t* v, igraph_integer_t index);
igraph_error_t igraph_matrix_bool_set_col(igraph_matrix_bool_t* m, igraph_vector_bool_t* v, igraph_integer_t index);
igraph_error_t igraph_matrix_bool_select_rows(igraph_matrix_bool_t* m, igraph_matrix_bool_t* res, igraph_vector_int_t* rows);
igraph_error_t igraph_matrix_bool_select_cols(igraph_matrix_bool_t* m, igraph_matrix_bool_t* res, igraph_vector_int_t* cols);
igraph_error_t igraph_matrix_bool_select_rows_cols(igraph_matrix_bool_t* m, igraph_matrix_bool_t* res, igraph_vector_int_t* rows, igraph_vector_int_t* cols);
igraph_error_t igraph_matrix_bool_swap_rows(igraph_matrix_bool_t* m, igraph_integer_t i, igraph_integer_t j);
igraph_error_t igraph_matrix_bool_swap_cols(igraph_matrix_bool_t* m, igraph_integer_t i, igraph_integer_t j);
igraph_error_t igraph_matrix_bool_swap_rowcol(igraph_matrix_bool_t* m, igraph_integer_t i, igraph_integer_t j);
igraph_error_t igraph_matrix_bool_transpose(igraph_matrix_bool_t* m);
igraph_error_t igraph_matrix_bool_add(igraph_matrix_bool_t* m1, igraph_matrix_bool_t* m2);
igraph_error_t igraph_matrix_bool_sub(igraph_matrix_bool_t* m1, igraph_matrix_bool_t* m2);
igraph_error_t igraph_matrix_bool_mul_elements(igraph_matrix_bool_t* m1, igraph_matrix_bool_t* m2);
igraph_error_t igraph_matrix_bool_div_elements(igraph_matrix_bool_t* m1, igraph_matrix_bool_t* m2);
void igraph_matrix_bool_scale(igraph_matrix_bool_t* m, igraph_bool_t by);
void igraph_matrix_bool_add_constant(igraph_matrix_bool_t* m, igraph_bool_t plus);
igraph_bool_t igraph_matrix_bool_all_e(igraph_matrix_bool_t* lhs, igraph_matrix_bool_t* rhs);
igraph_bool_t igraph_matrix_bool_isnull(igraph_matrix_bool_t* m);
igraph_bool_t igraph_matrix_bool_empty(igraph_matrix_bool_t* m);
igraph_integer_t igraph_matrix_bool_size(igraph_matrix_bool_t* m);
igraph_integer_t igraph_matrix_bool_nrow(igraph_matrix_bool_t* m);
igraph_integer_t igraph_matrix_bool_ncol(igraph_matrix_bool_t* m);
igraph_bool_t igraph_matrix_bool_is_symmetric(igraph_matrix_bool_t* m);
igraph_bool_t igraph_matrix_bool_sum(igraph_matrix_bool_t* m);
igraph_bool_t igraph_matrix_bool_prod(igraph_matrix_bool_t* m);
igraph_error_t igraph_matrix_bool_rowsum(igraph_matrix_bool_t* m, igraph_vector_bool_t* res);
igraph_error_t igraph_matrix_bool_colsum(igraph_matrix_bool_t* m, igraph_vector_bool_t* res);
igraph_bool_t igraph_matrix_bool_is_equal(igraph_matrix_bool_t* m1, igraph_matrix_bool_t* m2);
igraph_bool_t igraph_matrix_bool_contains(igraph_matrix_bool_t* m, igraph_bool_t e);
igraph_bool_t igraph_matrix_bool_search(igraph_matrix_bool_t* m, igraph_integer_t from, igraph_bool_t what, igraph_integer_t* pos, igraph_integer_t* row, igraph_integer_t* col);
igraph_error_t igraph_matrix_bool_resize(igraph_matrix_bool_t* m, igraph_integer_t nrow, igraph_integer_t ncol);
void igraph_matrix_bool_resize_min(igraph_matrix_bool_t* m);
igraph_error_t igraph_matrix_bool_add_cols(igraph_matrix_bool_t* m, igraph_integer_t n);
igraph_error_t igraph_matrix_bool_add_rows(igraph_matrix_bool_t* m, igraph_integer_t n);
igraph_error_t igraph_matrix_bool_remove_col(igraph_matrix_bool_t* m, igraph_integer_t col);
igraph_error_t igraph_matrix_bool_remove_row(igraph_matrix_bool_t* m, igraph_integer_t row);
igraph_error_t igraph_matrix_bool_print(igraph_matrix_bool_t* m);
igraph_error_t igraph_matrix_bool_fprint(igraph_matrix_bool_t* m, void* file);
igraph_error_t igraph_matrix_bool_printf(igraph_matrix_bool_t* m, const(char)* format);
igraph_error_t igraph_matrix_bool_permdelete_rows(igraph_matrix_bool_t* m, igraph_integer_t* index, igraph_integer_t nremove);

struct igraph_matrix_complex_t {
    igraph_vector_complex_t data;
    igraph_integer_t nrow;
    igraph_integer_t ncol;
}

igraph_error_t igraph_matrix_complex_init(igraph_matrix_complex_t* m, igraph_integer_t nrow, igraph_integer_t ncol);
igraph_error_t igraph_matrix_complex_init_array(igraph_matrix_complex_t* m, igraph_complex_t* data, igraph_integer_t nrow, igraph_integer_t ncol, igraph_matrix_storage_t storage);
igraph_error_t igraph_matrix_complex_init_copy(igraph_matrix_complex_t* to, igraph_matrix_complex_t* from);
void igraph_matrix_complex_destroy(igraph_matrix_complex_t* m);
igraph_integer_t igraph_matrix_complex_capacity(igraph_matrix_complex_t* m);
igraph_error_t igraph_matrix_complex_copy(igraph_matrix_complex_t* to, igraph_matrix_complex_t* from);
igraph_complex_t igraph_matrix_complex_e(igraph_matrix_complex_t* m, igraph_integer_t row, igraph_integer_t col);
igraph_complex_t* igraph_matrix_complex_e_ptr(igraph_matrix_complex_t* m, igraph_integer_t row, igraph_integer_t col);
igraph_complex_t igraph_matrix_complex_get(igraph_matrix_complex_t* m, igraph_integer_t row, igraph_integer_t col);
igraph_complex_t* igraph_matrix_complex_get_ptr(igraph_matrix_complex_t* m, igraph_integer_t row, igraph_integer_t col);
void igraph_matrix_complex_set(igraph_matrix_complex_t* m, igraph_integer_t row, igraph_integer_t col, igraph_complex_t value);
void igraph_matrix_complex_null(igraph_matrix_complex_t* m);
void igraph_matrix_complex_fill(igraph_matrix_complex_t* m, igraph_complex_t e);
igraph_matrix_complex_t* igraph_matrix_complex_view(igraph_matrix_complex_t* m, igraph_complex_t* data, igraph_integer_t nrow, igraph_integer_t ncol);
igraph_matrix_complex_t* igraph_matrix_complex_view_from_vector(igraph_matrix_complex_t* m, igraph_vector_complex_t* v, igraph_integer_t ncol);
void igraph_matrix_complex_copy_to(igraph_matrix_complex_t* m, igraph_complex_t* to);
igraph_error_t igraph_matrix_complex_update(igraph_matrix_complex_t* to, igraph_matrix_complex_t* from);
igraph_error_t igraph_matrix_complex_rbind(igraph_matrix_complex_t* to, igraph_matrix_complex_t* from);
igraph_error_t igraph_matrix_complex_cbind(igraph_matrix_complex_t* to, igraph_matrix_complex_t* from);
igraph_error_t igraph_matrix_complex_swap(igraph_matrix_complex_t* m1, igraph_matrix_complex_t* m2);
igraph_error_t igraph_matrix_complex_get_row(igraph_matrix_complex_t* m, igraph_vector_complex_t* res, igraph_integer_t index);
igraph_error_t igraph_matrix_complex_get_col(igraph_matrix_complex_t* m, igraph_vector_complex_t* res, igraph_integer_t index);
igraph_error_t igraph_matrix_complex_set_row(igraph_matrix_complex_t* m, igraph_vector_complex_t* v, igraph_integer_t index);
igraph_error_t igraph_matrix_complex_set_col(igraph_matrix_complex_t* m, igraph_vector_complex_t* v, igraph_integer_t index);
igraph_error_t igraph_matrix_complex_select_rows(igraph_matrix_complex_t* m, igraph_matrix_complex_t* res, igraph_vector_int_t* rows);
igraph_error_t igraph_matrix_complex_select_cols(igraph_matrix_complex_t* m, igraph_matrix_complex_t* res, igraph_vector_int_t* cols);
igraph_error_t igraph_matrix_complex_select_rows_cols(igraph_matrix_complex_t* m, igraph_matrix_complex_t* res, igraph_vector_int_t* rows, igraph_vector_int_t* cols);
igraph_error_t igraph_matrix_complex_swap_rows(igraph_matrix_complex_t* m, igraph_integer_t i, igraph_integer_t j);
igraph_error_t igraph_matrix_complex_swap_cols(igraph_matrix_complex_t* m, igraph_integer_t i, igraph_integer_t j);
igraph_error_t igraph_matrix_complex_swap_rowcol(igraph_matrix_complex_t* m, igraph_integer_t i, igraph_integer_t j);
igraph_error_t igraph_matrix_complex_transpose(igraph_matrix_complex_t* m);
igraph_error_t igraph_matrix_complex_add(igraph_matrix_complex_t* m1, igraph_matrix_complex_t* m2);
igraph_error_t igraph_matrix_complex_sub(igraph_matrix_complex_t* m1, igraph_matrix_complex_t* m2);
igraph_error_t igraph_matrix_complex_mul_elements(igraph_matrix_complex_t* m1, igraph_matrix_complex_t* m2);
igraph_error_t igraph_matrix_complex_div_elements(igraph_matrix_complex_t* m1, igraph_matrix_complex_t* m2);
void igraph_matrix_complex_scale(igraph_matrix_complex_t* m, igraph_complex_t by);
void igraph_matrix_complex_add_constant(igraph_matrix_complex_t* m, igraph_complex_t plus);
igraph_bool_t igraph_matrix_complex_all_e(igraph_matrix_complex_t* lhs, igraph_matrix_complex_t* rhs);
igraph_bool_t igraph_matrix_complex_isnull(igraph_matrix_complex_t* m);
igraph_bool_t igraph_matrix_complex_empty(igraph_matrix_complex_t* m);
igraph_integer_t igraph_matrix_complex_size(igraph_matrix_complex_t* m);
igraph_integer_t igraph_matrix_complex_nrow(igraph_matrix_complex_t* m);
igraph_integer_t igraph_matrix_complex_ncol(igraph_matrix_complex_t* m);
igraph_bool_t igraph_matrix_complex_is_symmetric(igraph_matrix_complex_t* m);
igraph_complex_t igraph_matrix_complex_sum(igraph_matrix_complex_t* m);
igraph_complex_t igraph_matrix_complex_prod(igraph_matrix_complex_t* m);
igraph_error_t igraph_matrix_complex_rowsum(igraph_matrix_complex_t* m, igraph_vector_complex_t* res);
igraph_error_t igraph_matrix_complex_colsum(igraph_matrix_complex_t* m, igraph_vector_complex_t* res);
igraph_bool_t igraph_matrix_complex_is_equal(igraph_matrix_complex_t* m1, igraph_matrix_complex_t* m2);
igraph_bool_t igraph_matrix_complex_contains(igraph_matrix_complex_t* m, igraph_complex_t e);
igraph_bool_t igraph_matrix_complex_search(igraph_matrix_complex_t* m, igraph_integer_t from, igraph_complex_t what, igraph_integer_t* pos, igraph_integer_t* row, igraph_integer_t* col);
igraph_error_t igraph_matrix_complex_resize(igraph_matrix_complex_t* m, igraph_integer_t nrow, igraph_integer_t ncol);
void igraph_matrix_complex_resize_min(igraph_matrix_complex_t* m);
igraph_error_t igraph_matrix_complex_add_cols(igraph_matrix_complex_t* m, igraph_integer_t n);
igraph_error_t igraph_matrix_complex_add_rows(igraph_matrix_complex_t* m, igraph_integer_t n);
igraph_error_t igraph_matrix_complex_remove_col(igraph_matrix_complex_t* m, igraph_integer_t col);
igraph_error_t igraph_matrix_complex_remove_row(igraph_matrix_complex_t* m, igraph_integer_t row);
igraph_error_t igraph_matrix_complex_print(igraph_matrix_complex_t* m);
igraph_error_t igraph_matrix_complex_fprint(igraph_matrix_complex_t* m, void* file);
igraph_error_t igraph_matrix_complex_real(igraph_matrix_complex_t* v, igraph_matrix_t* real_);
igraph_error_t igraph_matrix_complex_imag(igraph_matrix_complex_t* v, igraph_matrix_t* imag);
igraph_error_t igraph_matrix_complex_realimag(igraph_matrix_complex_t* v, igraph_matrix_t* real_, igraph_matrix_t* imag);
igraph_error_t igraph_matrix_complex_create(igraph_matrix_complex_t* v, igraph_matrix_t* real_, igraph_matrix_t* imag);
igraph_error_t igraph_matrix_complex_create_polar(igraph_matrix_complex_t* v, igraph_matrix_t* r, igraph_matrix_t* theta);
igraph_bool_t igraph_matrix_complex_all_almost_e(igraph_matrix_complex_t* lhs, igraph_matrix_complex_t* rhs, igraph_real_t eps);
igraph_error_t igraph_matrix_complex_permdelete_rows(igraph_matrix_complex_t* m, igraph_integer_t* index, igraph_integer_t nremove);
igraph_bool_t igraph_matrix_all_e_tol(igraph_matrix_t* lhs, igraph_matrix_t* rhs, igraph_real_t tol);
igraph_bool_t igraph_matrix_all_almost_e(igraph_matrix_t* lhs, igraph_matrix_t* rhs, igraph_real_t eps);
igraph_error_t igraph_matrix_zapsmall(igraph_matrix_t* m, igraph_real_t tol);
igraph_error_t igraph_matrix_complex_zapsmall(igraph_matrix_complex_t* m, igraph_real_t tol);

struct igraph_array3_t {
    igraph_vector_t data;
    igraph_integer_t n1;
    igraph_integer_t n2;
    igraph_integer_t n3;
    igraph_integer_t n1n2;
}

igraph_error_t igraph_array3_init(igraph_array3_t* a, igraph_integer_t n1, igraph_integer_t n2, igraph_integer_t n3);
void igraph_array3_destroy(igraph_array3_t* a);
igraph_integer_t igraph_array3_size(igraph_array3_t* a);
igraph_integer_t igraph_array3_n(igraph_array3_t* a, igraph_integer_t idx);
igraph_error_t igraph_array3_resize(igraph_array3_t* a, igraph_integer_t n1, igraph_integer_t n2, igraph_integer_t n3);
void igraph_array3_null(igraph_array3_t* a);
igraph_real_t igraph_array3_sum(igraph_array3_t* a);
void igraph_array3_scale(igraph_array3_t* a, igraph_real_t by);
void igraph_array3_fill(igraph_array3_t* a, igraph_real_t e);
igraph_error_t igraph_array3_update(igraph_array3_t* to, igraph_array3_t* from);

struct igraph_array3_int_t {
    igraph_vector_int_t data;
    igraph_integer_t n1;
    igraph_integer_t n2;
    igraph_integer_t n3;
    igraph_integer_t n1n2;
}

igraph_error_t igraph_array3_int_init(igraph_array3_int_t* a, igraph_integer_t n1, igraph_integer_t n2, igraph_integer_t n3);
void igraph_array3_int_destroy(igraph_array3_int_t* a);
igraph_integer_t igraph_array3_int_size(igraph_array3_int_t* a);
igraph_integer_t igraph_array3_int_n(igraph_array3_int_t* a, igraph_integer_t idx);
igraph_error_t igraph_array3_int_resize(igraph_array3_int_t* a, igraph_integer_t n1, igraph_integer_t n2, igraph_integer_t n3);
void igraph_array3_int_null(igraph_array3_int_t* a);
igraph_integer_t igraph_array3_int_sum(igraph_array3_int_t* a);
void igraph_array3_int_scale(igraph_array3_int_t* a, igraph_integer_t by);
void igraph_array3_int_fill(igraph_array3_int_t* a, igraph_integer_t e);
igraph_error_t igraph_array3_int_update(igraph_array3_int_t* to, igraph_array3_int_t* from);

struct igraph_array3_char_t {
    igraph_vector_char_t data;
    igraph_integer_t n1;
    igraph_integer_t n2;
    igraph_integer_t n3;
    igraph_integer_t n1n2;
}

igraph_error_t igraph_array3_char_init(igraph_array3_char_t* a, igraph_integer_t n1, igraph_integer_t n2, igraph_integer_t n3);
void igraph_array3_char_destroy(igraph_array3_char_t* a);
igraph_integer_t igraph_array3_char_size(igraph_array3_char_t* a);
igraph_integer_t igraph_array3_char_n(igraph_array3_char_t* a, igraph_integer_t idx);
igraph_error_t igraph_array3_char_resize(igraph_array3_char_t* a, igraph_integer_t n1, igraph_integer_t n2, igraph_integer_t n3);
void igraph_array3_char_null(igraph_array3_char_t* a);
char igraph_array3_char_sum(igraph_array3_char_t* a);
void igraph_array3_char_scale(igraph_array3_char_t* a, char by);
void igraph_array3_char_fill(igraph_array3_char_t* a, char e);
igraph_error_t igraph_array3_char_update(igraph_array3_char_t* to, igraph_array3_char_t* from);

struct igraph_array3_bool_t {
    igraph_vector_bool_t data;
    igraph_integer_t n1;
    igraph_integer_t n2;
    igraph_integer_t n3;
    igraph_integer_t n1n2;
}

igraph_error_t igraph_array3_bool_init(igraph_array3_bool_t* a, igraph_integer_t n1, igraph_integer_t n2, igraph_integer_t n3);
void igraph_array3_bool_destroy(igraph_array3_bool_t* a);
igraph_integer_t igraph_array3_bool_size(igraph_array3_bool_t* a);
igraph_integer_t igraph_array3_bool_n(igraph_array3_bool_t* a, igraph_integer_t idx);
igraph_error_t igraph_array3_bool_resize(igraph_array3_bool_t* a, igraph_integer_t n1, igraph_integer_t n2, igraph_integer_t n3);
void igraph_array3_bool_null(igraph_array3_bool_t* a);
igraph_bool_t igraph_array3_bool_sum(igraph_array3_bool_t* a);
void igraph_array3_bool_scale(igraph_array3_bool_t* a, igraph_bool_t by);
void igraph_array3_bool_fill(igraph_array3_bool_t* a, igraph_bool_t e);
igraph_error_t igraph_array3_bool_update(igraph_array3_bool_t* to, igraph_array3_bool_t* from);

struct igraph_dqueue_t {
    igraph_real_t* begin;
    igraph_real_t* end;
    igraph_real_t* stor_begin;
    igraph_real_t* stor_end;
}

igraph_error_t igraph_dqueue_init(igraph_dqueue_t* q, igraph_integer_t capacity);
void igraph_dqueue_destroy(igraph_dqueue_t* q);
igraph_bool_t igraph_dqueue_empty(igraph_dqueue_t* q);
void igraph_dqueue_clear(igraph_dqueue_t* q);
igraph_bool_t igraph_dqueue_full(igraph_dqueue_t* q);
igraph_integer_t igraph_dqueue_size(igraph_dqueue_t* q);
igraph_real_t igraph_dqueue_pop(igraph_dqueue_t* q);
igraph_real_t igraph_dqueue_pop_back(igraph_dqueue_t* q);
igraph_real_t igraph_dqueue_head(igraph_dqueue_t* q);
igraph_real_t igraph_dqueue_back(igraph_dqueue_t* q);
igraph_error_t igraph_dqueue_push(igraph_dqueue_t* q, igraph_real_t elem);
igraph_error_t igraph_dqueue_print(igraph_dqueue_t* q);
igraph_error_t igraph_dqueue_fprint(igraph_dqueue_t* q, void* file);
igraph_real_t igraph_dqueue_get(igraph_dqueue_t* q, igraph_integer_t idx);
igraph_real_t igraph_dqueue_e(igraph_dqueue_t* q, igraph_integer_t idx);

struct igraph_dqueue_char_t {
    char* begin;
    char* end;
    char* stor_begin;
    char* stor_end;
}

igraph_error_t igraph_dqueue_char_init(igraph_dqueue_char_t* q, igraph_integer_t capacity);
void igraph_dqueue_char_destroy(igraph_dqueue_char_t* q);
igraph_bool_t igraph_dqueue_char_empty(igraph_dqueue_char_t* q);
void igraph_dqueue_char_clear(igraph_dqueue_char_t* q);
igraph_bool_t igraph_dqueue_char_full(igraph_dqueue_char_t* q);
igraph_integer_t igraph_dqueue_char_size(igraph_dqueue_char_t* q);
char igraph_dqueue_char_pop(igraph_dqueue_char_t* q);
char igraph_dqueue_char_pop_back(igraph_dqueue_char_t* q);
char igraph_dqueue_char_head(igraph_dqueue_char_t* q);
char igraph_dqueue_char_back(igraph_dqueue_char_t* q);
igraph_error_t igraph_dqueue_char_push(igraph_dqueue_char_t* q, char elem);
igraph_error_t igraph_dqueue_char_print(igraph_dqueue_char_t* q);
igraph_error_t igraph_dqueue_char_fprint(igraph_dqueue_char_t* q, void* file);
char igraph_dqueue_char_get(igraph_dqueue_char_t* q, igraph_integer_t idx);
char igraph_dqueue_char_e(igraph_dqueue_char_t* q, igraph_integer_t idx);

struct igraph_dqueue_bool_t {
    igraph_bool_t* begin;
    igraph_bool_t* end;
    igraph_bool_t* stor_begin;
    igraph_bool_t* stor_end;
}

igraph_error_t igraph_dqueue_bool_init(igraph_dqueue_bool_t* q, igraph_integer_t capacity);
void igraph_dqueue_bool_destroy(igraph_dqueue_bool_t* q);
igraph_bool_t igraph_dqueue_bool_empty(igraph_dqueue_bool_t* q);
void igraph_dqueue_bool_clear(igraph_dqueue_bool_t* q);
igraph_bool_t igraph_dqueue_bool_full(igraph_dqueue_bool_t* q);
igraph_integer_t igraph_dqueue_bool_size(igraph_dqueue_bool_t* q);
igraph_bool_t igraph_dqueue_bool_pop(igraph_dqueue_bool_t* q);
igraph_bool_t igraph_dqueue_bool_pop_back(igraph_dqueue_bool_t* q);
igraph_bool_t igraph_dqueue_bool_head(igraph_dqueue_bool_t* q);
igraph_bool_t igraph_dqueue_bool_back(igraph_dqueue_bool_t* q);
igraph_error_t igraph_dqueue_bool_push(igraph_dqueue_bool_t* q, igraph_bool_t elem);
igraph_error_t igraph_dqueue_bool_print(igraph_dqueue_bool_t* q);
igraph_error_t igraph_dqueue_bool_fprint(igraph_dqueue_bool_t* q, void* file);
igraph_bool_t igraph_dqueue_bool_get(igraph_dqueue_bool_t* q, igraph_integer_t idx);
igraph_bool_t igraph_dqueue_bool_e(igraph_dqueue_bool_t* q, igraph_integer_t idx);

struct igraph_dqueue_int_t {
    igraph_integer_t* begin;
    igraph_integer_t* end;
    igraph_integer_t* stor_begin;
    igraph_integer_t* stor_end;
}

igraph_error_t igraph_dqueue_int_init(igraph_dqueue_int_t* q, igraph_integer_t capacity);
void igraph_dqueue_int_destroy(igraph_dqueue_int_t* q);
igraph_bool_t igraph_dqueue_int_empty(igraph_dqueue_int_t* q);
void igraph_dqueue_int_clear(igraph_dqueue_int_t* q);
igraph_bool_t igraph_dqueue_int_full(igraph_dqueue_int_t* q);
igraph_integer_t igraph_dqueue_int_size(igraph_dqueue_int_t* q);
igraph_integer_t igraph_dqueue_int_pop(igraph_dqueue_int_t* q);
igraph_integer_t igraph_dqueue_int_pop_back(igraph_dqueue_int_t* q);
igraph_integer_t igraph_dqueue_int_head(igraph_dqueue_int_t* q);
igraph_integer_t igraph_dqueue_int_back(igraph_dqueue_int_t* q);
igraph_error_t igraph_dqueue_int_push(igraph_dqueue_int_t* q, igraph_integer_t elem);
igraph_error_t igraph_dqueue_int_print(igraph_dqueue_int_t* q);
igraph_error_t igraph_dqueue_int_fprint(igraph_dqueue_int_t* q, void* file);
igraph_integer_t igraph_dqueue_int_get(igraph_dqueue_int_t* q, igraph_integer_t idx);
igraph_integer_t igraph_dqueue_int_e(igraph_dqueue_int_t* q, igraph_integer_t idx);

struct igraph_stack_t {
    igraph_real_t* stor_begin;
    igraph_real_t* stor_end;
    igraph_real_t* end;
}

igraph_error_t igraph_stack_init(igraph_stack_t* s, igraph_integer_t capacity);
void igraph_stack_destroy(igraph_stack_t* s);
igraph_error_t igraph_stack_reserve(igraph_stack_t* s, igraph_integer_t capacity);
igraph_bool_t igraph_stack_empty(igraph_stack_t* s);
igraph_integer_t igraph_stack_size(igraph_stack_t* s);
void igraph_stack_clear(igraph_stack_t* s);
igraph_error_t igraph_stack_push(igraph_stack_t* s, igraph_real_t elem);
igraph_real_t igraph_stack_pop(igraph_stack_t* s);
igraph_real_t igraph_stack_top(igraph_stack_t* s);
igraph_error_t igraph_stack_print(igraph_stack_t* s);
igraph_error_t igraph_stack_fprint(igraph_stack_t* s, void* file);

struct igraph_stack_int_t {
    igraph_integer_t* stor_begin;
    igraph_integer_t* stor_end;
    igraph_integer_t* end;
}

igraph_error_t igraph_stack_int_init(igraph_stack_int_t* s, igraph_integer_t capacity);
void igraph_stack_int_destroy(igraph_stack_int_t* s);
igraph_error_t igraph_stack_int_reserve(igraph_stack_int_t* s, igraph_integer_t capacity);
igraph_bool_t igraph_stack_int_empty(igraph_stack_int_t* s);
igraph_integer_t igraph_stack_int_size(igraph_stack_int_t* s);
void igraph_stack_int_clear(igraph_stack_int_t* s);
igraph_error_t igraph_stack_int_push(igraph_stack_int_t* s, igraph_integer_t elem);
igraph_integer_t igraph_stack_int_pop(igraph_stack_int_t* s);
igraph_integer_t igraph_stack_int_top(igraph_stack_int_t* s);
igraph_error_t igraph_stack_int_print(igraph_stack_int_t* s);
igraph_error_t igraph_stack_int_fprint(igraph_stack_int_t* s, void* file);

struct igraph_stack_char_t {
    char* stor_begin;
    char* stor_end;
    char* end;
}

igraph_error_t igraph_stack_char_init(igraph_stack_char_t* s, igraph_integer_t capacity);
void igraph_stack_char_destroy(igraph_stack_char_t* s);
igraph_error_t igraph_stack_char_reserve(igraph_stack_char_t* s, igraph_integer_t capacity);
igraph_bool_t igraph_stack_char_empty(igraph_stack_char_t* s);
igraph_integer_t igraph_stack_char_size(igraph_stack_char_t* s);
void igraph_stack_char_clear(igraph_stack_char_t* s);
igraph_error_t igraph_stack_char_push(igraph_stack_char_t* s, char elem);
char igraph_stack_char_pop(igraph_stack_char_t* s);
char igraph_stack_char_top(igraph_stack_char_t* s);
igraph_error_t igraph_stack_char_print(igraph_stack_char_t* s);
igraph_error_t igraph_stack_char_fprint(igraph_stack_char_t* s, void* file);

struct igraph_stack_bool_t {
    igraph_bool_t* stor_begin;
    igraph_bool_t* stor_end;
    igraph_bool_t* end;
}

igraph_error_t igraph_stack_bool_init(igraph_stack_bool_t* s, igraph_integer_t capacity);
void igraph_stack_bool_destroy(igraph_stack_bool_t* s);
igraph_error_t igraph_stack_bool_reserve(igraph_stack_bool_t* s, igraph_integer_t capacity);
igraph_bool_t igraph_stack_bool_empty(igraph_stack_bool_t* s);
igraph_integer_t igraph_stack_bool_size(igraph_stack_bool_t* s);
void igraph_stack_bool_clear(igraph_stack_bool_t* s);
igraph_error_t igraph_stack_bool_push(igraph_stack_bool_t* s, igraph_bool_t elem);
igraph_bool_t igraph_stack_bool_pop(igraph_stack_bool_t* s);
igraph_bool_t igraph_stack_bool_top(igraph_stack_bool_t* s);
igraph_error_t igraph_stack_bool_print(igraph_stack_bool_t* s);
igraph_error_t igraph_stack_bool_fprint(igraph_stack_bool_t* s, void* file);

struct igraph_heap_t {
    igraph_real_t* stor_begin;
    igraph_real_t* stor_end;
    igraph_real_t* end;
    igraph_bool_t destroy;
}

igraph_error_t igraph_heap_init(igraph_heap_t* h, igraph_integer_t capacity);
igraph_error_t igraph_heap_init_array(igraph_heap_t* t, const(double)* data, igraph_integer_t len);
void igraph_heap_destroy(igraph_heap_t* h);
void igraph_heap_clear(igraph_heap_t* h);
igraph_bool_t igraph_heap_empty(igraph_heap_t* h);
igraph_error_t igraph_heap_push(igraph_heap_t* h, igraph_real_t elem);
igraph_real_t igraph_heap_top(igraph_heap_t* h);
igraph_real_t igraph_heap_delete_top(igraph_heap_t* h);
igraph_integer_t igraph_heap_size(igraph_heap_t* h);
igraph_error_t igraph_heap_reserve(igraph_heap_t* h, igraph_integer_t capacity);

struct igraph_heap_min_t {
    igraph_real_t* stor_begin;
    igraph_real_t* stor_end;
    igraph_real_t* end;
    igraph_bool_t destroy;
}

igraph_error_t igraph_heap_min_init(igraph_heap_min_t* h, igraph_integer_t capacity);
igraph_error_t igraph_heap_min_init_array(igraph_heap_min_t* t, const(double)* data, igraph_integer_t len);
void igraph_heap_min_destroy(igraph_heap_min_t* h);
void igraph_heap_min_clear(igraph_heap_min_t* h);
igraph_bool_t igraph_heap_min_empty(igraph_heap_min_t* h);
igraph_error_t igraph_heap_min_push(igraph_heap_min_t* h, igraph_real_t elem);
igraph_real_t igraph_heap_min_top(igraph_heap_min_t* h);
igraph_real_t igraph_heap_min_delete_top(igraph_heap_min_t* h);
igraph_integer_t igraph_heap_min_size(igraph_heap_min_t* h);
igraph_error_t igraph_heap_min_reserve(igraph_heap_min_t* h, igraph_integer_t capacity);

struct igraph_heap_int_t {
    igraph_integer_t* stor_begin;
    igraph_integer_t* stor_end;
    igraph_integer_t* end;
    igraph_bool_t destroy;
}

igraph_error_t igraph_heap_int_init(igraph_heap_int_t* h, igraph_integer_t capacity);
igraph_error_t igraph_heap_int_init_array(igraph_heap_int_t* t, const(long)* data, igraph_integer_t len);
void igraph_heap_int_destroy(igraph_heap_int_t* h);
void igraph_heap_int_clear(igraph_heap_int_t* h);
igraph_bool_t igraph_heap_int_empty(igraph_heap_int_t* h);
igraph_error_t igraph_heap_int_push(igraph_heap_int_t* h, igraph_integer_t elem);
igraph_integer_t igraph_heap_int_top(igraph_heap_int_t* h);
igraph_integer_t igraph_heap_int_delete_top(igraph_heap_int_t* h);
igraph_integer_t igraph_heap_int_size(igraph_heap_int_t* h);
igraph_error_t igraph_heap_int_reserve(igraph_heap_int_t* h, igraph_integer_t capacity);

struct igraph_heap_min_int_t {
    igraph_integer_t* stor_begin;
    igraph_integer_t* stor_end;
    igraph_integer_t* end;
    igraph_bool_t destroy;
}

igraph_error_t igraph_heap_min_int_init(igraph_heap_min_int_t* h, igraph_integer_t capacity);
igraph_error_t igraph_heap_min_int_init_array(igraph_heap_min_int_t* t, const(long)* data, igraph_integer_t len);
void igraph_heap_min_int_destroy(igraph_heap_min_int_t* h);
void igraph_heap_min_int_clear(igraph_heap_min_int_t* h);
igraph_bool_t igraph_heap_min_int_empty(igraph_heap_min_int_t* h);
igraph_error_t igraph_heap_min_int_push(igraph_heap_min_int_t* h, igraph_integer_t elem);
igraph_integer_t igraph_heap_min_int_top(igraph_heap_min_int_t* h);
igraph_integer_t igraph_heap_min_int_delete_top(igraph_heap_min_int_t* h);
igraph_integer_t igraph_heap_min_int_size(igraph_heap_min_int_t* h);
igraph_error_t igraph_heap_min_int_reserve(igraph_heap_min_int_t* h, igraph_integer_t capacity);

struct igraph_heap_char_t {
    char* stor_begin;
    char* stor_end;
    char* end;
    igraph_bool_t destroy;
}

igraph_error_t igraph_heap_char_init(igraph_heap_char_t* h, igraph_integer_t capacity);
igraph_error_t igraph_heap_char_init_array(igraph_heap_char_t* t, const(char)* data, igraph_integer_t len);
void igraph_heap_char_destroy(igraph_heap_char_t* h);
void igraph_heap_char_clear(igraph_heap_char_t* h);
igraph_bool_t igraph_heap_char_empty(igraph_heap_char_t* h);
igraph_error_t igraph_heap_char_push(igraph_heap_char_t* h, char elem);
char igraph_heap_char_top(igraph_heap_char_t* h);
char igraph_heap_char_delete_top(igraph_heap_char_t* h);
igraph_integer_t igraph_heap_char_size(igraph_heap_char_t* h);
igraph_error_t igraph_heap_char_reserve(igraph_heap_char_t* h, igraph_integer_t capacity);

struct igraph_heap_min_char_t {
    char* stor_begin;
    char* stor_end;
    char* end;
    igraph_bool_t destroy;
}

igraph_error_t igraph_heap_min_char_init(igraph_heap_min_char_t* h, igraph_integer_t capacity);
igraph_error_t igraph_heap_min_char_init_array(igraph_heap_min_char_t* t, const(char)* data, igraph_integer_t len);
void igraph_heap_min_char_destroy(igraph_heap_min_char_t* h);
void igraph_heap_min_char_clear(igraph_heap_min_char_t* h);
igraph_bool_t igraph_heap_min_char_empty(igraph_heap_min_char_t* h);
igraph_error_t igraph_heap_min_char_push(igraph_heap_min_char_t* h, char elem);
char igraph_heap_min_char_top(igraph_heap_min_char_t* h);
char igraph_heap_min_char_delete_top(igraph_heap_min_char_t* h);
igraph_integer_t igraph_heap_min_char_size(igraph_heap_min_char_t* h);
igraph_error_t igraph_heap_min_char_reserve(igraph_heap_min_char_t* h, igraph_integer_t capacity);

struct igraph_psumtree_t {
    igraph_vector_t v;
    igraph_integer_t size;
    igraph_integer_t offset;
}

igraph_error_t igraph_psumtree_init(igraph_psumtree_t* t, igraph_integer_t size);
void igraph_psumtree_reset(igraph_psumtree_t* t);
void igraph_psumtree_destroy(igraph_psumtree_t* t);
igraph_real_t igraph_psumtree_get(igraph_psumtree_t* t, igraph_integer_t idx);
igraph_integer_t igraph_psumtree_size(igraph_psumtree_t* t);
igraph_error_t igraph_psumtree_search(igraph_psumtree_t* t, igraph_integer_t* idx, igraph_real_t elem);
igraph_error_t igraph_psumtree_update(igraph_psumtree_t* t, igraph_integer_t idx, igraph_real_t new_value);
igraph_real_t igraph_psumtree_sum(igraph_psumtree_t* t);

struct s_igraph_strvector {
    char** stor_begin;
    char** stor_end;
    char** end;
}

alias igraph_strvector_t = const(s_igraph_strvector);
igraph_error_t igraph_strvector_init(igraph_strvector_t* sv, igraph_integer_t len);
void igraph_strvector_destroy(igraph_strvector_t* sv);
igraph_integer_t igraph_strvector_size(igraph_strvector_t* sv);
igraph_integer_t igraph_strvector_capacity(igraph_strvector_t* sv);
const(char)* igraph_strvector_get(igraph_strvector_t* sv, igraph_integer_t idx);
igraph_error_t igraph_strvector_set(igraph_strvector_t* sv, igraph_integer_t idx, const(char)* value);
igraph_error_t igraph_strvector_set_len(igraph_strvector_t* sv, igraph_integer_t idx, const(char)* value, size_t len);
void igraph_strvector_clear(igraph_strvector_t* sv);
void igraph_strvector_remove_section(igraph_strvector_t* v, igraph_integer_t from, igraph_integer_t to);
void igraph_strvector_remove(igraph_strvector_t* v, igraph_integer_t elem);
igraph_error_t igraph_strvector_init_copy(igraph_strvector_t* to, igraph_strvector_t* from);
igraph_error_t igraph_strvector_append(igraph_strvector_t* to, igraph_strvector_t* from);
igraph_error_t igraph_strvector_merge(igraph_strvector_t* to, igraph_strvector_t* from);
igraph_error_t igraph_strvector_resize(igraph_strvector_t* v, igraph_integer_t newsize);
igraph_error_t igraph_strvector_push_back(igraph_strvector_t* v, const(char)* value);
igraph_error_t igraph_strvector_push_back_len(igraph_strvector_t* v, const(char)* value, igraph_integer_t len);
igraph_error_t igraph_strvector_print(igraph_strvector_t* v, void* file, const(char)* sep);
igraph_error_t igraph_strvector_index(igraph_strvector_t* v, igraph_strvector_t* newv, igraph_vector_int_t* idx);
igraph_error_t igraph_strvector_reserve(igraph_strvector_t* sv, igraph_integer_t capacity);
igraph_error_t igraph_strvector_add(igraph_strvector_t* v, const(char)* value);
igraph_error_t igraph_strvector_copy(igraph_strvector_t* to, igraph_strvector_t* from);
igraph_error_t igraph_strvector_set2(igraph_strvector_t* sv, igraph_integer_t idx, const(char)* value, size_t len);

struct igraph_vector_list_t {
    igraph_vector_t* stor_begin;
    igraph_vector_t* stor_end;
    igraph_vector_t* end;
}

igraph_error_t igraph_vector_list_init(igraph_vector_list_t* v, igraph_integer_t size);
void igraph_vector_list_destroy(igraph_vector_list_t* v);
igraph_vector_t* igraph_vector_list_get_ptr(igraph_vector_list_t* v, igraph_integer_t pos);
void igraph_vector_list_set(igraph_vector_list_t* v, igraph_integer_t pos, igraph_vector_t* e);
igraph_vector_t* igraph_vector_list_tail_ptr(igraph_vector_list_t* v);
igraph_integer_t igraph_vector_list_capacity(igraph_vector_list_t* v);
igraph_bool_t igraph_vector_list_empty(igraph_vector_list_t* v);
igraph_integer_t igraph_vector_list_size(igraph_vector_list_t* v);
void igraph_vector_list_clear(igraph_vector_list_t* v);
igraph_error_t igraph_vector_list_reserve(igraph_vector_list_t* v, igraph_integer_t capacity);
igraph_error_t igraph_vector_list_resize(igraph_vector_list_t* v, igraph_integer_t new_size);
void igraph_vector_list_discard(igraph_vector_list_t* v, igraph_integer_t index);
void igraph_vector_list_discard_back(igraph_vector_list_t* v);
void igraph_vector_list_discard_fast(igraph_vector_list_t* v, igraph_integer_t index);
igraph_error_t igraph_vector_list_insert(igraph_vector_list_t* v, igraph_integer_t pos, igraph_vector_t* e);
igraph_error_t igraph_vector_list_insert_copy(igraph_vector_list_t* v, igraph_integer_t pos, igraph_vector_t* e);
igraph_error_t igraph_vector_list_insert_new(igraph_vector_list_t* v, igraph_integer_t pos, igraph_vector_t** result);
igraph_error_t igraph_vector_list_push_back(igraph_vector_list_t* v, igraph_vector_t* e);
igraph_error_t igraph_vector_list_push_back_copy(igraph_vector_list_t* v, igraph_vector_t* e);
igraph_error_t igraph_vector_list_push_back_new(igraph_vector_list_t* v, igraph_vector_t** result);
igraph_vector_t igraph_vector_list_pop_back(igraph_vector_list_t* v);
igraph_error_t igraph_vector_list_remove(igraph_vector_list_t* v, igraph_integer_t index, igraph_vector_t* e);
igraph_error_t igraph_vector_list_remove_fast(igraph_vector_list_t* v, igraph_integer_t index, igraph_vector_t* e);
void igraph_vector_list_replace(igraph_vector_list_t* v, igraph_integer_t pos, igraph_vector_t* e);
void igraph_vector_list_remove_consecutive_duplicates(igraph_vector_list_t* v, igraph_bool_t function(igraph_vector_t*, igraph_vector_t*) eq);
igraph_error_t igraph_vector_list_permute(igraph_vector_list_t* v, igraph_vector_int_t* index);
igraph_error_t igraph_vector_list_reverse(igraph_vector_list_t* v);
igraph_error_t igraph_vector_list_swap(igraph_vector_list_t* v1, igraph_vector_list_t* v2);
igraph_error_t igraph_vector_list_swap_elements(igraph_vector_list_t* v, igraph_integer_t i, igraph_integer_t j);

struct igraph_vector_int_list_t {
    igraph_vector_int_t* stor_begin;
    igraph_vector_int_t* stor_end;
    igraph_vector_int_t* end;
}

igraph_error_t igraph_vector_int_list_init(igraph_vector_int_list_t* v, igraph_integer_t size);
void igraph_vector_int_list_destroy(igraph_vector_int_list_t* v);
igraph_vector_int_t* igraph_vector_int_list_get_ptr(igraph_vector_int_list_t* v, igraph_integer_t pos);
void igraph_vector_int_list_set(igraph_vector_int_list_t* v, igraph_integer_t pos, igraph_vector_int_t* e);
igraph_vector_int_t* igraph_vector_int_list_tail_ptr(igraph_vector_int_list_t* v);
igraph_integer_t igraph_vector_int_list_capacity(igraph_vector_int_list_t* v);
igraph_bool_t igraph_vector_int_list_empty(igraph_vector_int_list_t* v);
igraph_integer_t igraph_vector_int_list_size(igraph_vector_int_list_t* v);
void igraph_vector_int_list_clear(igraph_vector_int_list_t* v);
igraph_error_t igraph_vector_int_list_reserve(igraph_vector_int_list_t* v, igraph_integer_t capacity);
igraph_error_t igraph_vector_int_list_resize(igraph_vector_int_list_t* v, igraph_integer_t new_size);
void igraph_vector_int_list_discard(igraph_vector_int_list_t* v, igraph_integer_t index);
void igraph_vector_int_list_discard_back(igraph_vector_int_list_t* v);
void igraph_vector_int_list_discard_fast(igraph_vector_int_list_t* v, igraph_integer_t index);
igraph_error_t igraph_vector_int_list_insert(igraph_vector_int_list_t* v, igraph_integer_t pos, igraph_vector_int_t* e);
igraph_error_t igraph_vector_int_list_insert_copy(igraph_vector_int_list_t* v, igraph_integer_t pos, igraph_vector_int_t* e);
igraph_error_t igraph_vector_int_list_insert_new(igraph_vector_int_list_t* v, igraph_integer_t pos, igraph_vector_int_t** result);
igraph_error_t igraph_vector_int_list_push_back(igraph_vector_int_list_t* v, igraph_vector_int_t* e);
igraph_error_t igraph_vector_int_list_push_back_copy(igraph_vector_int_list_t* v, igraph_vector_int_t* e);
igraph_error_t igraph_vector_int_list_push_back_new(igraph_vector_int_list_t* v, igraph_vector_int_t** result);
igraph_vector_int_t igraph_vector_int_list_pop_back(igraph_vector_int_list_t* v);
igraph_error_t igraph_vector_int_list_remove(igraph_vector_int_list_t* v, igraph_integer_t index, igraph_vector_int_t* e);
igraph_error_t igraph_vector_int_list_remove_fast(igraph_vector_int_list_t* v, igraph_integer_t index, igraph_vector_int_t* e);
void igraph_vector_int_list_replace(igraph_vector_int_list_t* v, igraph_integer_t pos, igraph_vector_int_t* e);
void igraph_vector_int_list_remove_consecutive_duplicates(igraph_vector_int_list_t* v, igraph_bool_t function(igraph_vector_int_t*, igraph_vector_int_t*) eq);
igraph_error_t igraph_vector_int_list_permute(igraph_vector_int_list_t* v, igraph_vector_int_t* index);
igraph_error_t igraph_vector_int_list_reverse(igraph_vector_int_list_t* v);
igraph_error_t igraph_vector_int_list_swap(igraph_vector_int_list_t* v1, igraph_vector_int_list_t* v2);
igraph_error_t igraph_vector_int_list_swap_elements(igraph_vector_int_list_t* v, igraph_integer_t i, igraph_integer_t j);

struct s_vector_ptr {
    void** stor_begin;
    void** stor_end;
    void** end;
    void function(void*) item_destructor;
}

alias igraph_vector_ptr_t = const(s_vector_ptr);
igraph_error_t igraph_vector_ptr_init(igraph_vector_ptr_t* v, igraph_integer_t size);
igraph_error_t igraph_vector_ptr_init_array(igraph_vector_ptr_t* v, void** data, igraph_integer_t length);
igraph_error_t igraph_vector_ptr_init_copy(igraph_vector_ptr_t* to, igraph_vector_ptr_t* from);
igraph_vector_ptr_t* igraph_vector_ptr_view(igraph_vector_ptr_t* v, void** data, igraph_integer_t length);
void igraph_vector_ptr_destroy(igraph_vector_ptr_t* v);
void igraph_vector_ptr_free_all(igraph_vector_ptr_t* v);
void igraph_vector_ptr_destroy_all(igraph_vector_ptr_t* v);
igraph_error_t igraph_vector_ptr_reserve(igraph_vector_ptr_t* v, igraph_integer_t capacity);
igraph_bool_t igraph_vector_ptr_empty(igraph_vector_ptr_t* v);
igraph_integer_t igraph_vector_ptr_size(igraph_vector_ptr_t* v);
void igraph_vector_ptr_clear(igraph_vector_ptr_t* v);
void igraph_vector_ptr_null(igraph_vector_ptr_t* v);
igraph_error_t igraph_vector_ptr_push_back(igraph_vector_ptr_t* v, void* e);
igraph_error_t igraph_vector_ptr_append(igraph_vector_ptr_t* to, igraph_vector_ptr_t* from);
void* igraph_vector_ptr_pop_back(igraph_vector_ptr_t* v);
igraph_error_t igraph_vector_ptr_insert(igraph_vector_ptr_t* v, igraph_integer_t pos, void* e);
void* igraph_vector_ptr_e(igraph_vector_ptr_t* v, igraph_integer_t pos);
void* igraph_vector_ptr_get(igraph_vector_ptr_t* v, igraph_integer_t pos);
void igraph_vector_ptr_set(igraph_vector_ptr_t* v, igraph_integer_t pos, void* value);
igraph_error_t igraph_vector_ptr_resize(igraph_vector_ptr_t* v, igraph_integer_t newsize);
void igraph_vector_ptr_copy_to(igraph_vector_ptr_t* v, void** to);
igraph_error_t igraph_vector_ptr_permute(igraph_vector_ptr_t* v, igraph_vector_int_t* index);
void igraph_vector_ptr_remove(igraph_vector_ptr_t* v, igraph_integer_t pos);
igraph_error_t igraph_vector_ptr_copy(igraph_vector_ptr_t* to, igraph_vector_ptr_t* from);
struct igraph_i_property_cache_t;

enum igraph_cached_property_t {
    IGRAPH_PROP_HAS_LOOP = 0,
    IGRAPH_PROP_HAS_MULTI,
    IGRAPH_PROP_HAS_MUTUAL,
    IGRAPH_PROP_IS_WEAKLY_CONNECTED,
    IGRAPH_PROP_IS_STRONGLY_CONNECTED,
    IGRAPH_PROP_IS_DAG,
    IGRAPH_PROP_IS_FOREST,
    IGRAPH_PROP_I_SIZE,
}

alias IGRAPH_PROP_HAS_LOOP = igraph_cached_property_t.IGRAPH_PROP_HAS_LOOP;
alias IGRAPH_PROP_HAS_MULTI = igraph_cached_property_t.IGRAPH_PROP_HAS_MULTI;
alias IGRAPH_PROP_HAS_MUTUAL = igraph_cached_property_t.IGRAPH_PROP_HAS_MUTUAL;
alias IGRAPH_PROP_IS_WEAKLY_CONNECTED = igraph_cached_property_t.IGRAPH_PROP_IS_WEAKLY_CONNECTED;
alias IGRAPH_PROP_IS_STRONGLY_CONNECTED = igraph_cached_property_t.IGRAPH_PROP_IS_STRONGLY_CONNECTED;
alias IGRAPH_PROP_IS_DAG = igraph_cached_property_t.IGRAPH_PROP_IS_DAG;
alias IGRAPH_PROP_IS_FOREST = igraph_cached_property_t.IGRAPH_PROP_IS_FOREST;
alias IGRAPH_PROP_I_SIZE = igraph_cached_property_t.IGRAPH_PROP_I_SIZE;

struct igraph_s {
    igraph_integer_t n;
    igraph_bool_t directed;
    igraph_vector_int_t from;
    igraph_vector_int_t to;
    igraph_vector_int_t oi;
    igraph_vector_int_t ii;
    igraph_vector_int_t os;
    igraph_vector_int_t is_;
    void* attr;
    igraph_i_property_cache_t* cache;
}

alias igraph_t = const(igraph_s);
void igraph_invalidate_cache(igraph_t* graph);

struct igraph_arpack_options_t {
    char[1] bmat;
    int n;
    char[2] which;
    int nev;
    igraph_real_t tol;
    int ncv;
    int ldv;
    int ishift;
    int mxiter;
    int nb;
    int mode;
    int start;
    int lworkl;
    igraph_real_t sigma;
    igraph_real_t sigmai;
    int info;
    int ierr;
    int noiter;
    int nconv;
    int numop;
    int numopb;
    int numreo;
    int[11] iparam;
    int[14] ipntr;
}

struct igraph_arpack_storage_t {
    int maxn;
    int maxncv;
    int maxldv;
    igraph_real_t* v;
    igraph_real_t* workl;
    igraph_real_t* workd;
    igraph_real_t* d;
    igraph_real_t* resid;
    igraph_real_t* ax;
    int* select;
    igraph_real_t* di;
    igraph_real_t* workev;
}

void igraph_arpack_options_init(igraph_arpack_options_t* o);
igraph_arpack_options_t* igraph_arpack_options_get_default();
igraph_error_t igraph_arpack_storage_init(igraph_arpack_storage_t* s, igraph_integer_t maxn, igraph_integer_t maxncv, igraph_integer_t maxldv, igraph_bool_t symm);
void igraph_arpack_storage_destroy(igraph_arpack_storage_t* s);
alias igraph_arpack_function_t = igraph_error_t function(igraph_real_t* to, const(double)* from, int n, void* extra);
igraph_error_t igraph_arpack_unpack_complex(igraph_matrix_t* vectors, igraph_matrix_t* values, igraph_integer_t nev);
struct cs_igraph_sparse;
struct cs_igraph_symbolic;
struct cs_igraph_numeric;

struct igraph_sparsemat_t {
    cs_igraph_sparse* cs;
}

struct igraph_sparsemat_symbolic_t {
    cs_igraph_symbolic* symbolic;
}

struct igraph_sparsemat_numeric_t {
    cs_igraph_numeric* numeric;
}

enum igraph_sparsemat_type_t {
    IGRAPH_SPARSEMAT_TRIPLET,
    IGRAPH_SPARSEMAT_CC,
}

alias IGRAPH_SPARSEMAT_TRIPLET = igraph_sparsemat_type_t.IGRAPH_SPARSEMAT_TRIPLET;
alias IGRAPH_SPARSEMAT_CC = igraph_sparsemat_type_t.IGRAPH_SPARSEMAT_CC;

struct igraph_sparsemat_iterator_t {
    igraph_sparsemat_t* mat;
    igraph_integer_t pos;
    igraph_integer_t col;
}

igraph_error_t igraph_sparsemat_init(igraph_sparsemat_t* A, igraph_integer_t rows, igraph_integer_t cols, igraph_integer_t nzmax);
igraph_error_t igraph_sparsemat_init_copy(igraph_sparsemat_t* to, igraph_sparsemat_t* from);
void igraph_sparsemat_destroy(igraph_sparsemat_t* A);
igraph_error_t igraph_sparsemat_realloc(igraph_sparsemat_t* A, igraph_integer_t nzmax);
igraph_error_t igraph_sparsemat_init_eye(igraph_sparsemat_t* A, igraph_integer_t n, igraph_integer_t nzmax, igraph_real_t value, igraph_bool_t compress);
igraph_error_t igraph_sparsemat_init_diag(igraph_sparsemat_t* A, igraph_integer_t nzmax, igraph_vector_t* values, igraph_bool_t compress);
igraph_integer_t igraph_sparsemat_nrow(igraph_sparsemat_t* A);
igraph_integer_t igraph_sparsemat_ncol(igraph_sparsemat_t* B);
igraph_sparsemat_type_t igraph_sparsemat_type(igraph_sparsemat_t* A);
igraph_bool_t igraph_sparsemat_is_triplet(igraph_sparsemat_t* A);
igraph_bool_t igraph_sparsemat_is_cc(igraph_sparsemat_t* A);
igraph_error_t igraph_sparsemat_permute(igraph_sparsemat_t* A, igraph_vector_int_t* p, igraph_vector_int_t* q, igraph_sparsemat_t* res);
igraph_real_t igraph_sparsemat_get(igraph_sparsemat_t* A, igraph_integer_t row, igraph_integer_t col);
igraph_error_t igraph_sparsemat_index(igraph_sparsemat_t* A, igraph_vector_int_t* p, igraph_vector_int_t* q, igraph_sparsemat_t* res, igraph_real_t* constres);
igraph_error_t igraph_sparsemat_entry(igraph_sparsemat_t* A, igraph_integer_t row, igraph_integer_t col, igraph_real_t elem);
igraph_error_t igraph_sparsemat_compress(igraph_sparsemat_t* A, igraph_sparsemat_t* res);
igraph_error_t igraph_sparsemat_transpose(igraph_sparsemat_t* A, igraph_sparsemat_t* res);
igraph_error_t igraph_sparsemat_is_symmetric(igraph_sparsemat_t* A, igraph_bool_t* result);
igraph_error_t igraph_sparsemat_dupl(igraph_sparsemat_t* A);
igraph_error_t igraph_sparsemat_fkeep(igraph_sparsemat_t* A, igraph_integer_t function(igraph_integer_t, igraph_integer_t, igraph_real_t, void*) fkeep, void* other);
igraph_error_t igraph_sparsemat_dropzeros(igraph_sparsemat_t* A);
igraph_error_t igraph_sparsemat_droptol(igraph_sparsemat_t* A, igraph_real_t tol);
igraph_error_t igraph_sparsemat_multiply(igraph_sparsemat_t* A, igraph_sparsemat_t* B, igraph_sparsemat_t* res);
igraph_error_t igraph_sparsemat_add(igraph_sparsemat_t* A, igraph_sparsemat_t* B, igraph_real_t alpha, igraph_real_t beta, igraph_sparsemat_t* res);
igraph_error_t igraph_sparsemat_gaxpy(igraph_sparsemat_t* A, igraph_vector_t* x, igraph_vector_t* res);
igraph_error_t igraph_sparsemat_lsolve(igraph_sparsemat_t* A, igraph_vector_t* b, igraph_vector_t* res);
igraph_error_t igraph_sparsemat_ltsolve(igraph_sparsemat_t* A, igraph_vector_t* b, igraph_vector_t* res);
igraph_error_t igraph_sparsemat_usolve(igraph_sparsemat_t* A, igraph_vector_t* b, igraph_vector_t* res);
igraph_error_t igraph_sparsemat_utsolve(igraph_sparsemat_t* A, igraph_vector_t* b, igraph_vector_t* res);
igraph_error_t igraph_sparsemat_cholsol(igraph_sparsemat_t* A, igraph_vector_t* b, igraph_vector_t* res, igraph_integer_t order);
igraph_error_t igraph_sparsemat_lusol(igraph_sparsemat_t* A, igraph_vector_t* b, igraph_vector_t* res, igraph_integer_t order, igraph_real_t tol);
igraph_error_t igraph_sparsemat_print(igraph_sparsemat_t* A, void* outstream);
igraph_error_t igraph_sparsemat(igraph_t* graph, igraph_sparsemat_t* A, igraph_bool_t directed);
igraph_error_t igraph_weighted_sparsemat(igraph_t* graph, igraph_sparsemat_t* A, igraph_bool_t directed, const(char)* attr, igraph_bool_t loops);
igraph_error_t igraph_matrix_as_sparsemat(igraph_sparsemat_t* res, igraph_matrix_t* mat, igraph_real_t tol);
igraph_error_t igraph_sparsemat_as_matrix(igraph_matrix_t* res, igraph_sparsemat_t* spmat);

enum igraph_sparsemat_solve_t {
    IGRAPH_SPARSEMAT_SOLVE_LU,
    IGRAPH_SPARSEMAT_SOLVE_QR,
}

alias IGRAPH_SPARSEMAT_SOLVE_LU = igraph_sparsemat_solve_t.IGRAPH_SPARSEMAT_SOLVE_LU;
alias IGRAPH_SPARSEMAT_SOLVE_QR = igraph_sparsemat_solve_t.IGRAPH_SPARSEMAT_SOLVE_QR;
igraph_error_t igraph_sparsemat_arpack_rssolve(igraph_sparsemat_t* A, igraph_arpack_options_t* options, igraph_arpack_storage_t* storage, igraph_vector_t* values, igraph_matrix_t* vectors, igraph_sparsemat_solve_t solvemethod);
igraph_error_t igraph_sparsemat_arpack_rnsolve(igraph_sparsemat_t* A, igraph_arpack_options_t* options, igraph_arpack_storage_t* storage, igraph_matrix_t* values, igraph_matrix_t* vectors);
igraph_error_t igraph_sparsemat_lu(igraph_sparsemat_t* A, igraph_sparsemat_symbolic_t* dis, igraph_sparsemat_numeric_t* din, double tol);
igraph_error_t igraph_sparsemat_qr(igraph_sparsemat_t* A, igraph_sparsemat_symbolic_t* dis, igraph_sparsemat_numeric_t* din);
igraph_error_t igraph_sparsemat_luresol(igraph_sparsemat_symbolic_t* dis, igraph_sparsemat_numeric_t* din, igraph_vector_t* b, igraph_vector_t* res);
igraph_error_t igraph_sparsemat_qrresol(igraph_sparsemat_symbolic_t* dis, igraph_sparsemat_numeric_t* din, igraph_vector_t* b, igraph_vector_t* res);
igraph_error_t igraph_sparsemat_symbqr(igraph_integer_t order, igraph_sparsemat_t* A, igraph_sparsemat_symbolic_t* dis);
igraph_error_t igraph_sparsemat_symblu(igraph_integer_t order, igraph_sparsemat_t* A, igraph_sparsemat_symbolic_t* dis);
void igraph_sparsemat_symbolic_destroy(igraph_sparsemat_symbolic_t* dis);
void igraph_sparsemat_numeric_destroy(igraph_sparsemat_numeric_t* din);
igraph_real_t igraph_sparsemat_max(igraph_sparsemat_t* A);
igraph_real_t igraph_sparsemat_min(igraph_sparsemat_t* A);
igraph_error_t igraph_sparsemat_minmax(igraph_sparsemat_t* A, igraph_real_t* min, igraph_real_t* max);
igraph_integer_t igraph_sparsemat_count_nonzero(igraph_sparsemat_t* A);
igraph_integer_t igraph_sparsemat_count_nonzerotol(igraph_sparsemat_t* A, igraph_real_t tol);
igraph_error_t igraph_sparsemat_rowsums(igraph_sparsemat_t* A, igraph_vector_t* res);
igraph_error_t igraph_sparsemat_colsums(igraph_sparsemat_t* A, igraph_vector_t* res);
igraph_error_t igraph_sparsemat_rowmins(igraph_sparsemat_t* A, igraph_vector_t* res);
igraph_error_t igraph_sparsemat_colmins(igraph_sparsemat_t* A, igraph_vector_t* res);
igraph_error_t igraph_sparsemat_rowmaxs(igraph_sparsemat_t* A, igraph_vector_t* res);
igraph_error_t igraph_sparsemat_colmaxs(igraph_sparsemat_t* A, igraph_vector_t* res);
igraph_error_t igraph_sparsemat_which_min_rows(igraph_sparsemat_t* A, igraph_vector_t* res, igraph_vector_int_t* pos);
igraph_error_t igraph_sparsemat_which_min_cols(igraph_sparsemat_t* A, igraph_vector_t* res, igraph_vector_int_t* pos);
igraph_error_t igraph_sparsemat_scale(igraph_sparsemat_t* A, igraph_real_t by);
igraph_error_t igraph_sparsemat_add_rows(igraph_sparsemat_t* A, igraph_integer_t n);
igraph_error_t igraph_sparsemat_add_cols(igraph_sparsemat_t* A, igraph_integer_t n);
igraph_error_t igraph_sparsemat_resize(igraph_sparsemat_t* A, igraph_integer_t nrow, igraph_integer_t ncol, igraph_integer_t nzmax);
igraph_integer_t igraph_sparsemat_nonzero_storage(igraph_sparsemat_t* A);
igraph_error_t igraph_sparsemat_getelements(igraph_sparsemat_t* A, igraph_vector_int_t* i, igraph_vector_int_t* j, igraph_vector_t* x);
igraph_error_t igraph_sparsemat_getelements_sorted(igraph_sparsemat_t* A, igraph_vector_int_t* i, igraph_vector_int_t* j, igraph_vector_t* x);
igraph_error_t igraph_sparsemat_scale_rows(igraph_sparsemat_t* A, igraph_vector_t* fact);
igraph_error_t igraph_sparsemat_scale_cols(igraph_sparsemat_t* A, igraph_vector_t* fact);
igraph_error_t igraph_sparsemat_multiply_by_dense(igraph_sparsemat_t* A, igraph_matrix_t* B, igraph_matrix_t* res);
igraph_error_t igraph_sparsemat_dense_multiply(igraph_matrix_t* A, igraph_sparsemat_t* B, igraph_matrix_t* res);
igraph_error_t igraph_sparsemat_view(igraph_sparsemat_t* A, igraph_integer_t nzmax, igraph_integer_t m, igraph_integer_t n, igraph_integer_t* p, igraph_integer_t* i, igraph_real_t* x, igraph_integer_t nz);
igraph_error_t igraph_sparsemat_sort(igraph_sparsemat_t* A, igraph_sparsemat_t* sorted);
igraph_integer_t igraph_sparsemat_nzmax(igraph_sparsemat_t* A);
igraph_error_t igraph_sparsemat_neg(igraph_sparsemat_t* A);
igraph_error_t igraph_sparsemat_normalize_cols(igraph_sparsemat_t* sparsemat, igraph_bool_t allow_zeros);
igraph_error_t igraph_sparsemat_normalize_rows(igraph_sparsemat_t* sparsemat, igraph_bool_t allow_zeros);
igraph_error_t igraph_sparsemat_iterator_init(igraph_sparsemat_iterator_t* it, igraph_sparsemat_t* sparsemat);
igraph_error_t igraph_sparsemat_iterator_reset(igraph_sparsemat_iterator_t* it);
igraph_bool_t igraph_sparsemat_iterator_end(igraph_sparsemat_iterator_t* it);
igraph_integer_t igraph_sparsemat_iterator_row(igraph_sparsemat_iterator_t* it);
igraph_integer_t igraph_sparsemat_iterator_col(igraph_sparsemat_iterator_t* it);
igraph_integer_t igraph_sparsemat_iterator_idx(igraph_sparsemat_iterator_t* it);
igraph_real_t igraph_sparsemat_iterator_get(igraph_sparsemat_iterator_t* it);
igraph_integer_t igraph_sparsemat_iterator_next(igraph_sparsemat_iterator_t* it);
igraph_error_t igraph_sparsemat_copy(igraph_sparsemat_t* to, igraph_sparsemat_t* from);
igraph_error_t igraph_sparsemat_diag(igraph_sparsemat_t* A, igraph_integer_t nzmax, igraph_vector_t* values, igraph_bool_t compress);
igraph_error_t igraph_sparsemat_eye(igraph_sparsemat_t* A, igraph_integer_t n, igraph_integer_t nzmax, igraph_real_t value, igraph_bool_t compress);

struct igraph_graph_list_t {
    igraph_t* stor_begin;
    igraph_t* stor_end;
    igraph_t* end;
    igraph_bool_t directed;
}

igraph_error_t igraph_graph_list_init(igraph_graph_list_t* v, igraph_integer_t size);
void igraph_graph_list_destroy(igraph_graph_list_t* v);
igraph_t* igraph_graph_list_get_ptr(igraph_graph_list_t* v, igraph_integer_t pos);
void igraph_graph_list_set(igraph_graph_list_t* v, igraph_integer_t pos, igraph_t* e);
igraph_t* igraph_graph_list_tail_ptr(igraph_graph_list_t* v);
igraph_integer_t igraph_graph_list_capacity(igraph_graph_list_t* v);
igraph_bool_t igraph_graph_list_empty(igraph_graph_list_t* v);
igraph_integer_t igraph_graph_list_size(igraph_graph_list_t* v);
void igraph_graph_list_clear(igraph_graph_list_t* v);
igraph_error_t igraph_graph_list_reserve(igraph_graph_list_t* v, igraph_integer_t capacity);
igraph_error_t igraph_graph_list_resize(igraph_graph_list_t* v, igraph_integer_t new_size);
void igraph_graph_list_discard(igraph_graph_list_t* v, igraph_integer_t index);
void igraph_graph_list_discard_back(igraph_graph_list_t* v);
void igraph_graph_list_discard_fast(igraph_graph_list_t* v, igraph_integer_t index);
igraph_error_t igraph_graph_list_insert(igraph_graph_list_t* v, igraph_integer_t pos, igraph_t* e);
igraph_error_t igraph_graph_list_insert_copy(igraph_graph_list_t* v, igraph_integer_t pos, igraph_t* e);
igraph_error_t igraph_graph_list_insert_new(igraph_graph_list_t* v, igraph_integer_t pos, igraph_t** result);
igraph_error_t igraph_graph_list_push_back(igraph_graph_list_t* v, igraph_t* e);
igraph_error_t igraph_graph_list_push_back_copy(igraph_graph_list_t* v, igraph_t* e);
igraph_error_t igraph_graph_list_push_back_new(igraph_graph_list_t* v, igraph_t** result);
igraph_t igraph_graph_list_pop_back(igraph_graph_list_t* v);
igraph_error_t igraph_graph_list_remove(igraph_graph_list_t* v, igraph_integer_t index, igraph_t* e);
igraph_error_t igraph_graph_list_remove_fast(igraph_graph_list_t* v, igraph_integer_t index, igraph_t* e);
void igraph_graph_list_replace(igraph_graph_list_t* v, igraph_integer_t pos, igraph_t* e);
void igraph_graph_list_remove_consecutive_duplicates(igraph_graph_list_t* v, igraph_bool_t function(igraph_t*, igraph_t*) eq);
igraph_error_t igraph_graph_list_permute(igraph_graph_list_t* v, igraph_vector_int_t* index);
igraph_error_t igraph_graph_list_reverse(igraph_graph_list_t* v);
igraph_error_t igraph_graph_list_swap(igraph_graph_list_t* v1, igraph_graph_list_t* v2);
igraph_error_t igraph_graph_list_swap_elements(igraph_graph_list_t* v, igraph_integer_t i, igraph_integer_t j);
void igraph_graph_list_set_directed(igraph_graph_list_t* list, igraph_bool_t directed);

enum igraph_vs_type_t {
    IGRAPH_VS_ALL,
    IGRAPH_VS_ADJ,
    IGRAPH_VS_NONE,
    IGRAPH_VS_1,
    IGRAPH_VS_VECTORPTR,
    IGRAPH_VS_VECTOR,
    IGRAPH_VS_RANGE,
    IGRAPH_VS_NONADJ,
}

alias IGRAPH_VS_ALL = igraph_vs_type_t.IGRAPH_VS_ALL;
alias IGRAPH_VS_ADJ = igraph_vs_type_t.IGRAPH_VS_ADJ;
alias IGRAPH_VS_NONE = igraph_vs_type_t.IGRAPH_VS_NONE;
alias IGRAPH_VS_1 = igraph_vs_type_t.IGRAPH_VS_1;
alias IGRAPH_VS_VECTORPTR = igraph_vs_type_t.IGRAPH_VS_VECTORPTR;
alias IGRAPH_VS_VECTOR = igraph_vs_type_t.IGRAPH_VS_VECTOR;
alias IGRAPH_VS_RANGE = igraph_vs_type_t.IGRAPH_VS_RANGE;
alias IGRAPH_VS_NONADJ = igraph_vs_type_t.IGRAPH_VS_NONADJ;

struct __tag2 {
    igraph_integer_t vid;
    igraph_neimode_t mode;
}

struct __tag3 {
    igraph_integer_t start;
    igraph_integer_t end;
}

union __tag4 {
    igraph_integer_t vid;
    igraph_vector_int_t* vecptr;
    __tag2 adj;
    __tag3 range;
}

struct igraph_vs_t {
    igraph_vs_type_t type;
    __tag4 data;
}

igraph_error_t igraph_vs_all(igraph_vs_t* vs);
igraph_vs_t igraph_vss_all();
igraph_error_t igraph_vs_adj(igraph_vs_t* vs, igraph_integer_t vid, igraph_neimode_t mode);
igraph_error_t igraph_vs_nonadj(igraph_vs_t* vs, igraph_integer_t vid, igraph_neimode_t mode);
igraph_error_t igraph_vs_none(igraph_vs_t* vs);
igraph_vs_t igraph_vss_none();
igraph_error_t igraph_vs_1(igraph_vs_t* vs, igraph_integer_t vid);
igraph_vs_t igraph_vss_1(igraph_integer_t vid);
igraph_error_t igraph_vs_vector(igraph_vs_t* vs, igraph_vector_int_t* v);
igraph_vs_t igraph_vss_vector(igraph_vector_int_t* v);
igraph_error_t igraph_vs_vector_small(igraph_vs_t* vs, ...);
igraph_error_t igraph_vs_vector_copy(igraph_vs_t* vs, igraph_vector_int_t* v);
igraph_error_t igraph_vs_seq(igraph_vs_t* vs, igraph_integer_t from, igraph_integer_t to);
igraph_vs_t igraph_vss_seq(igraph_integer_t from, igraph_integer_t to);
igraph_error_t igraph_vs_range(igraph_vs_t* vs, igraph_integer_t start, igraph_integer_t end);
igraph_vs_t igraph_vss_range(igraph_integer_t start, igraph_integer_t end);
void igraph_vs_destroy(igraph_vs_t* vs);
igraph_bool_t igraph_vs_is_all(igraph_vs_t* vs);
igraph_error_t igraph_vs_copy(igraph_vs_t* dest, igraph_vs_t* src);
igraph_error_t igraph_vs_as_vector(igraph_t* graph, igraph_vs_t vs, igraph_vector_int_t* v);
igraph_error_t igraph_vs_size(igraph_t* graph, igraph_vs_t* vs, igraph_integer_t* result);
igraph_vs_type_t igraph_vs_type(igraph_vs_t* vs);

enum igraph_vit_type_t {
    IGRAPH_VIT_RANGE,
    IGRAPH_VIT_VECTOR,
    IGRAPH_VIT_VECTORPTR,
}

alias IGRAPH_VIT_RANGE = igraph_vit_type_t.IGRAPH_VIT_RANGE;
alias IGRAPH_VIT_VECTOR = igraph_vit_type_t.IGRAPH_VIT_VECTOR;
alias IGRAPH_VIT_VECTORPTR = igraph_vit_type_t.IGRAPH_VIT_VECTORPTR;

struct igraph_vit_t {
    igraph_vit_type_t type;
    igraph_integer_t pos;
    igraph_integer_t start;
    igraph_integer_t end;
    igraph_vector_int_t* vec;
}

igraph_error_t igraph_vit_create(igraph_t* graph, igraph_vs_t vs, igraph_vit_t* vit);
void igraph_vit_destroy(igraph_vit_t* vit);
igraph_error_t igraph_vit_as_vector(igraph_vit_t* vit, igraph_vector_int_t* v);

enum igraph_es_type_t {
    IGRAPH_ES_ALL,
    IGRAPH_ES_ALLFROM,
    IGRAPH_ES_ALLTO,
    IGRAPH_ES_INCIDENT,
    IGRAPH_ES_NONE,
    IGRAPH_ES_1,
    IGRAPH_ES_VECTORPTR,
    IGRAPH_ES_VECTOR,
    IGRAPH_ES_RANGE,
    IGRAPH_ES_PAIRS,
    IGRAPH_ES_PATH,
    IGRAPH_ES_UNUSED_WAS_MULTIPAIRS,
    IGRAPH_ES_ALL_BETWEEN,
}

alias IGRAPH_ES_ALL = igraph_es_type_t.IGRAPH_ES_ALL;
alias IGRAPH_ES_ALLFROM = igraph_es_type_t.IGRAPH_ES_ALLFROM;
alias IGRAPH_ES_ALLTO = igraph_es_type_t.IGRAPH_ES_ALLTO;
alias IGRAPH_ES_INCIDENT = igraph_es_type_t.IGRAPH_ES_INCIDENT;
alias IGRAPH_ES_NONE = igraph_es_type_t.IGRAPH_ES_NONE;
alias IGRAPH_ES_1 = igraph_es_type_t.IGRAPH_ES_1;
alias IGRAPH_ES_VECTORPTR = igraph_es_type_t.IGRAPH_ES_VECTORPTR;
alias IGRAPH_ES_VECTOR = igraph_es_type_t.IGRAPH_ES_VECTOR;
alias IGRAPH_ES_RANGE = igraph_es_type_t.IGRAPH_ES_RANGE;
alias IGRAPH_ES_PAIRS = igraph_es_type_t.IGRAPH_ES_PAIRS;
alias IGRAPH_ES_PATH = igraph_es_type_t.IGRAPH_ES_PATH;
alias IGRAPH_ES_UNUSED_WAS_MULTIPAIRS = igraph_es_type_t.IGRAPH_ES_UNUSED_WAS_MULTIPAIRS;
alias IGRAPH_ES_ALL_BETWEEN = igraph_es_type_t.IGRAPH_ES_ALL_BETWEEN;

struct __tag5 {
    igraph_integer_t vid;
    igraph_neimode_t mode;
}

struct __tag6 {
    igraph_integer_t start;
    igraph_integer_t end;
}

struct __tag7 {
    igraph_vector_int_t* ptr;
    igraph_bool_t mode;
}

struct __tag8 {
    igraph_integer_t from;
    igraph_integer_t to;
    igraph_bool_t directed;
}

union __tag9 {
    igraph_integer_t vid;
    igraph_integer_t eid;
    igraph_vector_int_t* vecptr;
    __tag5 incident;
    __tag6 range;
    __tag7 path;
    __tag8 between;
}

struct igraph_es_t {
    igraph_es_type_t type;
    __tag9 data;
}

igraph_error_t igraph_es_all(igraph_es_t* es, igraph_edgeorder_type_t order);
igraph_es_t igraph_ess_all(igraph_edgeorder_type_t order);
igraph_error_t igraph_es_incident(igraph_es_t* es, igraph_integer_t vid, igraph_neimode_t mode);
igraph_error_t igraph_es_none(igraph_es_t* es);
igraph_es_t igraph_ess_none();
igraph_error_t igraph_es_1(igraph_es_t* es, igraph_integer_t eid);
igraph_es_t igraph_ess_1(igraph_integer_t eid);
igraph_error_t igraph_es_vector(igraph_es_t* es, igraph_vector_int_t* v);
igraph_es_t igraph_ess_vector(igraph_vector_int_t* v);
igraph_error_t igraph_es_range(igraph_es_t* es, igraph_integer_t from, igraph_integer_t to);
igraph_es_t igraph_ess_range(igraph_integer_t from, igraph_integer_t to);
igraph_error_t igraph_es_seq(igraph_es_t* es, igraph_integer_t from, igraph_integer_t to);
igraph_es_t igraph_ess_seq(igraph_integer_t from, igraph_integer_t to);
igraph_error_t igraph_es_vector_copy(igraph_es_t* es, igraph_vector_int_t* v);
igraph_error_t igraph_es_pairs(igraph_es_t* es, igraph_vector_int_t* v, igraph_bool_t directed);
igraph_error_t igraph_es_path(igraph_es_t* es, igraph_vector_int_t* v, igraph_bool_t directed);
igraph_error_t igraph_es_all_between(igraph_es_t* es, igraph_integer_t from, igraph_integer_t to, igraph_bool_t directed);
void igraph_es_destroy(igraph_es_t* es);
igraph_bool_t igraph_es_is_all(igraph_es_t* es);
igraph_error_t igraph_es_copy(igraph_es_t* dest, igraph_es_t* src);
igraph_error_t igraph_es_as_vector(igraph_t* graph, igraph_es_t es, igraph_vector_int_t* v);
igraph_error_t igraph_es_size(igraph_t* graph, igraph_es_t* es, igraph_integer_t* result);
igraph_es_type_t igraph_es_type(igraph_es_t* es);

enum igraph_eit_type_t {
    IGRAPH_EIT_RANGE,
    IGRAPH_EIT_VECTOR,
    IGRAPH_EIT_VECTORPTR,
}

alias IGRAPH_EIT_RANGE = igraph_eit_type_t.IGRAPH_EIT_RANGE;
alias IGRAPH_EIT_VECTOR = igraph_eit_type_t.IGRAPH_EIT_VECTOR;
alias IGRAPH_EIT_VECTORPTR = igraph_eit_type_t.IGRAPH_EIT_VECTORPTR;

struct igraph_eit_t {
    igraph_eit_type_t type;
    igraph_integer_t pos;
    igraph_integer_t start;
    igraph_integer_t end;
    igraph_vector_int_t* vec;
}

igraph_error_t igraph_eit_create(igraph_t* graph, igraph_es_t es, igraph_eit_t* eit);
void igraph_eit_destroy(igraph_eit_t* eit);
igraph_error_t igraph_eit_as_vector(igraph_eit_t* eit, igraph_vector_int_t* v);
igraph_error_t igraph_empty(igraph_t* graph, igraph_integer_t n, igraph_bool_t directed);
igraph_error_t igraph_empty_attrs(igraph_t* graph, igraph_integer_t n, igraph_bool_t directed, void* attr);
void igraph_destroy(igraph_t* graph);
igraph_error_t igraph_copy(igraph_t* to, igraph_t* from);
igraph_error_t igraph_add_edges(igraph_t* graph, igraph_vector_int_t* edges, void* attr);
igraph_error_t igraph_add_vertices(igraph_t* graph, igraph_integer_t nv, void* attr);
igraph_error_t igraph_delete_edges(igraph_t* graph, igraph_es_t edges);
igraph_error_t igraph_delete_vertices(igraph_t* graph, igraph_vs_t vertices);
igraph_error_t igraph_delete_vertices_idx(igraph_t* graph, igraph_vs_t vertices, igraph_vector_int_t* idx, igraph_vector_int_t* invidx);
igraph_integer_t igraph_vcount(igraph_t* graph);
igraph_integer_t igraph_ecount(igraph_t* graph);
igraph_error_t igraph_neighbors(igraph_t* graph, igraph_vector_int_t* neis, igraph_integer_t vid, igraph_neimode_t mode);
igraph_bool_t igraph_is_directed(igraph_t* graph);
igraph_error_t igraph_degree_1(igraph_t* graph, igraph_integer_t* deg, igraph_integer_t vid, igraph_neimode_t mode, igraph_bool_t loops);
igraph_error_t igraph_degree(igraph_t* graph, igraph_vector_int_t* res, igraph_vs_t vids, igraph_neimode_t mode, igraph_bool_t loops);
igraph_error_t igraph_edge(igraph_t* graph, igraph_integer_t eid, igraph_integer_t* from, igraph_integer_t* to);
igraph_error_t igraph_edges(igraph_t* graph, igraph_es_t eids, igraph_vector_int_t* edges);
igraph_error_t igraph_get_eid(igraph_t* graph, igraph_integer_t* eid, igraph_integer_t from, igraph_integer_t to, igraph_bool_t directed, igraph_bool_t error);
igraph_error_t igraph_get_eids(igraph_t* graph, igraph_vector_int_t* eids, igraph_vector_int_t* pairs, igraph_bool_t directed, igraph_bool_t error);
igraph_error_t igraph_get_all_eids_between(igraph_t* graph, igraph_vector_int_t* eids, igraph_integer_t source, igraph_integer_t target, igraph_bool_t directed);
igraph_error_t igraph_incident(igraph_t* graph, igraph_vector_int_t* eids, igraph_integer_t vid, igraph_neimode_t mode);
igraph_error_t igraph_is_same_graph(igraph_t* graph1, igraph_t* igraph2, igraph_bool_t* res);
igraph_bool_t igraph_i_property_cache_get_bool(igraph_t* graph, igraph_cached_property_t prop);
igraph_bool_t igraph_i_property_cache_has(igraph_t* graph, igraph_cached_property_t prop);
void igraph_i_property_cache_set_bool(igraph_t* graph, igraph_cached_property_t prop, igraph_bool_t value);
void igraph_i_property_cache_invalidate(igraph_t* graph, igraph_cached_property_t prop);
void igraph_i_property_cache_invalidate_all(igraph_t* graph);
alias igraph_edge_type_sw_t = uint;

enum {
    IGRAPH_SIMPLE_SW = 0,
    IGRAPH_LOOPS_SW = 1,
    IGRAPH_MULTI_SW = 6,
}

igraph_error_t igraph_is_graphical(igraph_vector_int_t* out_degrees, igraph_vector_int_t* in_degrees, const(uint) allowed_edge_types, igraph_bool_t* res);
igraph_error_t igraph_is_bigraphical(igraph_vector_int_t* degrees1, igraph_vector_int_t* degrees2, const(uint) allowed_edge_types, igraph_bool_t* res);
igraph_error_t igraph_create(igraph_t* graph, igraph_vector_int_t* edges, igraph_integer_t n, igraph_bool_t directed);
igraph_error_t igraph_adjacency(igraph_t* graph, igraph_matrix_t* adjmatrix, igraph_adjacency_t mode, igraph_loops_t loops);
igraph_error_t igraph_weighted_adjacency(igraph_t* graph, igraph_matrix_t* adjmatrix, igraph_adjacency_t mode, igraph_vector_t* weights, igraph_loops_t loops);
igraph_error_t igraph_sparse_adjacency(igraph_t* graph, igraph_sparsemat_t* adjmatrix, igraph_adjacency_t mode, igraph_loops_t loops);
igraph_error_t igraph_sparse_weighted_adjacency(igraph_t* graph, igraph_sparsemat_t* adjmatrix, igraph_adjacency_t mode, igraph_vector_t* weights, igraph_loops_t loops);
igraph_error_t igraph_star(igraph_t* graph, igraph_integer_t n, igraph_star_mode_t mode, igraph_integer_t center);
igraph_error_t igraph_wheel(igraph_t* graph, igraph_integer_t n, igraph_wheel_mode_t mode, igraph_integer_t center);
igraph_error_t igraph_lattice(igraph_t* graph, igraph_vector_int_t* dimvector, igraph_integer_t nei, igraph_bool_t directed, igraph_bool_t mutual, igraph_bool_t circular);
igraph_error_t igraph_square_lattice(igraph_t* graph, igraph_vector_int_t* dimvector, igraph_integer_t nei, igraph_bool_t directed, igraph_bool_t mutual, igraph_vector_bool_t* circular);
igraph_error_t igraph_ring(igraph_t* graph, igraph_integer_t n, igraph_bool_t directed, igraph_bool_t mutual, igraph_bool_t circular);
igraph_error_t igraph_tree(igraph_t* graph, igraph_integer_t n, igraph_integer_t children, igraph_tree_mode_t type);
igraph_error_t igraph_kary_tree(igraph_t* graph, igraph_integer_t n, igraph_integer_t children, igraph_tree_mode_t type);
igraph_error_t igraph_symmetric_tree(igraph_t* graph, igraph_vector_int_t* branches, igraph_tree_mode_t type);
igraph_error_t igraph_regular_tree(igraph_t* graph, igraph_integer_t h, igraph_integer_t k, igraph_tree_mode_t type);
igraph_error_t igraph_tree_from_parent_vector(igraph_t* graph, igraph_vector_int_t* parents, igraph_tree_mode_t mode);
igraph_error_t igraph_from_prufer(igraph_t* graph, igraph_vector_int_t* prufer);
igraph_error_t igraph_full(igraph_t* graph, igraph_integer_t n, igraph_bool_t directed, igraph_bool_t loops);
igraph_error_t igraph_full_multipartite(igraph_t* graph, igraph_vector_int_t* types, igraph_vector_int_t* n, igraph_bool_t directed, igraph_neimode_t mode);
igraph_error_t igraph_turan(igraph_t* graph, igraph_vector_int_t* types, igraph_integer_t n, igraph_integer_t r);
igraph_error_t igraph_full_citation(igraph_t* graph, igraph_integer_t n, igraph_bool_t directed);
igraph_error_t igraph_atlas(igraph_t* graph, igraph_integer_t number);
igraph_error_t igraph_extended_chordal_ring(igraph_t* graph, igraph_integer_t nodes, igraph_matrix_int_t* W, igraph_bool_t directed);
igraph_error_t igraph_linegraph(igraph_t* graph, igraph_t* linegraph);
igraph_error_t igraph_de_bruijn(igraph_t* graph, igraph_integer_t m, igraph_integer_t n);
igraph_error_t igraph_circulant(igraph_t* graph, igraph_integer_t n, igraph_vector_int_t* l, igraph_bool_t directed);
igraph_error_t igraph_generalized_petersen(igraph_t* graph, igraph_integer_t n, igraph_integer_t k);
igraph_error_t igraph_kautz(igraph_t* graph, igraph_integer_t m, igraph_integer_t n);
igraph_error_t igraph_famous(igraph_t* graph, const(char)* name);
igraph_error_t igraph_lcf_vector(igraph_t* graph, igraph_integer_t n, igraph_vector_int_t* shifts, igraph_integer_t repeats);
igraph_error_t igraph_lcf(igraph_t* graph, igraph_integer_t n, ...);
igraph_error_t igraph_realize_degree_sequence(igraph_t* graph, igraph_vector_int_t* outdeg, igraph_vector_int_t* indeg, igraph_edge_type_sw_t allowed_edge_types, igraph_realize_degseq_t method);
igraph_error_t igraph_triangular_lattice(igraph_t* graph, igraph_vector_int_t* dims, igraph_bool_t directed, igraph_bool_t mutual);
igraph_error_t igraph_hexagonal_lattice(igraph_t* graph, igraph_vector_int_t* dims, igraph_bool_t directed, igraph_bool_t mutual);
igraph_error_t igraph_realize_bipartite_degree_sequence(igraph_t* graph, igraph_vector_int_t* deg1, igraph_vector_int_t* deg2, const(uint) allowed_edge_types, igraph_realize_degseq_t method);

struct igraph_matrix_list_t {
    igraph_matrix_t* stor_begin;
    igraph_matrix_t* stor_end;
    igraph_matrix_t* end;
}

igraph_error_t igraph_matrix_list_init(igraph_matrix_list_t* v, igraph_integer_t size);
void igraph_matrix_list_destroy(igraph_matrix_list_t* v);
igraph_matrix_t* igraph_matrix_list_get_ptr(igraph_matrix_list_t* v, igraph_integer_t pos);
void igraph_matrix_list_set(igraph_matrix_list_t* v, igraph_integer_t pos, igraph_matrix_t* e);
igraph_matrix_t* igraph_matrix_list_tail_ptr(igraph_matrix_list_t* v);
igraph_integer_t igraph_matrix_list_capacity(igraph_matrix_list_t* v);
igraph_bool_t igraph_matrix_list_empty(igraph_matrix_list_t* v);
igraph_integer_t igraph_matrix_list_size(igraph_matrix_list_t* v);
void igraph_matrix_list_clear(igraph_matrix_list_t* v);
igraph_error_t igraph_matrix_list_reserve(igraph_matrix_list_t* v, igraph_integer_t capacity);
igraph_error_t igraph_matrix_list_resize(igraph_matrix_list_t* v, igraph_integer_t new_size);
void igraph_matrix_list_discard(igraph_matrix_list_t* v, igraph_integer_t index);
void igraph_matrix_list_discard_back(igraph_matrix_list_t* v);
void igraph_matrix_list_discard_fast(igraph_matrix_list_t* v, igraph_integer_t index);
igraph_error_t igraph_matrix_list_insert(igraph_matrix_list_t* v, igraph_integer_t pos, igraph_matrix_t* e);
igraph_error_t igraph_matrix_list_insert_copy(igraph_matrix_list_t* v, igraph_integer_t pos, igraph_matrix_t* e);
igraph_error_t igraph_matrix_list_insert_new(igraph_matrix_list_t* v, igraph_integer_t pos, igraph_matrix_t** result);
igraph_error_t igraph_matrix_list_push_back(igraph_matrix_list_t* v, igraph_matrix_t* e);
igraph_error_t igraph_matrix_list_push_back_copy(igraph_matrix_list_t* v, igraph_matrix_t* e);
igraph_error_t igraph_matrix_list_push_back_new(igraph_matrix_list_t* v, igraph_matrix_t** result);
igraph_matrix_t igraph_matrix_list_pop_back(igraph_matrix_list_t* v);
igraph_error_t igraph_matrix_list_remove(igraph_matrix_list_t* v, igraph_integer_t index, igraph_matrix_t* e);
igraph_error_t igraph_matrix_list_remove_fast(igraph_matrix_list_t* v, igraph_integer_t index, igraph_matrix_t* e);
void igraph_matrix_list_replace(igraph_matrix_list_t* v, igraph_integer_t pos, igraph_matrix_t* e);
void igraph_matrix_list_remove_consecutive_duplicates(igraph_matrix_list_t* v, igraph_bool_t function(igraph_matrix_t*, igraph_matrix_t*) eq);
igraph_error_t igraph_matrix_list_permute(igraph_matrix_list_t* v, igraph_vector_int_t* index);
igraph_error_t igraph_matrix_list_reverse(igraph_matrix_list_t* v);
igraph_error_t igraph_matrix_list_swap(igraph_matrix_list_t* v1, igraph_matrix_list_t* v2);
igraph_error_t igraph_matrix_list_swap_elements(igraph_matrix_list_t* v, igraph_integer_t i, igraph_integer_t j);
igraph_error_t igraph_barabasi_game(igraph_t* graph, igraph_integer_t n, igraph_real_t power, igraph_integer_t m, igraph_vector_int_t* outseq, igraph_bool_t outpref, igraph_real_t A, igraph_bool_t directed, igraph_barabasi_algorithm_t algo, igraph_t* start_from);
igraph_error_t igraph_erdos_renyi_game_gnp(igraph_t* graph, igraph_integer_t n, igraph_real_t p, igraph_bool_t directed, igraph_bool_t loops);
igraph_error_t igraph_erdos_renyi_game_gnm(igraph_t* graph, igraph_integer_t n, igraph_integer_t m, igraph_bool_t directed, igraph_bool_t loops);
igraph_error_t igraph_degree_sequence_game(igraph_t* graph, igraph_vector_int_t* out_deg, igraph_vector_int_t* in_deg, igraph_degseq_t method);
igraph_error_t igraph_growing_random_game(igraph_t* graph, igraph_integer_t n, igraph_integer_t m, igraph_bool_t directed, igraph_bool_t citation);
igraph_error_t igraph_barabasi_aging_game(igraph_t* graph, igraph_integer_t nodes, igraph_integer_t m, igraph_vector_int_t* outseq, igraph_bool_t outpref, igraph_real_t pa_exp, igraph_real_t aging_exp, igraph_integer_t aging_bin, igraph_real_t zero_deg_appeal, igraph_real_t zero_age_appeal, igraph_real_t deg_coef, igraph_real_t age_coef, igraph_bool_t directed);
igraph_error_t igraph_recent_degree_game(igraph_t* graph, igraph_integer_t n, igraph_real_t power, igraph_integer_t window, igraph_integer_t m, igraph_vector_int_t* outseq, igraph_bool_t outpref, igraph_real_t zero_appeal, igraph_bool_t directed);
igraph_error_t igraph_recent_degree_aging_game(igraph_t* graph, igraph_integer_t nodes, igraph_integer_t m, igraph_vector_int_t* outseq, igraph_bool_t outpref, igraph_real_t pa_exp, igraph_real_t aging_exp, igraph_integer_t aging_bin, igraph_integer_t window, igraph_real_t zero_appeal, igraph_bool_t directed);
igraph_error_t igraph_callaway_traits_game(igraph_t* graph, igraph_integer_t nodes, igraph_integer_t types, igraph_integer_t edges_per_step, igraph_vector_t* type_dist, igraph_matrix_t* pref_matrix, igraph_bool_t directed, igraph_vector_int_t* node_type_vec);
igraph_error_t igraph_establishment_game(igraph_t* graph, igraph_integer_t nodes, igraph_integer_t types, igraph_integer_t k, igraph_vector_t* type_dist, igraph_matrix_t* pref_matrix, igraph_bool_t directed, igraph_vector_int_t* node_type_vec);
igraph_error_t igraph_grg_game(igraph_t* graph, igraph_integer_t nodes, igraph_real_t radius, igraph_bool_t torus, igraph_vector_t* x, igraph_vector_t* y);
igraph_error_t igraph_preference_game(igraph_t* graph, igraph_integer_t nodes, igraph_integer_t types, igraph_vector_t* type_dist, igraph_bool_t fixed_sizes, igraph_matrix_t* pref_matrix, igraph_vector_int_t* node_type_vec, igraph_bool_t directed, igraph_bool_t loops);
igraph_error_t igraph_asymmetric_preference_game(igraph_t* graph, igraph_integer_t nodes, igraph_integer_t out_types, igraph_integer_t in_types, igraph_matrix_t* type_dist_matrix, igraph_matrix_t* pref_matrix, igraph_vector_int_t* node_type_out_vec, igraph_vector_int_t* node_type_in_vec, igraph_bool_t loops);
igraph_error_t igraph_rewire_edges(igraph_t* graph, igraph_real_t prob, igraph_bool_t loops, igraph_bool_t multiple);
igraph_error_t igraph_rewire_directed_edges(igraph_t* graph, igraph_real_t prob, igraph_bool_t loops, igraph_neimode_t mode);
igraph_error_t igraph_watts_strogatz_game(igraph_t* graph, igraph_integer_t dim, igraph_integer_t size, igraph_integer_t nei, igraph_real_t p, igraph_bool_t loops, igraph_bool_t multiple);
igraph_error_t igraph_lastcit_game(igraph_t* graph, igraph_integer_t nodes, igraph_integer_t edges_per_node, igraph_integer_t agebins, igraph_vector_t* preference, igraph_bool_t directed);
igraph_error_t igraph_cited_type_game(igraph_t* graph, igraph_integer_t nodes, igraph_vector_int_t* types, igraph_vector_t* pref, igraph_integer_t edges_per_step, igraph_bool_t directed);
igraph_error_t igraph_citing_cited_type_game(igraph_t* graph, igraph_integer_t nodes, igraph_vector_int_t* types, igraph_matrix_t* pref, igraph_integer_t edges_per_step, igraph_bool_t directed);
igraph_error_t igraph_forest_fire_game(igraph_t* graph, igraph_integer_t nodes, igraph_real_t fw_prob, igraph_real_t bw_factor, igraph_integer_t ambs, igraph_bool_t directed);
igraph_error_t igraph_simple_interconnected_islands_game(igraph_t* graph, igraph_integer_t islands_n, igraph_integer_t islands_size, igraph_real_t islands_pin, igraph_integer_t n_inter);
igraph_error_t igraph_static_fitness_game(igraph_t* graph, igraph_integer_t no_of_edges, igraph_vector_t* fitness_out, igraph_vector_t* fitness_in, igraph_bool_t loops, igraph_bool_t multiple);
igraph_error_t igraph_static_power_law_game(igraph_t* graph, igraph_integer_t no_of_nodes, igraph_integer_t no_of_edges, igraph_real_t exponent_out, igraph_real_t exponent_in, igraph_bool_t loops, igraph_bool_t multiple, igraph_bool_t finite_size_correction);
igraph_error_t igraph_k_regular_game(igraph_t* graph, igraph_integer_t no_of_nodes, igraph_integer_t k, igraph_bool_t directed, igraph_bool_t multiple);
igraph_error_t igraph_sbm_game(igraph_t* graph, igraph_integer_t n, igraph_matrix_t* pref_matrix, igraph_vector_int_t* block_sizes, igraph_bool_t directed, igraph_bool_t loops);
igraph_error_t igraph_hsbm_game(igraph_t* graph, igraph_integer_t n, igraph_integer_t m, igraph_vector_t* rho, igraph_matrix_t* C, igraph_real_t p);
igraph_error_t igraph_hsbm_list_game(igraph_t* graph, igraph_integer_t n, igraph_vector_int_t* mlist, igraph_vector_list_t* rholist, igraph_matrix_list_t* Clist, igraph_real_t p);
igraph_error_t igraph_correlated_game(igraph_t* old_graph, igraph_t* new_graph, igraph_real_t corr, igraph_real_t p, igraph_vector_int_t* permutation);
igraph_error_t igraph_correlated_pair_game(igraph_t* graph1, igraph_t* graph2, igraph_integer_t n, igraph_real_t corr, igraph_real_t p, igraph_bool_t directed, igraph_vector_int_t* permutation);
igraph_error_t igraph_tree_game(igraph_t* graph, igraph_integer_t n, igraph_bool_t directed, igraph_random_tree_t method);
igraph_error_t igraph_dot_product_game(igraph_t* graph, igraph_matrix_t* vecs, igraph_bool_t directed);
igraph_error_t igraph_sample_sphere_surface(igraph_integer_t dim, igraph_integer_t n, igraph_real_t radius, igraph_bool_t positive, igraph_matrix_t* res);
igraph_error_t igraph_sample_sphere_volume(igraph_integer_t dim, igraph_integer_t n, igraph_real_t radius, igraph_bool_t positive, igraph_matrix_t* res);
igraph_error_t igraph_sample_dirichlet(igraph_integer_t n, igraph_vector_t* alpha, igraph_matrix_t* res);
igraph_error_t igraph_erdos_renyi_game(igraph_t* graph, igraph_erdos_renyi_t type, igraph_integer_t n, igraph_real_t p_or_m, igraph_bool_t directed, igraph_bool_t loops);
igraph_error_t igraph_deterministic_optimal_imitation(igraph_t* graph, igraph_integer_t vid, igraph_optimal_t optimality, igraph_vector_t* quantities, igraph_vector_int_t* strategies, igraph_neimode_t mode);
igraph_error_t igraph_moran_process(igraph_t* graph, igraph_vector_t* weights, igraph_vector_t* quantities, igraph_vector_int_t* strategies, igraph_neimode_t mode);
igraph_error_t igraph_roulette_wheel_imitation(igraph_t* graph, igraph_integer_t vid, igraph_bool_t islocal, igraph_vector_t* quantities, igraph_vector_int_t* strategies, igraph_neimode_t mode);
igraph_error_t igraph_stochastic_imitation(igraph_t* graph, igraph_integer_t vid, igraph_imitate_algorithm_t algo, igraph_vector_t* quantities, igraph_vector_int_t* strategies, igraph_neimode_t mode);
igraph_error_t igraph_closeness(igraph_t* graph, igraph_vector_t* res, igraph_vector_int_t* reachable_count, igraph_bool_t* all_reachable, igraph_vs_t vids, igraph_neimode_t mode, igraph_vector_t* weights, igraph_bool_t normalized);
igraph_error_t igraph_closeness_cutoff(igraph_t* graph, igraph_vector_t* res, igraph_vector_int_t* reachable_count, igraph_bool_t* all_reachable, igraph_vs_t vids, igraph_neimode_t mode, igraph_vector_t* weights, igraph_bool_t normalized, igraph_real_t cutoff);
igraph_error_t igraph_harmonic_centrality(igraph_t* graph, igraph_vector_t* res, igraph_vs_t vids, igraph_neimode_t mode, igraph_vector_t* weights, igraph_bool_t normalized);
igraph_error_t igraph_harmonic_centrality_cutoff(igraph_t* graph, igraph_vector_t* res, igraph_vs_t vids, igraph_neimode_t mode, igraph_vector_t* weights, igraph_bool_t normalized, igraph_real_t cutoff);
igraph_error_t igraph_betweenness(igraph_t* graph, igraph_vector_t* res, igraph_vs_t vids, igraph_bool_t directed, igraph_vector_t* weights);
igraph_error_t igraph_betweenness_cutoff(igraph_t* graph, igraph_vector_t* res, igraph_vs_t vids, igraph_bool_t directed, igraph_vector_t* weights, igraph_real_t cutoff);
igraph_error_t igraph_edge_betweenness(igraph_t* graph, igraph_vector_t* result, igraph_bool_t directed, igraph_vector_t* weights);
igraph_error_t igraph_edge_betweenness_cutoff(igraph_t* graph, igraph_vector_t* result, igraph_bool_t directed, igraph_vector_t* weights, igraph_real_t cutoff);
igraph_error_t igraph_betweenness_subset(igraph_t* graph, igraph_vector_t* res, igraph_vs_t vids, igraph_bool_t directed, igraph_vs_t sources, igraph_vs_t targets, igraph_vector_t* weights);
igraph_error_t igraph_edge_betweenness_subset(igraph_t* graph, igraph_vector_t* res, igraph_es_t eids, igraph_bool_t directed, igraph_vs_t sources, igraph_vs_t targets, igraph_vector_t* weights);

enum igraph_pagerank_algo_t {
    IGRAPH_PAGERANK_ALGO_ARPACK = 1,
    IGRAPH_PAGERANK_ALGO_PRPACK = 2,
}

alias IGRAPH_PAGERANK_ALGO_ARPACK = igraph_pagerank_algo_t.IGRAPH_PAGERANK_ALGO_ARPACK;
alias IGRAPH_PAGERANK_ALGO_PRPACK = igraph_pagerank_algo_t.IGRAPH_PAGERANK_ALGO_PRPACK;
igraph_error_t igraph_pagerank(igraph_t* graph, igraph_pagerank_algo_t algo, igraph_vector_t* vector, igraph_real_t* value, igraph_vs_t vids, igraph_bool_t directed, igraph_real_t damping, igraph_vector_t* weights, igraph_arpack_options_t* options);
igraph_error_t igraph_personalized_pagerank(igraph_t* graph, igraph_pagerank_algo_t algo, igraph_vector_t* vector, igraph_real_t* value, igraph_vs_t vids, igraph_bool_t directed, igraph_real_t damping, igraph_vector_t* reset, igraph_vector_t* weights, igraph_arpack_options_t* options);
igraph_error_t igraph_personalized_pagerank_vs(igraph_t* graph, igraph_pagerank_algo_t algo, igraph_vector_t* vector, igraph_real_t* value, igraph_vs_t vids, igraph_bool_t directed, igraph_real_t damping, igraph_vs_t reset_vids, igraph_vector_t* weights, igraph_arpack_options_t* options);
igraph_error_t igraph_eigenvector_centrality(igraph_t* graph, igraph_vector_t* vector, igraph_real_t* value, igraph_bool_t directed, igraph_bool_t scale, igraph_vector_t* weights, igraph_arpack_options_t* options);
igraph_error_t igraph_hub_and_authority_scores(igraph_t* graph, igraph_vector_t* hub_vector, igraph_vector_t* authority_vector, igraph_real_t* value, igraph_bool_t scale, igraph_vector_t* weights, igraph_arpack_options_t* options);
igraph_error_t igraph_constraint(igraph_t* graph, igraph_vector_t* res, igraph_vs_t vids, igraph_vector_t* weights);
igraph_error_t igraph_convergence_degree(igraph_t* graph, igraph_vector_t* result, igraph_vector_t* ins, igraph_vector_t* outs);
igraph_real_t igraph_centralization(igraph_vector_t* scores, igraph_real_t theoretical_max, igraph_bool_t normalized);
igraph_error_t igraph_centralization_degree(igraph_t* graph, igraph_vector_t* res, igraph_neimode_t mode, igraph_bool_t loops, igraph_real_t* centralization, igraph_real_t* theoretical_max, igraph_bool_t normalized);
igraph_error_t igraph_centralization_degree_tmax(igraph_t* graph, igraph_integer_t nodes, igraph_neimode_t mode, igraph_bool_t loops, igraph_real_t* res);
igraph_error_t igraph_centralization_betweenness(igraph_t* graph, igraph_vector_t* res, igraph_bool_t directed, igraph_real_t* centralization, igraph_real_t* theoretical_max, igraph_bool_t normalized);
igraph_error_t igraph_centralization_betweenness_tmax(igraph_t* graph, igraph_integer_t nodes, igraph_bool_t directed, igraph_real_t* res);
igraph_error_t igraph_centralization_closeness(igraph_t* graph, igraph_vector_t* res, igraph_neimode_t mode, igraph_real_t* centralization, igraph_real_t* theoretical_max, igraph_bool_t normalized);
igraph_error_t igraph_centralization_closeness_tmax(igraph_t* graph, igraph_integer_t nodes, igraph_neimode_t mode, igraph_real_t* res);
igraph_error_t igraph_centralization_eigenvector_centrality(igraph_t* graph, igraph_vector_t* vector, igraph_real_t* value, igraph_bool_t directed, igraph_bool_t scale, igraph_arpack_options_t* options, igraph_real_t* centralization, igraph_real_t* theoretical_max, igraph_bool_t normalized);
igraph_error_t igraph_centralization_eigenvector_centrality_tmax(igraph_t* graph, igraph_integer_t nodes, igraph_bool_t directed, igraph_bool_t scale, igraph_real_t* res);
igraph_error_t igraph_hub_score(igraph_t* graph, igraph_vector_t* vector, igraph_real_t* value, igraph_bool_t scale, igraph_vector_t* weights, igraph_arpack_options_t* options);
igraph_error_t igraph_authority_score(igraph_t* graph, igraph_vector_t* vector, igraph_real_t* value, igraph_bool_t scale, igraph_vector_t* weights, igraph_arpack_options_t* options);
alias igraph_astar_heuristic_func_t = igraph_error_t function(igraph_real_t* result, igraph_integer_t from, igraph_integer_t to, void* extra);

enum igraph_floyd_warshall_algorithm_t {
    IGRAPH_FLOYD_WARSHALL_AUTOMATIC = 0,
    IGRAPH_FLOYD_WARSHALL_ORIGINAL = 1,
    IGRAPH_FLOYD_WARSHALL_TREE = 2,
}

alias IGRAPH_FLOYD_WARSHALL_AUTOMATIC = igraph_floyd_warshall_algorithm_t.IGRAPH_FLOYD_WARSHALL_AUTOMATIC;
alias IGRAPH_FLOYD_WARSHALL_ORIGINAL = igraph_floyd_warshall_algorithm_t.IGRAPH_FLOYD_WARSHALL_ORIGINAL;
alias IGRAPH_FLOYD_WARSHALL_TREE = igraph_floyd_warshall_algorithm_t.IGRAPH_FLOYD_WARSHALL_TREE;
igraph_error_t igraph_diameter(igraph_t* graph, igraph_real_t* res, igraph_integer_t* from, igraph_integer_t* to, igraph_vector_int_t* vertex_path, igraph_vector_int_t* edge_path, igraph_bool_t directed, igraph_bool_t unconn);
igraph_error_t igraph_diameter_dijkstra(igraph_t* graph, igraph_vector_t* weights, igraph_real_t* res, igraph_integer_t* from, igraph_integer_t* to, igraph_vector_int_t* vertex_path, igraph_vector_int_t* edge_path, igraph_bool_t directed, igraph_bool_t unconn);
igraph_error_t igraph_distances_cutoff(igraph_t* graph, igraph_matrix_t* res, igraph_vs_t from, igraph_vs_t to, igraph_neimode_t mode, igraph_real_t cutoff);
igraph_error_t igraph_distances(igraph_t* graph, igraph_matrix_t* res, igraph_vs_t from, igraph_vs_t to, igraph_neimode_t mode);
igraph_error_t igraph_distances_bellman_ford(igraph_t* graph, igraph_matrix_t* res, igraph_vs_t from, igraph_vs_t to, igraph_vector_t* weights, igraph_neimode_t mode);
igraph_error_t igraph_distances_dijkstra_cutoff(igraph_t* graph, igraph_matrix_t* res, igraph_vs_t from, igraph_vs_t to, igraph_vector_t* weights, igraph_neimode_t mode, igraph_real_t cutoff);
igraph_error_t igraph_distances_dijkstra(igraph_t* graph, igraph_matrix_t* res, igraph_vs_t from, igraph_vs_t to, igraph_vector_t* weights, igraph_neimode_t mode);
igraph_error_t igraph_distances_johnson(igraph_t* graph, igraph_matrix_t* res, igraph_vs_t from, igraph_vs_t to, igraph_vector_t* weights);
igraph_error_t igraph_distances_floyd_warshall(igraph_t* graph, igraph_matrix_t* res, igraph_vs_t from, igraph_vs_t to, igraph_vector_t* weights, igraph_neimode_t mode, igraph_floyd_warshall_algorithm_t method);
igraph_error_t igraph_shortest_paths(igraph_t* graph, igraph_matrix_t* res, igraph_vs_t from, igraph_vs_t to, igraph_neimode_t mode);
igraph_error_t igraph_shortest_paths_bellman_ford(igraph_t* graph, igraph_matrix_t* res, igraph_vs_t from, igraph_vs_t to, igraph_vector_t* weights, igraph_neimode_t mode);
igraph_error_t igraph_shortest_paths_dijkstra(igraph_t* graph, igraph_matrix_t* res, igraph_vs_t from, igraph_vs_t to, igraph_vector_t* weights, igraph_neimode_t mode);
igraph_error_t igraph_shortest_paths_johnson(igraph_t* graph, igraph_matrix_t* res, igraph_vs_t from, igraph_vs_t to, igraph_vector_t* weights);
igraph_error_t igraph_get_shortest_paths(igraph_t* graph, igraph_vector_int_list_t* vertices, igraph_vector_int_list_t* edges, igraph_integer_t from, igraph_vs_t to, igraph_neimode_t mode, igraph_vector_int_t* parents, igraph_vector_int_t* inbound_edges);
igraph_error_t igraph_get_shortest_paths_bellman_ford(igraph_t* graph, igraph_vector_int_list_t* vertices, igraph_vector_int_list_t* edges, igraph_integer_t from, igraph_vs_t to, igraph_vector_t* weights, igraph_neimode_t mode, igraph_vector_int_t* parents, igraph_vector_int_t* inbound_edges);
igraph_error_t igraph_get_shortest_paths_dijkstra(igraph_t* graph, igraph_vector_int_list_t* vertices, igraph_vector_int_list_t* edges, igraph_integer_t from, igraph_vs_t to, igraph_vector_t* weights, igraph_neimode_t mode, igraph_vector_int_t* parents, igraph_vector_int_t* inbound_edges);
igraph_error_t igraph_get_shortest_path(igraph_t* graph, igraph_vector_int_t* vertices, igraph_vector_int_t* edges, igraph_integer_t from, igraph_integer_t to, igraph_neimode_t mode);
igraph_error_t igraph_get_shortest_path_bellman_ford(igraph_t* graph, igraph_vector_int_t* vertices, igraph_vector_int_t* edges, igraph_integer_t from, igraph_integer_t to, igraph_vector_t* weights, igraph_neimode_t mode);
igraph_error_t igraph_get_shortest_path_dijkstra(igraph_t* graph, igraph_vector_int_t* vertices, igraph_vector_int_t* edges, igraph_integer_t from, igraph_integer_t to, igraph_vector_t* weights, igraph_neimode_t mode);
igraph_error_t igraph_get_shortest_path_astar(igraph_t* graph, igraph_vector_int_t* vertices, igraph_vector_int_t* edges, igraph_integer_t from, igraph_integer_t to, igraph_vector_t* weights, igraph_neimode_t mode, igraph_error_t function(igraph_real_t* result, igraph_integer_t from, igraph_integer_t to, void* extra) heuristic, void* extra);
igraph_error_t igraph_get_all_shortest_paths(igraph_t* graph, igraph_vector_int_list_t* vertices, igraph_vector_int_list_t* edges, igraph_vector_int_t* nrgeo, igraph_integer_t from, igraph_vs_t to, igraph_neimode_t mode);
igraph_error_t igraph_get_all_shortest_paths_dijkstra(igraph_t* graph, igraph_vector_int_list_t* vertices, igraph_vector_int_list_t* edges, igraph_vector_int_t* nrgeo, igraph_integer_t from, igraph_vs_t to, igraph_vector_t* weights, igraph_neimode_t mode);
igraph_error_t igraph_average_path_length(igraph_t* graph, igraph_real_t* res, igraph_real_t* unconn_pairs, igraph_bool_t directed, igraph_bool_t unconn);
igraph_error_t igraph_average_path_length_dijkstra(igraph_t* graph, igraph_real_t* res, igraph_real_t* unconn_pairs, igraph_vector_t* weights, igraph_bool_t directed, igraph_bool_t unconn);
igraph_error_t igraph_path_length_hist(igraph_t* graph, igraph_vector_t* res, igraph_real_t* unconnected, igraph_bool_t directed);
igraph_error_t igraph_global_efficiency(igraph_t* graph, igraph_real_t* res, igraph_vector_t* weights, igraph_bool_t directed);
igraph_error_t igraph_local_efficiency(igraph_t* graph, igraph_vector_t* res, igraph_vs_t vids, igraph_vector_t* weights, igraph_bool_t directed, igraph_neimode_t mode);
igraph_error_t igraph_average_local_efficiency(igraph_t* graph, igraph_real_t* res, igraph_vector_t* weights, igraph_bool_t directed, igraph_neimode_t mode);
igraph_error_t igraph_eccentricity(igraph_t* graph, igraph_vector_t* res, igraph_vs_t vids, igraph_neimode_t mode);
igraph_error_t igraph_eccentricity_dijkstra(igraph_t* graph, igraph_vector_t* weights, igraph_vector_t* res, igraph_vs_t vids, igraph_neimode_t mode);
igraph_error_t igraph_radius(igraph_t* graph, igraph_real_t* radius, igraph_neimode_t mode);
igraph_error_t igraph_radius_dijkstra(igraph_t* graph, igraph_vector_t* weights, igraph_real_t* radius, igraph_neimode_t mode);
igraph_error_t igraph_graph_center(igraph_t* graph, igraph_vector_int_t* res, igraph_neimode_t mode);
igraph_error_t igraph_graph_center_dijkstra(igraph_t* graph, igraph_vector_t* weights, igraph_vector_int_t* res, igraph_neimode_t mode);
igraph_error_t igraph_pseudo_diameter(igraph_t* graph, igraph_real_t* diameter, igraph_integer_t vid_start, igraph_integer_t* from, igraph_integer_t* to, igraph_bool_t directed, igraph_bool_t unconn);
igraph_error_t igraph_pseudo_diameter_dijkstra(igraph_t* graph, igraph_vector_t* weights, igraph_real_t* diameter, igraph_integer_t vid_start, igraph_integer_t* from, igraph_integer_t* to, igraph_bool_t directed, igraph_bool_t unconn);
igraph_error_t igraph_get_all_simple_paths(igraph_t* graph, igraph_vector_int_t* res, igraph_integer_t from, igraph_vs_t to, igraph_integer_t cutoff, igraph_neimode_t mode);
igraph_error_t igraph_random_walk(igraph_t* graph, igraph_vector_t* weights, igraph_vector_int_t* vertices, igraph_vector_int_t* edges, igraph_integer_t start, igraph_neimode_t mode, igraph_integer_t steps, igraph_random_walk_stuck_t stuck);
igraph_error_t igraph_get_k_shortest_paths(igraph_t* graph, igraph_vector_t* weights, igraph_vector_int_list_t* vertex_paths, igraph_vector_int_list_t* edge_paths, igraph_integer_t k, igraph_integer_t from, igraph_integer_t to, igraph_neimode_t mode);
igraph_error_t igraph_spanner(igraph_t* graph, igraph_vector_int_t* spanner, igraph_real_t stretch, igraph_vector_t* weights);
igraph_error_t igraph_get_widest_paths(igraph_t* graph, igraph_vector_int_list_t* vertices, igraph_vector_int_list_t* edges, igraph_integer_t from, igraph_vs_t to, igraph_vector_t* weights, igraph_neimode_t mode, igraph_vector_int_t* parents, igraph_vector_int_t* inbound_edges);
igraph_error_t igraph_get_widest_path(igraph_t* graph, igraph_vector_int_t* vertices, igraph_vector_int_t* edges, igraph_integer_t from, igraph_integer_t to, igraph_vector_t* weights, igraph_neimode_t mode);
igraph_error_t igraph_widest_path_widths_floyd_warshall(igraph_t* graph, igraph_matrix_t* res, igraph_vs_t from, igraph_vs_t to, igraph_vector_t* weights, igraph_neimode_t mode);
igraph_error_t igraph_widest_path_widths_dijkstra(igraph_t* graph, igraph_matrix_t* res, igraph_vs_t from, igraph_vs_t to, igraph_vector_t* weights, igraph_neimode_t mode);
igraph_error_t igraph_voronoi(igraph_t* graph, igraph_vector_int_t* membership, igraph_vector_t* distances, igraph_vector_int_t* generators, igraph_vector_t* weights, igraph_neimode_t mode, igraph_voronoi_tiebreaker_t tiebreaker);
igraph_error_t igraph_expand_path_to_pairs(igraph_vector_int_t* path);
igraph_error_t igraph_vertex_path_from_edge_path(igraph_t* graph, igraph_integer_t start, igraph_vector_int_t* edge_path, igraph_vector_int_t* vertex_path, igraph_neimode_t mode);
igraph_error_t igraph_random_edge_walk(igraph_t* graph, igraph_vector_t* weights, igraph_vector_int_t* edgewalk, igraph_integer_t start, igraph_neimode_t mode, igraph_integer_t steps, igraph_random_walk_stuck_t stuck);
igraph_error_t igraph_clusters(igraph_t* graph, igraph_vector_int_t* membership, igraph_vector_int_t* csize, igraph_integer_t* no, igraph_connectedness_t mode);
igraph_error_t igraph_connected_components(igraph_t* graph, igraph_vector_int_t* membership, igraph_vector_int_t* csize, igraph_integer_t* no, igraph_connectedness_t mode);
igraph_error_t igraph_is_connected(igraph_t* graph, igraph_bool_t* res, igraph_connectedness_t mode);
igraph_error_t igraph_decompose(igraph_t* graph, igraph_graph_list_t* components, igraph_connectedness_t mode, igraph_integer_t maxcompno, igraph_integer_t minelements);
igraph_error_t igraph_articulation_points(igraph_t* graph, igraph_vector_int_t* res);
igraph_error_t igraph_biconnected_components(igraph_t* graph, igraph_integer_t* no, igraph_vector_int_list_t* tree_edges, igraph_vector_int_list_t* component_edges, igraph_vector_int_list_t* components, igraph_vector_int_t* articulation_points);
igraph_error_t igraph_is_biconnected(igraph_t* graph, igraph_bool_t* result);
igraph_error_t igraph_bridges(igraph_t* graph, igraph_vector_int_t* bridges);
void igraph_decompose_destroy(igraph_vector_ptr_t* complist);
igraph_error_t igraph_are_adjacent(igraph_t* graph, igraph_integer_t v1, igraph_integer_t v2, igraph_bool_t* res);
igraph_error_t igraph_are_connected(igraph_t* graph, igraph_integer_t v1, igraph_integer_t v2, igraph_bool_t* res);
igraph_error_t igraph_count_multiple(igraph_t* graph, igraph_vector_int_t* res, igraph_es_t es);
igraph_error_t igraph_count_multiple_1(igraph_t* graph, igraph_integer_t* res, igraph_integer_t eid);
igraph_error_t igraph_density(igraph_t* graph, igraph_real_t* res, igraph_bool_t loops);
igraph_error_t igraph_diversity(igraph_t* graph, igraph_vector_t* weights, igraph_vector_t* res, igraph_vs_t vs);
igraph_error_t igraph_girth(igraph_t* graph, igraph_real_t* girth, igraph_vector_int_t* circle);
igraph_error_t igraph_has_loop(igraph_t* graph, igraph_bool_t* res);
igraph_error_t igraph_has_multiple(igraph_t* graph, igraph_bool_t* res);
igraph_error_t igraph_is_loop(igraph_t* graph, igraph_vector_bool_t* res, igraph_es_t es);
igraph_error_t igraph_is_multiple(igraph_t* graph, igraph_vector_bool_t* res, igraph_es_t es);
igraph_error_t igraph_is_mutual(igraph_t* graph, igraph_vector_bool_t* res, igraph_es_t es, igraph_bool_t loops);
igraph_error_t igraph_has_mutual(igraph_t* graph, igraph_bool_t* res, igraph_bool_t loops);
igraph_error_t igraph_is_simple(igraph_t* graph, igraph_bool_t* res);
igraph_error_t igraph_is_tree(igraph_t* graph, igraph_bool_t* res, igraph_integer_t* root, igraph_neimode_t mode);
igraph_error_t igraph_is_acyclic(igraph_t* graph, igraph_bool_t* res);
igraph_error_t igraph_is_forest(igraph_t* graph, igraph_bool_t* res, igraph_vector_int_t* roots, igraph_neimode_t mode);
igraph_error_t igraph_maxdegree(igraph_t* graph, igraph_integer_t* res, igraph_vs_t vids, igraph_neimode_t mode, igraph_bool_t loops);
igraph_error_t igraph_reciprocity(igraph_t* graph, igraph_real_t* res, igraph_bool_t ignore_loops, igraph_reciprocity_t mode);
igraph_error_t igraph_strength(igraph_t* graph, igraph_vector_t* res, igraph_vs_t vids, igraph_neimode_t mode, igraph_bool_t loops, igraph_vector_t* weights);
igraph_error_t igraph_sort_vertex_ids_by_degree(igraph_t* graph, igraph_vector_int_t* outvids, igraph_vs_t vids, igraph_neimode_t mode, igraph_bool_t loops, igraph_order_t order, igraph_bool_t only_indices);
igraph_error_t igraph_is_perfect(igraph_t* graph, igraph_bool_t* perfect);
igraph_error_t igraph_minimum_spanning_tree(igraph_t* graph, igraph_vector_int_t* res, igraph_vector_t* weights);
igraph_error_t igraph_minimum_spanning_tree_unweighted(igraph_t* graph, igraph_t* mst);
igraph_error_t igraph_minimum_spanning_tree_prim(igraph_t* graph, igraph_t* mst, igraph_vector_t* weights);
igraph_error_t igraph_random_spanning_tree(igraph_t* graph, igraph_vector_int_t* res, igraph_integer_t vid);
igraph_error_t igraph_subcomponent(igraph_t* graph, igraph_vector_int_t* res, igraph_integer_t vid, igraph_neimode_t mode);
igraph_error_t igraph_unfold_tree(igraph_t* graph, igraph_t* tree, igraph_neimode_t mode, igraph_vector_int_t* roots, igraph_vector_int_t* vertex_index);
igraph_error_t igraph_maximum_cardinality_search(igraph_t* graph, igraph_vector_int_t* alpha, igraph_vector_int_t* alpham1);
igraph_error_t igraph_is_chordal(igraph_t* graph, igraph_vector_int_t* alpha, igraph_vector_int_t* alpham1, igraph_bool_t* chordal, igraph_vector_int_t* fill_in, igraph_t* newgraph);
igraph_error_t igraph_avg_nearest_neighbor_degree(igraph_t* graph, igraph_vs_t vids, igraph_neimode_t mode, igraph_neimode_t neighbor_degree_mode, igraph_vector_t* knn, igraph_vector_t* knnk, igraph_vector_t* weights);
igraph_error_t igraph_degree_correlation_vector(igraph_t* graph, igraph_vector_t* weights, igraph_vector_t* knnk, igraph_neimode_t from_mode, igraph_neimode_t to_mode, igraph_bool_t directed_neighbors);
igraph_error_t igraph_feedback_arc_set(igraph_t* graph, igraph_vector_int_t* result, igraph_vector_t* weights, igraph_fas_algorithm_t algo);

enum igraph_laplacian_normalization_t {
    IGRAPH_LAPLACIAN_UNNORMALIZED = 0,
    IGRAPH_LAPLACIAN_SYMMETRIC = 1,
    IGRAPH_LAPLACIAN_LEFT = 2,
    IGRAPH_LAPLACIAN_RIGHT = 3,
}

alias IGRAPH_LAPLACIAN_UNNORMALIZED = igraph_laplacian_normalization_t.IGRAPH_LAPLACIAN_UNNORMALIZED;
alias IGRAPH_LAPLACIAN_SYMMETRIC = igraph_laplacian_normalization_t.IGRAPH_LAPLACIAN_SYMMETRIC;
alias IGRAPH_LAPLACIAN_LEFT = igraph_laplacian_normalization_t.IGRAPH_LAPLACIAN_LEFT;
alias IGRAPH_LAPLACIAN_RIGHT = igraph_laplacian_normalization_t.IGRAPH_LAPLACIAN_RIGHT;
igraph_error_t igraph_get_laplacian(igraph_t* graph, igraph_matrix_t* res, igraph_neimode_t mode, igraph_laplacian_normalization_t normalization, igraph_vector_t* weights);
igraph_error_t igraph_get_laplacian_sparse(igraph_t* graph, igraph_sparsemat_t* sparseres, igraph_neimode_t mode, igraph_laplacian_normalization_t normalization, igraph_vector_t* weights);
igraph_error_t igraph_laplacian(igraph_t* graph, igraph_matrix_t* res, igraph_sparsemat_t* sparseres, igraph_bool_t normalized, igraph_vector_t* weights);
igraph_error_t igraph_transitivity_undirected(igraph_t* graph, igraph_real_t* res, igraph_transitivity_mode_t mode);
igraph_error_t igraph_transitivity_local_undirected(igraph_t* graph, igraph_vector_t* res, igraph_vs_t vids, igraph_transitivity_mode_t mode);
igraph_error_t igraph_transitivity_avglocal_undirected(igraph_t* graph, igraph_real_t* res, igraph_transitivity_mode_t mode);
igraph_error_t igraph_transitivity_barrat(igraph_t* graph, igraph_vector_t* res, igraph_vs_t vids, igraph_vector_t* weights, igraph_transitivity_mode_t mode);
igraph_error_t igraph_ecc(igraph_t* graph, igraph_vector_t* res, igraph_es_t eids, igraph_integer_t k, igraph_bool_t offset, igraph_bool_t normalize);
igraph_error_t igraph_neighborhood_size(igraph_t* graph, igraph_vector_int_t* res, igraph_vs_t vids, igraph_integer_t order, igraph_neimode_t mode, igraph_integer_t mindist);
igraph_error_t igraph_neighborhood(igraph_t* graph, igraph_vector_int_list_t* res, igraph_vs_t vids, igraph_integer_t order, igraph_neimode_t mode, igraph_integer_t mindist);
igraph_error_t igraph_neighborhood_graphs(igraph_t* graph, igraph_graph_list_t* res, igraph_vs_t vids, igraph_integer_t order, igraph_neimode_t mode, igraph_integer_t mindist);
igraph_error_t igraph_topological_sorting(igraph_t* graph, igraph_vector_int_t* res, igraph_neimode_t mode);
igraph_error_t igraph_is_dag(igraph_t* graph, igraph_bool_t* res);
igraph_error_t igraph_transitive_closure_dag(igraph_t* graph, igraph_t* closure);
igraph_error_t igraph_simplify_and_colorize(igraph_t* graph, igraph_t* res, igraph_vector_int_t* vertex_color, igraph_vector_int_t* edge_color);
igraph_error_t igraph_isomorphic(igraph_t* graph1, igraph_t* graph2, igraph_bool_t* iso);
igraph_error_t igraph_subisomorphic(igraph_t* graph1, igraph_t* graph2, igraph_bool_t* iso);
igraph_error_t igraph_subisomorphic_lad(igraph_t* pattern, igraph_t* target, igraph_vector_int_list_t* domains, igraph_bool_t* iso, igraph_vector_int_t* map, igraph_vector_int_list_t* maps, igraph_bool_t induced, igraph_integer_t time_limit);
alias igraph_isohandler_t = igraph_error_t function(igraph_vector_int_t* map12, igraph_vector_int_t* map21, void* arg);
alias igraph_isocompat_t = igraph_bool_t function(igraph_t* graph1, igraph_t* graph2, const(long) g1_num, const(long) g2_num, void* arg);
igraph_error_t igraph_isomorphic_vf2(igraph_t* graph1, igraph_t* graph2, igraph_vector_int_t* vertex_color1, igraph_vector_int_t* vertex_color2, igraph_vector_int_t* edge_color1, igraph_vector_int_t* edge_color2, igraph_bool_t* iso, igraph_vector_int_t* map12, igraph_vector_int_t* map21, igraph_bool_t function(igraph_t* graph1, igraph_t* graph2, const(long) g1_num, const(long) g2_num, void* arg) node_compat_fn, igraph_bool_t function(igraph_t* graph1, igraph_t* graph2, const(long) g1_num, const(long) g2_num, void* arg) edge_compat_fn, void* arg);
igraph_error_t igraph_count_isomorphisms_vf2(igraph_t* graph1, igraph_t* graph2, igraph_vector_int_t* vertex_color1, igraph_vector_int_t* vertex_color2, igraph_vector_int_t* edge_color1, igraph_vector_int_t* edge_color2, igraph_integer_t* count, igraph_bool_t function(igraph_t* graph1, igraph_t* graph2, const(long) g1_num, const(long) g2_num, void* arg) node_compat_fn, igraph_bool_t function(igraph_t* graph1, igraph_t* graph2, const(long) g1_num, const(long) g2_num, void* arg) edge_compat_fn, void* arg);
igraph_error_t igraph_get_isomorphisms_vf2(igraph_t* graph1, igraph_t* graph2, igraph_vector_int_t* vertex_color1, igraph_vector_int_t* vertex_color2, igraph_vector_int_t* edge_color1, igraph_vector_int_t* edge_color2, igraph_vector_int_list_t* maps, igraph_bool_t function(igraph_t* graph1, igraph_t* graph2, const(long) g1_num, const(long) g2_num, void* arg) node_compat_fn, igraph_bool_t function(igraph_t* graph1, igraph_t* graph2, const(long) g1_num, const(long) g2_num, void* arg) edge_compat_fn, void* arg);
igraph_error_t igraph_get_isomorphisms_vf2_callback(igraph_t* graph1, igraph_t* graph2, igraph_vector_int_t* vertex_color1, igraph_vector_int_t* vertex_color2, igraph_vector_int_t* edge_color1, igraph_vector_int_t* edge_color2, igraph_vector_int_t* map12, igraph_vector_int_t* map21, igraph_error_t function(igraph_vector_int_t* map12, igraph_vector_int_t* map21, void* arg) isohandler_fn, igraph_bool_t function(igraph_t* graph1, igraph_t* graph2, const(long) g1_num, const(long) g2_num, void* arg) node_compat_fn, igraph_bool_t function(igraph_t* graph1, igraph_t* graph2, const(long) g1_num, const(long) g2_num, void* arg) edge_compat_fn, void* arg);
igraph_error_t igraph_isomorphic_function_vf2(igraph_t* graph1, igraph_t* graph2, igraph_vector_int_t* vertex_color1, igraph_vector_int_t* vertex_color2, igraph_vector_int_t* edge_color1, igraph_vector_int_t* edge_color2, igraph_vector_int_t* map12, igraph_vector_int_t* map21, igraph_error_t function(igraph_vector_int_t* map12, igraph_vector_int_t* map21, void* arg) isohandler_fn, igraph_bool_t function(igraph_t* graph1, igraph_t* graph2, const(long) g1_num, const(long) g2_num, void* arg) node_compat_fn, igraph_bool_t function(igraph_t* graph1, igraph_t* graph2, const(long) g1_num, const(long) g2_num, void* arg) edge_compat_fn, void* arg);
igraph_error_t igraph_subisomorphic_vf2(igraph_t* graph1, igraph_t* graph2, igraph_vector_int_t* vertex_color1, igraph_vector_int_t* vertex_color2, igraph_vector_int_t* edge_color1, igraph_vector_int_t* edge_color2, igraph_bool_t* iso, igraph_vector_int_t* map12, igraph_vector_int_t* map21, igraph_bool_t function(igraph_t* graph1, igraph_t* graph2, const(long) g1_num, const(long) g2_num, void* arg) node_compat_fn, igraph_bool_t function(igraph_t* graph1, igraph_t* graph2, const(long) g1_num, const(long) g2_num, void* arg) edge_compat_fn, void* arg);
igraph_error_t igraph_count_subisomorphisms_vf2(igraph_t* graph1, igraph_t* graph2, igraph_vector_int_t* vertex_color1, igraph_vector_int_t* vertex_color2, igraph_vector_int_t* edge_color1, igraph_vector_int_t* edge_color2, igraph_integer_t* count, igraph_bool_t function(igraph_t* graph1, igraph_t* graph2, const(long) g1_num, const(long) g2_num, void* arg) node_compat_fn, igraph_bool_t function(igraph_t* graph1, igraph_t* graph2, const(long) g1_num, const(long) g2_num, void* arg) edge_compat_fn, void* arg);
igraph_error_t igraph_get_subisomorphisms_vf2(igraph_t* graph1, igraph_t* graph2, igraph_vector_int_t* vertex_color1, igraph_vector_int_t* vertex_color2, igraph_vector_int_t* edge_color1, igraph_vector_int_t* edge_color2, igraph_vector_int_list_t* maps, igraph_bool_t function(igraph_t* graph1, igraph_t* graph2, const(long) g1_num, const(long) g2_num, void* arg) node_compat_fn, igraph_bool_t function(igraph_t* graph1, igraph_t* graph2, const(long) g1_num, const(long) g2_num, void* arg) edge_compat_fn, void* arg);
igraph_error_t igraph_get_subisomorphisms_vf2_callback(igraph_t* graph1, igraph_t* graph2, igraph_vector_int_t* vertex_color1, igraph_vector_int_t* vertex_color2, igraph_vector_int_t* edge_color1, igraph_vector_int_t* edge_color2, igraph_vector_int_t* map12, igraph_vector_int_t* map21, igraph_error_t function(igraph_vector_int_t* map12, igraph_vector_int_t* map21, void* arg) isohandler_fn, igraph_bool_t function(igraph_t* graph1, igraph_t* graph2, const(long) g1_num, const(long) g2_num, void* arg) node_compat_fn, igraph_bool_t function(igraph_t* graph1, igraph_t* graph2, const(long) g1_num, const(long) g2_num, void* arg) edge_compat_fn, void* arg);
igraph_error_t igraph_subisomorphic_function_vf2(igraph_t* graph1, igraph_t* graph2, igraph_vector_int_t* vertex_color1, igraph_vector_int_t* vertex_color2, igraph_vector_int_t* edge_color1, igraph_vector_int_t* edge_color2, igraph_vector_int_t* map12, igraph_vector_int_t* map21, igraph_error_t function(igraph_vector_int_t* map12, igraph_vector_int_t* map21, void* arg) isohandler_fn, igraph_bool_t function(igraph_t* graph1, igraph_t* graph2, const(long) g1_num, const(long) g2_num, void* arg) node_compat_fn, igraph_bool_t function(igraph_t* graph1, igraph_t* graph2, const(long) g1_num, const(long) g2_num, void* arg) edge_compat_fn, void* arg);

struct igraph_bliss_info_t {
    ulong nof_nodes;
    ulong nof_leaf_nodes;
    ulong nof_bad_nodes;
    ulong nof_canupdates;
    ulong nof_generators;
    ulong max_level;
    char* group_size;
}

enum igraph_bliss_sh_t {
    IGRAPH_BLISS_F = 0,
    IGRAPH_BLISS_FL,
    IGRAPH_BLISS_FS,
    IGRAPH_BLISS_FM,
    IGRAPH_BLISS_FLM,
    IGRAPH_BLISS_FSM,
}

alias IGRAPH_BLISS_F = igraph_bliss_sh_t.IGRAPH_BLISS_F;
alias IGRAPH_BLISS_FL = igraph_bliss_sh_t.IGRAPH_BLISS_FL;
alias IGRAPH_BLISS_FS = igraph_bliss_sh_t.IGRAPH_BLISS_FS;
alias IGRAPH_BLISS_FM = igraph_bliss_sh_t.IGRAPH_BLISS_FM;
alias IGRAPH_BLISS_FLM = igraph_bliss_sh_t.IGRAPH_BLISS_FLM;
alias IGRAPH_BLISS_FSM = igraph_bliss_sh_t.IGRAPH_BLISS_FSM;
igraph_error_t igraph_canonical_permutation(igraph_t* graph, igraph_vector_int_t* colors, igraph_vector_int_t* labeling, igraph_bliss_sh_t sh, igraph_bliss_info_t* info);
igraph_error_t igraph_isomorphic_bliss(igraph_t* graph1, igraph_t* graph2, igraph_vector_int_t* colors1, igraph_vector_int_t* colors2, igraph_bool_t* iso, igraph_vector_int_t* map12, igraph_vector_int_t* map21, igraph_bliss_sh_t sh, igraph_bliss_info_t* info1, igraph_bliss_info_t* info2);
igraph_error_t igraph_count_automorphisms(igraph_t* graph, igraph_vector_int_t* colors, igraph_bliss_sh_t sh, igraph_bliss_info_t* info);
igraph_error_t igraph_automorphisms(igraph_t* graph, igraph_vector_int_t* colors, igraph_bliss_sh_t sh, igraph_bliss_info_t* info);
igraph_error_t igraph_automorphism_group(igraph_t* graph, igraph_vector_int_t* colors, igraph_vector_int_list_t* generators, igraph_bliss_sh_t sh, igraph_bliss_info_t* info);
igraph_error_t igraph_isomorphic_small(igraph_t* graph1, igraph_t* graph2, igraph_bool_t* iso);
igraph_error_t igraph_isoclass(igraph_t* graph, igraph_integer_t* isoclass);
igraph_error_t igraph_isoclass_subgraph(igraph_t* graph, igraph_vector_int_t* vids, igraph_integer_t* isoclass);
igraph_error_t igraph_isoclass_create(igraph_t* graph, igraph_integer_t size, igraph_integer_t number, igraph_bool_t directed);
igraph_error_t igraph_graph_count(igraph_integer_t n, igraph_bool_t directed, igraph_integer_t* count);
igraph_error_t igraph_isomorphic_34(igraph_t* graph1, igraph_t* graph2, igraph_bool_t* iso);
igraph_error_t igraph_full_bipartite(igraph_t* graph, igraph_vector_bool_t* types, igraph_integer_t n1, igraph_integer_t n2, igraph_bool_t directed, igraph_neimode_t mode);
igraph_error_t igraph_create_bipartite(igraph_t* g, igraph_vector_bool_t* types, igraph_vector_int_t* edges, igraph_bool_t directed);
igraph_error_t igraph_bipartite_projection_size(igraph_t* graph, igraph_vector_bool_t* types, igraph_integer_t* vcount1, igraph_integer_t* ecount1, igraph_integer_t* vcount2, igraph_integer_t* ecount2);
igraph_error_t igraph_bipartite_projection(igraph_t* graph, igraph_vector_bool_t* types, igraph_t* proj1, igraph_t* proj2, igraph_vector_int_t* multiplicity1, igraph_vector_int_t* multiplicity2, igraph_integer_t probe1);
igraph_error_t igraph_biadjacency(igraph_t* graph, igraph_vector_bool_t* types, igraph_matrix_t* input, igraph_bool_t directed, igraph_neimode_t mode, igraph_bool_t multiple);
igraph_error_t igraph_get_biadjacency(igraph_t* graph, igraph_vector_bool_t* types, igraph_matrix_t* res, igraph_vector_int_t* row_ids, igraph_vector_int_t* col_ids);
igraph_error_t igraph_is_bipartite(igraph_t* graph, igraph_bool_t* res, igraph_vector_bool_t* types);
igraph_error_t igraph_bipartite_game_gnp(igraph_t* graph, igraph_vector_bool_t* types, igraph_integer_t n1, igraph_integer_t n2, igraph_real_t p, igraph_bool_t directed, igraph_neimode_t mode);
igraph_error_t igraph_bipartite_game_gnm(igraph_t* graph, igraph_vector_bool_t* types, igraph_integer_t n1, igraph_integer_t n2, igraph_integer_t m, igraph_bool_t directed, igraph_neimode_t mode);
igraph_error_t igraph_incidence(igraph_t* graph, igraph_vector_bool_t* types, igraph_matrix_t* incidence, igraph_bool_t directed, igraph_neimode_t mode, igraph_bool_t multiple);
igraph_error_t igraph_get_incidence(igraph_t* graph, igraph_vector_bool_t* types, igraph_matrix_t* res, igraph_vector_int_t* row_ids, igraph_vector_int_t* col_ids);
igraph_error_t igraph_bipartite_game(igraph_t* graph, igraph_vector_bool_t* types, igraph_erdos_renyi_t type, igraph_integer_t n1, igraph_integer_t n2, igraph_real_t p, igraph_integer_t m, igraph_bool_t directed, igraph_neimode_t mode);
igraph_error_t igraph_maximal_cliques(igraph_t* graph, igraph_vector_int_list_t* res, igraph_integer_t min_size, igraph_integer_t max_size);
igraph_error_t igraph_maximal_cliques_file(igraph_t* graph, void* outfile, igraph_integer_t min_size, igraph_integer_t max_size);
igraph_error_t igraph_maximal_cliques_count(igraph_t* graph, igraph_integer_t* res, igraph_integer_t min_size, igraph_integer_t max_size);
igraph_error_t igraph_maximal_cliques_subset(igraph_t* graph, igraph_vector_int_t* subset, igraph_vector_int_list_t* res, igraph_integer_t* no, void* outfile, igraph_integer_t min_size, igraph_integer_t max_size);
igraph_error_t igraph_maximal_cliques_hist(igraph_t* graph, igraph_vector_t* hist, igraph_integer_t min_size, igraph_integer_t max_size);
igraph_error_t igraph_cliques(igraph_t* graph, igraph_vector_int_list_t* res, igraph_integer_t min_size, igraph_integer_t max_size);
igraph_error_t igraph_clique_size_hist(igraph_t* graph, igraph_vector_t* hist, igraph_integer_t min_size, igraph_integer_t max_size);
igraph_error_t igraph_largest_cliques(igraph_t* graph, igraph_vector_int_list_t* cliques);
igraph_error_t igraph_clique_number(igraph_t* graph, igraph_integer_t* no);
igraph_error_t igraph_weighted_cliques(igraph_t* graph, igraph_vector_t* vertex_weights, igraph_vector_int_list_t* res, igraph_real_t min_weight, igraph_real_t max_weight, igraph_bool_t maximal);
igraph_error_t igraph_largest_weighted_cliques(igraph_t* graph, igraph_vector_t* vertex_weights, igraph_vector_int_list_t* res);
igraph_error_t igraph_weighted_clique_number(igraph_t* graph, igraph_vector_t* vertex_weights, igraph_real_t* res);
igraph_error_t igraph_independent_vertex_sets(igraph_t* graph, igraph_vector_int_list_t* res, igraph_integer_t min_size, igraph_integer_t max_size);
igraph_error_t igraph_largest_independent_vertex_sets(igraph_t* graph, igraph_vector_int_list_t* res);
igraph_error_t igraph_maximal_independent_vertex_sets(igraph_t* graph, igraph_vector_int_list_t* res);
igraph_error_t igraph_independence_number(igraph_t* graph, igraph_integer_t* no);
alias igraph_clique_handler_t = igraph_error_t function(igraph_vector_int_t* clique, void* arg);
igraph_error_t igraph_cliques_callback(igraph_t* graph, igraph_integer_t min_size, igraph_integer_t max_size, igraph_error_t function(igraph_vector_int_t* clique, void* arg) cliquehandler_fn, void* arg);
igraph_error_t igraph_maximal_cliques_callback(igraph_t* graph, igraph_error_t function(igraph_vector_int_t* clique, void* arg) cliquehandler_fn, void* arg, igraph_integer_t min_size, igraph_integer_t max_size);
igraph_error_t igraph_layout_random(igraph_t* graph, igraph_matrix_t* res);
igraph_error_t igraph_layout_circle(igraph_t* graph, igraph_matrix_t* res, igraph_vs_t order);
igraph_error_t igraph_layout_star(igraph_t* graph, igraph_matrix_t* res, igraph_integer_t center, igraph_vector_int_t* order);
igraph_error_t igraph_layout_grid(igraph_t* graph, igraph_matrix_t* res, igraph_integer_t width);
igraph_error_t igraph_layout_fruchterman_reingold(igraph_t* graph, igraph_matrix_t* res, igraph_bool_t use_seed, igraph_integer_t niter, igraph_real_t start_temp, igraph_layout_grid_t grid, igraph_vector_t* weights, igraph_vector_t* minx, igraph_vector_t* maxx, igraph_vector_t* miny, igraph_vector_t* maxy);
igraph_error_t igraph_layout_kamada_kawai(igraph_t* graph, igraph_matrix_t* res, igraph_bool_t use_seed, igraph_integer_t maxiter, igraph_real_t epsilon, igraph_real_t kkconst, igraph_vector_t* weights, igraph_vector_t* minx, igraph_vector_t* maxx, igraph_vector_t* miny, igraph_vector_t* maxy);
igraph_error_t igraph_layout_lgl(igraph_t* graph, igraph_matrix_t* res, igraph_integer_t maxiter, igraph_real_t maxdelta, igraph_real_t area, igraph_real_t coolexp, igraph_real_t repulserad, igraph_real_t cellsize, igraph_integer_t root);
igraph_error_t igraph_layout_reingold_tilford(igraph_t* graph, igraph_matrix_t* res, igraph_neimode_t mode, igraph_vector_int_t* roots, igraph_vector_int_t* rootlevel);
igraph_error_t igraph_layout_reingold_tilford_circular(igraph_t* graph, igraph_matrix_t* res, igraph_neimode_t mode, igraph_vector_int_t* roots, igraph_vector_int_t* rootlevel);
igraph_error_t igraph_layout_sugiyama(igraph_t* graph, igraph_matrix_t* res, igraph_t* extd_graph, igraph_vector_int_t* extd_to_orig_eids, igraph_vector_int_t* layers, igraph_real_t hgap, igraph_real_t vgap, igraph_integer_t maxiter, igraph_vector_t* weights);
igraph_error_t igraph_layout_random_3d(igraph_t* graph, igraph_matrix_t* res);
igraph_error_t igraph_layout_sphere(igraph_t* graph, igraph_matrix_t* res);
igraph_error_t igraph_layout_grid_3d(igraph_t* graph, igraph_matrix_t* res, igraph_integer_t width, igraph_integer_t height);
igraph_error_t igraph_layout_fruchterman_reingold_3d(igraph_t* graph, igraph_matrix_t* res, igraph_bool_t use_seed, igraph_integer_t niter, igraph_real_t start_temp, igraph_vector_t* weights, igraph_vector_t* minx, igraph_vector_t* maxx, igraph_vector_t* miny, igraph_vector_t* maxy, igraph_vector_t* minz, igraph_vector_t* maxz);
igraph_error_t igraph_layout_kamada_kawai_3d(igraph_t* graph, igraph_matrix_t* res, igraph_bool_t use_seed, igraph_integer_t maxiter, igraph_real_t epsilon, igraph_real_t kkconst, igraph_vector_t* weights, igraph_vector_t* minx, igraph_vector_t* maxx, igraph_vector_t* miny, igraph_vector_t* maxy, igraph_vector_t* minz, igraph_vector_t* maxz);
igraph_error_t igraph_layout_graphopt(igraph_t* graph, igraph_matrix_t* res, igraph_integer_t niter, igraph_real_t node_charge, igraph_real_t node_mass, igraph_real_t spring_length, igraph_real_t spring_constant, igraph_real_t max_sa_movement, igraph_bool_t use_seed);
igraph_error_t igraph_layout_mds(igraph_t* graph, igraph_matrix_t* res, igraph_matrix_t* dist, igraph_integer_t dim);
igraph_error_t igraph_layout_bipartite(igraph_t* graph, igraph_vector_bool_t* types, igraph_matrix_t* res, igraph_real_t hgap, igraph_real_t vgap, igraph_integer_t maxiter);
igraph_error_t igraph_layout_umap(igraph_t* graph, igraph_matrix_t* res, igraph_bool_t use_seed, igraph_vector_t* distances, igraph_real_t min_dist, igraph_integer_t epochs, igraph_bool_t distances_are_weights);
igraph_error_t igraph_layout_umap_3d(igraph_t* graph, igraph_matrix_t* res, igraph_bool_t use_seed, igraph_vector_t* distances, igraph_real_t min_dist, igraph_integer_t epochs, igraph_bool_t distances_are_weights);
igraph_error_t igraph_layout_umap_compute_weights(igraph_t* graph, igraph_vector_t* distances, igraph_vector_t* weights);

struct igraph_layout_drl_options_t {
    igraph_real_t edge_cut;
    igraph_integer_t init_iterations;
    igraph_real_t init_temperature;
    igraph_real_t init_attraction;
    igraph_real_t init_damping_mult;
    igraph_integer_t liquid_iterations;
    igraph_real_t liquid_temperature;
    igraph_real_t liquid_attraction;
    igraph_real_t liquid_damping_mult;
    igraph_integer_t expansion_iterations;
    igraph_real_t expansion_temperature;
    igraph_real_t expansion_attraction;
    igraph_real_t expansion_damping_mult;
    igraph_integer_t cooldown_iterations;
    igraph_real_t cooldown_temperature;
    igraph_real_t cooldown_attraction;
    igraph_real_t cooldown_damping_mult;
    igraph_integer_t crunch_iterations;
    igraph_real_t crunch_temperature;
    igraph_real_t crunch_attraction;
    igraph_real_t crunch_damping_mult;
    igraph_integer_t simmer_iterations;
    igraph_real_t simmer_temperature;
    igraph_real_t simmer_attraction;
    igraph_real_t simmer_damping_mult;
}

enum igraph_layout_drl_default_t {
    IGRAPH_LAYOUT_DRL_DEFAULT = 0,
    IGRAPH_LAYOUT_DRL_COARSEN,
    IGRAPH_LAYOUT_DRL_COARSEST,
    IGRAPH_LAYOUT_DRL_REFINE,
    IGRAPH_LAYOUT_DRL_FINAL,
}

alias IGRAPH_LAYOUT_DRL_DEFAULT = igraph_layout_drl_default_t.IGRAPH_LAYOUT_DRL_DEFAULT;
alias IGRAPH_LAYOUT_DRL_COARSEN = igraph_layout_drl_default_t.IGRAPH_LAYOUT_DRL_COARSEN;
alias IGRAPH_LAYOUT_DRL_COARSEST = igraph_layout_drl_default_t.IGRAPH_LAYOUT_DRL_COARSEST;
alias IGRAPH_LAYOUT_DRL_REFINE = igraph_layout_drl_default_t.IGRAPH_LAYOUT_DRL_REFINE;
alias IGRAPH_LAYOUT_DRL_FINAL = igraph_layout_drl_default_t.IGRAPH_LAYOUT_DRL_FINAL;
igraph_error_t igraph_layout_drl_options_init(igraph_layout_drl_options_t* options, igraph_layout_drl_default_t templ);
igraph_error_t igraph_layout_drl(igraph_t* graph, igraph_matrix_t* res, igraph_bool_t use_seed, igraph_layout_drl_options_t* options, igraph_vector_t* weights);
igraph_error_t igraph_layout_drl_3d(igraph_t* graph, igraph_matrix_t* res, igraph_bool_t use_seed, igraph_layout_drl_options_t* options, igraph_vector_t* weights);
igraph_error_t igraph_layout_merge_dla(igraph_vector_ptr_t* graphs, igraph_matrix_list_t* coords, igraph_matrix_t* res);
igraph_error_t igraph_layout_gem(igraph_t* graph, igraph_matrix_t* res, igraph_bool_t use_seed, igraph_integer_t maxiter, igraph_real_t temp_max, igraph_real_t temp_min, igraph_real_t temp_init);
igraph_error_t igraph_layout_davidson_harel(igraph_t* graph, igraph_matrix_t* res, igraph_bool_t use_seed, igraph_integer_t maxiter, igraph_integer_t fineiter, igraph_real_t cool_fact, igraph_real_t weight_node_dist, igraph_real_t weight_border, igraph_real_t weight_edge_lengths, igraph_real_t weight_edge_crossings, igraph_real_t weight_node_edge_dist);

enum igraph_root_choice_t {
    IGRAPH_ROOT_CHOICE_DEGREE,
    IGRAPH_ROOT_CHOICE_ECCENTRICITY,
}

alias IGRAPH_ROOT_CHOICE_DEGREE = igraph_root_choice_t.IGRAPH_ROOT_CHOICE_DEGREE;
alias IGRAPH_ROOT_CHOICE_ECCENTRICITY = igraph_root_choice_t.IGRAPH_ROOT_CHOICE_ECCENTRICITY;
igraph_error_t igraph_roots_for_tree_layout(igraph_t* graph, igraph_neimode_t mode, igraph_vector_int_t* roots, igraph_root_choice_t use_eccentricity);
alias igraph_bfshandler_t = igraph_error_t function(igraph_t* graph, igraph_integer_t vid, igraph_integer_t pred, igraph_integer_t succ, igraph_integer_t rank, igraph_integer_t dist, void* extra);
igraph_error_t igraph_bfs(igraph_t* graph, igraph_integer_t root, igraph_vector_int_t* roots, igraph_neimode_t mode, igraph_bool_t unreachable, igraph_vector_int_t* restricted, igraph_vector_int_t* order, igraph_vector_int_t* rank, igraph_vector_int_t* parents, igraph_vector_int_t* pred, igraph_vector_int_t* succ, igraph_vector_int_t* dist, igraph_error_t function(igraph_t* graph, igraph_integer_t vid, igraph_integer_t pred, igraph_integer_t succ, igraph_integer_t rank, igraph_integer_t dist, void* extra) callback, void* extra);
igraph_error_t igraph_bfs_simple(igraph_t* graph, igraph_integer_t root, igraph_neimode_t mode, igraph_vector_int_t* order, igraph_vector_int_t* layers, igraph_vector_int_t* parents);
alias igraph_dfshandler_t = igraph_error_t function(igraph_t* graph, igraph_integer_t vid, igraph_integer_t dist, void* extra);
igraph_error_t igraph_dfs(igraph_t* graph, igraph_integer_t root, igraph_neimode_t mode, igraph_bool_t unreachable, igraph_vector_int_t* order, igraph_vector_int_t* order_out, igraph_vector_int_t* parents, igraph_vector_int_t* dist, igraph_error_t function(igraph_t* graph, igraph_integer_t vid, igraph_integer_t dist, void* extra) in_callback, igraph_error_t function(igraph_t* graph, igraph_integer_t vid, igraph_integer_t dist, void* extra) out_callback, void* extra);
igraph_error_t igraph_coreness(igraph_t* graph, igraph_vector_int_t* cores, igraph_neimode_t mode);
igraph_error_t igraph_trussness(igraph_t* graph, igraph_vector_int_t* trussness);
igraph_error_t igraph_community_optimal_modularity(igraph_t* graph, igraph_real_t* modularity, igraph_vector_int_t* membership, igraph_vector_t* weights);
igraph_error_t igraph_community_spinglass(igraph_t* graph, igraph_vector_t* weights, igraph_real_t* modularity, igraph_real_t* temperature, igraph_vector_int_t* membership, igraph_vector_int_t* csize, igraph_integer_t spins, igraph_bool_t parupdate, igraph_real_t starttemp, igraph_real_t stoptemp, igraph_real_t coolfact, igraph_spincomm_update_t update_rule, igraph_real_t gamma, igraph_spinglass_implementation_t implementation, igraph_real_t gamma_minus);
igraph_error_t igraph_community_spinglass_single(igraph_t* graph, igraph_vector_t* weights, igraph_integer_t vertex, igraph_vector_int_t* community, igraph_real_t* cohesion, igraph_real_t* adhesion, igraph_integer_t* inner_links, igraph_integer_t* outer_links, igraph_integer_t spins, igraph_spincomm_update_t update_rule, igraph_real_t gamma);
igraph_error_t igraph_community_walktrap(igraph_t* graph, igraph_vector_t* weights, igraph_integer_t steps, igraph_matrix_int_t* merges, igraph_vector_t* modularity, igraph_vector_int_t* membership);
igraph_error_t igraph_community_infomap(igraph_t* graph, igraph_vector_t* e_weights, igraph_vector_t* v_weights, igraph_integer_t nb_trials, igraph_vector_int_t* membership, igraph_real_t* codelength);
igraph_error_t igraph_community_edge_betweenness(igraph_t* graph, igraph_vector_int_t* removed_edges, igraph_vector_t* edge_betweenness, igraph_matrix_int_t* merges, igraph_vector_int_t* bridges, igraph_vector_t* modularity, igraph_vector_int_t* membership, igraph_bool_t directed, igraph_vector_t* weights);
igraph_error_t igraph_community_eb_get_merges(igraph_t* graph, const(bool) directed, igraph_vector_int_t* edges, igraph_vector_t* weights, igraph_matrix_int_t* merges, igraph_vector_int_t* bridges, igraph_vector_t* modularity, igraph_vector_int_t* membership);
igraph_error_t igraph_community_fastgreedy(igraph_t* graph, igraph_vector_t* weights, igraph_matrix_int_t* merges, igraph_vector_t* modularity, igraph_vector_int_t* membership);
igraph_error_t igraph_community_to_membership(igraph_matrix_int_t* merges, igraph_integer_t nodes, igraph_integer_t steps, igraph_vector_int_t* membership, igraph_vector_int_t* csize);
igraph_error_t igraph_le_community_to_membership(igraph_matrix_int_t* merges, igraph_integer_t steps, igraph_vector_int_t* membership, igraph_vector_int_t* csize);
igraph_error_t igraph_community_voronoi(igraph_t* graph, igraph_vector_int_t* membership, igraph_vector_int_t* generators, igraph_real_t* modularity, igraph_vector_t* lengths, igraph_vector_t* weights, igraph_neimode_t mode, igraph_real_t r);
igraph_error_t igraph_modularity(igraph_t* graph, igraph_vector_int_t* membership, igraph_vector_t* weights, const(double) resolution, const(bool) directed, igraph_real_t* modularity);
igraph_error_t igraph_modularity_matrix(igraph_t* graph, igraph_vector_t* weights, const(double) resolution, igraph_matrix_t* modmat, igraph_bool_t directed);
igraph_error_t igraph_reindex_membership(igraph_vector_int_t* membership, igraph_vector_int_t* new_to_old, igraph_integer_t* nb_clusters);

enum igraph_leading_eigenvector_community_history_t {
    IGRAPH_LEVC_HIST_SPLIT = 1,
    IGRAPH_LEVC_HIST_FAILED,
    IGRAPH_LEVC_HIST_START_FULL,
    IGRAPH_LEVC_HIST_START_GIVEN,
}

alias IGRAPH_LEVC_HIST_SPLIT = igraph_leading_eigenvector_community_history_t.IGRAPH_LEVC_HIST_SPLIT;
alias IGRAPH_LEVC_HIST_FAILED = igraph_leading_eigenvector_community_history_t.IGRAPH_LEVC_HIST_FAILED;
alias IGRAPH_LEVC_HIST_START_FULL = igraph_leading_eigenvector_community_history_t.IGRAPH_LEVC_HIST_START_FULL;
alias IGRAPH_LEVC_HIST_START_GIVEN = igraph_leading_eigenvector_community_history_t.IGRAPH_LEVC_HIST_START_GIVEN;
alias igraph_community_leading_eigenvector_callback_t = igraph_error_t function(igraph_vector_int_t* membership, igraph_integer_t comm, igraph_real_t eigenvalue, igraph_vector_t* eigenvector, igraph_error_t function(igraph_real_t* to, const(double)* from, int n, void* extra) arpack_multiplier, void* arpack_extra, void* extra);
igraph_error_t igraph_community_fluid_communities(igraph_t* graph, igraph_integer_t no_of_communities, igraph_vector_int_t* membership);
igraph_error_t igraph_community_label_propagation(igraph_t* graph, igraph_vector_int_t* membership, igraph_neimode_t mode, igraph_vector_t* weights, igraph_vector_int_t* initial, igraph_vector_bool_t* fixed);
igraph_error_t igraph_community_multilevel(igraph_t* graph, igraph_vector_t* weights, const(double) resolution, igraph_vector_int_t* membership, igraph_matrix_int_t* memberships, igraph_vector_t* modularity);
igraph_error_t igraph_community_leiden(igraph_t* graph, igraph_vector_t* edge_weights, igraph_vector_t* node_weights, const(double) resolution_parameter, const(double) beta, const(bool) start, const(long) n_iterations, igraph_vector_int_t* membership, igraph_integer_t* nb_clusters, igraph_real_t* quality);
igraph_error_t igraph_compare_communities(igraph_vector_int_t* comm1, igraph_vector_int_t* comm2, igraph_real_t* result, igraph_community_comparison_t method);
igraph_error_t igraph_split_join_distance(igraph_vector_int_t* comm1, igraph_vector_int_t* comm2, igraph_integer_t* distance12, igraph_integer_t* distance21);

enum igraph_attribute_type_t {
    IGRAPH_ATTRIBUTE_UNSPECIFIED = 0,
    IGRAPH_ATTRIBUTE_DEFAULT = IGRAPH_ATTRIBUTE_UNSPECIFIED,
    IGRAPH_ATTRIBUTE_NUMERIC = 1,
    IGRAPH_ATTRIBUTE_BOOLEAN = 2,
    IGRAPH_ATTRIBUTE_STRING = 3,
    IGRAPH_ATTRIBUTE_OBJECT = 127,
}

alias IGRAPH_ATTRIBUTE_UNSPECIFIED = igraph_attribute_type_t.IGRAPH_ATTRIBUTE_UNSPECIFIED;
alias IGRAPH_ATTRIBUTE_DEFAULT = igraph_attribute_type_t.IGRAPH_ATTRIBUTE_DEFAULT;
alias IGRAPH_ATTRIBUTE_NUMERIC = igraph_attribute_type_t.IGRAPH_ATTRIBUTE_NUMERIC;
alias IGRAPH_ATTRIBUTE_BOOLEAN = igraph_attribute_type_t.IGRAPH_ATTRIBUTE_BOOLEAN;
alias IGRAPH_ATTRIBUTE_STRING = igraph_attribute_type_t.IGRAPH_ATTRIBUTE_STRING;
alias IGRAPH_ATTRIBUTE_OBJECT = igraph_attribute_type_t.IGRAPH_ATTRIBUTE_OBJECT;

struct igraph_attribute_record_t {
    const(char)* name;
    igraph_attribute_type_t type;
    const(void)* value;
}

enum igraph_attribute_elemtype_t {
    IGRAPH_ATTRIBUTE_GRAPH = 0,
    IGRAPH_ATTRIBUTE_VERTEX,
    IGRAPH_ATTRIBUTE_EDGE,
}

alias IGRAPH_ATTRIBUTE_GRAPH = igraph_attribute_elemtype_t.IGRAPH_ATTRIBUTE_GRAPH;
alias IGRAPH_ATTRIBUTE_VERTEX = igraph_attribute_elemtype_t.IGRAPH_ATTRIBUTE_VERTEX;
alias IGRAPH_ATTRIBUTE_EDGE = igraph_attribute_elemtype_t.IGRAPH_ATTRIBUTE_EDGE;

enum igraph_attribute_combination_type_t {
    IGRAPH_ATTRIBUTE_COMBINE_IGNORE = 0,
    IGRAPH_ATTRIBUTE_COMBINE_DEFAULT = 1,
    IGRAPH_ATTRIBUTE_COMBINE_FUNCTION = 2,
    IGRAPH_ATTRIBUTE_COMBINE_SUM = 3,
    IGRAPH_ATTRIBUTE_COMBINE_PROD = 4,
    IGRAPH_ATTRIBUTE_COMBINE_MIN = 5,
    IGRAPH_ATTRIBUTE_COMBINE_MAX = 6,
    IGRAPH_ATTRIBUTE_COMBINE_RANDOM = 7,
    IGRAPH_ATTRIBUTE_COMBINE_FIRST = 8,
    IGRAPH_ATTRIBUTE_COMBINE_LAST = 9,
    IGRAPH_ATTRIBUTE_COMBINE_MEAN = 10,
    IGRAPH_ATTRIBUTE_COMBINE_MEDIAN = 11,
    IGRAPH_ATTRIBUTE_COMBINE_CONCAT = 12,
}

alias IGRAPH_ATTRIBUTE_COMBINE_IGNORE = igraph_attribute_combination_type_t.IGRAPH_ATTRIBUTE_COMBINE_IGNORE;
alias IGRAPH_ATTRIBUTE_COMBINE_DEFAULT = igraph_attribute_combination_type_t.IGRAPH_ATTRIBUTE_COMBINE_DEFAULT;
alias IGRAPH_ATTRIBUTE_COMBINE_FUNCTION = igraph_attribute_combination_type_t.IGRAPH_ATTRIBUTE_COMBINE_FUNCTION;
alias IGRAPH_ATTRIBUTE_COMBINE_SUM = igraph_attribute_combination_type_t.IGRAPH_ATTRIBUTE_COMBINE_SUM;
alias IGRAPH_ATTRIBUTE_COMBINE_PROD = igraph_attribute_combination_type_t.IGRAPH_ATTRIBUTE_COMBINE_PROD;
alias IGRAPH_ATTRIBUTE_COMBINE_MIN = igraph_attribute_combination_type_t.IGRAPH_ATTRIBUTE_COMBINE_MIN;
alias IGRAPH_ATTRIBUTE_COMBINE_MAX = igraph_attribute_combination_type_t.IGRAPH_ATTRIBUTE_COMBINE_MAX;
alias IGRAPH_ATTRIBUTE_COMBINE_RANDOM = igraph_attribute_combination_type_t.IGRAPH_ATTRIBUTE_COMBINE_RANDOM;
alias IGRAPH_ATTRIBUTE_COMBINE_FIRST = igraph_attribute_combination_type_t.IGRAPH_ATTRIBUTE_COMBINE_FIRST;
alias IGRAPH_ATTRIBUTE_COMBINE_LAST = igraph_attribute_combination_type_t.IGRAPH_ATTRIBUTE_COMBINE_LAST;
alias IGRAPH_ATTRIBUTE_COMBINE_MEAN = igraph_attribute_combination_type_t.IGRAPH_ATTRIBUTE_COMBINE_MEAN;
alias IGRAPH_ATTRIBUTE_COMBINE_MEDIAN = igraph_attribute_combination_type_t.IGRAPH_ATTRIBUTE_COMBINE_MEDIAN;
alias IGRAPH_ATTRIBUTE_COMBINE_CONCAT = igraph_attribute_combination_type_t.IGRAPH_ATTRIBUTE_COMBINE_CONCAT;
alias igraph_function_pointer_t = void function();

struct igraph_attribute_combination_record_t {
    const(char)* name;
    igraph_attribute_combination_type_t type;
    igraph_function_pointer_t func;
}

struct igraph_attribute_combination_t {
    igraph_vector_ptr_t list;
}

igraph_error_t igraph_attribute_combination_init(igraph_attribute_combination_t* comb);
igraph_error_t igraph_attribute_combination(igraph_attribute_combination_t* comb, ...);
void igraph_attribute_combination_destroy(igraph_attribute_combination_t* comb);
igraph_error_t igraph_attribute_combination_add(igraph_attribute_combination_t* comb, const(char)* name, igraph_attribute_combination_type_t type, igraph_function_pointer_t func);
igraph_error_t igraph_attribute_combination_remove(igraph_attribute_combination_t* comb, const(char)* name);
igraph_error_t igraph_attribute_combination_query(igraph_attribute_combination_t* comb, const(char)* name, igraph_attribute_combination_type_t* type, igraph_function_pointer_t* func);

struct igraph_attribute_table_t {
    igraph_error_t function(igraph_t* graph, igraph_vector_ptr_t* attr) init;
    void function(igraph_t* graph) destroy;
    igraph_error_t function(igraph_t* to, igraph_t* from, igraph_bool_t ga, igraph_bool_t va, igraph_bool_t ea) copy;
    igraph_error_t function(igraph_t* graph, igraph_integer_t nv, igraph_vector_ptr_t* attr) add_vertices;
    igraph_error_t function(igraph_t* graph, igraph_t* newgraph, igraph_vector_int_t* idx) permute_vertices;
    igraph_error_t function(igraph_t* graph, igraph_t* newgraph, igraph_vector_int_list_t* merges, igraph_attribute_combination_t* comb) combine_vertices;
    igraph_error_t function(igraph_t* graph, igraph_vector_int_t* edges, igraph_vector_ptr_t* attr) add_edges;
    igraph_error_t function(igraph_t* graph, igraph_t* newgraph, igraph_vector_int_t* idx) permute_edges;
    igraph_error_t function(igraph_t* graph, igraph_t* newgraph, igraph_vector_int_list_t* merges, igraph_attribute_combination_t* comb) combine_edges;
    igraph_error_t function(igraph_t* graph, igraph_strvector_t* gnames, igraph_vector_int_t* gtypes, igraph_strvector_t* vnames, igraph_vector_int_t* vtypes, igraph_strvector_t* enames, igraph_vector_int_t* etypes) get_info;
    igraph_bool_t function(igraph_t* graph, igraph_attribute_elemtype_t type, const(char)* name) has_attr;
    igraph_error_t function(igraph_t* graph, igraph_attribute_type_t* type, igraph_attribute_elemtype_t elemtype, const(char)* name) gettype;
    igraph_error_t function(igraph_t* graph, const(char)* name, igraph_vector_t* value) get_numeric_graph_attr;
    igraph_error_t function(igraph_t* graph, const(char)* name, igraph_strvector_t* value) get_string_graph_attr;
    igraph_error_t function(igraph_t* igraph, const(char)* name, igraph_vector_bool_t* value) get_bool_graph_attr;
    igraph_error_t function(igraph_t* graph, const(char)* name, igraph_vs_t vs, igraph_vector_t* value) get_numeric_vertex_attr;
    igraph_error_t function(igraph_t* graph, const(char)* name, igraph_vs_t vs, igraph_strvector_t* value) get_string_vertex_attr;
    igraph_error_t function(igraph_t* graph, const(char)* name, igraph_vs_t vs, igraph_vector_bool_t* value) get_bool_vertex_attr;
    igraph_error_t function(igraph_t* graph, const(char)* name, igraph_es_t es, igraph_vector_t* value) get_numeric_edge_attr;
    igraph_error_t function(igraph_t* graph, const(char)* name, igraph_es_t es, igraph_strvector_t* value) get_string_edge_attr;
    igraph_error_t function(igraph_t* graph, const(char)* name, igraph_es_t es, igraph_vector_bool_t* value) get_bool_edge_attr;
}

igraph_attribute_table_t* igraph_i_set_attribute_table(igraph_attribute_table_t* table);
igraph_attribute_table_t* igraph_set_attribute_table(igraph_attribute_table_t* table);
igraph_bool_t igraph_has_attribute_table();
igraph_real_t igraph_cattribute_GAN(igraph_t* graph, const(char)* name);
igraph_bool_t igraph_cattribute_GAB(igraph_t* graph, const(char)* name);
const(char)* igraph_cattribute_GAS(igraph_t* graph, const(char)* name);
igraph_real_t igraph_cattribute_VAN(igraph_t* graph, const(char)* name, igraph_integer_t vid);
igraph_bool_t igraph_cattribute_VAB(igraph_t* graph, const(char)* name, igraph_integer_t vid);
const(char)* igraph_cattribute_VAS(igraph_t* graph, const(char)* name, igraph_integer_t vid);
igraph_real_t igraph_cattribute_EAN(igraph_t* graph, const(char)* name, igraph_integer_t eid);
igraph_bool_t igraph_cattribute_EAB(igraph_t* graph, const(char)* name, igraph_integer_t eid);
const(char)* igraph_cattribute_EAS(igraph_t* graph, const(char)* name, igraph_integer_t eid);
igraph_error_t igraph_cattribute_VANV(igraph_t* graph, const(char)* name, igraph_vs_t vids, igraph_vector_t* result);
igraph_error_t igraph_cattribute_EANV(igraph_t* graph, const(char)* name, igraph_es_t eids, igraph_vector_t* result);
igraph_error_t igraph_cattribute_VASV(igraph_t* graph, const(char)* name, igraph_vs_t vids, igraph_strvector_t* result);
igraph_error_t igraph_cattribute_EASV(igraph_t* graph, const(char)* name, igraph_es_t eids, igraph_strvector_t* result);
igraph_error_t igraph_cattribute_VABV(igraph_t* graph, const(char)* name, igraph_vs_t vids, igraph_vector_bool_t* result);
igraph_error_t igraph_cattribute_EABV(igraph_t* graph, const(char)* name, igraph_es_t eids, igraph_vector_bool_t* result);
igraph_error_t igraph_cattribute_list(igraph_t* graph, igraph_strvector_t* gnames, igraph_vector_int_t* gtypes, igraph_strvector_t* vnames, igraph_vector_int_t* vtypes, igraph_strvector_t* enames, igraph_vector_int_t* etypes);
igraph_bool_t igraph_cattribute_has_attr(igraph_t* graph, igraph_attribute_elemtype_t type, const(char)* name);
igraph_error_t igraph_cattribute_GAN_set(igraph_t* graph, const(char)* name, igraph_real_t value);
igraph_error_t igraph_cattribute_GAB_set(igraph_t* graph, const(char)* name, igraph_bool_t value);
igraph_error_t igraph_cattribute_GAS_set(igraph_t* graph, const(char)* name, const(char)* value);
igraph_error_t igraph_cattribute_VAN_set(igraph_t* graph, const(char)* name, igraph_integer_t vid, igraph_real_t value);
igraph_error_t igraph_cattribute_VAB_set(igraph_t* graph, const(char)* name, igraph_integer_t vid, igraph_bool_t value);
igraph_error_t igraph_cattribute_VAS_set(igraph_t* graph, const(char)* name, igraph_integer_t vid, const(char)* value);
igraph_error_t igraph_cattribute_EAN_set(igraph_t* graph, const(char)* name, igraph_integer_t eid, igraph_real_t value);
igraph_error_t igraph_cattribute_EAB_set(igraph_t* graph, const(char)* name, igraph_integer_t eid, igraph_bool_t value);
igraph_error_t igraph_cattribute_EAS_set(igraph_t* graph, const(char)* name, igraph_integer_t eid, const(char)* value);
igraph_error_t igraph_cattribute_VAN_setv(igraph_t* graph, const(char)* name, igraph_vector_t* v);
igraph_error_t igraph_cattribute_VAB_setv(igraph_t* graph, const(char)* name, igraph_vector_bool_t* v);
igraph_error_t igraph_cattribute_VAS_setv(igraph_t* graph, const(char)* name, igraph_strvector_t* sv);
igraph_error_t igraph_cattribute_EAN_setv(igraph_t* graph, const(char)* name, igraph_vector_t* v);
igraph_error_t igraph_cattribute_EAB_setv(igraph_t* graph, const(char)* name, igraph_vector_bool_t* v);
igraph_error_t igraph_cattribute_EAS_setv(igraph_t* graph, const(char)* name, igraph_strvector_t* sv);
void igraph_cattribute_remove_g(igraph_t* graph, const(char)* name);
void igraph_cattribute_remove_v(igraph_t* graph, const(char)* name);
void igraph_cattribute_remove_e(igraph_t* graph, const(char)* name);
void igraph_cattribute_remove_all(igraph_t* graph, igraph_bool_t g, igraph_bool_t v, igraph_bool_t e);
igraph_error_t igraph_get_adjacency(igraph_t* graph, igraph_matrix_t* res, igraph_get_adjacency_t type, igraph_vector_t* weights, igraph_loops_t loops);
igraph_error_t igraph_get_adjacency_sparse(igraph_t* graph, igraph_sparsemat_t* res, igraph_get_adjacency_t type, igraph_vector_t* weights, igraph_loops_t loops);
igraph_error_t igraph_get_stochastic(igraph_t* graph, igraph_matrix_t* matrix, igraph_bool_t column_wise, igraph_vector_t* weights);
igraph_error_t igraph_get_stochastic_sparse(igraph_t* graph, igraph_sparsemat_t* res, igraph_bool_t column_wise, igraph_vector_t* weights);
igraph_error_t igraph_get_sparsemat(igraph_t* graph, igraph_sparsemat_t* res);
igraph_error_t igraph_get_stochastic_sparsemat(igraph_t* graph, igraph_sparsemat_t* res, igraph_bool_t column_wise);
igraph_error_t igraph_get_edgelist(igraph_t* graph, igraph_vector_int_t* res, igraph_bool_t bycol);
igraph_error_t igraph_to_directed(igraph_t* graph, igraph_to_directed_t flags);
igraph_error_t igraph_to_undirected(igraph_t* graph, igraph_to_undirected_t mode, igraph_attribute_combination_t* edge_comb);
igraph_error_t igraph_to_prufer(igraph_t* graph, igraph_vector_int_t* prufer);
igraph_error_t igraph_read_graph_edgelist(igraph_t* graph, void* instream, igraph_integer_t n, igraph_bool_t directed);
igraph_error_t igraph_read_graph_ncol(igraph_t* graph, void* instream, igraph_strvector_t* predefnames, igraph_bool_t names, igraph_add_weights_t weights, igraph_bool_t directed);
igraph_error_t igraph_read_graph_lgl(igraph_t* graph, void* instream, igraph_bool_t names, igraph_add_weights_t weights, igraph_bool_t directed);
igraph_error_t igraph_read_graph_pajek(igraph_t* graph, void* instream);
igraph_error_t igraph_read_graph_graphml(igraph_t* graph, void* instream, igraph_integer_t index);
igraph_error_t igraph_read_graph_dimacs(igraph_t* graph, void* instream, igraph_strvector_t* problem, igraph_vector_int_t* label, igraph_integer_t* source, igraph_integer_t* target, igraph_vector_t* capacity, igraph_bool_t directed);
igraph_error_t igraph_read_graph_dimacs_flow(igraph_t* graph, void* instream, igraph_strvector_t* problem, igraph_vector_int_t* label, igraph_integer_t* source, igraph_integer_t* target, igraph_vector_t* capacity, igraph_bool_t directed);
igraph_error_t igraph_read_graph_graphdb(igraph_t* graph, void* instream, igraph_bool_t directed);
igraph_error_t igraph_read_graph_gml(igraph_t* graph, void* instream);
igraph_error_t igraph_read_graph_dl(igraph_t* graph, void* instream, igraph_bool_t directed);
alias igraph_write_gml_sw_t = uint;

enum {
    IGRAPH_WRITE_GML_DEFAULT_SW = 0,
    IGRAPH_WRITE_GML_ENCODE_ONLY_QUOT_SW = 1,
}

igraph_error_t igraph_write_graph_edgelist(igraph_t* graph, void* outstream);
igraph_error_t igraph_write_graph_ncol(igraph_t* graph, void* outstream, const(char)* names, const(char)* weights);
igraph_error_t igraph_write_graph_lgl(igraph_t* graph, void* outstream, const(char)* names, const(char)* weights, igraph_bool_t isolates);
igraph_error_t igraph_write_graph_graphml(igraph_t* graph, void* outstream, igraph_bool_t prefixattr);
igraph_error_t igraph_write_graph_pajek(igraph_t* graph, void* outstream);
igraph_error_t igraph_write_graph_dimacs(igraph_t* graph, void* outstream, igraph_integer_t source, igraph_integer_t target, igraph_vector_t* capacity);
igraph_error_t igraph_write_graph_dimacs_flow(igraph_t* graph, void* outstream, igraph_integer_t source, igraph_integer_t target, igraph_vector_t* capacity);
igraph_error_t igraph_write_graph_gml(igraph_t* graph, void* outstream, igraph_write_gml_sw_t options, igraph_vector_t* id, const(char)* creator);
igraph_error_t igraph_write_graph_dot(igraph_t* graph, void* outstream);
igraph_error_t igraph_write_graph_leda(igraph_t* graph, void* outstream, const(char)* vertex_attr_name, const(char)* edge_attr_name);
alias igraph_safelocale_t = igraph_safelocale_s*;
igraph_error_t igraph_enter_safelocale(igraph_safelocale_t* loc);
void igraph_exit_safelocale(igraph_safelocale_t* loc);
alias igraph_motifs_handler_t = igraph_error_t function(igraph_t* graph, igraph_vector_int_t* vids, igraph_integer_t isoclass, void* extra);
igraph_error_t igraph_motifs_randesu(igraph_t* graph, igraph_vector_t* hist, igraph_integer_t size, igraph_vector_t* cut_prob);
igraph_error_t igraph_motifs_randesu_callback(igraph_t* graph, igraph_integer_t size, igraph_vector_t* cut_prob, igraph_error_t function(igraph_t* graph, igraph_vector_int_t* vids, igraph_integer_t isoclass, void* extra) callback, void* extra);
igraph_error_t igraph_motifs_randesu_estimate(igraph_t* graph, igraph_integer_t* est, igraph_integer_t size, igraph_vector_t* cut_prob, igraph_integer_t sample_size, igraph_vector_int_t* sample);
igraph_error_t igraph_motifs_randesu_no(igraph_t* graph, igraph_integer_t* no, igraph_integer_t size, igraph_vector_t* cut_prob);
igraph_error_t igraph_dyad_census(igraph_t* graph, igraph_real_t* mut, igraph_real_t* asym, igraph_real_t* null_);
igraph_error_t igraph_triad_census(igraph_t* igraph, igraph_vector_t* res);
igraph_error_t igraph_adjacent_triangles(igraph_t* graph, igraph_vector_t* res, igraph_vs_t vids);
igraph_error_t igraph_list_triangles(igraph_t* graph, igraph_vector_int_t* res);
igraph_error_t igraph_add_edge(igraph_t* graph, igraph_integer_t from, igraph_integer_t to);
igraph_error_t igraph_disjoint_union(igraph_t* res, igraph_t* left, igraph_t* right);
igraph_error_t igraph_disjoint_union_many(igraph_t* res, igraph_vector_ptr_t* graphs);
igraph_error_t igraph_union(igraph_t* res, igraph_t* left, igraph_t* right, igraph_vector_int_t* edge_map1, igraph_vector_int_t* edge_map2);
igraph_error_t igraph_union_many(igraph_t* res, igraph_vector_ptr_t* graphs, igraph_vector_int_list_t* edgemaps);
igraph_error_t igraph_intersection(igraph_t* res, igraph_t* left, igraph_t* right, igraph_vector_int_t* edge_map1, igraph_vector_int_t* edge_map2);
igraph_error_t igraph_intersection_many(igraph_t* res, igraph_vector_ptr_t* graphs, igraph_vector_int_list_t* edgemaps);
igraph_error_t igraph_difference(igraph_t* res, igraph_t* orig, igraph_t* sub);
igraph_error_t igraph_complementer(igraph_t* res, igraph_t* graph, igraph_bool_t loops);
igraph_error_t igraph_compose(igraph_t* res, igraph_t* g1, igraph_t* g2, igraph_vector_int_t* edge_map1, igraph_vector_int_t* edge_map2);
igraph_error_t igraph_contract_vertices(igraph_t* graph, igraph_vector_int_t* mapping, igraph_attribute_combination_t* vertex_comb);
igraph_error_t igraph_permute_vertices(igraph_t* graph, igraph_t* res, igraph_vector_int_t* permutation);
igraph_error_t igraph_connect_neighborhood(igraph_t* graph, igraph_integer_t order, igraph_neimode_t mode);
igraph_error_t igraph_graph_power(igraph_t* graph, igraph_t* res, igraph_integer_t order, igraph_bool_t directed);
igraph_error_t igraph_rewire(igraph_t* graph, igraph_integer_t n, igraph_rewiring_t mode);
igraph_error_t igraph_simplify(igraph_t* graph, igraph_bool_t multiple, igraph_bool_t loops, igraph_attribute_combination_t* edge_comb);
igraph_error_t igraph_induced_subgraph_map(igraph_t* graph, igraph_t* res, igraph_vs_t vids, igraph_subgraph_implementation_t impl, igraph_vector_int_t* map, igraph_vector_int_t* invmap);
igraph_error_t igraph_induced_subgraph(igraph_t* graph, igraph_t* res, igraph_vs_t vids, igraph_subgraph_implementation_t impl);
igraph_error_t igraph_induced_subgraph_edges(igraph_t* graph, igraph_vs_t vids, igraph_vector_int_t* edges);
igraph_error_t igraph_subgraph_from_edges(igraph_t* graph, igraph_t* res, igraph_es_t eids, igraph_bool_t delete_vertices);
igraph_error_t igraph_reverse_edges(igraph_t* graph, igraph_es_t eids);
igraph_error_t igraph_subgraph_edges(igraph_t* graph, igraph_t* res, igraph_es_t eids, igraph_bool_t delete_vertices);

struct igraph_maxflow_stats_t {
    igraph_integer_t nopush;
    igraph_integer_t norelabel;
    igraph_integer_t nogap;
    igraph_integer_t nogapnodes;
    igraph_integer_t nobfs;
}

igraph_error_t igraph_maxflow(igraph_t* graph, igraph_real_t* value, igraph_vector_t* flow, igraph_vector_int_t* cut, igraph_vector_int_t* partition, igraph_vector_int_t* partition2, igraph_integer_t source, igraph_integer_t target, igraph_vector_t* capacity, igraph_maxflow_stats_t* stats);
igraph_error_t igraph_maxflow_value(igraph_t* graph, igraph_real_t* value, igraph_integer_t source, igraph_integer_t target, igraph_vector_t* capacity, igraph_maxflow_stats_t* stats);
igraph_error_t igraph_st_mincut(igraph_t* graph, igraph_real_t* value, igraph_vector_int_t* cut, igraph_vector_int_t* partition, igraph_vector_int_t* partition2, igraph_integer_t source, igraph_integer_t target, igraph_vector_t* capacity);
igraph_error_t igraph_st_mincut_value(igraph_t* graph, igraph_real_t* res, igraph_integer_t source, igraph_integer_t target, igraph_vector_t* capacity);
igraph_error_t igraph_mincut_value(igraph_t* graph, igraph_real_t* res, igraph_vector_t* capacity);
igraph_error_t igraph_mincut(igraph_t* graph, igraph_real_t* value, igraph_vector_int_t* partition, igraph_vector_int_t* partition2, igraph_vector_int_t* cut, igraph_vector_t* capacity);
igraph_error_t igraph_st_vertex_connectivity(igraph_t* graph, igraph_integer_t* res, igraph_integer_t source, igraph_integer_t target, igraph_vconn_nei_t neighbors);
igraph_error_t igraph_vertex_connectivity(igraph_t* graph, igraph_integer_t* res, igraph_bool_t checks);
igraph_error_t igraph_st_edge_connectivity(igraph_t* graph, igraph_integer_t* res, igraph_integer_t source, igraph_integer_t target);
igraph_error_t igraph_edge_connectivity(igraph_t* graph, igraph_integer_t* res, igraph_bool_t checks);
igraph_error_t igraph_edge_disjoint_paths(igraph_t* graph, igraph_integer_t* res, igraph_integer_t source, igraph_integer_t target);
igraph_error_t igraph_vertex_disjoint_paths(igraph_t* graph, igraph_integer_t* res, igraph_integer_t source, igraph_integer_t target);
igraph_error_t igraph_adhesion(igraph_t* graph, igraph_integer_t* res, igraph_bool_t checks);
igraph_error_t igraph_cohesion(igraph_t* graph, igraph_integer_t* res, igraph_bool_t checks);
igraph_error_t igraph_even_tarjan_reduction(igraph_t* graph, igraph_t* graphbar, igraph_vector_t* capacity);
igraph_error_t igraph_residual_graph(igraph_t* graph, igraph_vector_t* capacity, igraph_t* residual, igraph_vector_t* residual_capacity, igraph_vector_t* flow);
igraph_error_t igraph_reverse_residual_graph(igraph_t* graph, igraph_vector_t* capacity, igraph_t* residual, igraph_vector_t* flow);
igraph_error_t igraph_dominator_tree(igraph_t* graph, igraph_integer_t root, igraph_vector_int_t* dom, igraph_t* domtree, igraph_vector_int_t* leftout, igraph_neimode_t mode);
igraph_error_t igraph_all_st_cuts(igraph_t* graph, igraph_vector_int_list_t* cuts, igraph_vector_int_list_t* partition1s, igraph_integer_t source, igraph_integer_t target);
igraph_error_t igraph_all_st_mincuts(igraph_t* graph, igraph_real_t* value, igraph_vector_int_list_t* cuts, igraph_vector_int_list_t* partition1s, igraph_integer_t source, igraph_integer_t target, igraph_vector_t* capacity);
igraph_error_t igraph_gomory_hu_tree(igraph_t* graph, igraph_t* tree, igraph_vector_t* flows, igraph_vector_t* capacity);
alias igraph_scalar_function_t = igraph_real_t function(igraph_vector_t* var, igraph_vector_t* par, void* extra);

struct igraph_plfit_result_t {
    igraph_bool_t continuous;
    igraph_real_t alpha;
    igraph_real_t xmin;
    igraph_real_t L;
    igraph_real_t D;
    igraph_vector_t* data;
}

igraph_error_t igraph_running_mean(igraph_vector_t* data, igraph_vector_t* res, igraph_integer_t binwidth);
igraph_error_t igraph_random_sample(igraph_vector_int_t* res, igraph_integer_t l, igraph_integer_t h, igraph_integer_t length);
igraph_error_t igraph_convex_hull(igraph_matrix_t* data, igraph_vector_int_t* resverts, igraph_matrix_t* rescoords);
igraph_bool_t igraph_almost_equals(double a, double b, double eps);
igraph_error_t igraph_power_law_fit(igraph_vector_t* vector, igraph_plfit_result_t* result, igraph_real_t xmin, igraph_bool_t force_continuous);
igraph_error_t igraph_plfit_result_calculate_p_value(igraph_plfit_result_t* model, igraph_real_t* result, igraph_real_t precision);
igraph_error_t igraph_cocitation(igraph_t* graph, igraph_matrix_t* res, igraph_vs_t vids);
igraph_error_t igraph_bibcoupling(igraph_t* graph, igraph_matrix_t* res, igraph_vs_t vids);
igraph_error_t igraph_similarity_jaccard(igraph_t* graph, igraph_matrix_t* res, igraph_vs_t vids, igraph_neimode_t mode, igraph_bool_t loops);
igraph_error_t igraph_similarity_jaccard_pairs(igraph_t* graph, igraph_vector_t* res, igraph_vector_int_t* pairs, igraph_neimode_t mode, igraph_bool_t loops);
igraph_error_t igraph_similarity_jaccard_es(igraph_t* graph, igraph_vector_t* res, igraph_es_t es, igraph_neimode_t mode, igraph_bool_t loops);
igraph_error_t igraph_similarity_dice(igraph_t* graph, igraph_matrix_t* res, igraph_vs_t vids, igraph_neimode_t mode, igraph_bool_t loops);
igraph_error_t igraph_similarity_dice_pairs(igraph_t* graph, igraph_vector_t* res, igraph_vector_int_t* pairs, igraph_neimode_t mode, igraph_bool_t loops);
igraph_error_t igraph_similarity_dice_es(igraph_t* graph, igraph_vector_t* res, igraph_es_t es, igraph_neimode_t mode, igraph_bool_t loops);
igraph_error_t igraph_similarity_inverse_log_weighted(igraph_t* graph, igraph_matrix_t* res, igraph_vs_t vids, igraph_neimode_t mode);

struct igraph_adjlist_t {
    igraph_integer_t length;
    igraph_vector_int_t* adjs;
}

struct igraph_inclist_t {
    igraph_integer_t length;
    igraph_vector_int_t* incs;
}

igraph_error_t igraph_adjlist_init(igraph_t* graph, igraph_adjlist_t* al, igraph_neimode_t mode, igraph_loops_t loops, igraph_multiple_t multiple);
igraph_error_t igraph_adjlist_init_empty(igraph_adjlist_t* al, igraph_integer_t no_of_nodes);
igraph_integer_t igraph_adjlist_size(igraph_adjlist_t* al);
igraph_error_t igraph_adjlist_init_complementer(igraph_t* graph, igraph_adjlist_t* al, igraph_neimode_t mode, igraph_bool_t loops);
igraph_error_t igraph_adjlist_init_from_inclist(igraph_t* graph, igraph_adjlist_t* al, igraph_inclist_t* il);
void igraph_adjlist_destroy(igraph_adjlist_t* al);
void igraph_adjlist_clear(igraph_adjlist_t* al);
void igraph_adjlist_sort(igraph_adjlist_t* al);
igraph_error_t igraph_adjlist_simplify(igraph_adjlist_t* al);
igraph_error_t igraph_adjlist_print(igraph_adjlist_t* al);
igraph_error_t igraph_adjlist_fprint(igraph_adjlist_t* al, void* outfile);
igraph_bool_t igraph_adjlist_has_edge(igraph_adjlist_t* al, igraph_integer_t from, igraph_integer_t to, igraph_bool_t directed);
igraph_error_t igraph_adjlist_replace_edge(igraph_adjlist_t* al, igraph_integer_t from, igraph_integer_t oldto, igraph_integer_t newto, igraph_bool_t directed);
igraph_error_t igraph_adjlist(igraph_t* graph, igraph_adjlist_t* adjlist, igraph_neimode_t mode, igraph_bool_t duplicate);
igraph_error_t igraph_inclist_init(igraph_t* graph, igraph_inclist_t* il, igraph_neimode_t mode, igraph_loops_t loops);
igraph_error_t igraph_inclist_init_empty(igraph_inclist_t* il, igraph_integer_t n);
igraph_integer_t igraph_inclist_size(igraph_inclist_t* al);
void igraph_inclist_destroy(igraph_inclist_t* il);
void igraph_inclist_clear(igraph_inclist_t* il);
igraph_error_t igraph_inclist_print(igraph_inclist_t* il);
igraph_error_t igraph_inclist_fprint(igraph_inclist_t* il, void* outfile);

struct igraph_lazy_adjlist_t {
    igraph_t* graph;
    igraph_integer_t length;
    igraph_vector_int_t** adjs;
    igraph_neimode_t mode;
    igraph_loops_t loops;
    igraph_multiple_t multiple;
}

igraph_error_t igraph_lazy_adjlist_init(igraph_t* graph, igraph_lazy_adjlist_t* al, igraph_neimode_t mode, igraph_loops_t loops, igraph_multiple_t multiple);
void igraph_lazy_adjlist_destroy(igraph_lazy_adjlist_t* al);
void igraph_lazy_adjlist_clear(igraph_lazy_adjlist_t* al);
igraph_integer_t igraph_lazy_adjlist_size(igraph_lazy_adjlist_t* al);
igraph_vector_int_t* igraph_i_lazy_adjlist_get_real(igraph_lazy_adjlist_t* al, igraph_integer_t no);

struct igraph_lazy_inclist_t {
    igraph_t* graph;
    igraph_integer_t length;
    igraph_vector_int_t** incs;
    igraph_neimode_t mode;
    igraph_loops_t loops;
}

igraph_error_t igraph_lazy_inclist_init(igraph_t* graph, igraph_lazy_inclist_t* il, igraph_neimode_t mode, igraph_loops_t loops);
void igraph_lazy_inclist_destroy(igraph_lazy_inclist_t* il);
void igraph_lazy_inclist_clear(igraph_lazy_inclist_t* il);
igraph_integer_t igraph_lazy_inclist_size(igraph_lazy_inclist_t* il);
igraph_vector_int_t* igraph_i_lazy_inclist_get_real(igraph_lazy_inclist_t* il, igraph_integer_t no);
igraph_error_t igraph_blas_dgemv(igraph_bool_t transpose, igraph_real_t alpha, igraph_matrix_t* a, igraph_vector_t* x, igraph_real_t beta, igraph_vector_t* y);
igraph_error_t igraph_blas_dgemm(igraph_bool_t transpose_a, igraph_bool_t transpose_b, igraph_real_t alpha, igraph_matrix_t* a, igraph_matrix_t* b, igraph_real_t beta, igraph_matrix_t* c);
igraph_error_t igraph_blas_dgemv_array(igraph_bool_t transpose, igraph_real_t alpha, igraph_matrix_t* a, const(double)* x, igraph_real_t beta, igraph_real_t* y);
igraph_real_t igraph_blas_dnrm2(igraph_vector_t* v);
igraph_error_t igraph_blas_ddot(igraph_vector_t* v1, igraph_vector_t* v2, igraph_real_t* res);
igraph_error_t igraph_lapack_dgetrs(igraph_bool_t transpose, igraph_matrix_t* a, igraph_vector_int_t* ipiv, igraph_matrix_t* b);

enum igraph_lapack_dsyev_which_t {
    IGRAPH_LAPACK_DSYEV_ALL,
    IGRAPH_LAPACK_DSYEV_INTERVAL,
    IGRAPH_LAPACK_DSYEV_SELECT,
}

alias IGRAPH_LAPACK_DSYEV_ALL = igraph_lapack_dsyev_which_t.IGRAPH_LAPACK_DSYEV_ALL;
alias IGRAPH_LAPACK_DSYEV_INTERVAL = igraph_lapack_dsyev_which_t.IGRAPH_LAPACK_DSYEV_INTERVAL;
alias IGRAPH_LAPACK_DSYEV_SELECT = igraph_lapack_dsyev_which_t.IGRAPH_LAPACK_DSYEV_SELECT;

enum igraph_lapack_dgeevx_balance_t {
    IGRAPH_LAPACK_DGEEVX_BALANCE_NONE = 0,
    IGRAPH_LAPACK_DGEEVX_BALANCE_PERM,
    IGRAPH_LAPACK_DGEEVX_BALANCE_SCALE,
    IGRAPH_LAPACK_DGEEVX_BALANCE_BOTH,
}

alias IGRAPH_LAPACK_DGEEVX_BALANCE_NONE = igraph_lapack_dgeevx_balance_t.IGRAPH_LAPACK_DGEEVX_BALANCE_NONE;
alias IGRAPH_LAPACK_DGEEVX_BALANCE_PERM = igraph_lapack_dgeevx_balance_t.IGRAPH_LAPACK_DGEEVX_BALANCE_PERM;
alias IGRAPH_LAPACK_DGEEVX_BALANCE_SCALE = igraph_lapack_dgeevx_balance_t.IGRAPH_LAPACK_DGEEVX_BALANCE_SCALE;
alias IGRAPH_LAPACK_DGEEVX_BALANCE_BOTH = igraph_lapack_dgeevx_balance_t.IGRAPH_LAPACK_DGEEVX_BALANCE_BOTH;
igraph_error_t igraph_assortativity_nominal(igraph_t* graph, igraph_vector_int_t* types, igraph_real_t* res, igraph_bool_t directed, igraph_bool_t normalized);
igraph_error_t igraph_assortativity(igraph_t* graph, igraph_vector_t* values, igraph_vector_t* values_in, igraph_real_t* res, igraph_bool_t directed, igraph_bool_t normalized);
igraph_error_t igraph_assortativity_degree(igraph_t* graph, igraph_real_t* res, igraph_bool_t directed);
igraph_error_t igraph_joint_degree_matrix(igraph_t* graph, igraph_vector_t* weights, igraph_matrix_t* jdm, igraph_integer_t dout, igraph_integer_t din);
igraph_error_t igraph_joint_degree_distribution(igraph_t* graph, igraph_vector_t* weights, igraph_matrix_t* p, igraph_neimode_t from_mode, igraph_neimode_t to_mode, igraph_bool_t directed_neighbors, igraph_bool_t normalized, igraph_integer_t max_from_degree, igraph_integer_t max_to_degree);
igraph_error_t igraph_joint_type_distribution(igraph_t* graph, igraph_vector_t* weights, igraph_matrix_t* p, igraph_vector_int_t* from_types, igraph_vector_int_t* to_types, igraph_bool_t directed, igraph_bool_t normalized);
igraph_error_t igraph_is_separator(igraph_t* graph, igraph_vs_t candidate, igraph_bool_t* res);
igraph_error_t igraph_all_minimal_st_separators(igraph_t* graph, igraph_vector_int_list_t* separators);
igraph_error_t igraph_is_minimal_separator(igraph_t* graph, igraph_vs_t candidate, igraph_bool_t* res);
igraph_error_t igraph_minimum_size_separators(igraph_t* graph, igraph_vector_int_list_t* separators);
igraph_error_t igraph_cohesive_blocks(igraph_t* graph, igraph_vector_int_list_t* blocks, igraph_vector_int_t* cohesion, igraph_vector_int_t* parent, igraph_t* block_tree);

enum igraph_eigen_algorithm_t {
    IGRAPH_EIGEN_AUTO = 0,
    IGRAPH_EIGEN_LAPACK,
    IGRAPH_EIGEN_ARPACK,
    IGRAPH_EIGEN_COMP_AUTO,
    IGRAPH_EIGEN_COMP_LAPACK,
    IGRAPH_EIGEN_COMP_ARPACK,
}

alias IGRAPH_EIGEN_AUTO = igraph_eigen_algorithm_t.IGRAPH_EIGEN_AUTO;
alias IGRAPH_EIGEN_LAPACK = igraph_eigen_algorithm_t.IGRAPH_EIGEN_LAPACK;
alias IGRAPH_EIGEN_ARPACK = igraph_eigen_algorithm_t.IGRAPH_EIGEN_ARPACK;
alias IGRAPH_EIGEN_COMP_AUTO = igraph_eigen_algorithm_t.IGRAPH_EIGEN_COMP_AUTO;
alias IGRAPH_EIGEN_COMP_LAPACK = igraph_eigen_algorithm_t.IGRAPH_EIGEN_COMP_LAPACK;
alias IGRAPH_EIGEN_COMP_ARPACK = igraph_eigen_algorithm_t.IGRAPH_EIGEN_COMP_ARPACK;

enum igraph_eigen_which_position_t {
    IGRAPH_EIGEN_LM = 0,
    IGRAPH_EIGEN_SM,
    IGRAPH_EIGEN_LA,
    IGRAPH_EIGEN_SA,
    IGRAPH_EIGEN_BE,
    IGRAPH_EIGEN_LR,
    IGRAPH_EIGEN_SR,
    IGRAPH_EIGEN_LI,
    IGRAPH_EIGEN_SI,
    IGRAPH_EIGEN_ALL,
    IGRAPH_EIGEN_INTERVAL,
    IGRAPH_EIGEN_SELECT,
}

alias IGRAPH_EIGEN_LM = igraph_eigen_which_position_t.IGRAPH_EIGEN_LM;
alias IGRAPH_EIGEN_SM = igraph_eigen_which_position_t.IGRAPH_EIGEN_SM;
alias IGRAPH_EIGEN_LA = igraph_eigen_which_position_t.IGRAPH_EIGEN_LA;
alias IGRAPH_EIGEN_SA = igraph_eigen_which_position_t.IGRAPH_EIGEN_SA;
alias IGRAPH_EIGEN_BE = igraph_eigen_which_position_t.IGRAPH_EIGEN_BE;
alias IGRAPH_EIGEN_LR = igraph_eigen_which_position_t.IGRAPH_EIGEN_LR;
alias IGRAPH_EIGEN_SR = igraph_eigen_which_position_t.IGRAPH_EIGEN_SR;
alias IGRAPH_EIGEN_LI = igraph_eigen_which_position_t.IGRAPH_EIGEN_LI;
alias IGRAPH_EIGEN_SI = igraph_eigen_which_position_t.IGRAPH_EIGEN_SI;
alias IGRAPH_EIGEN_ALL = igraph_eigen_which_position_t.IGRAPH_EIGEN_ALL;
alias IGRAPH_EIGEN_INTERVAL = igraph_eigen_which_position_t.IGRAPH_EIGEN_INTERVAL;
alias IGRAPH_EIGEN_SELECT = igraph_eigen_which_position_t.IGRAPH_EIGEN_SELECT;

struct igraph_eigen_which_t {
    igraph_eigen_which_position_t pos;
    int howmany;
    int il;
    int iu;
    igraph_real_t vl;
    igraph_real_t vu;
    int vestimate;
    igraph_lapack_dgeevx_balance_t balance;
}

igraph_error_t igraph_eigen_adjacency(igraph_t* graph, igraph_eigen_algorithm_t algorithm, igraph_eigen_which_t* which, igraph_arpack_options_t* options, igraph_arpack_storage_t* storage, igraph_vector_t* values, igraph_matrix_t* vectors, igraph_vector_complex_t* cmplxvalues, igraph_matrix_complex_t* cmplxvectors);

struct igraph_hrg_t {
    igraph_vector_int_t left;
    igraph_vector_int_t right;
    igraph_vector_t prob;
    igraph_vector_int_t vertices;
    igraph_vector_int_t edges;
}

igraph_error_t igraph_hrg_init(igraph_hrg_t* hrg, igraph_integer_t n);
void igraph_hrg_destroy(igraph_hrg_t* hrg);
igraph_integer_t igraph_hrg_size(igraph_hrg_t* hrg);
igraph_error_t igraph_hrg_resize(igraph_hrg_t* hrg, igraph_integer_t newsize);
igraph_error_t igraph_hrg_fit(igraph_t* graph, igraph_hrg_t* hrg, igraph_bool_t start, igraph_integer_t steps);
igraph_error_t igraph_hrg_sample(igraph_hrg_t* hrg, igraph_t* sample);
igraph_error_t igraph_hrg_sample_many(igraph_hrg_t* hrg, igraph_graph_list_t* samples, igraph_integer_t num_samples);
igraph_error_t igraph_hrg_game(igraph_t* graph, igraph_hrg_t* hrg);
igraph_error_t igraph_from_hrg_dendrogram(igraph_t* graph, igraph_hrg_t* hrg, igraph_vector_t* prob);
igraph_error_t igraph_hrg_consensus(igraph_t* graph, igraph_vector_int_t* parents, igraph_vector_t* weights, igraph_hrg_t* hrg, igraph_bool_t start, igraph_integer_t num_samples);
igraph_error_t igraph_hrg_predict(igraph_t* graph, igraph_vector_int_t* edges, igraph_vector_t* prob, igraph_hrg_t* hrg, igraph_bool_t start, igraph_integer_t num_samples, igraph_integer_t num_bins);
igraph_error_t igraph_hrg_create(igraph_hrg_t* hrg, igraph_t* graph, igraph_vector_t* prob);
igraph_error_t igraph_hrg_dendrogram(igraph_t* graph, igraph_hrg_t* hrg);
alias igraph_interruption_handler_t = igraph_error_t function(void* data);
igraph_error_t igraph_allow_interruption(void* data);
igraph_error_t igraph_is_matching(igraph_t* graph, igraph_vector_bool_t* types, igraph_vector_int_t* matching, igraph_bool_t* result);
igraph_error_t igraph_is_maximal_matching(igraph_t* graph, igraph_vector_bool_t* types, igraph_vector_int_t* matching, igraph_bool_t* result);
igraph_error_t igraph_maximum_bipartite_matching(igraph_t* graph, igraph_vector_bool_t* types, igraph_integer_t* matching_size, igraph_real_t* matching_weight, igraph_vector_int_t* matching, igraph_vector_t* weights, igraph_real_t eps);
igraph_error_t igraph_adjacency_spectral_embedding(igraph_t* graph, igraph_integer_t no, igraph_vector_t* weights, igraph_eigen_which_position_t which, igraph_bool_t scaled, igraph_matrix_t* X, igraph_matrix_t* Y, igraph_vector_t* D, igraph_vector_t* cvec, igraph_arpack_options_t* options);

enum igraph_laplacian_spectral_embedding_type_t {
    IGRAPH_EMBEDDING_D_A = 0,
    IGRAPH_EMBEDDING_I_DAD,
    IGRAPH_EMBEDDING_DAD,
    IGRAPH_EMBEDDING_OAP,
}

alias IGRAPH_EMBEDDING_D_A = igraph_laplacian_spectral_embedding_type_t.IGRAPH_EMBEDDING_D_A;
alias IGRAPH_EMBEDDING_I_DAD = igraph_laplacian_spectral_embedding_type_t.IGRAPH_EMBEDDING_I_DAD;
alias IGRAPH_EMBEDDING_DAD = igraph_laplacian_spectral_embedding_type_t.IGRAPH_EMBEDDING_DAD;
alias IGRAPH_EMBEDDING_OAP = igraph_laplacian_spectral_embedding_type_t.IGRAPH_EMBEDDING_OAP;
igraph_error_t igraph_laplacian_spectral_embedding(igraph_t* graph, igraph_integer_t no, igraph_vector_t* weights, igraph_eigen_which_position_t which, igraph_laplacian_spectral_embedding_type_t type, igraph_bool_t scaled, igraph_matrix_t* X, igraph_matrix_t* Y, igraph_vector_t* D, igraph_arpack_options_t* options);
igraph_error_t igraph_dim_select(igraph_vector_t* sv, igraph_integer_t* dim);
igraph_error_t igraph_local_scan_0(igraph_t* graph, igraph_vector_t* res, igraph_vector_t* weights, igraph_neimode_t mode);
igraph_error_t igraph_local_scan_0_them(igraph_t* us, igraph_t* them, igraph_vector_t* res, igraph_vector_t* weights_them, igraph_neimode_t mode);
igraph_error_t igraph_local_scan_1_ecount(igraph_t* graph, igraph_vector_t* res, igraph_vector_t* weights, igraph_neimode_t mode);
igraph_error_t igraph_local_scan_1_ecount_them(igraph_t* us, igraph_t* them, igraph_vector_t* res, igraph_vector_t* weights, igraph_neimode_t mode);
igraph_error_t igraph_local_scan_k_ecount(igraph_t* graph, igraph_integer_t k, igraph_vector_t* res, igraph_vector_t* weights, igraph_neimode_t mode);
igraph_error_t igraph_local_scan_k_ecount_them(igraph_t* us, igraph_t* them, igraph_integer_t k, igraph_vector_t* res, igraph_vector_t* weights_them, igraph_neimode_t mode);
igraph_error_t igraph_local_scan_neighborhood_ecount(igraph_t* graph, igraph_vector_t* res, igraph_vector_t* weights, igraph_vector_int_list_t* neighborhoods);
igraph_error_t igraph_local_scan_subset_ecount(igraph_t* graph, igraph_vector_t* res, igraph_vector_t* weights, igraph_vector_int_list_t* neighborhoods);
igraph_error_t igraph_graphlets_candidate_basis(igraph_t* graph, igraph_vector_t* weights, igraph_vector_int_list_t* cliques, igraph_vector_t* thresholds);
igraph_error_t igraph_graphlets_project(igraph_t* graph, igraph_vector_t* weights, igraph_vector_int_list_t* cliques, igraph_vector_t* Mu, igraph_bool_t startMu, igraph_integer_t niter);
igraph_error_t igraph_graphlets(igraph_t* graph, igraph_vector_t* weights, igraph_vector_int_list_t* cliques, igraph_vector_t* Mu, igraph_integer_t niter);

struct igraph_sir_t {
    igraph_vector_t times;
    igraph_vector_int_t no_s;
    igraph_vector_int_t no_i;
    igraph_vector_int_t no_r;
}

igraph_error_t igraph_sir_init(igraph_sir_t* sir);
void igraph_sir_destroy(igraph_sir_t* sir);
igraph_error_t igraph_sir(igraph_t* graph, igraph_real_t beta, igraph_real_t gamma, igraph_integer_t no_sim, igraph_vector_ptr_t* result);
igraph_error_t igraph_solve_lsap(igraph_matrix_t* c, igraph_integer_t n, igraph_vector_int_t* p);

enum igraph_coloring_greedy_t {
    IGRAPH_COLORING_GREEDY_COLORED_NEIGHBORS = 0,
    IGRAPH_COLORING_GREEDY_DSATUR = 1,
}

alias IGRAPH_COLORING_GREEDY_COLORED_NEIGHBORS = igraph_coloring_greedy_t.IGRAPH_COLORING_GREEDY_COLORED_NEIGHBORS;
alias IGRAPH_COLORING_GREEDY_DSATUR = igraph_coloring_greedy_t.IGRAPH_COLORING_GREEDY_DSATUR;
igraph_error_t igraph_vertex_coloring_greedy(igraph_t* graph, igraph_vector_int_t* colors, igraph_coloring_greedy_t heuristic);
igraph_error_t igraph_is_eulerian(igraph_t* graph, igraph_bool_t* has_path, igraph_bool_t* has_cycle);
igraph_error_t igraph_eulerian_path(igraph_t* graph, igraph_vector_int_t* edge_res, igraph_vector_int_t* vertex_res);
igraph_error_t igraph_eulerian_cycle(igraph_t* graph, igraph_vector_int_t* edge_res, igraph_vector_int_t* vertex_res);
igraph_error_t igraph_fundamental_cycles(igraph_t* graph, igraph_vector_int_list_t* result, igraph_integer_t start_vid, igraph_integer_t bfs_cutoff, igraph_vector_t* weights);
igraph_error_t igraph_minimum_cycle_basis(igraph_t* graph, igraph_vector_int_list_t* result, igraph_integer_t bfs_cutoff, igraph_bool_t complete, igraph_bool_t use_cycle_order, igraph_vector_t* weights);
enum IGRAPH_VERSION = "0.10.10";
enum int IGRAPH_VERSION_MAJOR = 0;
enum int IGRAPH_VERSION_MINOR = 10;
enum int IGRAPH_VERSION_PATCH = 10;
enum IGRAPH_VERSION_PRERELEASE = "cmake-experimental";
enum int IGRAPH_INTEGER_SIZE = 64;
enum double IGRAPH_SHORTEST_PATH_EPSILON = 1e-10;
enum int IGRAPH_THREAD_SAFE = 0;
