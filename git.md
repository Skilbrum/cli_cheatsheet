# Git

### Update modified files to local index
```
git add -u
```
### Add all files to local index
```
git add --all
```

### Local commit with message
```
git commit -m "message"
```
### Push to remote
```
git push origin branchname
```

### Discard all changes
```
git checkout -- '*'
```

### Stash changes
```
git stash
```

### Stash list
```
git stash list
```

### Last commit with format
```
git log -5 --pretty='format:%ci %h %s'
```

### Current branch name only
since 2.22  
```git branch --show-current```  
before 2.22  
```git rev-parse --abbrev-ref HEAD```

###  zip tracked files from current branch
```
git archive --format=zip -o filename.zip commithash
```

### pack repository with diff from remote origin to bundle-file
```
git bundle create ../hash.bundle origin/branchname..branchname HEAD branchname
```

### extract file from stash
```
git checkout stash@{0} -- filename
```

### restore file from commit
```
git checkout commit1hash -- filename
```

### Commit difference
```
git show-branch branch1 branch2
```

### File diff
```
git diff --name-only commit1hash commit2hash
```
