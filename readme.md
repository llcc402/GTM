# GTM: The generative topographic mapping

This an implementation of Bishop's paper: https://www.microsoft.com/en-us/research/publication/gtm-the-generative-topographic-mapping/

## Assumption:

    t ~ int p(t|x, W, beta) p(x) dx
    x ~ 1/K sum_{k=1}^K delta(x - x_k)

## Parameter updating algorithm:

We use EM algorithm. That is, since

    sum_{n=1}^N log ( p(t_n|W,beta)) =  sum_{n=1}^N log (1/K sum_{k=1}^K p(t_n|x_k,W,bea) ) 
                                                                                 p(x_k|t_n, W, beta)
                                     >= sum_{n=1}^N log ( 1/K sum_{k=1}^K ----------------------------------)
                                                                             sum_{k=1}^Kp(x_k|t_n, W, beta)
Hence we only need to optimize the right hand side.


## Functions included

1. grid_generate: generate a two dimensional grid (x)

2. manifold_generate: for each x, project it into phi(x), which has a higher dimension.

3. gtm: the main function, which is used to update W and beta.

## Script included:

1. main: run this as a example

## data included:

1. The oil data. It has three clusters.
