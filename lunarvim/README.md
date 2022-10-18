## Dependencies
- delve:
```bash
sudo apt-get -y install delve
```
- language server (Go):
```bash
:TSInstall go
:LspInstall go
```
See [lunar quickstart](https://www.lunarvim.org/docs/quick-start) for more information

## Some command for debugging

```bash
:lua require('dap-go').setup()
:lua require'dap'.toggle_breakpoint()
:lua require'dap'.continue()
```

