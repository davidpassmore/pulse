###
# Create two data frames for nodes
# Singly supplied attribute values are repeated down
###

library(DiagrammeR)

# Create a node data frame
nodes_1 <-
  create_node_df(nodes = c("a", "b", "c", "d"),
               label = FALSE,
               type = "lower",
               n = 4,
               style = "filled",
               color = "aqua",
               shape = c("circle", "circle",
                         "rectangle", "rectangle"),
               data = c(3.5, 2.6, 9.4, 2.7))

nodes_1
#>   nodes label  type  style color     shape data
#> 1     a       lower filled  aqua    circle  3.5
#> 2     b       lower filled  aqua    circle  2.6
#> 3     c       lower filled  aqua rectangle  9.4
#> 4     d       lower filled  aqua rectangle  2.7

# Create another node data frame
nodes_2 <-
  create_node_df(nodes = c("e", "f", "g", "h"),
               label = FALSE,
               type = "upper",
               n=4,
               style = "filled",
               color = "red",
               shape = "triangle",
               data = c(0.5, 3.9, 3.7, 8.2))

nodes_2
#>   nodes label  type  style color    shape data
#> 1     e       upper filled   red triangle  0.5
#> 2     f       upper filled   red triangle  3.9
#> 3     g       upper filled   red triangle  3.7
#> 4     h       upper filled   red triangle  8.1

###
# Combine two data frames for nodes
###

# Combine node data frames with 'combine_nodes'
all_nodes <- combine_ndfs(nodes_1, nodes_2)

all_nodes
#>   nodes label  type  style color     shape data
#> 1     a       lower filled  aqua    circle  3.5
#> 2     b       lower filled  aqua    circle  2.6
#> 3     c       lower filled  aqua rectangle  9.4
#> 4     d       lower filled  aqua rectangle  2.7
#> 5     e       upper filled   red  triangle  0.5
#> 6     f       upper filled   red  triangle  3.9
#> 7     g       upper filled   red  triangle  3.7
#> 8     h       upper filled   red  triangle  8.2
