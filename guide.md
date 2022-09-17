# Git Guide
A repository to keep notes and general code that can be used for each coding framework.
## Work Tree
```git
git init
git commit -m "Initial Commit"
git branch <branch name>
git worktree <folder path> <branch name>
```

## Import Git projects to GitHub
1. Open [GitHub]{https://github.com/SKJTCodes} Webpage
2. create new Project.
3. run following cmd
   ```git
   git remote add origin https://github.com/SKJTCodes/CodingEnv.git
   git branch -M main
   git push -u origin main
   ```