# Android pre-push git hook

## Instructions

- copy the file `android-pre-push` to `.git/hooks/pre-push`
- make sure your delete the sample file `.git/hooks/pre-push.sample`
- Make pre-push executable. `chmod +x .git/hooks/pre-push`
- Profit $$

## Shell example

```bash
curl https://raw.githubusercontent.com/PublicInMotionGmbH/git-hooks/master/pre-push/android-pre-push.sh > .git/hooks/pre-push

rm .git/hooks/pre-push.sample

chmod +x .git/hooks/pre-push

vim .git/hooks/pre-push

echo "Profit $$"
```
 
 
# iOS pre-push git hook 
 
tbd