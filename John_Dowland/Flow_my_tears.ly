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
  title = "Flow, my tears"
  composer = "John Dowland (1563-1626)"
  tagline = ""  % removed
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  \context {
    \Score
    proportionalNotationDuration = #(ly:make-moment 1/8)
    \override Beam.breakable = ##t
    \override Glissando.breakable = ##t
    \override TextSpanner.breakable = ##t
%     \remove "Bar_number_engraver"
  }
}

HornStimme = \relative c'' {
  \FHornGlobal
  \tempo 4=60
  \time 4/4
  \clef "treble"
  \key a \minor

  \repeat volta 2 {
    a4. g16( f ) e4 c'~ |
    4 h8 a gis2 |
    a4 e4. e8 g g |
    f4 d e4. h'8 |
    c4 a  h gis |
    a8 c8. h16 a8 gis4 c |
    h8 a a4. gis16( fis gis4 ) |
    a1 |
  }
  \repeat volta 2 {
    c4. h8 a g c4~ |
    8 h16( a ) h4 c g |
    r8 a4 gis8 a f e4 |
    r8 d8 f4 r8 f8 a4 |
    r8 a8 c4 r8 g8 h8. c16 |
    d4 r8 d,8  f8. g16 a4 |
    r8 c4 h8 c8. h16 a16( gis ) a8 |
    gis1 |
  }
  \repeat volta 2 {
    gis4. a8 h4 c |
    h8 a a2 gis4 |
    a4. c8 h c a4 |
    gis2 r2 |
    r4 e'4. h8 d4~ |
    8 a c4 h a |
    gis4 c h8 a a4~ |
    \time 6/4
    8 gis16( fis gis4 ) a1 |
  }
}

LyricsOne = \lyricmode {
  \set stanza = #"1. "
  Flow, my tears, fall from your springs!
  Exil- ed for- ev- er, let me mourn;
  Where night's black bird her sad in- fa- my sings,
  There let me live for- lorn.
}

LyricsTwo = \lyricmode {
  \set stanza = #"2. "
  Down vain lights, shine you no more!
  No nights are dark e- nough for those
  That in des- pair their lost for- tunes de- plore.
  Light doth but shame dis- close.
}

LyricsThree = \lyricmode {
  \set stanza = #"3. "
  Ne- ver may my woes be re- lie- ved,
  Since pi- ty is fled;
  And tears and sighs and groans
  my wea- ry days my wea- ry days
  Of all joys have de- - prived.
}

LyricsFour = \lyricmode {
  \set stanza = #"4. "
  From the high- est spire of con- tent- ment
  My for- tune is thrown;
  And fear and grief and pain
  for my de- serts for my de- serts
  Are my hopes, since hope is gone.
}

LyricsFive = \lyricmode {
  \set stanza = #"5. "
  Hark! you sha- dows that in dark- ness dwell,
  Learn to con- temn light
  Hap- py, hap- py they that in hell
  Feel not the world's de- spite.
}

\score {
  <<
    \new Voice = "one" {
      \HornStimme
    }
    \new Lyrics \lyricsto "one" {
      \LyricsOne
      \LyricsThree
      \LyricsFive
    }
    \new Lyrics \lyricsto "one" {
      \LyricsTwo
      \LyricsFour
    }
  >>
  \layout {}
  \midi {
    \HornMidi
  }
}




