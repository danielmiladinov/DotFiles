# Helpful aliases
alias github=git clone -o github

function prune-remote () {
    for branch in `git remote show ${1} | grep tracked | awk '{print $1}'`;
    do 
        isLocal=`git branch | grep ${branch}`; 
        if [ -z "$isLocal" ]; then 
            git push ${1} :${branch}; 
        fi; 
    done
}

function orig-remove () {
    find . -name "*.orig" | xargs rm
}

function sha () {
    if [ -d .git ]; then
        cat .git/`cat .git/HEAD | awk '{print $2}'`
    else
        echo "not in a git repository root";
    fi
}
