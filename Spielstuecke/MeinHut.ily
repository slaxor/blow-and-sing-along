MeinHut = \relative c'' {
  \FHornGlobal
  \time 3/4
  \partial 4 g4 \repeat volta 2 {
    c r g |
    f r e |
    f d2~ |
    d4 r e |
    f r g |
    a r g
  }
  \alternative {{e2.~ | e4 r g} {c,2.~ | c2. }}
}

\score {
  \MeinHut
  \header {
    piece = "Mein Hut der hat drei Ecken"
  }
  \layout {
    subtitle = "Mein Hut der hat drei Ecken"
  }
}

\score {
  \unfoldRepeats \MeinHut
  \midi {
    \HornMidi
  }
}
