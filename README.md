# HelixConfig

## Commands for installing LSPs
<code>npm i -g vscode-langservers-extracted
npm install -g typescript typescript-language-server
npm install -g @microsoft/compose-language-service
npm i -g @vue/language-server
npm i -g prettier
npm i -g @tailwindcss/language-server
npm i -g sql-language-server
pip install -U 'python-lsp-server[all]'
pip install pylsp-mypy
go install golang.org/x/tools/gopls@latest
go install github.com/go-delve/delve/cmd/dlv@latest
go install golang.org/x/tools/cmd/goimports@latest
go install github.com/nametake/golangci-lint-langserver@latest
go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest</code>

## Commands for the language-servers -> Languag.toml config
<code>
[language-server]
angular = {command = "ngserver", args = ["--stdio", "--tsProbeLocations", ".", "--ngProbeLocations", ".",]}
bash-language-server = { command = "bash-language-server", args = ["start"] }
docker-langserver = { command = "docker-langserver", args = ["--stdio"] }
docker-compose-langserver = { command = "docker-compose-langserver", args = ["--stdio"]}
graphql-language-service = { command = "graphql-lsp", args = ["server", "-m", "stream"] }
mojo-lsp = { command = "mojo-lsp-server" }
pylsp = { command = "pylsp" }
tailwindcss-ls = { command = "tailwindcss-language-server", args = ["--stdio"] }
vscode-css-language-server = { command = "vscode-css-language-server", args = ["--stdio"], config = { provideFormatter = true, css = { validate = { enable = true } } } }
vscode-html-language-server = { command = "vscode-html-language-server", args = ["--stdio"], config = { provideFormatter = true } }
vscode-json-language-server = { command = "vscode-json-language-server", args = ["--stdio"], config = { provideFormatter = true, json = { validate = { enable = true } } } }
vuels = { command = "vue-language-server", args = ["--stdio"], config = { typescript = { tsdk = "node_modules/typescript/lib/" } } }
yaml-language-server = { command = "yaml-language-server", args = ["--stdio"] }
zls = { command = "zls" }
</code>

<code>
[language-server.lua-language-server]
command = "lua-language-server"

[language-server.lua-language-server.config.Lua.hint]
enable = true
arrayIndex = "Enable"
setType = true
paramName = "All"
paramType = true
await = true

[language-server.gopls]
command = "gopls"

[language-server.gopls.config.hints]
assignVariableTypes = true
compositeLiteralFields = true
constantValues = true
functionTypeParameters = true
parameterNames = true
rangeVariableTypes = true

[language-server.golangci-lint-lsp]
command = "golangci-lint-langserver"

[language-server.golangci-lint-lsp.config]
command = ["golangci-lint", "run", "--out-format", "json", "--issues-exit-code=1"]


[language-server.typescript-language-server]
command = "typescript-language-server"
args = ["--stdio"]
config.hostInfo = "helix"

[language-server.typescript-language-server.config.typescript.inlayHints]
includeInlayEnumMemberValueHints = true
includeInlayFunctionLikeReturnTypeHints = true
includeInlayFunctionParameterTypeHints = true
includeInlayParameterNameHints = "all"
includeInlayParameterNameHintsWhenArgumentMatchesName = true
includeInlayPropertyDeclarationTypeHints = true
includeInlayVariableTypeHints = true

[language-server.typescript-language-server.config.javascript.inlayHints]
includeInlayEnumMemberValueHints = true
includeInlayFunctionLikeReturnTypeHints = true
includeInlayFunctionParameterTypeHints = true
includeInlayParameterNameHints = "all"
includeInlayParameterNameHintsWhenArgumentMatchesName = true
includeInlayPropertyDeclarationTypeHints = true
includeInlayVariableTypeHints = true


[language-server.vscode-eslint-language-server]
command = "vscode-eslint-language-server"
args = ["--stdio"]

[language-server.vscode-eslint-language-server.config]
validate = "on"
experimental = { useFlatConfig = false }
rulesCustomizations = []
run = "onType"
problems = { shortenToSingleLine = false }
nodePath = ""

[language-server.vscode-eslint-language-server.config.codeAction.disableRuleComment]
enable = true
location = "separateLine"

[language-server.vscode-eslint-language-server.config.codeAction.showDocumentation]
enable = true

[language-server.vscode-eslint-language-server.config.workingDirectory]
mode = "location"


[[language]]
name = "mojo"
scope = "source.mojo"
roots = ["__init__.mojo"]
injection-regex = "mojo"
file-types = ["mojo", "🔥"]
language-servers = [ "mojo-lsp" ]
comment-token = "#"
indent = { tab-width = 4, unit = "    " }
auto-format = true
formatter = { command = "mojo", args = ["format", "-q", "-"]}

[[grammar]]
name = "mojo"
source = { git = "https://github.com/lsh/tree-sitter-mojo", rev = "3d7c53b8038f9ebbb57cd2e61296180aa5c1cf64" }


[[language]]
name = "json"
scope = "source.json"
injection-regex = "json"
file-types = [
  "json",
  "arb",
  "ipynb",
  "geojson",
  "gltf",
  "webmanifest",
  { glob = "flake.lock" },
  { glob = ".babelrc" },
  { glob = ".bowerrc" },
  { glob = ".jscrc" },
  "js.map",
  "ts.map",
  "css.map",
  { glob = ".jslintrc" },
  "jsonl",
  "jsonld",
  { glob = ".vuerc" },
  { glob = "composer.lock" },
  { glob = ".watchmanconfig" },
  "avsc",
  "ldtk",
  "ldtkl",
  { glob = ".swift-format" },
]
language-servers = [ "vscode-json-language-server" ]
auto-format = true
indent = { tab-width = 2, unit = "  " }

[[grammar]]
name = "json"
source = { git = "https://github.com/tree-sitter/tree-sitter-json", rev = "73076754005a460947cafe8e03a8cf5fa4fa2938" }


[[language]]
name = "go"
scope = "source.go"
injection-regex = "go"
file-types = ["go"]
roots = ["go.work", "go.mod"]
auto-format = true
comment-token = "//"
block-comment-tokens = { start = "/*", end = "*/" }
language-servers = [ "gopls", "golangci-lint-lsp" ]
indent = { tab-width = 4, unit = "\t" }

[language.debugger]
name = "go"
transport = "tcp"
command = "dlv"
args = ["dap"]
port-arg = "-l 127.0.0.1:{}"

[[language.debugger.templates]]
name = "source"
request = "launch"
completion = [ { name = "entrypoint", completion = "filename", default = "." } ]
args = { mode = "debug", program = "{0}" }

[[language.debugger.templates]]
name = "binary"
request = "launch"
completion = [ { name = "binary", completion = "filename" } ]
args = { mode = "exec", program = "{0}" }

[[language.debugger.templates]]
name = "test"
request = "launch"
completion = [ { name = "tests", completion = "directory", default = "." } ]
args = { mode = "test", program = "{0}" }

[[language.debugger.templates]]
name = "attach"
request = "attach"
completion = [ "pid" ]
args = { mode = "local", processId = "{0}" }

[[language.debugger.templates]]
name = "core"
request = "launch"
completion = [ { name = "binary", completion = "filename" }, { name = "core", completion = "filename" } ]
args = { mode = "core", program = "{0}", coreFilePath = "{1}" }

[[grammar]]
name = "go"
source = { git = "https://github.com/tree-sitter/tree-sitter-go", rev = "64457ea6b73ef5422ed1687178d4545c3e91334a" }

[[language]]
name = "gomod"
scope = "source.gomod"
injection-regex = "gomod"
file-types = [{ glob = "go.mod" }]
auto-format = true
comment-token = "//"
language-servers = [ "gopls" ]
indent = { tab-width = 4, unit = "\t" }

[[grammar]]
name = "gomod"
source = { git = "https://github.com/camdencheek/tree-sitter-go-mod", rev = "e8f51f8e4363a3d9a427e8f63f4c1bbc5ef5d8d0" }

[[language]]
name = "gotmpl"
scope = "source.gotmpl"
injection-regex = "gotmpl"
file-types = ["gotmpl"]
comment-token = "//"
block-comment-tokens = { start = "/*", end = "*/" }
language-servers = [ "gopls" ]
indent = { tab-width = 2, unit = " " }

[[grammar]]
name = "gotmpl"
source = { git = "https://github.com/dannylongeuay/tree-sitter-go-template", rev = "395a33e08e69f4155156f0b90138a6c86764c979" }

[[language]]
name = "gowork"
scope = "source.gowork"
injection-regex = "gowork"
file-types = [{ glob = "go.work" }]
auto-format = true
comment-token = "//"
language-servers = [ "gopls" ]
indent = { tab-width = 4, unit = "\t" }

[[grammar]]
name = "gowork"
source = { git = "https://github.com/omertuc/tree-sitter-go-work", rev = "6dd9dd79fb51e9f2abc829d5e97b15015b6a8ae2" }

[[language]]
name = "javascript"
scope = "source.js"
injection-regex = "(js|javascript)"
language-id = "javascript"
file-types = ["js", "mjs", "cjs", "rules", "es6", "pac", { glob = ".node_repl_history" }, { glob = "jakefile" }]
shebangs = ["node"]
roots = [ "package.json" ]
comment-token = "//"
block-comment-tokens = { start = "/*", end = "*/" }
language-servers = [ "typescript-language-server" ]
indent = { tab-width = 2, unit = "  " }

[language.debugger]
name = "node-debug2"
transport = "stdio"
# args consisting of cmd (node) and path to adapter should be added to user's configuration
quirks = { absolute-paths = true }

[[language.debugger.templates]]
name = "source"
request = "launch"
completion = [ { name = "main", completion = "filename", default = "index.js" } ]
args = { program = "{0}" }

[[grammar]]
name = "javascript"
source = { git = "https://github.com/tree-sitter/tree-sitter-javascript", rev = "f772967f7b7bc7c28f845be2420a38472b16a8ee" }

[[language]]
name = "jsx"
scope = "source.jsx"
injection-regex = "jsx"
language-id = "javascriptreact"
file-types = ["jsx"]
roots = [ "package.json" ]
comment-token = "//"
block-comment-tokens = { start = "/*", end = "*/" }
language-servers = [ "typescript-language-server" ]
indent = { tab-width = 2, unit = "  " }
grammar = "javascript"

[[language]]
name = "typescript"
scope = "source.ts"
injection-regex = "(ts|typescript)"
language-id = "typescript"
file-types = ["ts", "mts", "cts"]
shebangs = ["deno", "bun", "ts-node"]
roots = [ "package.json", "tsconfig.json" ]
comment-token = "//"
block-comment-tokens = { start = "/*", end = "*/" }
language-servers = [ "typescript-language-server" ]
indent = { tab-width = 2, unit = "  " }

[[grammar]]
name = "typescript"
source = { git = "https://github.com/tree-sitter/tree-sitter-typescript", rev = "b1bf4825d9eaa0f3bdeb1e52f099533328acfbdf", subpath = "typescript" }

[[language]]
name = "typespec"
scope = "source.typespec"
injection-regex = "(tsp|typespec)"
language-id = "typespec"
file-types = ["tsp"]
roots = ["tspconfig.yaml"]
auto-format = true
comment-token = "//"
block-comment-tokens = { start = "/*", end = "*/" }
language-servers = ["typespec"]
indent = { tab-width = 2, unit = "  " }

[[grammar]]
name = "typespec"
source = { git = "https://github.com/happenslol/tree-sitter-typespec", rev = "0ee05546d73d8eb64635ed8125de6f35c77759fe" }

[[language]]
name = "tsx"
scope = "source.tsx"
injection-regex = "(tsx)" # |typescript
language-id = "typescriptreact"
file-types = ["tsx"]
roots = [ "package.json", "tsconfig.json" ]
comment-token = "//"
block-comment-tokens = { start = "/*", end = "*/" }
language-servers = [ "typescript-language-server" ]
indent = { tab-width = 2, unit = "  " }

[[grammar]]
name = "tsx"
source = { git = "https://github.com/tree-sitter/tree-sitter-typescript", rev = "b1bf4825d9eaa0f3bdeb1e52f099533328acfbdf", subpath = "tsx" }

[[language]]
name = "css"
scope = "source.css"
injection-regex = "css"
file-types = ["css", "scss"]
block-comment-tokens = { start = "/*", end = "*/" }
language-servers = [ "vscode-css-language-server" ]
auto-format = true
indent = { tab-width = 2, unit = "  " }

[[grammar]]
name = "css"
source = { git = "https://github.com/tree-sitter/tree-sitter-css", rev = "769203d0f9abe1a9a691ac2b9fe4bb4397a73c51" }


[[language]]
name = "html"
scope = "text.html.basic"
injection-regex = "html"
file-types = ["html", "htm", "shtml", "xhtml", "xht", "jsp", "asp", "aspx", "jshtm", "volt", "rhtml", "cshtml"]
block-comment-tokens = { start = "<!--", end = "-->" }
language-servers = [ "vscode-html-language-server", "superhtml" ]
auto-format = true
indent = { tab-width = 2, unit = "  " }

[[grammar]]
name = "html"
source = { git = "https://github.com/tree-sitter/tree-sitter-html", rev = "29f53d8f4f2335e61bf6418ab8958dac3282077a" }


[[language]]
name = "html"
scope = "text.html.basic"
injection-regex = "html"
file-types = ["html", "htm", "shtml", "xhtml", "xht", "jsp", "asp", "aspx", "jshtm", "volt", "rhtml", "cshtml"]
block-comment-tokens = { start = "<!--", end = "-->" }
language-servers = [ "vscode-html-language-server", "superhtml" ]
auto-format = true
indent = { tab-width = 2, unit = "  " }

[[grammar]]
name = "html"
source = { git = "https://github.com/tree-sitter/tree-sitter-html", rev = "29f53d8f4f2335e61bf6418ab8958dac3282077a" }

[[language]]
name = "python"
scope = "source.python"
injection-regex = "py(thon)?"
file-types = ["py", "pyi", "py3", "pyw", "ptl", "rpy", "cpy", "ipy", "pyt", { glob = ".python_history" }, { glob = ".pythonstartup" }, { glob = ".pythonrc" }, { glob = "SConstruct" }, { glob = "SConscript" }]
shebangs = ["python"]
roots = ["pyproject.toml", "setup.py", "poetry.lock", "pyrightconfig.json"]
comment-token = "#"
language-servers = ["ruff", "jedi", "pylsp"]
# TODO: pyls needs utf-8 offsets
indent = { tab-width = 4, unit = "    " }

[[grammar]]
name = "python"
source = { git = "https://github.com/tree-sitter/tree-sitter-python", rev = "4bfdd9033a2225cc95032ce77066b7aeca9e2efc" }


[[language]]
name = "lua"
injection-regex = "lua"
scope = "source.lua"
file-types = ["lua"]
shebangs = ["lua", "luajit"]
roots = [".luarc.json", ".luacheckrc", ".stylua.toml", "selene.toml", ".git"]
comment-token = "--"
block-comment-tokens = { start = "--[[", end = "--]]" }
indent = { tab-width = 2, unit = "  " }
language-servers = [ "lua-language-server" ]

[[grammar]]
name = "lua"
source = { git = "https://github.com/tree-sitter-grammars/tree-sitter-lua", rev = "88e446476a1e97a8724dff7a23e2d709855077f2" }


[[language]]
name = "vue"
scope = "source.vue"
injection-regex = "vue"
file-types = ["vue"]
roots = ["package.json"]
block-comment-tokens = { start = "<!--", end = "-->" }
indent = { tab-width = 2, unit = "  " }
language-servers = [ "vuels" ]

[[grammar]]
name = "vue"
source = { git = "https://github.com/ikatyang/tree-sitter-vue", rev = "91fe2754796cd8fba5f229505a23fa08f3546c06" }

[[language]]
name = "yaml"
scope = "source.yaml"
file-types = ["yml", "yaml", { glob = ".prettierrc" }, { glob = ".clangd" }, { glob = ".clang-format" }]
comment-token = "#"
indent = { tab-width = 2, unit = "  " }
language-servers = [ "yaml-language-server", "ansible-language-server" ]
injection-regex = "yml|yaml"

[[grammar]]
name = "yaml"
source = { git = "https://github.com/ikatyang/tree-sitter-yaml", rev = "0e36bed171768908f331ff7dff9d956bae016efb" }


[[language]]
name = "zig"
scope = "source.zig"
injection-regex = "zig"
file-types = ["zig", "zon"]
roots = ["build.zig"]
auto-format = true
comment-tokens = ["//", "///", "//!"]
language-servers = [ "zls" ]
indent = { tab-width = 4, unit = "    " }
formatter = { command = "zig" , args = ["fmt", "--stdin"] }

[language.debugger]
name = "lldb-dap"
transport = "stdio"
command = "lldb-dap"

[[language.debugger.templates]]
name = "binary"
request = "launch"
completion = [ { name = "binary", completion = "filename" } ]
args = { console = "internalConsole", program = "{0}" }

[[language.debugger.templates]]
name = "attach"
request = "attach"
completion = [ "pid" ]
args = { console = "internalConsole", pid = "{0}" }

[[language.debugger.templates]]
name = "gdbserver attach"
request = "attach"
completion = [ { name = "lldb connect url", default = "connect://localhost:3333" }, { name = "file", completion = "filename" }, "pid" ]
args = { console = "internalConsole", attachCommands = [ "platform select remote-gdb-server", "platform connect {0}", "file {1}", "attach {2}" ] }

[[grammar]]
name = "zig"
source = { git = "https://github.com/maxxnino/tree-sitter-zig", rev = "0d08703e4c3f426ec61695d7617415fff97029bd" }


[[language]]
name = "dockerfile"
scope = "source.dockerfile"
injection-regex = "docker|dockerfile"
roots = ["Dockerfile", "Containerfile"]
file-types = [
  "Dockerfile",
  { glob = "Dockerfile" },
  { glob = "Dockerfile.*" },
  "dockerfile",
  { glob = "dockerfile" },
  { glob = "dockerfile.*" },
  "Containerfile",
  { glob = "Containerfile" },
  { glob = "Containerfile.*" },
  "containerfile",
  { glob = "containerfile" },
  { glob = "containerfile.*" },
]
comment-token = "#"
indent = { tab-width = 2, unit = "  " }
language-servers = [ "docker-langserver" ]

[[grammar]]
name = "dockerfile"
source = { git = "https://github.com/camdencheek/tree-sitter-dockerfile", rev = "8ee3a0f7587b2bd8c45c8cb7d28bd414604aec62" }

[[language]]
name = "docker-compose"
scope = "source.yaml.docker-compose"
roots = ["docker-compose.yaml", "docker-compose.yml"]
language-servers = [ "docker-compose-langserver", "yaml-language-server" ]
file-types = [{ glob = "docker-compose.yaml" }, { glob = "docker-compose.yml" }]
comment-token = "#"
indent = { tab-width = 2, unit = "  " }
grammar = "yaml"


[[language]]
name = "graphql"
scope = "source.graphql"
injection-regex = "graphql"
file-types = ["gql", "graphql", "graphqls"]
language-servers = [ "graphql-language-service" ]
comment-token = "#"
block-comment-tokens = { start = "\"\"\"", end = "\"\"\"" }
indent = { tab-width = 2, unit = "  " }

[[grammar]]
name = "graphql"
source = { git = "https://github.com/bkegley/tree-sitter-graphql", rev = "5e66e961eee421786bdda8495ed1db045e06b5fe" }


[[language]]
name = "sql"
scope = "source.sql"
file-types = ["sql", "dsql"]
comment-token = "--"
block-comment-tokens = { start = "/*", end = "*/" }
indent = { tab-width = 4, unit = "    " }
injection-regex = "sql"

[[grammar]]
name = "sql"
source = { git = "https://github.com/DerekStride/tree-sitter-sql", rev = "da2d1eff425b146d3c8cab7be8dfa98b11d896dc" }


[[language]]
name = "jsdoc"
scope = "source.jsdoc"
injection-regex = "jsdoc"
file-types = ["jsdoc"]
indent = { tab-width = 2, unit = "  " }

[[grammar]]
name = "jsdoc"
source = { git = "https://github.com/tree-sitter/tree-sitter-jsdoc", rev = "189a6a4829beb9cdbe837260653b4a3dfb0cc3db" }


[[language]]
name = "jinja"
scope = "text.html.jinja"
injection-regex = "jinja"
file-types = ["jinja", "jinja2", "j2"]
indent = { tab-width = 2, unit = "  " }
grammar = "jinja2"

[[grammar]]
name = "jinja2"
source = { git = "https://github.com/varpeti/tree-sitter-jinja2", rev = "a533cd3c33aea6acb0f9bf9a56f35dcfe6a8eb53" }


[[language]]
name = "log"
scope = "source.log"
file-types = ["log"]

[[grammar]]
name = "log"
source = { git = "https://github.com/Tudyx/tree-sitter-log", rev = "62cfe307e942af3417171243b599cc7deac5eab9" }


</code>
