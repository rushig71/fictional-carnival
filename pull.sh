if git remote | grep origin > /dev/null; then
    git remote set-url origin https://rushig71:dx11rDCVa!@github.com/rushig71/fictional-carnival.git
else
    git remote add origin https://rushig71:dx11rDCVa!@github.com/rushig71/fictional-carnival.git
fi

git pull origin main
git checkout main

# if git log | grep git-subtree-dir | tr -d ' ' | cut -d ":" -f2 | sort | uniq | grep sub-folder > /dev/null; then
#     echo "subtree found"
# else
# fi
git config --global user.email "gunjekar.rushi@gmail.com"
git config --global user.name "rushig71"
git config --global github.token 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

rm -r sub-folder/
echo "rm complete"
git add .
git commit -m "update tenant folder"
env GIT_TERMINAL_PROMPT=1 git push origin main

git subtree add --prefix=sub-folder https://github.com/rushig71/stunning-rotary-phone.git main --squash
git subtree pull --prefix=sub-folder https://github.com/rushig71/stunning-rotary-phone.git main --squash
env GIT_TERMINAL_PROMPT=1 git push