DiagrammeR::grViz("
  digraph graph2 {

  graph [layout = dot, rankdir = LR]

  # node definitions with substituted label text
  node [shape = oval]
  a [label = '@@1']
  b [label = '@@2']
  c [label = '@@3']
  d [label = '@@4']

  a -> b -> c -> d
  }

  [1]: names(iris)[1]
  [2]: names(iris)[2]
  [3]: names(iris)[3]
  [4]: names(iris)[4]
  ",
                  height = 100)
