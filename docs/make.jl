using UltraDarkUnits
using Documenter

DocMeta.setdocmeta!(UltraDarkUnits, :DocTestSetup, :(using UltraDarkUnits); recursive=true)

makedocs(;
    modules=[UltraDarkUnits],
    authors="Nathan Musoke <nathan.musoke@gmail.com> and contributors",
    sitename="UltraDarkUnits.jl",
    format=Documenter.HTML(;
        canonical="https://musoke.github.io/UltraDarkUnits.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/musoke/UltraDarkUnits.jl",
    devbranch="main",
)
