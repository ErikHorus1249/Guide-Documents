
Alias – tiết kiệm thêm vài giây cuộc đời

bash script của Linux có hỗ trợ đặt alias hay có thể hiểu là lệnh viết tắt rất tiện. Ví dụ bạn hình dung một số trường hợp sau:

    git checkout: git checkout master, nếu có alias gco thì chỉ cần đánh gco master
    Siêu cấp hơn: khi cần add files, commit, push lên remote origin, chúng ta thường đánh 3 câu lệnh

    git add . git commit -m 'message' git push origin master

Nay nếu setup alias, chúng ta có thể chỉ cần đánh lệnh gacp 'message', a gợi nhắc ta chữ add, c gợi nhắc chữ commit and p gợi nhắc chữ push, vẫn rất dễ nhớ và mình không nói ngoa, bạn có thể thử kiểm nghiệm xem tiết kiệm được bao nhiêu giây cuộc đời nào?

Bạn có thể setup lệnh gacp bằng cách chèn các câu lệnh bên dưới vào file `~/.zshrc` hoặc `~/.bashrc`:

> git config --global alias.acp '!f() { git add -A && git commit -m "$@"
> && git push; }; f'
> 
> git config --global alias.cp '!f() { git commit -m "$@" && git push;
> }; f'
> 
> alias gacp="git acp"

**[stop](https://unix.stackexchange.com/questions/137183/how-do-you-disable-oh-my-zsh-and-zsh-without-uninstalling-it)**

**[reference](https://topdev.vn/blog/sep-nho-tra-luong-em-gap-10-nha-phan-2-hdh-ubuntu/?fbclid=IwAR2hqmKZfwLx0kXkQOKN9RUjOIw9VvoW_SAZVkZp6NHdfYQBx2DIy3y5_to)** 


