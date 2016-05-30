
begin
    dir_name = "test_readdirpath"
    mkdir(dir_name)
    file1_path = joinpath(dir_name, "file1.txt")
    touch(file1_path)
    dir2_name = joinpath(dir_name, "dir2")
    mkdir(dir2_name)
    file2_path = joinpath(dir2_name, "file2.txt")
    touch(file2_path)

    @test readdirpath(dir2_name) == String[file2_path]
    @test readdirpath(dir2_name) == String[file1_path,file2_path]
end
