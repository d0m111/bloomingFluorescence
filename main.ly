\version "2.24.0"
\language "english"

\include "bassFlute.ly"
\include "contraBassCl.ly"
\include "oboe.ly"
\include "accordion.ly"
\include "cello.ly"
\include "electronics.ly"
\include "measureBreak.ly"


\include "title.ly"
\include "miscelaneas.ly"


#(set-default-paper-size "a4landscape")
% #(set-default-paper-size "a3portrait")
%#(ly:set-option 'point-and-click #f)
#(set-global-staff-size 19.5)

\score{
    <<
    \new StaffGroup = "s201" <<

    \measureBreak
    \override Score.BarNumber.stencil
    = #(make-stencil-circler 0.1 0.25 ly:text-interface::print)
    \override Score.BarNumber.self-alignment-X = #LEFT
    
    \override Score.BarNumber.break-visibility = ##(#t #t #t)
    % \override Score.SpacingSpanner.strict-note-spacing = ##t
     \set Score.proportionalNotationDuration = #(ly:make-moment 1/32)

    \bassFlute
    \oboe
    \contraBassCl
    \accordion
    \cello
    \electro
    
    >>
    % <<\bassFlute>>
    % <<\oboe >>
    % <<\contraBassCl>>
    % <<\accordion>>
    % <<\cello>>
    % <<\electro>>
    
    >>
}

\layout {	 

  indent = 3.0 \cm 
  short-indent = 1.5 \cm
  
  \context
  {
    \Score
    \override NonMusicalPaperColumn.line-break-permission = ##f
    \override NonMusicalPaperColumn.page-break-permission = ##f
    \override StaffSymbol.thickness = #0.65
    
   
  }
  
}
  

\paper  {   
        
       #(define fonts
         (set-global-fonts
          #:music "emmentaler"
          #:brace "emmentaler"
          #:roman "Helvetica, light"   
          ; unnecessary if the staff size is default
         ; #:factor (/ staff-height pt 20)
         ))
}