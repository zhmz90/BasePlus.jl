
export readdirpath

@doc """ return full path of files under dir
""" ->
function readdirpath(dir, recursive=false)
    if recursive
        #files = filterreaddirpath(dir)
        #return  vcat()
        error("readdirpath recursively is not implemented yet!")
    end
    map(x->joinpath(dir,x ), readdir(dir))
end
