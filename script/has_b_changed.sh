if git diff --exit-code --quiet origin/main...HEAD --name-only --relative=packages/b
then
  echo "no changes"
else
  echo "has changes"
fi
