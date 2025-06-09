Umm, I've noticed you around</br>
I find you very attractive</br>
I've noticed you around, umm</br>
I find you very attractive</br>
I find you very attractive</br>
Umm, would you go to bed with me?</br>
['Would you ...' by TOUCH and GO (1998)](https://www.youtube.com/watch?v=Hn-KmLIt-AQ)</br>

embed | ɪmˈbɛd, ɛmˈbɛd | (also imbed)
verb (embeds, embedding, embedded) [with object]
1 fix (an object) firmly and deeply in a surrounding mass
• implant (an idea or feeling) so that it becomes ingrained within a particular context
OED

## Embedding

Computers only work with numbers. If something is described by more than one number, one needs a vector. If there are multiple objects, one stacks them and gets a matrix. Cool computers can work with matrices very efficiently thanks to the graphics cards. Everybody wants those — this is why NVIDIA is such a prominent company, and will probably stay this way at least for a while.

In machine learning (ML), an object embedding is a type of vectorisation, a way of representing an object as vector or an array of numbers (e.g. [0.278, -0.537, 0.702, ...]). Object in this case is anything ML engineer is trying to work with — a piece of music on [Spotify](https://open.spotify.com/) or a protein from [Protein Data Bank](https://www.wwpdb.org/).

One way to represent an object as an array of numbers is to develop some numeric features which describe this object from a certain prospective. If we consider a piece of music we could note down, for example, (1) its duration in seconds, (2) whether there is vocal part or whether it's purely instrumental, and (3) which year it was produced in. One problem with feature engineering is that it takes a lot of work and inginuity to develop new features and the process may become super expensive as a result. Another problem is that we tend to introduce our biases when creating the features. In our example duration of a piece of music seems perfectly objective. Yet, what about the musical genre? It's highly likely that even the experts may disagree on that.

As opposed to feature engineering, object embedding is an automatic process of generating a vector with a desired number of features based on the context in which an object appears. As a result, the context of an object and its relations with other objects is captured in an embedding.

## Word Embeddings & Node Embeddings

Embeddings are widely used in two domains of ML — natural language processing (NLP) & graph neural networks (GNN) ML using graphs.

|embedding |word| node|
|:-:|:-:|:-:|
|algorithm|[word2vec]()|[node2vec](https://pytorch-geometric.readthedocs.io/en/latest/generated/torch_geometric.nn.models.Node2Vec.html)|
|paper|[Mikolov 2013](https://arxiv.org/abs/1301.3781)|[Leskovec 2016](https://arxiv.org/abs/1607.00653)|