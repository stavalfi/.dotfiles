set -x NODE_OPTIONS '--max-old-space-size=30000'
set -x KUBE_EDITOR 'code --wait'
set -x STARKNET_NETWORK 'alpha-goerli'
set -x STARKNET_WALLET 'starkware.starknet.wallets.open_zeppelin.OpenZeppelinAccount'
set -x OP_SESSION_coti_cvi '57giNGFDZdgGYv133N-vjW7T8LQRoIW4peu82VlmCao'
set -gx PATH $PATH $HOME/.krew/bin
set -U fish_greeting "" # remove annoying msg of fish

set PATH $HOME/.cargo/bin /Users/stavalfi/.fnm/node-versions/v14.18.1/installation/bin $PATH
set PATH $PATH /Users/stavalfi-dev/.local/bin /Users/stavalfi-dev/Library/Python/3.7/bin
set PATH $PATH /usr/local/bin
set PATH $PATH /Users/stavalfi/Library/Python/2.7/bin
set PATH $PATH /Users/stavalfi/projects/gpkg/target/release ~/.gpkg/bin
set -x GOPATH "$HOME/gocode"
set PATH $PATH $GOPATH/bin

# source $HOME/.cargo/env

fnm env | source
secrethub completion fish | source


alias config.fish "code ~/.config/fish/config.fish"
alias config.vimrc "code ~/.vimrc"
alias crw "cargo watch -qcx 'run -q'"
alias deploy-ui-to-s3 "z cvi-interface && git fetch && git checkout main && git rebase origin/main && yarn && GITHUB_REF_NAME=main AWS_ACCESS_KEY_ID_OLD=AKIAXSRNF2VS2OYQPGE3 AWS_SECRET_ACCESS_KEY_OLD=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 AWS_ACCESS_KEY_ID_NEW=AKIAWR4BNSF64UUEXUEG AWS_SECRET_ACCESS_KEY_NEW=lgILUco7sLEi94zYjAmAY7iK3F6yF yarn deploy-production-to-aws-s3"
alias pod "kubectl describe pod"
alias podl "watch -n 5 'kubectl get pod'"
alias plog "kubectl logs -f"
alias clog "docker logs"
alias k8s-docker "eval (minikube docker-env --shell fish)"
alias k "kubectl"
alias clear-screen 'printf "\033c"'
alias ls "exa --long --header --git"
alias g "git"
alias ls-size "du -hs * | sort -rh"

# ngrock token - https://dashboard.ngrok.com/get-started/setup
ngrok config add-authtoken 29LC0aJT1Kwl2Wpr8AodGUJvYpS_3eTs71fqCe5FJJdwQnqkd > /dev/null 2>&1

z otc

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/__tabtab.fish ]; and . ~/.config/tabtab/__tabtab.fish; or true

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true

export PATH="$PATH:/Users/stavalfi/.foundry/bin"

export PATH="$PATH:/Users/stavalfi/.helios/bin"
