# Helpful aliases
alias g="git"
alias github="git clone -o github"

function pruneRemote () {
    for branch in `git remote show ${1} | grep tracked | awk '{print $1}'`;
    do 
        isLocal=`git branch | grep ${branch}`; 
        if [ -z "$isLocal" ]; then 
            git push ${1} :${branch}; 
        fi; 
    done
}

function origRemove () {
    find . -name "*.orig" | xargs rm
}

function sha () {
    if [ -d .git ]; then
        cat .git/`cat .git/HEAD | awk '{print $2}'`
    else
        echo "not in a git repository root";
    fi
}

# Other scripts to include
source ~/.git-prompt
