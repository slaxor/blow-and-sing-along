Kalinka = \relative c'' {
  \key g \major
  \partial 4
  h4 \repeat volta 2 {a fis8 g a4 fis8 g a4 g8 fis e4 \breathe h'8 h a4
  fis8 g a4 fis8 g a4 g8 fis}
  \alternative {{g4 \breathe h} {e,4\fermata}}
}

\score {
  \Kalinka
  \header {
    piece = "Kalinka"
  }
  \layout {
    subtitle = "Kalinka"
  }
}

\score {
  \unfoldRepeats \Kalinka
  \midi {
    \HornMidi
  }
}

