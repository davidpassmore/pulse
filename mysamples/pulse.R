DiagrammeR::grViz("digraph {

graph [layout = dot, rankdir = TD]

# define the global styles of the nodes. We can override these in box if we wish
node [shape = egg, style = filled, fillcolor = gray97, fontsize = 30 fontname = Helvetica]

announce [label = '3. Announce URL for \n Pulse survey']
specify [label = '1. Write Pulse \n survey questions']
design [label = '2. Enter Pulse questions in \n Google Form template']
data1 [label = '4. Store survey responses \n in Google Sheet', shape = folder]
process [label =  '5.a. Create Google Chart \n from categorial responses']
integrate [label = '9. Integrate chart & narrative \n into report template']
results [label= '10. Distribute URL \n for link to report']
process1 [label = '5.b. Create list of \n text responses']
process2 [label ='5.c. List ideas for \n  next Pulse']
notify [label = '7. Feed ideas to \n next Pulse']
archive [label = '6. Archive Google Sheet']
narrative [label = '8. Write narrative from \n text & categorical responses']
title [label ='PROCESS FOR \n AMBERSON TOWERS \n PULSE SURVEY', shape = plaintext, fillcolor = white, fontsize = 35, fontname = Helvetica]

# edge definitions with the node IDs
specify ->  design -> announce -> data1   -> {process process1}  -> narrative  -> integrate -> results [arrowhead = vee, color = black]
data1 -> process2 -> notify
data1 -> archive
}")

