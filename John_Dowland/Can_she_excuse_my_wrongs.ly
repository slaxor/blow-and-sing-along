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
  title = "Can she excuse my wrongs?"
  composer = "John Dowland (1563-1626)"
  tagline = ""  % removed
}

\paper {
  #(set-paper-size "a4")
%   annotate-spacing = ##t
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
  \key c \major

  \repeat volta 2 {
    d4 a' d |
    c4. h8 a4 |
    a4 g f |
    e2. |
    c'4 a8 b4 g8 |
    a2 f4 |
    g4 e e |
    d2. |
  }
  \repeat volta 2 {
    a'4 a a |
    a4 a8 a4 h8 |
    c2 b4 |
    a2 r4 |
    c4 a8 b4 g8 |
    a2 b4 |
    a4 d d |
    cis2. |
  }
  \repeat volta 2 {
    a8. a16 a8 a4 a8 |
    a4 a8 a4. |
    h8. h16 h8 h4 h8 |
    h4 h8 h4 h8 |
    a4 a8 a a a |
    a4 a a8 g |
    fis8. g16 a8 h g a |
    fis2 d4 |
  }
}

LyricsOne = \lyricmode {
     \set stanza = #"1. "
      Can she ex -- cuse my wrongs with Vir -- tue's cloak?
      Shall I call her good when she proves un -- kind?
}

LyricsTwo = \lyricmode {
      \set stanza = #"2. "
      Are those clear fires which van -- ish in -- to smoke?
      Must I praise the leaves where no fruit I find?
}
LyricsThree = \lyricmode {
    \set stanza = #"3. "
    No no: where shad -- ows do for bo -- dies stand
    Thou may'st be a -- bus'd if thy sight be dim
}
LyricsFour = \lyricmode {
\set stanza = #"4. "
      Cold love is like to words writ -- ten on sand
      Or to bubb -- les which on the wa -- ter swim
}
LyricsFive = \lyricmode {
  \set stanza = #"5. "
  Wilt thou be thus ab -- us -- ed still
  See -- ing that she will right thee ne -- ver?
  If thou cans't not o'er -- come her will
  The love will be thus fruit -- less e -- ver
}

LyricsSix = \lyricmode {
    \set stanza = #"6. "
      Was I so base, that I might not as -- pire
      Un -- to those high joys which she holds from me?
}
LyricsSeven = \lyricmode {
      \set stanza = #"7. "
      As they are high, so high is my de -- sire:
      If she this de -- ny, what can gran -- ted be?

}
LyricsEight = \lyricmode {
      \set stanza = #"8. "
      If she will yield to that which rea -- son is
      It is Rea -- son's will that Love should be just
}
LyricsNine = \lyricmode {
      \set stanza = #"9. "
      Dear make me hap -- py still be gran -- ting this
      Or cut off de -- lays if that die I must
}
LyricsTen = \lyricmode {
  \set stanza = #"10. "
  Better a thou -- sand ti -- mes to die
  Than for to live thus still tor -- ment -- ed:
  Dear, but re -- mem -- ber it was I
  Who for thy sake did die con -- ten -- ded
}


\score {
  <<
    \new Voice = "one" { \HornStimme }
    \new Lyrics \lyricsto "one" {
      \LyricsOne
      \LyricsThree
      \LyricsFive
    }
    \new Lyrics \lyricsto "one" {
      \LyricsTwo
      \LyricsFour
    }
    \new Lyrics \lyricsto "one" {
      \LyricsSix
      \LyricsEight
      \LyricsTen
    }
    \new Lyrics \lyricsto "one" {
      \LyricsSeven
      \LyricsNine
    }
  >>
  \layout {
    \context {
      \Lyrics
      \consists "Bar_engraver"
      \consists "Separating_line_group_engraver"
      \hide BarLine
    }
  }
  \midi {
    \HornMidi
  }
}




