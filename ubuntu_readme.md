```bash
mkdir -p $HOME/.local/bin
sudo apt update;
sudo apt install fish python3-neovim stow build-essential cmake eza ripgrep tmux fzf fd-find bat glances lzma-dev sqlite3 tk tk8.6 tree-sitter-cli ffmpeg 7zip jq poppler-utils imagemagic zoxide rpi-imager;
```
```bash
(type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) \
	&& sudo mkdir -p -m 755 /etc/apt/keyrings \
        && out=$(mktemp) && wget -nv -O$out https://cli.github.com/packages/githubcli-archive-keyring.gpg \
        && cat $out | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
	&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
	&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
	&& sudo apt update \
	&& sudo apt install gh -y
```
### Nerd fonts (Meslo Fira)
https://www.nerdfonts.com/font-downloads
### Firefox
https://support.mozilla.org/es/kb/Instalar-firefox-linux#w_instalar-el-paquete-deb-de-firefox-para-distribuciones-basadas-en-debian
### Git
```bash
git config --global core.excludesfile $HOME/.gitignore_global;
git config --global init.defaultBranch main;
git config --global user.email "juanknebel@gmail.com";
git config --global user.name "Juan Knebel";
git config --global core.editor "nvim"
```
### Python
```bash
rm -rf ~/.pyenv;
git clone https://github.com/pyenv/pyenv.git ~/.pyenv;
git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv;
git clone https://github.com/alefpereira/pyenv-pyright.git ~/.pyenv/plugins/pyenv-pyright;
pyenv install 3.11;
pyenv global system;
```
### Rust
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup toolchain install nightly;
rustup default stable;
rustup component add rust-analyzer;
rustup component add clippy;
rustup component add rustfmt;
```
### Go
```bash
curl -LO https://go.dev/dl/go1.21.1.linux-amd64.tar.gz;
sudo tar -C /usr/local/ -xzf go1.21.1.linux-amd64.tar.gz;
rm go1.21.1.linux-amd64.tar.gz;
go install -v golang.org/x/tools/gopls@latest;
```
### FNM
```bash
curl -fsSL https://fnm.vercel.app/install | bash -s -- --install-dir "$HOME/.local/bin"
```
### Rioterm
https://github.com/raphamorim/rio/releases
```bash
cargo install rioterm
```
### Starship (bash shell)
```bash
bash;
cargo install starship --locked
exit;
echo 'starship init fish | source'>> $HOME/.config/fish/config-local.fish;
```
### XH
```bash
curl -sfL https://raw.githubusercontent.com/ducaale/xh/master/install.sh | sh
```
### Skim
```bash
bash;
cargo install skim
exit;
```
### Atuin
```bash
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh
```
### Nvim
https://github.com/neovim/neovim/releases
```bash
rm -rf $HOME/.config/nvim;
rm -rf $HOME/.local/share/nvim;
rm -rf $HOME/.local/state/nvim;
pyenv virtualenv 3.11 pynvim;
$HOME/.pyenv/versions/3.11.11/envs/pynvim/bin/pip install pynvim;
```
### Yazi
```bash
https://github.com/sxyazi/yazi/releases
```
### Superfile
```bash
bash -c "$(curl -sLo- https://superfile.netlify.app/install.sh)"
```
