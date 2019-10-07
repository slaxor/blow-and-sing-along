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
  \key c \major
  \transposition es
  \time 6/8
  \tempo "Allegro" 4=140
}

HornMidi = {
    \set Staff.midiInstrument = #"french horn"
}

\header {
  title = "Allegro"
  tagline = ""  % removed
}

\paper {
  #(set-paper-size "a4")
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

Melody = \relative c''{
  \Global
  \partial 8
  g8^"Solo" |
  c8 c c c c c |
  c4( cis8 ) d r g, |
  d' d d d d d |
  d4 dis8( e ) r c |
  c d e f g a |
  g e c c4 d8 |
  e4 d8\fermata e4 f8 |
  e4. d8 r r^"Tutti" |
  R2.*11 |
  R2. |
  R2. |
  r4_\markup \fermata d8^"Solo" d e f |
%   <<
%   {
%     \override MultiMeasureRest.staff-position = #-6
%     R2. |
%     R2. |
%     r4_\markup \fermata d8^"Solo" d e f |
%     \markup { \fermata \override #`(direction . ,DOWN) \fermata }
%   }
%   \new CueVoice \relative c''' {
%     \override Rest.staff-position = #8
%     \stemUp
%     r4^"Vl. I" e8 d4( e8 )|
%     d4( e8 ) d4( e8 ) |
%     f4\fermata \partial 2
%   }
%   >>
  g8 e c d e d |
  c4 c8 d e f |
  g e c d e d |
  c4 r8 r4^"Tutti" r8 |
  R2.*7 |
  c4.^"Solo" d8 c d |
  c4 r8 r4 r8 |
  e4. f8 e f |
  e4 r8 r4 r8 |
  g4. e4 c8 |
  g2. ~ |
  8 a h c d e |
  e4. d8 r r |
  R2.*4 |
  e2.~ |
  8 d c c h a |
  d2.~ |
  8 c h h a g |
  g'4 e8 h4 cis8 |
  d4 r8 r4 r8 |
  R2.*3 |
  r8 d d d g d |
  d g d d d d |
  d g r8^"Tutti" r4 r8 |
  R2. |
  r8 g,^"Solo" g c e g, |
  c e g, c e g, |
  c c, c c c c |
  c c c c c c |
  c4 r8 c' d e |
  d4 g,8 c d e |
  d4 r8 r4 r8 |
  R2. |
  r4 r8 c d e |
  d4 g8 c, d e |
  d g fis e d c |
  h\fermata e d c h a |
  g4 r8 r4 r8 |
  R2. |
  r8 g g g h h |
  h d d d g g |
  g2.~ |
  8 a  g f e d |
  c c c c c c |
  c4( cis8 ) d r g |
  d d d d d d |
  d4( dis8 ) g4 c,8 |
  c d e f g a |
  g e c c4 d8 |
  e4 d8 e4 f8 |
  e4.( d8 ) r^"Tutti" r |
  R2.*11 |
  R2. |
  r4 r8  r4 c8^"Solo" |
  c4 f8 c4 a8 |
  a4.( a4 ) a8 |
  b4 c8 d4 b8 |
  g4.( g8 ) r r |
  R2.*3 |\barNumberCheck #105
  r4 r8 r4 c8 |
  a4. c |
  f( f8. ) e16 d c |
  b4 g8 e4 g8 |
  c,4.( c8 ) r r |
  R2.*3 |
  r4 r8 r4 c'8
  h4( c8 ) h4( c8 ) |
  b4.( b4 ) g8 |
  a4 c8 f4 h,8 |
  d4.( c8 ) r r  |
  R2.*3 |
  r4 r8 r4 c8 |
  h4( c8 ) h4( c8 ) |
  b4.( b4 ) g8 |
  a4 c8 f d h |
  d4.( c8 ) r r |
  R2.* 9 |
  r8 g g  c e g, |
  c e g, c e g, |
  c c, c c c c |
  c c c c c c |
  c c' c c4.~ |
  8 c d e e fis |
  g4 r8 r4 r8 |
  R2. |
  r8 g, g g g g |
  es'4.( es8 ) d c |
  h4 r8 r4 r8 |
  R2. |
  r8 g, g g g g |
  es'4.( es8 ) d c |
  h4. c |
  d e |
  f2.~ |
  4 r8 r4 r8 |
  r g g g g g |
  fis g as a b h |
  c c c c c c |
  c4( cis8 ) d r g, |
  d' d d d d d |
  d4( dis8 ) e r c |
  c d e f g a |
  g e c c4 d8 |
  e4 d8 e4 f8 |
  e4.( d8 ) r^"Tutti" r |
  R2.*11 |
  c,4.^"Solo" c4 c8 c4. e4 c8 |
  g'4. g4 g8 |
  g4. g,4 g8 |
  c4 r8 r4 r8 |
  r4 r8 r4 g'8 |
  c e g, c e g, |
  c e g, c e g, |
  g'2. |
  b,2. |
  a4. h16 c d e f g |
  a4. f4 d8 |
  c g' e  c g e |
  c e' c g e c |
  g4 r8 g'' e c |
  \afterGrace d2.\startTrillSpan { c32( d )\stopTrillSpan } |
  c4 r8^"Tutti" r4 r8 |
  R2.*5 |
  r4\fermata d8^"Solo" d e f |
  g e c d e d |
  c c c  d e f |
  g e c d e d |
  c4 r8^"Tutti" r4 r8 |
  R2.*5 |
  c8 c, c c c c |
  c4 r8 c4 r8 |
  c4 r8 r4 r8 \fermata \bar "|." \barNumberCheck #209


}

MelodyMidi = {
  \Global
  \Melody
}


\score {
  \Melody
  \header {
    piece = "Horn in F"
  }
  \layout {
  }
}

\score {
  \MelodyMidi
  \midi {
    \HornMidi
  }
}


