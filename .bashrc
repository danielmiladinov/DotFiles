function prune-remote () {
    for branch in `git remote show ${1} | grep tracked | awk '{print $1}'`;
    do 
        isLocal=`git branch | grep ${branch}`; 
        if [ -z "$isLocal" ]; then 
            git push ${1} :${branch}; 
        fi; 
    done
}