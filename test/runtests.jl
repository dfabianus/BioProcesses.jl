using BioProcesses
using Test
using CSV 
using YAML
using DataFrames

test_dataset = "/data/Testprocess"
include("load_processes.jl")

data = load_processes()

@testset "BioProcesses.jl" begin
    # Write your tests here.
end
