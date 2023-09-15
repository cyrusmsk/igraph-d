import std;
import igraph_lib;

enum NULL = null;

void main() {
  igraph_integer_t num_vertices = 1000;
  igraph_integer_t num_edges = 1000;
  igraph_real_t diameter;
  igraph_t graph;

  igraph_rng_seed(igraph_rng_default(), 42);

  igraph_erdos_renyi_game_gnm(
    &graph, num_vertices, num_edges,
    IGRAPH_UNDIRECTED, IGRAPH_NO_LOOPS
  );

  igraph_diameter(
    &graph, &diameter,
    /* from = */ NULL, /* to = */ NULL,
    /* vertex_path = */ NULL, /* edge_path = */ NULL,
    IGRAPH_UNDIRECTED, /* unconn= */ true
  );
  writefln("Diameter of a random graph with average degree %g: %g",
          2.0 * igraph_ecount(&graph) / igraph_vcount(&graph),
          cast(double) diameter);

  igraph_destroy(&graph);
}
