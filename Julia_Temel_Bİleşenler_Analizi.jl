
using Pkg

using MultivariateStats , RDatasets, Plots

using RDatasets
Pkg.add("RDatasets")

Pkg.add("MultivariateStats");

Pkg.add("Plots");

iris = dataset("datasets", "iris")

input = convert(Matrix, iris[: , 1:4])'

M = fit(PCA, input, maxoutdim = 2)

M.prinvars

i_transform = MultivariateStats.transform(M, input)

transpose(i_transform)

using Plots
scatter(i_transform'[1:50,1], i_transform'[1:50,2], markercolor=[:red])
scatter!(i_transform'[51:100,1], i_transform'[51:100,2], markercolor=[:green])
scatter!(i_transform'[101:150,1], i_transform'[101:150,2], markercolor=[:blue])
