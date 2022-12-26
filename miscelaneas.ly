\version "2.24.0"
\language "english"



% octavation
octavaUp = { 
  \ottava 1
  \set Staff.ottavation = "8va"
  \once \override Staff.OttavaBracket.direction = #UP }
doubleOctUp = { 
  \ottava 2
  \set Staff.ottavation = "15ma"
  \once \override Staff.OttavaBracket.direction = #UP }
octavaDown = { 
  \ottava -1
  \set Staff.ottavation = "8vb"
  \once \override Staff.OttavaBracket.direction = #DOWN }
stopOctava = \ottava 0 %\unset Staff.ottavation
  

% fonts
fuenteTimeSig = \override Staff.TimeSignature.font-name = "Helvetica"
sizeTimeSig =  \override Staff.TimeSignature.font-size = 2

%glissando
 glissandoSkipOn = {
   
       \override NoteColumn.glissando-skip = ##t
       
       \hide NoteHead
       \override NoteHead.no-ledgers = ##t
}

 glissandoSkipOff = {
   
       \override NoteColumn.glissando-skip = ##f
       %\hide NoteHead
       \override NoteHead.no-ledgers = ##f
}

tinyFlageolet = \tweak font-size -3 \flageolet 

teenyFlageolet = \tweak font-size -5 \flageolet

%dashed line
lineDashed = \once \override DurationLine.style = #'dashed-line

lineTrill = \once \override DurationLine.style = #'trill

%tuplet OMIT
% omittingTuplet = \omit TupletBracket \omit TupletNumber
