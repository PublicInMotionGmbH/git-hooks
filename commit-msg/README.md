## Instructions

- copy the file `commit-msg` to `.git/hooks/commit-msg`
- make sure your delete the sample file `.git/hooks/commit-msg.sample`
- Make commit msg executable. `chmod +x .git/hooks/commit-msg`
- Edit `commit-msg` to better fit your development branch, commit regex and error message
- Profit $$

## Shell example

```bash
curl https://raw.githubusercontent.com/PublicInMotionGmbH/git-hooks/master/commit-msg/commit-msg > .git/hooks/commit-msg

rm .git/hooks/commit-msg.sample

chmod +x .git/hooks/commit-msg

vim .git/hooks/commit-msg

echo "Profit $$"
```
 