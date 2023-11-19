module BioProcesses

using DataFrames
# Write your package code here.

mutable struct BioProcess 
    name::String
    data::DataFrame #complete with lot of NaN's for undefined times 

    function BioProcess()
        new("Test",DataFrame(a=[1,2]))
    end
end

# Outer constructors
function BioProcess()
end

bp = BioProcess()

# all the functions, models that can be used for bioprocesses
function calculator_function(var1,var2,var3)
    return var1+var2+var3, var3-var2
end

function calc!(bioprocess::BioProcess, calcfun::Function;
    interp=:highest)
    return nothing
end

#calc!(bp, calculator_function)


end
