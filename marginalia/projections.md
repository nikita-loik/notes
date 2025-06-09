# Bipartite-Graph Projections Along with Jaccard and Newman Indices

In graph theory, there is a procedure defined for the bipartite graphs, whereby only nodes of one types are left, and the nodes or another type are replaced with edges, thus reducing the graph complexity node-wise. For example, in a simple bipartite graph (with two node-types A & B) $A_1—B—A_2$ — the projection onto nodes of type 'A' will simply be $A_1—A_2$.

In social-sciences, [Jaccard](https://en.wikipedia.org/wiki/Jaccard_index) & [Newman](https://journals.aps.org/pre/abstract/10.1103/PhysRevE.64.016132) indices are often used to estimate how much context the two nodes share in a bipartite graph.

Generating a bipartite & calculating Jaccard & Newman indices rely on traversing through all the nodes of one type, thus making it possible to accomplish all three tasks in one passing.

In many libraries, dealing with graphs, including [graph-tool](https://graph-tool.skewed.de/) & [NetworKit](https://networkit.github.io/), there are no inbuilt functions, which allow to calculate the graph projections or the Jaccard or Newman indices. The best graph library out there the NetworkX offers the built in functions for such calculations, but they are very time-consuming.

Here I suggest an algorithm, which runs about 10 times faster than the NetworkX original algorithms. For tests we used Artfacts artist-show participation bipartite graph, with approximately 1M nodes of both types.

Using this algorithm it was possible to accomplish both the projection generation & indices calculation in approximately 20 minutes.

```python

```