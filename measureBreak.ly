\version "2.22.2"
\language "english"




measureBreak = \new Staff = "order"\with {
         \remove "Time_signature_engraver"
         \hide Clef
         \magnifyStaff #2/3
       } {
    
    
    % \override \clef.color = #'white
    % \hide Staff.TimeSignature
    % \override Score.SpacingSpanner.strict-note-spacing = ##t
    % \set Score.proportionalNotationDuration = #(ly:make-moment 1/64)
    % \RemoveAllEmptyStaves
    % \stopStaff
    \override Staff.StaffSymbol.color = white
    \new Devnull \repeat unfold 110 {s2*5 \pageBreak} 
}