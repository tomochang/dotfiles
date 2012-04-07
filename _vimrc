"vunlde.vimで管理してるpluginを読み込む
source ~/dotfiles/.vimrc.bundle

"インデント設定
source ~/dotfiles/.vimrc.indent
"Color関連
source ~/dotfiles/.vimrc.colors
"エンコーディング関連
source ~/dotfiles/.vimrc.encoding

"補完関連
source ~/dotfiles/.vimrc.completion
"プラグインに依存するアレ
source ~/dotfiles/.vimrc.plugins_setting

"zshのタブ補完を有効にする
set nocompatible
filetype off

"cofeescript関連
let g:quickrun_config = {}
let g:quickrun_config['coffee'] = {'command' : 'coffee', 'exec' : ['%c -cbp %s']}
autocmd BufWritePost *.coffee silent CoffeeMake! -cb | cwindow | redraw!
