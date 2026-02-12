function read_file(filename)
    local content = ""

    if filename[0] == 
    local file = io.open(filename)
    if file then
        local content = file:read("*a")
        file:close()
    end

    return content
end

function cat(filename)
    local s = read_file(filename)
    print(s)
end

cat("/etc/motd")

