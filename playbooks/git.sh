git config --global user.name "ananthulasrikar"
git config --global user.email "783594+ananthulasrikar@users.noreply.github.com"
git remote add origin /var/save/my-repo
git remote add origin /var/save/my-remote
git push origin master
git prune && git remote prune origin
git checkout main
git merge -no-ff <branch_name>
git status
git push
git push origin --delete branchname
git push origin $release_date:$release_date
git branch --set-upstream-to=origin/$release_date $release_date
# To refresh the existing repo and be in sync with remote
git remote update --prune

# prune branches in local that are not in remove
git remote prune origin

# delete all local branches that are already merged into the currently checked out branch:

git branch --merged | egrep -v "(^\*|master|develop|test)" | xargs git branch -d

# delete a branch which is merged
git branch -d feature/scheduler/enable-dns-recordset

# delete a branch that is not merged
git branch -D feature/scheduler/enable-dns-recordset
# Commands for configure git to Repos:
ssh-add -K /Users/srikarananthula/.ssh/srikar.a.pem

# to list the keys added to ssh-agent
ssh-add -L
# create new branch remote & push it with same name as local
git push origin patch-ops-316:patch-ops-316
git reset --hard
