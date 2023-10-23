# Problem 1
a = 10
b = 2.5e23
c = 2 + 3im
d = exp((2 * pi * im)/3)


# Problem 2
aVec = [3.14 15 9 26]
bVec = [2.71; 8; 28; 182]
cVec = 5:-0.2:-5
dVec = 10 .^ range(0, 1, 1000) # Julia doesn't have logspace, so we have to implement it ourself using math :)
eVec = "Hello"


# Problem 3
using LinearAlgebra
aMat = 2 * ones(9, 9)
bDiag = [1 2 3 4 5 4 3 2 1]
bMat = diagm(vec(bDiag))
#= 
diagm() is included in LinearAlgebra package
It requires a column vector like [1,2,3] instead of a row vector like [1 2 3]
Also see vec() and reshape()
=#
cMat = transpose(reshape(1:100, 10, 10))
# Couldn't find any function that does this out of the box
eMat = [13 -1 5; -22 10 -87]
fMat = -3 .+ (6) .* rand(5, 3)


# Problem 4
using Statistics
cSum = sum(cMat)
eMean = mean(eMat, dims=2)
eMat[1, :] = [1 1 1]
cSub = cMat[2:9, 2:9]
lin = 1:1:20
lin = -lin
r = rand(1,5)
r = Array(r[:, :] .< 0.5) .* r[:, :]
