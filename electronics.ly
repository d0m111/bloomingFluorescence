\version "2.24.0"
\language "english"

\include "miscelaneas.ly"

electro = \new Staff = "electro" \with{
    instrumentName = "Click Track"
    shortInstrumentName = "C.T."
    %\RemoveAllEmptyStaves
    }
    \relative c{
      \magnifyStaff #2/3
    
    \override Staff.StaffSymbol.line-count = #2
    \time 2/4
    \sizeTimeSig
    \fuenteTimeSig
    \numericTimeSignature
    \clef percussion

    \xH
    b'4^\markup{\bold \box{"Play video"}} d
    \repeat unfold 2{b4 d4}
    \stopStaff s2*8 %\break
    \startStaff \repeat unfold 6{b4 d4} %\break 
    \stopStaff s2*4
    \startStaff
    \repeat unfold 16{b4 d4} %\break
    \stopStaff s2*6
    \startStaff
    \repeat unfold 14{b4 d} %\break
    \stopStaff s2*6
    \startStaff \repeat unfold 25{b4 d}
    \stopStaff s2*5
    \startStaff \repeat unfold 4 {b4 d}
    \stopStaff s2*12
    \startStaff \repeat unfold 17{b4 d}
    \stopStaff s2*5
    \startStaff \repeat unfold 12{b4 d}
    \stopStaff s2*13
    \startStaff \repeat unfold 4{b4 d}
    \stopStaff s2*7
    \startStaff \repeat unfold 6{b4 d}
    \stopStaff s2*4
    \startStaff
    \repeat unfold 16{b4 d}
    \stopStaff s2*9
    \startStaff
    \repeat unfold 10{b4 d}
    \stopStaff s2*6
    \startStaff \repeat unfold 4{b4 d}
    \stopStaff s2*12 %\break
    \startStaff \repeat unfold 7{b4 d}
    \stopStaff s2*5
    \startStaff \repeat unfold 17{b4 d}
    \stopStaff s2*5
    \startStaff \repeat unfold 7 {b4 d} 
    \stopStaff s2*4
    \startStaff \repeat unfold 10 {b4 d}
    \stopStaff s2*8
    \startStaff \repeat unfold 3 {b4 d}
    \stopStaff s2*14
    \startStaff \repeat unfold 12 {b4 d}
    \stopStaff s2*18
    \startStaff \repeat unfold 44 {b4 d}
    \stopStaff s2*18
    \startStaff \repeat unfold 5{b4 d}
    \stopStaff s2*21
    \startStaff \repeat unfold 9 {b4 d}
    \stopStaff s2*3
    \startStaff \repeat unfold 7 {b4 d}
    \stopStaff s2*3
    \startStaff \repeat unfold 21 {b4 d}
    \stopStaff s2*3
    \startStaff \repeat unfold 38 {b4 d}
    \stopStaff s2*11
    \startStaff \repeat unfold 20 {b4 d}
    \stopStaff s2*2
    \hide Rest r2^\markup{\bold \box{"video fade out in silence"}}
  
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