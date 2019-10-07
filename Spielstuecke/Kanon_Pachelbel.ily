KanonD = \relative c'' {
  \FHornGlobal
  \tempo 4=120
  e2\2 d\12 |
  c h |
  a g |
  a h \breathe |
  c h |
  a g |
  f e |
  f d \breathe |
  c4 e g f |
  e c e d  |
  c a c g' |
  f a g f |
  e c d h' \breathe |
  c e g\0 g, |
  a f g e |
  c c' c4. \breathe h8 |
  c h c c, h\2 g' d e |
  c c' h a h e\2 g\0 a\12 |
  f\0 e d f e d c h |
  a g f e d f e d |
  c1
}

\score {
  \KanonD
  \header {
    piece = "Kanon in D"
  }
  \layout {
  }
  \midi {
    \HornMidi
  }
}

