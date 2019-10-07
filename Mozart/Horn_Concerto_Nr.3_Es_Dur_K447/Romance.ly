\version "2.19.82"
\language "deutsch"

Global = {
%   \override Score.BarNumber.break-visibility = #all-visible
%   \override Score.BarNumber.break-visibility = #'#(#t #f #f)
%   \set Score.currentBarNumber = #1
  \numericTimeSignature
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #3
%   \set Score.quotedCueEventTypes = #'(note-event
%     rest-event tie-event beam-event tuplet-span-event
%     dynamic-event slur-event)
%   \cueDuring #"oboe" #UP { R1 }
  \key f \major
  \transposition es
  \time 4/4
  \tempo "Larghetto" 4=67
}

HornMidi = {
    \set Staff.midiInstrument = #"french horn"
}

\header {
  title = "Romance"
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


RomanceA = \relative c'' {
  c4. f8 a,4 a |
  b8( c d b ) g4 r8 g |
  a8 r b r c r d( b ) |
  a2( g8 ) a b h |
  c4. f8 a,4 a |
  b8( c d b ) g4 r8 c, |
  c8( e g b ) a( c f d ) |
  c8 r e r f4 r |
}

RomanceB = \relative c''' {
  g4. f8 e d c b |
  b8( a ) d( c ) c4 r |
  R1*2 |
  g'4. f8 e d c b |
  b8( a ) d( c ) c4 r |
  R1*1 |
  c16 d c d e f e f g( e ) c c f( d ) h h |
  c16 d c d e f e f g( e ) c c f( d ) h h |
  c8 c, c c c c c c |
  c1 |
}
%   <<
%     \override MultiMeasureRest.staff-position = #-8
%     R1
%     \new CueVoice {
%     \override MultiMeasureRest.staff-position = #12
%       \set instrumentCueName = "Vl.I"
%       \stemUp a''8 r cis r d4 r4 |
%     }
%   >>
%   \small

%   \normalsize
RomanceC = \relative c'' {
  f4. d8 h4 r8 g |
  g'4. e8 c4 r8 cis |
  d4~d16 e d e f8 d f d |
  c2( h4 ) r
}

RomanceD = \relative c'' {
  e4.( g8 ) c,4 cis |
  d8( e f d ) h4 r8 g |
  c8( e ) g g g( f e d ) |
  c4 d8. c16 c8 c-.( c-. c-. ) |
  des1\sfp |
  g,1\sfp |
  c1\sfp |
  c,1\sfp |
}

RomanceE = \relative c' {
  r8 c\p c c c2~ |
  8 c' c c c2~ |
  8(e g f e d c b) |
  a4 r r2 |
}

RomanceF = \relative c'' {
  c4. f8 a,4 a |
  b8( c d b ) g4 r8 c,8 |
  c8( e g b ) a( c f d) |
  c8 r e r f4 r |
}

RomanceG = \relative c'' {
  r2 r4 r8 c,8 |
  c8( e g b ) a( c f d ) |
  c8 r e r f4 r |
  g,1 |
  c,2( c4.) c8 |
  c8( e g b ) a( c f d ) |
  c8 r e r f4 r |
  R1 |
  c8 r e r f4 r |
  c8 r c, r c4 r |
}

Romance = {
  \Global
  \RomanceA
  R1*8 |
  \RomanceB
  R1*8 |
  \RomanceC
  R1*4 |
  \RomanceD
  R1*3 |
  \RomanceE
  R1*3 |
  \RomanceF
  R1*3 |
  \RomanceG
}

RomanceMidi = {
  \Global
%   \RomanceA
%   R1 |
%   \RomanceB
%   R1 |
  \RomanceC
  R1 |
  \RomanceD
  R1 |
  \RomanceE
%   R1 |
%   \RomanceF
%   R1 |
%   \RomanceG
}


\score {
  \Romance
  \header {
    piece = "Horn in F"
  }
  \layout {
  }
}

\score {
  \Romance
  \midi {
    \HornMidi
  }
}


