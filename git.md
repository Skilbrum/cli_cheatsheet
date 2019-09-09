# Git

### Update modified files to local index
```
git add -u
```
### Add all files to local index
```
git add --all
```

### Local ommit with message
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

### Last commit hash
```
git log -1 --pretty=%H
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

### extract file from stash
```
git checkout stash@{0} -- filename
```
