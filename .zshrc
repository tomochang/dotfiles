autoload -U compinit
compinit


source ~/.nvm/nvm.sh
nvm use "v0.7.6"

# Git だろうと Mercurial だろうと、ブランチ名をzshのプロンプトにスマートに表示する方法26
# http://d.hatena.ne.jp/mollifier/20090814/p1
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '(%s)-[%b]'
zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a]'
precmd () {
	    psvar=()
	        LANG=en_US.UTF-8 vcs_info
		    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
RPROMPT="%1(v|%F{green}%1v%f|)"
