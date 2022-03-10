mermaid("
graph TD
A(TECHNOLOGY COMMITTEE IDENTIFIES, MONITORS, CLOSES PROJECTS)
B(>> 1. IDENTIFY PROJECTS <<)
C[>> 2. PROPOSE PROJECTS <<]
D[>> 3. MONITOR PROJECTS <<]
E[>> 4. CLOSE PROJECTS <<]
H{feasible?}
I[accept]
J[reject]
K[prioritize]
L{council validate?}
M[reject]
N{council approves?}
P[reject]
Q[précis to committee]
R[proposal to council]
A-->B
B-->H
H--NO-->J
H--YES-->I
I-->K
K-->L
L--NO-->M
L--YES-->C
N--NO-->P
N--YES-->D
D-->E
C-->Q
Q-->R
R-->N
")
