# Git aliases (oh-my-zsh style)
alias g = git
alias ga = git add
alias gaa = git add --all
alias gapa = git add --patch
alias gb = git branch
alias gba = git branch -a
alias gbd = git branch -d
alias gbD = git branch -D
alias gbl = git blame -b -w
alias gbnm = git branch --no-merged
alias gbr = git branch --remote
alias gbs = git bisect
alias gbsb = git bisect bad
alias gbsg = git bisect good
alias gbsr = git bisect reset
alias gbss = git bisect start

alias gc = git commit -v
alias gc! = git commit -v --amend
alias gcn! = git commit -v --no-edit --amend
alias gca = git commit -v -a
alias gca! = git commit -v -a --amend
alias gcan! = git commit -v -a --no-edit --amend
alias gcam = git commit -a -m
alias gcb = git checkout -b
alias gcf = git config --list
alias gcl = git clone --recurse-submodules
alias gclean = git clean -id
alias gcm = git checkout main
alias gcmsg = git commit -m
alias gco = git checkout
alias gcount = git shortlog -sn

alias gcp = git cherry-pick
alias gcpa = git cherry-pick --abort
alias gcpc = git cherry-pick --continue

alias gd = git diff
alias gdca = git diff --cached
alias gds = git diff --staged
alias gdt = git diff-tree --no-commit-id --name-only -r

alias gf = git fetch
alias gfa = git fetch --all --prune
alias gfo = git fetch origin

alias gg = git gui citool
alias gga = git gui citool --amend

alias gl = git pull
alias glg = git log --stat
alias glgg = git log --graph
alias glgga = git log --graph --decorate --all
alias glgm = git log --graph --max-count=10
alias glgp = git log --stat -p
alias glo = git log --oneline --decorate
alias glog = git log --oneline --decorate --graph
alias gloga = git log --oneline --decorate --graph --all

alias gm = git merge
alias gma = git merge --abort
alias gmom = git merge origin/main
alias gms = git merge --squash
alias gmtl = git mergetool --no-prompt

alias gp = git push
alias gpd = git push --dry-run
alias gpf = git push --force-with-lease
alias gpf! = git push --force
alias gpoat = git push origin --all and git push origin --tags
alias gpu = git push upstream
alias gpv = git push -v

alias gr = git remote
alias gra = git remote add
alias grb = git rebase
alias grba = git rebase --abort
alias grbc = git rebase --continue
alias grbi = git rebase -i
alias grbm = git rebase main
alias grbs = git rebase --skip
alias grh = git reset
alias grhh = git reset --hard
alias grmv = git remote rename
alias grrm = git remote remove
alias grs = git restore
alias grset = git remote set-url
alias grt = git reset
alias gru = git reset --

alias gs = git status
alias gss = git status -s
alias gst = git status

alias gsta = git stash push
alias gstaa = git stash apply
alias gstall = git stash --all
alias gstc = git stash clear
alias gstd = git stash drop
alias gstl = git stash list
alias gstp = git stash pop
alias gsts = git stash show --text

alias gsw = git switch
alias gswc = git switch -c

alias gts = git tag -s
alias gtv = git tag | sort -V

alias gunignore = git update-index --no-assume-unchanged
# alias gunwip = git log -n 1 | grep -q -c "\-\-wip\-\-" and git reset HEAD~1
alias gup = git pull --rebase
alias gupa = git pull --rebase --autostash
alias gupav = git pull --rebase --autostash -v
alias gwch = git whatchanged -p --abbrev-commit --pretty=medium
# alias gwip = git add -A; git rm (git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign -m "--wip-- [skip ci]"
def gpsup [] {
  let branch = (git rev-parse --abbrev-ref HEAD | str trim)
  git push --set-upstream origin $branch
}
