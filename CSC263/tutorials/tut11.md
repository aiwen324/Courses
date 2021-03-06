TUTORIAL 11: Minimum Spanning Trees and Prim's Algorithm
========================================================

Tutorial:
---------

Please cover

1) Prim's MST algorithm, as described in page 572 of CLRS.

In class I gave a 5 minutes *very* high-level description of
Prim's algorithm, but no details. For example
I did not describe what data structures (priority queue)
are actually used to make this algo efficient.

2) Exercise 23-4 (page 577-578):

Problem 23-4: Alternative minimum-spanning-tree algorithms

In this problem, we give pseudocode for three different algorithms.
Each one takes a graph as input and returns a set of edges T. For each
algorithm, you must either prove that T is a minimum spanning tree or
prove that T is not a minimum spanning tree. Also describe the most
efficient implementation of each algorithm, whether or not it computes
a minimum spanning tree.

   a.

      MAYBE-MST-A(G, w)
      1  sort the edges into nonincreasing order of edge weights w
      2  T <- E
      3  for each edge e, taken in nonincreasing order by weight
      4       do if T - {e} is a connected graph
      5             then T <- T - {e}
      6  return T

   b.

      MAYBE-MST-B(G, w)
      1  T <- empty set
      2  for each edge e, taken in arbitrary order
      3      do if T union {e} has no cycles
      4            then T <- T + {e}
      5  return T

   c.

      MAYBE-MST-C(G, w)
      1  T <- empty set
      2  for each edge e, taken in arbitrary order
      3     do T <- T + {e}
      4       if T has a cycle c
      5         then let e' be the maximum-weight edge on c
      6              T <- T - {e'}
      7  return T

ANSWERS: discussed in tutorial
