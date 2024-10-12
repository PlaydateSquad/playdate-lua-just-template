# Playdate Lua Template with Just

This is a simple template designed to let you get started quickly with a
Playdate game using the Lua programming language with an additional
Justfile for use with the Just program.

## Getting started

**Required Tools**  

- Playdate SDK (https://play.date/dev)
- Just (https://just.systems)

Make a copy of this template using GitHub's UI ("Use this template") or by
running `git clone --bare` on this repository.

To build the template and automatically run it in the Playdate Simulator,
you can call `just run`.

### Playdate LuaCATS

This template is mostly configured to work with Playdate LuaCATS for type
checking and linting in editors such as Visual Studio Code and Neovim.

If you already have Playdate LuaCATS cloned, simply add the path to it in
the `workspace.library` portion of `.luarc.json`:

```json
  "workspace.library": [
    "C:\\Users\\foo\\path\\to\\playdate-luacats",
    "/home/foo/path/to/playdate-luacats"
  ]
```

For more information, refer to https://github.com/notpeter/playdate-luacats.

### Debugging with VS Code

This template has also been configured to work with the
vscode-playdate-debug extension for VS Code, along with a couple of other
tweaks to make the VS Code experience work.

Before utilizing the debugging facilities, be sure to change the product
name in `.vscode/settings.json` to match `product` in your justfile:

```json
{
    "playdate-debug.outputPath": "build/",
    "playdate-debug.productName": "ReplaceThisWithProduct",
}.
```

For more information, refer to https://github.com/midouest/vscode-playdate-debug.

### Just Recipes

This template defines the following recipes:

```
Available recipes:
    build  # Builds the product PDX file.
    clean  # Cleans the build folder and other generated files.
    reload # Stops the simulator and re-runs the product.
    run    # Builds the product and loads it into the simulator.
```

You can always access this list by running `just -l`. For more information
on Just, refer to https://just.systems/manual.

> **Important**  
> If you plan to change the name of your game in `pdxinfo`, you may also
> want to update the `product` variable in the just file:
> ```just
> # The product defines the package name.
> product := "MyCoolGame"
> ```

## Licensing

This template is licensed under the Mozilla Public License, v2 (MPLv2).
For more information, refer to LICENSE.txt.
