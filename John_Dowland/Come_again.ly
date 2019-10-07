\version "2.19.82"
\include "settings.ily"
\header {
  title = "Come, again"
  composer = "John Dowland (1563-1626)"
}

HornStimme = \relative c'' {
  \FHornGlobal
  \tempo 4=120
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


% LyricsOne = \lyricmode {
%   \set stanza = #"1. "
%   Come a -- gain, sweet love doth now in -- vite,
%   thy gra -- ces that re -- frain to do me due de -- light.
%   To see, to hear, to touch, to kiss, to die
%   with thee a -- gain in swee -- test sym -- pa -- thy
% }

% LyricsTwo = \lyricmode {
%   \set stanza = #"2. "
%   Come again, that I may cea -- se to mourn
%   through thy un -- kind dis -- dain
%   for now left and for -- lorn.
%   I sit, I sigh, I weep, I faint, I die,
%   in dead -- ly pain and end -- less mi -- se -- ry
% }

% LyricsThree = \lyricmode {
%   \set stanza = #"3. "
%   Gen -- tle love, draw forth thy woun -- ding dart:
%   Thou canst not pierce her heart;
%   For I that do app -- rove.
%   By sighs and tears more hot than are thy shafts,
%   did tempt while she for scan -- ty try -- umphs laughs.
% }

LyricsOne = \lyricmode {
  \set stanza = #"1. "
  Come a -- gain!
  Sweet love doth now in -- vite
  Thy gra -- ces that re -- frain
  To do me due de -- light,
  To see, to hear, to touch, to kiss, to die,
  With thee a -- gain in swee -- test sym -- pa -- thy.
}

LyricsTwo = \lyricmode {
  \set stanza = #"2. "
  Come a -- gain!
  That I may cease to mourn
  Through thy un -- kind dis -- dain;
  For now left and for -- lorn
  I sit, I sigh, I weep, I faint, I die
  In dead -- ly pain and end -- less mis -- er -- y.
}

LyricsThree = \lyricmode {
  \set stanza = #"3. "
  All the day
  The sun that lends me shine
  By frowns do cause me pine
  And feeds me with de -- lay;
  Her smiles, my springs that makes my joys to grow,
  Her frowns, her frowns the Win -- ters of my woe.
}

LyricsFour = \lyricmode {
  \set stanza = #"4. "
  All the night
  My sleeps are full of dreams,
  My eyes are full of streams.
  My heart takes no de -- light
  To see the fruits and joys that some do find
  And mark the storms the storms are me as -- sign'd.

}

LyricsFive = \lyricmode {
  \set stanza = #"5. "
  Out a -- las,
  My faith is e -- ver true,
  Yet will she ne -- ver rue
  Nor yield me a -- ny grace;
  Her eyes of fire, her heart of flint is made,
  Whom tears nor truth nor truth may once in -- vade.
}

LyricsSix = \lyricmode {
  \set stanza = #"6. "
Gen -- tle Love,
Draw forth thy woun -- ding dart,
Thou canst not pierce her heart;
For I, that do ap -- prove
By sighs and tears more hot than are thy shafts
Did tempt while she while she for tri -- umph laughs.
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
    \new Lyrics \lyricsto "one" {
      \LyricsFour
    }
    \new Lyrics \lyricsto "one" {
      \LyricsFive
    }
    \new Lyrics \lyricsto "one" {
      \LyricsSix
    }
  >>
  \layout {
  }
  \midi {
    \HornMidi
  }
}




