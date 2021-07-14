# いろんな詰まりの記録

# /boot領域に十分な空きがあるのに Failed to create EFI Boot variable entry

### ダンプファイルがたまりすぎてる
以下を実行

`rm /sys/firmware/efi/efivars/dump-*`

[ソース](https://bbs.archlinux.org/viewtopic.php?id=182978#:~:text=23ua-,try%20%22rm%20%2Fsys%2Ffirmware%2Fefi%2Fefivars%2Fdump-*%22%20as%20root%20and%20reboot%20and%20try%20gummiboot%20install%20again.,-AUR)
