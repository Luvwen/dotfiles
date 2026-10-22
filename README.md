# 🛠️ Dotfiles — Neovim & WezTerm Setup

Mi configuración personal de entorno de desarrollo en Linux/Fedora, optimizada para productividad y edición eficiente en terminal.

---

## 🎨 Especificaciones del Entorno

* **Terminal Emulator:** [WezTerm](https://wezfurlong.org/wezterm/) (con renderizado GPU, transparencias y soporte de imágenes).
* **Editor:** [Neovim](https://neovim.io/) (v0.9+).
* **Gestor de Plugins:** [Lazy.nvim](https://github.com/folke/lazy.nvim).
* **Statusline:** [Lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) con modos coloreados adaptativos (Turquesa/Verde/Rosado).
* **Colorscheme:** [Everforest Dark](https://github.com/neanias/everforest-nvim).
* **Fuente Recomendada:** JetBrains Mono Nerd Font.

---

## 📂 Estructura del Repositorio

El repositorio respeta la convención de directorios XDG (`~/.config/`):

```text
dotfiles/
├── nvim/                   # Configuración completa de Neovim
│   ├── init.lua            # Punto de entrada y opciones principales
│   ├── lazy-lock.json      # Versiones bloqueadas de los plugins
│   └── lua/                # Módulos de configuración (LSP, Lualine, etc.)
└── wezterm/                # Configuración de WezTerm
    ├── wezterm.lua         # Atajos, opacidad, fuentes y capas de imagen
    └── assets/             # Wallpapers e imágenes de fondo
```

---

## 🚀 Instalación Rápida

### 1. Clonar el repositorio

```bash
git clone https://github.com/TU_USUARIO/dotfiles.git ~/dotfiles
```

### 2. Crear los Enlaces Simbólicos (Symlinks)

Para vincular las configuraciones a tu directorio `~/.config/`:

```bash
# Crear directorio .config si no existe
mkdir -p ~/.config

# Eliminar configs previas si existen (haz un backup si es necesario)
rm -rf ~/.config/nvim ~/.config/wezterm

# Enlazar Neovim y WezTerm
ln -s ~/dotfiles/nvim ~/.config/nvim
ln -s ~/dotfiles/wezterm ~/.config/wezterm
```

---

## ⌨️ Atajos Clave en WezTerm

| Atajo | Acción |
| :--- | :--- |
| `Alt + 1..9` | Cambiar directamente a la pestaña N |
| `Ctrl + Tab` | Siguiente pestaña |
| `Ctrl + Shift + Tab` | Pestaña anterior |

---

## 📌 Notas de Mantenimiento

* **Neovim:** Para instalar o sincronizar la lista exacta de plugins, ejecutá `:Lazy sync` dentro de Neovim.
* **Portabilidad:** La ruta del fondo de pantalla en `wezterm.lua` utiliza `wezterm.home_dir`, garantizando compatibilidad inmediata en cualquier nombre de usuario.
