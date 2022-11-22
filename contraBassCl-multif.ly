\version "2.22.2"
\language "english"

\include "title.ly"
\include "headNotes.ly"
\include "accidentals.ly"
\include "miscelaneas.ly"

multif = \new Staff = "multif_selection" \with{
    instrumentName = "Contrabass Clarinet"
    shortInstrumentName = "CB.Cl."
    \remove "Time_signature_engraver"
} \relative c{
                <<\fixed c {\sharpDown fs'1_\markup{\teeny {"10"}}^\markup 
                          \override #'(size . 0.5)
                          \override #'(graphical . #f)
                          {\halign #2 \woodwind-diagram #'bass-clarinet
                          #' ((cc . (one two three four five six))
                           (lh . ())
                           (rh . (f))) } }
                \\
                \fixed c {\octavaUp \hide Stem \magnifyMusic 0.7{d'''2 ^\flageolet fs''' ^\flageolet} \stopOctava }
                >>   %#1
                \stopStaff s1*2
                \startStaff
                <<\fixed c {\sharpUp cs'1_\markup{\teeny {"16"}}^\markup 
                          \override #'(size . 0.5)
                          \override #'(graphical . #f)
                          {\halign #2 \woodwind-diagram #'bass-clarinet
                          #' ((cc . (one two three four five six))
                           (lh . (thumb cis))
                           (rh . (f))) } }
                \\
                \fixed c {\hide Stem \magnifyMusic 0.7{a''2 ^\flageolet } }
                >>          %#2
                \stopStaff s1*2
                \startStaff
                <<\fixed c {\naturalDown c''!1_\markup{\teeny {"03"}}^\markup 
                          \override #'(size . 0.5)
                          \override #'(graphical . #f)
                          {\halign #2 \woodwind-diagram #'bass-clarinet
                          #' ((cc . ( two three))
                           (lh . (R thumb cis))
                           (rh . ())) } }
                \\
                \fixed c {\hide Stem \magnifyMusic 0.7{\octavaUp ds'''2 ^\flageolet \stopOctava } }
                >> %#3
                \stopStaff s1*2
                \startStaff
                <<\fixed c {\naturalDown c'''!1_\markup{\teeny {"05"}}^\markup 
                          \override #'(size . 0.5)
                          \override #'(graphical . #f)
                          {\halign #2 \woodwind-diagram #'bass-clarinet
                          #' ((cc . ( two three))
                           (lh . (thumb))
                           (rh . (fis))) } }
                \\
                \fixed c {\hide Stem \magnifyMusic 0.7{\octavaUp s32 ds'''4 ^\flageolet \stopOctava } }
                >>
                
}


\score {\multif}

\layout{
    indent = 3.0 \cm
    short-indent = 1.5 \cm
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