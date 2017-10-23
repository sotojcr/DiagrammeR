% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_node_df_ws.R
\name{get_node_df_ws}
\alias{get_node_df_ws}
\title{Get the graph's ndf filtered by a selection of nodes}
\usage{
get_node_df_ws(graph)
}
\arguments{
\item{graph}{a graph object of class
\code{dgr_graph}.}
}
\value{
a node data frame.
}
\description{
From a graph object of class
\code{dgr_graph}, get the graph's internal
node data frame that is filtered by the node
ID values currently active as a selection.
}
\examples{
# Create a random graph using the
# `add_gnm_graph()` function
graph <-
  create_graph() \%>\%
  add_gnm_graph(
    n = 4,
    m = 4,
    set_seed = 23) \%>\%
  set_node_attrs(
    node_attr = value,
    values = c(2.5, 8.2, 4.2, 2.4))

# Select nodes with ID values
# `1` and `3`
graph <-
  graph \%>\%
  select_nodes_by_id(
    nodes = c(1, 3))

# Get the node data frame that's
# limited to the rows that correspond
# to the node selection
graph \%>\%
  get_node_df_ws()
#>   id type label value
#> 1  1 <NA>  <NA>   2.5
#> 2  3 <NA>  <NA>   4.2
}