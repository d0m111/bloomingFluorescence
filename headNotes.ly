\version "2.20.0"
\language "english"

uN = #(define-music-function
          (note)
          (ly:music?)
          #{
            \override  NoteHead.stencil = #ly:text-interface::print
            \override  NoteHead.text =
            \markup \musicglyph "noteheads.s2laFunk"
            % noteheads.s1laFunk
            #note
          #} )

noireNH = #(define-music-function
          (note)
          (ly:music?)
          #{
            \override  NoteHead.stencil = #ly:text-interface::print
            \override  NoteHead.text =
            \markup \musicglyph "noteheads.s2"
            % noteheads.s1laFunk
            #note
          #} )

blancheNH = #(define-music-function
          (note)
          (ly:music?)
          #{
            \override  NoteHead.stencil = #ly:text-interface::print
            \override  NoteHead.text =
            \markup \musicglyph "noteheads.s1"
            % noteheads.s1laFunk
            #note
          #} )

uNw = #(define-music-function
          (note)
          (ly:music?)
          #{
            \override NoteHead.stencil = #ly:text-interface::print
            \override NoteHead.text =
            \markup \musicglyph "noteheads.s1laFunk"
            %
            #note
          #} )


slap = #(define-music-function
      (note)
      (ly:music?)
    #{
      \override NoteHead.stencil = #ly:text-interface::print
      \override NoteHead.text =
         \markup \musicglyph "noteheads.d2tiWalker"
         %"noteheads.d2tiWalker"
     % \tweak NoteHead.direction #DOWN
      #note
    #})

xH = #(define-music-function
         (note)
         (ly:music?)
         #{
           \override NoteHead.stencil = #ly:text-interface::print
           \override NoteHead.text = \markup \musicglyph "noteheads.s2cross"
           % 
           #note
         #} )

diamondN = #(define-music-function
         (note)
         (ly:music?)
         #{
           \override NoteHead.stencil = #ly:text-interface::print
           \override NoteHead.text = \markup \musicglyph "noteheads.s2harmonic"
           % 
           #note
         #} ) %}

diamondH = #(define-music-function
         (note)
         (ly:music?)
         #{
           \override NoteHead.stencil = #ly:text-interface::print
           \override NoteHead.text = \markup \musicglyph "noteheads.s0harmonic"
           % 
           #note
         #} ) 

punta = #(define-music-function
         (note)
         (ly:music?)
         #{
           \override NoteHead.stencil = #ly:text-interface::print
           \override NoteHead.text = \markup \musicglyph "noteheads.d2tiThin"
           % 
           #note
         #} ) 

stompON = {\override NoteHead.stencil = #ly:text-interface::print 
     \override NoteHead.text = \markup \box \bold \lower #0.75 "ON"}

stompOFF = {\override NoteHead.stencil = #ly:text-interface::print 
     \override NoteHead.text = \markup \box \bold \lower #0.75 "OFF"}