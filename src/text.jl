
export splitstrip

function splitstrip{T<:AbstractString}(line::T, splitter::String)
    convert(Array{T,1}, split(strip(line), splitter))
end
