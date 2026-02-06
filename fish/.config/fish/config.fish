fish_config theme choose "Catppuccin Macchiato"

function fish_greeting
    # Colors (Catppuccin Macchiato)
    set maroon (set_color ee99a0)
    set yellow (set_color eed49f)
    set green  (set_color a6da95)
    set pink   (set_color f5bde6)
    set blue   (set_color 8aadf4)
    set mauve  (set_color c6a0f6)
    set reset  (set_color normal)

    echo -e "$maroon󰊠 $yellow󰊠 $green󰊠 $pink󰊠 $blue󰊠 $mauve󰊠 $reset"
end

if status is-interactive
    # 1. Basic 'ls': Icons + Folders First + Grid View
    alias ls 'eza --icons --group-directories-first'

    # 2. Detailed 'll': Headers + Git Status + Permissions + Size
    alias ll 'eza --icons --group-directories-first -l --git --header --time-style=relative'

    # 3. Tree View 'lt': Shows folder structure
    alias lt 'eza --icons --tree --level=2'
end

zoxide init fish --cmd cd | source
fzf --fish | source