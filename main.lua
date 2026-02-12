function read_file(filename)
    local content = ""

    if string.byte(filename, 1) == string.byte("/") then
        filename = string.sub(filename, 2)
    end

    local file = io.open(filename)
    if file then
        content = file:read("*a")
        file:close()
    end

    return content
end

function cat(filename)
    local s = read_file(filename)
    print(s)
end

cat("/etc/motd")

