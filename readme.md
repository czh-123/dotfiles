this is a repo for doyfiles of czh
I'l create symbolic links for ~/.bashrc etc,

## symbolic link
using ln -s  to accomplish this `ln -s source-file object-file`
 source-file uses absolute path

actually when creating symbolic-links,the object-file must be empty or doesn't exist because it's just a txt file including the source-file's **inode**  
in fact, the s-link has it's own block and inode. block for source-file's information and inode etc ,inode for it's own location .<br>
to delete a s-l, you can `rm -rf symbolic-file`
## zsh
 zsh is one kind of shell you can extend it's function by oh-my-zsh ,antigen,zinit and so on. The key is to organize your plugins.<br>
for oh-my-zsh themes and plugins are under **~/.oh-my-zsh**.For plugins,when you clone omz from github,there are already many plugins.You can also `git clone` usful plugins such as `zsh-autosuggestions` `autojump` `zsh-syntax-highlighting`
<br>
To write a script to configure these is not easy ,I'l have a try.
## tips writing scripts
### export
`export PATH="$PATH:/path/to/program/bin"` <br>
`export` set env var.` export -p` list all env var <br> 
export can only change env-var for the current env.<br>
`$HOME $PATH ` are usful
### [@] 
**@equals to "*"** <br>
`a=(1 2 3 4) //a is an array defined by whitespace`
`echo ${#a[@]}  //return a.size 4  `
`echo ${a[2]}`
`echo ${a[@]} //return entire content of a`
```
for program in ${PROGRAMS[@]}; do
  stow -v --target=$HOME $program
  echo "Configuring $program"
done
```


## change shell
when you want to use zsh,you need yo change you current user shell.(**terminal is quite different from shell.Shell just accept cmd and transports to terminal**) <br>
firstly, you can use `echo $SHELL` 'cat /ctc/shell' cmd
`chsh` can help. `chsh -s "while shell" ` 
In fact,what chsh does is to change the `/etc/passwd` file `cat /etc/passwd | grep "username(czh)"` you can see the diff. 


