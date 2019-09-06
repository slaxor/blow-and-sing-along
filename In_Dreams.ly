\version "2.19.82"
\language "deutsch"

Global = {
%   \override Score.BarNumber.break-visibility = #all-visible
%   \override Score.BarNumber.break-visibility = #'#(#t #f #f)
%   \set Score.currentBarNumber = #1
  \numericTimeSignature
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #3
}

HornMidi = {
    \set Staff.midiInstrument = #"french horn"
}

\header {
  title = "In Dreams"
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


InDreams = \relative c' {
  \Global
%   \transposition f
  \key b \major

  \time 4/4
  \tempo "Moderately Slow" 4=76
  \partial 8
  r8 \bar "||"
  R1*7 |
  r2 r4 b8\mp( c8 )  \bar "||"
  d4 f d c |
  b2 r4 d8( f8 ) |
  g4 b a f |
  d2 c4 \breathe b8( c8 ) |
  d4 f d c |
  b2 r4 d8( f8 ) |
  g2( g8 ) g f( d ) |
  c2. r4 |
  b8 c d2. |
  r2 r8 d\< g( a ) |
  b4.\! c16( b ) a4 f |
  d2\> c4\! \breathe b8( c ) |
  d1 |
  r2 r8 d8\< g( a ) |
  b2 c4.( b16 c )|
  d2\mf( d8 ) \breathe b g b~ |
  b4 f2.~ |
  f4 r4 r4 r8 es16\mp( f ) |
  ges4. f16( es ) des4. es16( f ) |
  es2 \breathe des4 c |
  b2 as4.\23 as16 as |
  b2. r8 es16( f ) |
  ges4. f16( ges ) as4\fermata \breathe c,8( d ) |
  \bar "||"
  \key c \major |
  e4\mf g e d |
  c2 r4 e8( g ) |
  a2( a8 ) c h g |
  e2 d4 \breathe c8( d ) |
  e4 g e d |
  c2 r8 c\< e( g\! ) |
  a2( a8 ) a g( e ) |
  d2\>( d8 )\breathe d c h\! |
  c1\mp |
}

\score {
  \InDreams
  \header {
    piece = "Horn"
  }
  \layout {
  }
  \midi {
    \HornMidi
  }
}

