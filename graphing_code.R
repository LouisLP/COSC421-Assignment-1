
nodes <- read.csv("airport_data.csv", header=TRUE)
edges <- read.csv("connections/combined.csv", header=TRUE)

nodes
edges


library(igraph)

airports <- graph_from_data_frame(edges, nodes, directed=FALSE)
vertex_attr(airports) <- list(name = nodes$code)
plot(airports)
