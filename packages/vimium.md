# [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en)

## Vimium options

### Custom key mappings

```txt
# Insert your preferred key mappings here.
map <a-/> LinkHints.activateMode
map <a-?> LinkHints.activateModeToOpenInNewTab
unmap j
unmap <c-e>
unmap k
unmap <c-y>
unmap gg
unmap G
unmap d
unmap u
unmap h
unmap l
unmap zH
unmap zL
unmap r
unmap yy
unmap p
unmap P
unmap gu
unmap gU
unmap i
unmap v
unmap V
unmap gi
unmap f
unmap F
unmap <a-f>
unmap yf
unmap [[
unmap ]]
unmap gf
unmap gF
unmap m
unmap `
unmap o
unmap O
unmap b
unmap B
unmap T
unmap ge
unmap gE
unmap /
unmap n
unmap N
unmap H
unmap L
unmap t
unmap J, gT
unmap K, gt
unmap ^
unmap g0
unmap g$
unmap yt
unmap <a-p>
unmap <a-m>
unmap x
unmap X
unmap W
unmap <<
unmap >>
unmap ?
unmap gs
```

## Advanced options

### Miscellaneous options

- [x] Ignore keyboard layout

### CSS for Vimium UI

```css
div > .vimiumHintMarker {
/* linkhint boxes */
  background: #FFFFFF;
  border-color: #FFFFFF;
  box-shadow: 0 24px 38px 3px rgba(0,0,0,0.14), 0 9px 46px 8px rgba(0,0,0,0.12), 0 11px 15px -7px rgba(0,0,0,0.20);
}

div > .vimiumHintMarker span {
/* linkhint text */
  color: #212121;
  font-size: 16px;
  font-weight: 400;
  font-family: Roboto, Helvetica, "Segoe UI", Arial, sans-serif;
}

div > .vimiumHintMarker > .matchingCharacter {
  color: #03DAC6;
}
```
