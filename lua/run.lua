local prefix_command = "botright new | :e term://"

local function run_project()
    local types = {
        {
            path = ".nvimrun.sh",
            cmd = "bash .nvimrun.sh",
        },
        {
            path = "Cargo.toml",
            cmd = "cargo run",
        },
        {
            path = "android",
            cmd = "flutter run -d linux",
        },
        {
            path = "pubspec.yaml",
            cmd = "dart run --enable-asserts",
        },
    }

    local found = false

    for _, type in pairs(types) do
        local path = vim.loop.cwd() .. "/" .. type.path
        local ok, _ = vim.loop.fs_stat(path)

        if ok then
            found = true
            vim.cmd(prefix_command .. type.cmd)
            break
        end
    end

    if not found then
        print("Command not found.")
    end
end

return run_project
