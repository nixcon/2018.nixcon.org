# Hello

Hello world


```nix
{ conf }:
conf (self: super: with super; {
    x = x.override {};
})
```