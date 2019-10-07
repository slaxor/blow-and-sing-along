\version "2.19.82"
\language "deutsch"

FHornGlobal = {
%   \override Score.BarNumber.break-visibility = #all-visible
%   \override Score.BarNumber.break-visibility = #'#(#t #f #f)
%   \set Score.currentBarNumber = #1
  \transposition f
  \numericTimeSignature
}

HornMidi = {
    \set Staff.midiInstrument = #"french horn"
%     \set Staff.midiInstrument = #"brass section"
}

\header {
  title = "Rest awhile you cruel cares"
  composer = "John Dowland (1563-1626)"
  tagline = ""  % removed
}

\paper {
  #(set-paper-size "a4")
  indent = 0\cm
}

\layout {
  \context {
    \Score
%     \remove "Bar_number_engraver"
    proportionalNotationDuration = #(ly:make-moment 1/8)
    \override Beam.breakable = ##t
    \override Glissando.breakable = ##t
    \override TextSpanner.breakable = ##t
  }
}

HornStimme = \relative c' {
  \FHornGlobal
  \tempo 4=120
  \time 3/4
  \clef "treble"
  \key g \major
  r2 h'8 h |
  d2. |
  h4 a4. a8 |
  g2. |
  r2 a8 a |
  c2. |
  d4 h g |
  a2. |
  r2 a8 a |
  a2. |
  a4 h cis |
  d2. |
  h4. h8 c4 |
  g4 a a |
  g2. |
  R \bar "||"
  \key g \minor
  g4. a8 b4 |
  a2 a4 |
  b2 c4 |
  d2. |
  d4 d c |
  b2 a4 |
  b4 g2 |
  fis2. |
  a8.( b16 ) c4 b |
  a2 b8( a ) |
  g4. a16( b ) c8 b |
  a2. |

  \repeat volta 2 {
    b2 a4 |
    g4. a8 b( c ) |
    d4 c c |
    d2. |
    d2 c4 |
    b2. |
    c4 a a |
    g2. |
  }
}


LyricsOne = \lyricmode {
  \set stanza = #"1. "
  Rest a -- while you cru -- el cares.
  Be not more se -- vere than love.
  Beau -- ty kills and beau -- ty spares
  And sweet smiles sad sighs re -- move:
  Lau -- ra, fair queen of my de -- light
  Come grant me love in love's de -- spite
  And if I ev -- er fail to_ hon -- our thee
}

LyricsRefrain = \lyricmode {
  Let this hea -- ven __ _ ly light I see
  Be as dark as hell to me
}

LyricsTwo = \lyricmode {
  \set stanza = #"2. "
  If I speak, my words want weight
  Am I mute, my heart doth break
  If I sigh, she fears de -- ceit
  Sor -- row then for me must speak:
  Cru -- el un -- kind, with fa -- vour view
  The wound that first was made by you:
  And if my tor __ _  -- ments fei __  _ -- gned be
}

LyricsThree = \lyricmode {
  \set stanza = #"3. "
  Ne -- ver hour of plea -- sing rest
  Shall re -- vive my dy -- ing ghost
  Till my soul hath re -- po -- ssess'd
  The sweet hope which love hath lost:
  Lau -- ra re -- deem the soul that dies
  By fu -- ry of thy murder -- ing eyes:
  And if it pro -- ve un __ _ kind to thee
}


\score {
  <<
    \new Voice = "one" {
      \HornStimme
    }
    \new Lyrics \lyricsto "one" {
      \LyricsOne
      \LyricsRefrain
    }
    \new Lyrics \lyricsto "one" {
      \LyricsTwo
    }
    \new Lyrics \lyricsto "one" {
      \LyricsThree
    }
%     \new Lyrics \lyricsto "one" {
%       \ZweiteStrophe
%     }
%     \new Lyrics \lyricsto "one" {
%       \DritteStrophe
%     }
  >>
  \layout {
    \context {
      \Lyrics
%       \override VerticalAxisGroup.staff-affinity = ##f
%       \override VerticalAxisGroup.staff-staff-spacing =
%         #'((basic-distance . 0)
%      (minimum-distance . 2)
%      (padding . 2))
    }
  }
  \midi {
    \HornMidi
  }
}




