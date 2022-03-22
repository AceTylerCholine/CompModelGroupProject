
catsfilepath = joinpath(pwd(), "cats_recoded.csv")
dogsfilepath = joinpath(pwd(), "dogs_recoded.csv")

using CSV, DataFrames

catsdata = CSV.read(catsfilepath, DataFrame)
dogsdata = CSV.read(dogsfilepath, DataFrame)

catsdata[!,:target] .= "cat"
dogsdata[!,:target] .= "dog"

data = vcat(catsdata, dogsdata)

x = data[!,Not(:target)]
y = data[!,:target]