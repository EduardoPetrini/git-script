
for /f %%q in ("%CD%") do set REPO_NAME=%%~nxq

echo %REPO_NAME%
set USERNAME=EduardoPetrini
set token=%GITHUB_TOKEN%

curl -X POST -H "Accept: application/vnd.github+json" -H "Authorization: Bearer %GITHUB_TOKEN%" https://api.github.com/user/repos -d "{\"name\": \"%REPO_NAME%\", \"description\": \"%REPO_NAME%\"}"

touch README.md
echo node_modules > .gitignore
echo .env >> .gitignore

git init
git add .
git commit -m "first commit"
git remote remove origin
git remote add origin git@github.com:%USERNAME%/%REPO_NAME%.git
git push -u origin master
