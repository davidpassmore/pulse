# A minimal plot
DiagrammeR::grViz("digraph {

graph[layout = dot, rankdir = LR]

a
b
c

a -> b -> c
a -> c
}")
