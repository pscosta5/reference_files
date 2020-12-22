# [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en)

## Vimium options

### Excluded URLs and keys

| Patters                     | Keys |
| --------------------------- | ---- |
| https?://mail.google.com/\* |
| https?://localhost:8000/\*  |

### Custom key mappings

```txt
# Insert your preferred key mappings here.
unmapAll
map <a-/> LinkHints.activateMode
map <a-?> LinkHints.activateModeToOpenInNewTab
```

## Advanced options

### Miscellaneous options

- [x] Ignore keyboard layout

### CSS for Vimium UI

```css
div > .vimiumHintMarker {
  /* linkhint boxes */
  background: #ffffff;
  border-color: #ffffff;
  box-shadow: 0 24px 38px 3px rgba(0, 0, 0, 0.14), 0 9px 46px 8px rgba(0, 0, 0, 0.12),
    0 11px 15px -7px rgba(0, 0, 0, 0.2);
}

div > .vimiumHintMarker span {
  /* linkhint text */
  color: #212121;
  font-size: 16px;
  font-weight: 400;
  font-family: Roboto, Helvetica, "Segoe UI", Arial, sans-serif;
}

div > .vimiumHintMarker > .matchingCharacter {
  color: #03dac6;
}
```
