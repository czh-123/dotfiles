this is a repo for doyfiles of czh
I'l create symbolic links for ~/.bashrc etc,

using ln -s  to accomplish this `ln -s source-file object-file`
 source-file uses absolute path

actually when creating symbolic-links,the object-file must be empty or doesn't exist because it's just a txt file including the source-file's **inode**  
in fact, the s-link has it's own block and inode. block for source-file's information and inode etc ,inode for it's own location  
