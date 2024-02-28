if git remote | grep origin > /dev/null; then
    echo "origin found"
else
    git remote add origin https://github.com/rushig71/fictional-carnival.git
fi

git checkout main
git pull

if git log | grep git-subtree-dir | tr -d ' ' | cut -d ":" -f2 | sort | uniq | grep sub-folder > /dev/null; then
    echo "subtree found"
else
    git subtree add --prefix=sub-folder https://github.com/rushig71/stunning-rotary-phone.git main --squash
fi

git subtree pull --prefix=sub-folder https://github.com/rushig71/stunning-rotary-phone.git main --squash
git push