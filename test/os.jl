
begin
    dir1_name = "test_readdirpath"
    mkdir(dir1_name)
    file1_path = joinpath(dir1_name, "file1.txt")
    touch(file1_path)
    dir2_name = joinpath(dir1_name, "dir2")
    mkdir(dir2_name)
    file2_path = joinpath(dir2_name, "file2.txt")
    touch(file2_path)

    @test readdirpath(dir2_name) == String[file2_path]
    @test readdirpath(dir1_name) == String[dir2_name, file1_path]

    rm(dir1_name,recursive=true)
end
