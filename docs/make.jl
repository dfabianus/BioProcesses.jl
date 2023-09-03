using BioProcesses
using Documenter

DocMeta.setdocmeta!(BioProcesses, :DocTestSetup, :(using BioProcesses); recursive=true)

makedocs(;
    modules=[BioProcesses],
    authors="Fabian Müller",
    repo="https://github.com/dfabianus/BioProcesses.jl/blob/{commit}{path}#{line}",
    sitename="BioProcesses.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://dfabianus.github.io/BioProcesses.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/dfabianus/BioProcesses.jl",
    devbranch="master",
)
