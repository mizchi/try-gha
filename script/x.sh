# _=$(git diff --exit-code --quiet origin/main...HEAD --name-only --relative=iso)
# echo "::set-output name=OUTPUT::$?"

# # if [ $OUTPUT -ne 0 ]
# # then
# #   echo "::set-output name=OUTPUT::$OUTPUT"
# #   echo "has changes"
# #   yarn test
# # fi
# # # 
test "$(git diff --exit-code > /dev/null || echo $?)" = "1"
# test "$(git -C test diff --exit-code > /dev/null && echo $?)" = "0"