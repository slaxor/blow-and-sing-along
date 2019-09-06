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
  title = "Come, again"
  composer = "John Dowland (1563-1626)"
  tagline = ""  % removed
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  \context {
    \Score
%     \remove "Bar_number_engraver"
  }
}

HornStimme = \relative c'' {
  \FHornGlobal
  \tempo 4=100
  \time 4/4
  \clef "treble"
  \key g \major

  r4 h8. c16 d2 |
  r4 d e d |
  c4. c8 h2 |
  r4 d d c |
  h4 h a2 |
  r4 a h g |
  a4. a8 a2 |
  \repeat volta 2 {
    r8 d, g4 r8 e a4 |
    r8 fis h4 r8 g c4 |
    \time 6/4
    r8 a d1( d4 ) |
    \time 4/4
    r8 d c h a4 r8 h |
    \time 6/4
    a8 g g4. fis16( e fis4 ) g2 |
  }
}


LyricsOne = \lyricmode {
  \set stanza = #"1. "
  Come a -- gain, sweet love doth now in -- vite,
  thy gra -- ces that re -- frain to do me due de -- light.
  To see, to hear, to touch, to kiss, to die
  with thee a -- gain in swee -- test sym -- pa -- thy
}

LyricsTwo = \lyricmode {
  \set stanza = #"2. "
  Come again, that I may cea -- se to mourn
  through thy un -- kind dis -- dain
  for now left and for -- lorn.
  I sit, I sigh, I weep, I faint, I die,
  in dead -- ly pain and end -- less mi -- se -- ry
}

LyricsThree = \lyricmode {
  \set stanza = #"3. "
  Gen -- tle love, draw forth thy woun -- ding dart:
  Thou canst not pierce her heart;
  For I that do app -- rove.
  By sighs and tears more hot than are thy shafts,
  did tempt while she for scan -- ty try -- umphs laughs.
}

\score {
  <<
    \new Voice = "one" {
      \HornStimme
    }
    \new Lyrics \lyricsto "one" {
      \LyricsOne
    }
    \new Lyrics \lyricsto "one" {
      \LyricsTwo
    }
    \new Lyrics \lyricsto "one" {
      \LyricsThree
    }
  >>
  \layout {}
  \midi {
    \HornMidi
  }
}




