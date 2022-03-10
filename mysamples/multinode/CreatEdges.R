###
# Create two data frames for edges
# Singly supplied attribute values are repeated down
###

library(DiagrammeR)

# Create an edge data frame
edges_1 <-
  create_edge_df(from = c("a", "a", "b", "c"),
               to = c("b", "d", "d", "a"),
               color = "green",
               rel = "requires",
               data = c(2.7, 8.9, 2.6, 0.6))

edges_1
#>   from to      rel color data
#> 1    a  b requires green  2.7
#> 2    a  d requires green  8.9
#> 3    b  d requires green  2.6
#> 4    c  a requires green  0.6

# Create another edge data frame
edges_2 <-
  create_edge_df(from = c("e", "g", "h", "h"),
               to = c("g", "h", "f", "e"),
               rel = "receives",
               arrowhead = "dot",
               color = "red")

edges_2
#>   from to      rel arrowhead color
#> 1    e  g receives       dot   red
#> 2    g  h receives       dot   red
#> 3    h  f receives       dot   red
#> 4    h  e receives       dot   red

###
# Combine two data frames for edges
###

# Combine edge data frames with 'combine_edges'
all_edges <- combine_edfs(edges_1, edges_2)

all_edges
#>   from to      rel color data arrowhead
#> 1    a  b requires green  2.7
#> 2    a  d requires green  8.9
#> 3    b  d requires green  2.6
#> 4    c  a requires green  0.6
#> 5    e  g receives   red            dot
#> 6    g  h receives   red            dot
#> 7    h  f receives   red            dot
#> 8    h  e receives   red            dot
