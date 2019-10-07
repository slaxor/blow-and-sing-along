Morgenstimmung = \relative c'' {
  \FHornGlobal
  \time 3/4
  \repeat volta 2 {g4\( e d c d e\) g\(e d c d e\) \breathe g\(e g a e a\) g\(e d c2.\)}
}

\score {
  \Morgenstimmung
  \header {
    piece = "Morgenstimmung"
  }
  \layout {
    subtitle = "Morgenstimmung"
  }
}

\score {
  \unfoldRepeats \Morgenstimmung
  \midi {
    \HornMidi
  }
}

