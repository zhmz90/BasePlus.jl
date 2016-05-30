
export readdirpath

@doc """ return full path of files under dir
""" ->
function readdirpath(dir;recursive=false, sorted=false)
    if recursive
        #files = filterreaddirpath(dir)
        #return  vcat()
        error("readdirpath recursively is not implemented yet!")
    end
    file_paths = map(x->joinpath(dir,x ), readdir(dir))
    if sorted
        return sort(file_paths)
    end
    return file_paths
end
