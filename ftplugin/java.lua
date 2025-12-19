local jdtls = require('jdtls')

local root = vim.fs.find(
  { "pom.xml", "mvnw", "gradlew", ".git" },
  { upward = true }
)[1]

if not root then
  return
end

local workspace_dir = vim.fn.stdpath("data") ..
    "/jdtls-workspaces/" ..
    vim.fn.fnamemodify(root, ":p:h:t")

jdtls.start_or_attach({
    cmd = { "jdtls", "-data", workspace_dir },
    root_dir = vim.fs.dirname(root),
})

