AllaHornpipe = \relative c' {
  \FHornGlobal
  \key f \major
  \time 3/2
  \tempo 4=160
  c2 f g |
  a4 f2 g4 a f |
  g c2 g4 a g8 f |
  g4 c2 g4 a g8 f |
  g4 c,2 c'4 c c |
  c b8 a b4 b b b |
  b a8 g a4 c c c |
  c b8 a b4 b b b |
  b2. c4 a g |
  a b g2. f4 |
  c2 f2 g2 |
  a4 f2 g4 a f |
  g c2 g4 a g8 f |
  g4 c2 g4 g c, |
  c2 f g |
  a4 f2 g4 a f |
  g c2 g4 a g8 f |
  g4 c2 c4 c c |
  c b8 a b4 b b b |
  b a8 g a4 c c c |
  c b8 a b4 b b b |
  b a8 g a4 f' f f |
  f e8 d e4 e e e |
  e d8 c d f e f d f e f |
  g,2. g4 c2~|
  c4 f e2 d4 c |
  c2. c4 c c |
  b c8 b a4 c b a |
  a g8 f g4 c c c |
  b c8 b a4 c b a |
  a g8 f g4 c c c |
  c b8 a b4 b b b |
  b2. c4 a g |
  a b g2. f4 |
  f2. c'4 c c |
  c b8 a b4 b b b |
  b2. c4 a g |
  a b g2. f4|
  f1.
}

\score {
  \AllaHornpipe
  \header {
    piece = "Alla Hornpipe"
    composer = "G. F. Händel"
  }
  \layout {
    subtitle = "AllaHornpipe"
  }
  \midi {
    \HornMidi
  }
}

% BlödeSprünge = \relative c'' {
%   \FHornGlobal
% }

% \score {
%   \BlödeSprünge
%   \header {
%     piece = "Blöde Sprünge"
%   }
%   \layout {
%   }
%   \midi {
%     \HornMidi
%     \tempo 4=60
%   }
% }

