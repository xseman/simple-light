# 💡 Simple Light Theme

Inspired by

- [IDEA like light Theme][inspired-by] syntax
- [GitLab's][gitlab-theme] syntax
- [VSCode][vscode-light-modern] light theme

## Goal

Don't expect any fancy colors.

More colors equal more distraction; we don't want to waste cognitive capacity
on that. The goal of this theme is to have the minimum meaningful colors.

## Install

### VS Code

Available on the [VS Code Marketplace][vscode-marketplace] and
[Open VSX Registry][open-vsx].

```sh
code --install-extension xseman.simple-light
```

Search for **Simple light** in the Extensions view (`Ctrl+Shift+X`), or set it
in your `settings.json`:

```json
{
	"workbench.colorTheme": "Simple light"
}
```

### VSCodium / Open VSX

Search for **Simple light** in the Extensions view, or install via the CLI:

```sh
codium --install-extension xseman.simple-light
```

### Zed

Available on the [Zed extension marketplace][zed-marketplace].

Search for **Simple Light** in Zed's extension marketplace (`zed: extensions`),
or set it in your `~/.config/zed/settings.json`:

```json
{
	"theme": "Simple Light"
}
```

## Structure

This is a monorepo publishing the theme to multiple editor marketplaces from a
single source.

```
simple-light/
├── zed/                     # Zed extension artifact
│   ├── themes/
│   │   └── simple-light.json #  theme definition (Zed format)
│   └── extension.toml       #   extension manifest
├── extensions.toml          # Points Zed at the nested zed/ extension
│
├── vscode/                  # VS Code / Open VSX extension artifact
│   ├── themes/
│   │   └── light.json       #   theme definition (VS Code format)
│   └── package.json         #   extension manifest
│
├── docs/                    # Preview screenshots and sample code
└── version.txt              # Single source of truth for the version
```

The color definitions live in each IDE's own format (`zed/themes/` for Zed,
`vscode/themes/` for VS Code). Versioning is coordinated by
[release-please][release-please], which bumps `version.txt`,
`vscode/package.json`, and `zed/extension.toml` together on every release.

[release-please]: https://github.com/googleapis/release-please

## Related

- [vscode-ideal-theme][inspired-by] – IDEA like light Theme
- [gitlab-theme][gitlab-theme] – GitLab's syntax highlighting theme
- [vscode-light-modern][vscode-light-modern] – VSCode's light modern theme

[vscode-marketplace]: https://marketplace.visualstudio.com/items?itemName=xseman.simple-light
[open-vsx]: https://open-vsx.org/extension/xseman/simple-light
[zed-marketplace]: https://zed.dev/extensions?query=simple-light
[inspired-by]: https://github.com/karsany/vscode-ideal-theme
[gitlab-theme]: https://docs.gitlab.com/ee/user/profile/preferences.html#syntax-highlighting-theme
[vscode-light-modern]: https://github.com/microsoft/vscode/blob/ce50bd4876af457f64d83cfd956bc916535285f4/extensions/theme-defaults/themes/light_modern.json
