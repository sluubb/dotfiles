local enabled = require("enabled")

for module, isEnabled in pairs(enabled) do
    if isEnabled then
        local ok, err = pcall(require, "modules." .. module)

        if not ok then
            print("Failed to load module '", module, "': ", err)
        end
    end
end
