
using Pkg

using CSV

Pkg.add("CSV")

data = CSV.read("C:\\Users\\busra\\Desktop\\Julia\\sales.csv")

X = data[:Promote]
Y = data[:Sales];

#Pkg.add("Plots")
using Plots;

scatter(data.Promote, data.Sales)

using Statistics

m = sum((X .- mean(X)) .* (Y .- mean(Y))) / sum((X .- mean(X)) .* (X .- mean(X)))
c = mean(Y) - m .* mean(X);

m , c

23.5 * 50 + 5.48

names(data)

Pkg.add("GLM")
using GLM;

ols = lm(@formula(Sales ~ Promote) , data)

using DataFrames

predict(ols, DataFrame(Promote= [50]))

data2 = CSV.read("C:\\Users\\busra\\Desktop\\Julia\\salary.csv")

names(data2)

ols2 = lm(@formula(Salary ~ Years_Previous_Experience + Years_Employed + Years_Education + Gender ) , data2)

ols2 = lm(@formula(Salary ~ Years_Employed + Years_Education ) , data2)

using DataFrames

predict(ols2, DataFrame(Years_Employed = [7], Years_Education  = [12]))
