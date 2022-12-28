\version "2.24.0"
\language "english"

\include "accidentals.ly"
\include "headNotes.ly"
\include "miscelaneas.ly"
\include "dinamics.ly"

#(use-modules (lily accreg))

accordion = \new StaffGroup = "Filip" \with{
    instrumentName = "Accordion"
    shortInstrumentName = "Acc."
    %\RemoveAllEmptyStaves
}
<< 
 \set StaffGroup.systemStartDelimiter = #'SystemStartSquare
\new Staff = "RH"
\relative c{
    \time 4/4
    \numericTimeSignature
    \fuenteTimeSig
    \sizeTimeSig
    %m1
    R2
    %m2-3
    \repeat unfold 2 {
        \stopStaff s2
    }
    %m4-12
    \stopStaff
    s2*9

    %m13-14
    s2*2

    %m15
    s2

    %m16
    \startStaff
    r4 r16 \octavaUp <fs''' a b>16-.\pp\- \stopOctava r8

    %m17
    \stopStaff s2

    %m18-23
    s2*6

    %m24
    \startStaff
    r4 \doubleOctUp <b' cs>8\ppp\-  r8 \stopOctava \stopStaff
    %m25
    s2

    %m26-27
    s2*2

    %m28
    s2
    %m29
    \startStaff
   r4 
    << \relative c{ d16\rest[ \hide NoteHead <d f>8.] 
    %m30
    <d f>16_.[ d8\rest] s16 s4}
    \\
    \relative c{
    \discant "10" d16\rest \dalniente \hide Stem  \octavaDown <d f? fs>8.\<\- 
    %m30
    s16\pp\! d8.\rest \stopOctava d4\rest
    }>>
    
    %m31
    \stopStaff
    s2*14

    %m45
    \startStaff
    \clef treble r4 <<\relative c{d''16\rest \hide NoteHead \dalniente \stemDown cs'''8.\<
    %m46
    c16\mp[ g16\rest g8\rest]}
    \\
    \relative c{d''16\rest \doubleOctUp \hide Stem <b''' cs>8.\- 
    %m46
    s16 g16\rest \stopOctava g8\rest }>>
    r4
    %m47
    \stopStaff
    s2
    %m48
    \startStaff
    \clef bass
    r4 <<\relative c{d8.\rest[ \hide NoteHead \dalniente b16\<]
    %m49
    8[ 16_.\f d16\rest]}
    \\
    %M48
    \relative c{d8\rest s16 \hide Stem <af b>16\-
    %m49
    s8 s16 d16\rest}
    >> r4

    %50
    \stopStaff
    s2*15

    %65
    \startStaff 
    \clef treble
    r4 
    <<\relative c{b''16\rest \hide NoteHead \noireNH \stemDown f'''8.
    4 4
    4 4
    4 4
    4 4
    4 4
    4 4
    4 4
    4 8[ 16 g,\rest]}
    \\
    \relative c{b''16\rest\octavaUp \hide Stem \lineTrill <fs''' a b>8.\ppppp\-
    s2
    s2
    s2
    s2
    s2
    s2
    s2
    s4 s8. g,16\rest \stopOctava}>>
    %74
    \stopStaff
    s2*11
    %85
    \startStaff
    a,8\-\ppp[ r8] r4
    %86
    \stopStaff
    s2*3
    %89
    %89
    s2*21

    %code interpolation with somethin previously written
    \stopStaff s2*6%m2,3
    \startStaff 
     r4 \clef bass r16[ \octavaDown \dalniente fs,,,,8.]_-\mp\> \glissando %m4
    \magnifyMusic 0.75{\parenthesize e16} \stopOctava r8.\! r4 
    \stopStaff  %m5
    %continuing with previous code
    %86
    s2*15
    %133
    s2*5
    %138
    \startStaff
    \clef bass \blancheNH f2--\-\pp
    %139
    \stopStaff \hide Rest r2
    %140-157
    s2*18
    %158-160
    \clef treble
    \startStaff
    \undo \hide Rest
    <<\relative c{\hide NoteHead \stemDown \blancheNH c''2-- 2 8.[ g16\rest]}
    \\
    \relative c{\hide Stem \blancheNH c''2\ppp\-^\markup {
       \vcenter {
         \override #'(font-encoding . fetaText)
         \column { \discant "10" \discant "1+0" }
         \override #'(font-encoding . fetaBraces)
         \rotate #180 \lookup "brace120"
         %\override #'(font-encoding . fetaText)
         \line { \teeny \box {"both registers half way down"}}
         
}
  \lookup "noteheads.s0petrucci"
} s2 s8. g16\rest}>> r4
    %161-169
    \stopStaff
    s2*9
    %170
    \startStaff
    r4 \noireNH <b' cs d>8\ppp\-[ r8]
    %171
    \clef bass
    r4 \noireNH \octavaDown af,,4\mp\glissando \glissandoSkipOn 
    %172
    g4 gf8.. \glissandoSkipOff \undo \hide NoteHead \magnifyMusic0.5{f!32} \stopOctava
    % <<\relative c{\octavaUp \makeClusters{ <a''''>4\pp <g a>8 <fs a>8 <g a>8 <a>8 } \stopOctava} 
    % \\
    % \relative c{ \stemDown a''''4 \hide NoteHead<g a>8[ \undo \hide NoteHead <fs a>8] \hide NoteHead <g a>8[ \undo \hide NoteHead a8]}>>

    \stopStaff
    s2*63
    \startStaff
    %236
    \clef treble
    r4 <<\relative c{\stemDown \hide NoteHead g''8\rest[  c?8] 4^\markup{\teeny{\box{"smooth transition between registers"}}} 4 4 4 16[ \discant "10" g8.\rest]}
    \\
    \relative c{g''8\rest \hide Stem \discant "111"c?8\ppp^-\- s1 s16 g8\rest s16}>>
    r4
    %240
    \stopStaff
    r4 <<\relative c{\hide NoteHead \tuplet 3/2{d'8\rest d16-> d16-> d16-> d16->} \tuplet 3/2{ d16-> d16-> d16-> d16-> d8\rest}}
    \\
    \relative c{\uN \omit TupletBracket \omit TupletNumber \tuplet 3/2{d'8\rest d4\-} \tuplet 3/2{s4 d8\rest}}>>
    r4
    \stopStaff
    s2*6
    \startStaff
    \override Staff.StaffSymbol.line-count =#2
    \override Staff.StaffSymbol.line-positions = #'(-8 8)
    r4^\markup{\teeny \box{"key noise cluster (close/open action)"}} \override NoteHead.no-ledgers = ##t \xH <d'' g'''>8.\fff\-^\markup{\teeny{"+"}} <d g'''>16\flageolet
    r8 \tuplet 5/4{<d g'''>8.\-^\markup{\teeny{"+"}}->[ <d g'''>16\flageolet r16]} r8 \stopStaff
    s2*2
    %252
    
    \startStaff
    \stemDown r32[ \override NoteHead.no-ledgers = ##t \xH <d g'''>16\-^\markup{\teeny{"+"}}->(\fff 32-.\flageolet) ]
    r8 r4
    %253-254
    \stopStaff
    s2*2 %\pageBreak
    %255
    \startStaff
    r4 r16[\xH d'8.\glissando\f^\markup{\teeny{"w/finger nails (key noise)"}}]  
     g'16-.[ r8.] \stopStaff s4
    s2
    \startStaff
    r4 r16[\xH d,8.\glissando\f^\markup{\teeny{"come prima"}}]
    \glissandoSkipOn e'16[ \glissandoSkipOff \undo \hide NoteHead \once \override NoteHead.no-ledgers = ##t g16 r8] r4 %\pageBreak
    \stemDown \override NoteHead.no-ledgers = ##t \tuplet 3/2{r8[ \xH <d,, g'''>8\--.->\f(^\markup{\teeny{"+"}} <d g'''>8-.\flageolet)]}
    % \\
    % \relative c{\hide Stem \omit TupletBracket \omit TupletNumber \tuplet 3/2{s8 \makeClusters<e, f'>8 \makeClusters<e, f'>8 s16}}
    % >>
    \stopStaff s4
    %261
    s2
    %262
    <<\relative c{\repeat unfold 2{d8\rest[ \hide NoteHead \uN \override NoteHead.no-ledgers = ##t d32-> d32-> d32-> d32->]}}
    \\
    \relative c{\repeat unfold 2{ d8\rest[ \uN \override NoteHead.no-ledgers = ##t d8\-\f]}}>>
    %263
    <<\relative c{d8\rest d16\rest \hide NoteHead \uN d32->[ d32-> ] d32->[ d32->] d16\rest d8\rest}
    \\
    \relative c{d8\rest[ d16\rest \uN d16\-] s16 d16\rest s8 }>> \pageBreak
    %264_269
    \stopStaff
    s2*6

    %270
    \startStaff 
    \override Staff.StaffSymbol.line-count =#5
    \override Staff.StaffSymbol.line-positions = #'(-4 -2 0 2 4)
    <<\relative c'{ \stemDown \hide NoteHead \noireNH \dalniente f''8\< \dalniente 8\pp\> 16[ g,8.\rest\!]
    g,4\rest g'16\rest[\dalniente f'8.\<] \dalniente 8\pp\>[ g,8\rest\!] g4\rest
    \tupletDown \tuplet 3/2{ g8\rest[ g8\rest \dalniente f'8\<]} \dalniente 8 \dalniente 8\pp\>
    \stopStaff \hide Rest b,,2\rest\!}
    \\
    \relative c'{ \hide Stem \noireNH  \discant "10" f''4\- s16 g,8\rest s16 
    g,4\rest g'16\rest f'8\- s16 s8 g,8\rest g4\rest
    \omit TupletBracket \omit TupletNumber \tuplet 3/2{s4 f'8\-} s4 
    \stopStaff \hide Rest b,,2\rest}>>
    %\stopStaff
    \stopStaff

    %274-279
    s2*6

    %280
    s2*4
    %285
    \override NoteHead.no-ledgers = ##f
    \startStaff
    \tuplet 3/2{\dalniente \noireNH f'''4\-\< r8\pp\!} r4 \stopStaff
    s2*2
    %288
    s2*13
    %301
    s2*15
    %Q
    \startStaff 
     \override Staff.StaffSymbol.line-count =#2
    \override Staff.StaffSymbol.line-positions = #'(-8 8)
    r8 \stemDown \override NoteHead.no-ledgers = ##t \tuplet 3/2{r8[ \xH <d,,, g'''>8-.->\f(^\markup{\teeny{"+"}} <d g'''>8-.\flageolet)]} r8
    r8 \tuplet 5/4{r8[ <d g'''>8-.->\-^\markup{\teeny{"+"}} <d g'''>16-.\flageolet]} r8 \stopStaff
    s2
    \startStaff
    \tuplet 5/4{r16[ <d g'''>16-.->\-^\markup{\teeny{"+"}} <d g'''>8-.\flageolet <d g'''>16-.->\-^\markup{\teeny{"+"}} ]}
    <d g'''>16-.\flageolet[ r8.]
    r4 \tuplet 3/2{r16[ <d g'''>8.\-^\markup{\teeny{"+"}} <d g'''>16-.\flageolet r16]} 
    \tuplet 3/2{r8[ <d g'''>8.->\-^\markup{\teeny{"+"}} <d g'''>16-.\flageolet]} r4 \stopStaff
    s2*28
    %350
    \startStaff
    \override Staff.StaffSymbol.line-count =#5
    \override Staff.StaffSymbol.line-positions = #'(-4 -2 0 2 4)
    \clef treble
    
    <<\relative c'{\hide NoteHead \noireNH \dalniente \stemDown a'''8\<[ \dalniente 8\pp\>] 8[ g,8\rest\!]
    \stopStaff s2*3
    \startStaff g8.\rest[ \dalniente a'16\<] 4 
    4 4\f
    <cs,, ds fs a' b>8.[ g16\rest]
    \undo \hide NoteHead \hide Stem a''4\- 
    s16 s32 g,32\rest g8\rest}
    \\
    \relative c'{\hide Stem \noireNH a'''4\- s8 g,8\rest
    \stopStaff s2*3
    \startStaff s8.  a'16\- s4
    s2
    \dalniente <cs,, ds fs a' b>8\-\< s16 g16\rest\p
    \undo \hide Stem \dalniente <c, d! f'! a'>8\-\< \hide NoteHead <d f' a'>8\pp
    \override Stem.length = #10 a'''16.[  \undo \hide Rest g,32\rest g8\rest]
    }>> r4
    \stopStaff s2*11
    \startStaff
    <<\relative c'{\stemDown g'8.\rest[ \hide NoteHead \noireNH \dalniente  a''16\<] a16\p[ g,8.\rest]}
    \\
    \relative c'{\hide Stem \noireNH s8. a'''16\- s16 g,8\rest s16}>>
    \stopStaff 
    s2
    \startStaff 
    \override Staff.StaffSymbol.line-count =#2
    \override Staff.StaffSymbol.line-positions = #'(-8 8)
    <<\relative c''{\hide NoteHead s4 \stemDown \override NoteHead.no-ledgers = ##t <d,, g'''>16}
    \\
    \relative c''{\stemDown \override NoteHead.no-ledgers = ##t \tuplet 3/2{r8^\markup{\teeny{"Key noise (keyboard cluster)"}}[ r8 \xH <d,, g'''>8-.->\-\f^\markup{\teeny{"+"}}]}
    s16 <d g'''>8-.^\flageolet}>> r16 \stopStaff 
    \startStaff
    \override Staff.StaffSymbol.line-count =#5
    \override Staff.StaffSymbol.line-positions = #'(-4 -2 0 2 4)
    %372
    <<\relative c'{\hide NoteHead \tuplet 3/2{b'8\rest cs,4_-\p} 4
      c4 4
      c4  8[ g'8\rest]}
      \\
      \relative c'{\hide Stem
                        \omit TupletBracket
                        \omit TupletNumber
                        \discant "20"
                        \tuplet 3/2{s8 cs4\-^\markup{
                                %\draw-line #'(63 . 0) \hspace #-2 \rotate #270 \arrow-head #Y #UP ##t
                                \teeny{\box{"smooth transition between registers"}}
                                %\hspace #-1 \rotate #270 \triangle ##t
                        }} s4
                        s2 
                        s4 \discant "11" s8 g'8\rest}>>
    r4 <<\relative c'{\stemDown \hide NoteHead 
    \noireNH \dalniente \discant "10" a'''4\< 
    4 4
    \dalniente 4\p\> 16[ g,16\rest\! g8\rest]
    \stopStaff s2
    \startStaff r4 g16\rest[ \discant "1+0" \dalniente \undo \hide NoteHead a'8.\<] 
    \hide NoteHead 4  \override NoteHead.no-ledgers = ##t <b, a'>16\pp \discant "10"  \override NoteHead.no-ledgers = ##f a'8.
    g,4\rest a'4
    %382
    8.[ \dalniente 16\ppp\>] 4
    16[ \dalniente 8.\<] 4 
    8..[ 32\p] \dalniente 8.\<[ \override NoteHead.no-ledgers = ##t  16\p] \override NoteHead.no-ledgers = ##f
    g,4\rest g16\rest[ a'8.]}
    \\
    \relative c'{ %375
    a'''4\-
    s2. s16 g,16\rest s8
    \stopStaff s2
    %379
    \hide Stem 
    s4 s16 \makeClusters{<a'>8. 
    <e a>4  \override NoteHead.no-ledgers = ##t <b a'>16}  \override NoteHead.no-ledgers = ##f a'8.\-
    g,4\rest a'4\-
    s8 s32. \hide Rest r64 \undo \hide Rest \makeClusters{<fs, a'>16 <cs' a'>8 <f a>8
    <gs a>16} \makeClusters{ <a>8. <a>4
    <a>8.. <cs, a'>32}
    \makeClusters{<a'>8. <fs, a'>16}
    g4\rest s16 a'8.^-\-\p
    \stopStaff \hide Rest r2 \undo \hide Rest
    }
    >>
    %387 
    s2*31
    %{390
    \startStaff
    <<\relative c'{\stemDown g'8.\rest[ \hide NoteHead a''16] 8[ g,,8\rest]
    g8\rest[ a''8] 8[ g,,8\rest]}
    \\
    \relative c'{s8. \hide Stem a'''16\-\ppppp s8 g,,8\rest
    s8 a''8\- s8 g,,8\rest}>>
    r4 r8[ <a b>8\-]
    r4 r16[ \octavaUp <a b cs>8\-  r16] \stopOctava
    r4 r16[ \octavaUp <a b cs>8.\-] 
    r4 \stopOctava r16[ \octavaUp <f! fs a b cs>8\-  r16] \stopOctava
    <<
    \relative c'{\stemDown g''8\rest[ \hide NoteHead <f' c'>8]  8[ 16 16]
    c'4 16[ g,8.\rest]}
    \\
    \relative c'{ \hide Stem \noireNH g''8\rest \stemDown \octavaUp cs'4\-   s8
    s4 s16 \hide Stem g,8\rest \stopOctava s16}
    \\
    \relative c'{\noireNH \hide Stem \stemDown g''8\rest[ <f'! fs a b cs>8\-]  s8 s16 \hide NoteHead \hide Rest c16\rest
    s2 \undo \hide Rest}
    >>
    \octavaUp \noireNH cs'''''8\-[ r8] \stopOctava r16[ \octavaUp cs8\-  r16] \stopOctava
    r16[ \octavaUp cs16\- \stopOctava r8]  \octavaUp cs8\-[ r8] \stopOctava
    \stopStaff 
    s2*4
    \startStaff
    <<\relative c'{\hide NoteHead \noireNH \stemDown b'16\rest b16\rest b32\rest \hide Stem a''16. \undo \hide Stem 4
    4 4
    4 4
    4 4}
    \\
    \relative c'{ \noireNH s8 s32  \octavaUp a'''16\-\ppp s32 \hide Stem s4
    s1.  }>> %}
    \stopStaff

    %408
    s2 \stopOctava
    s2*16
    %434 [14]
    %{\startStaff 
    <<\relative c'{\hide Stem \stemDown b'16\rest \noireNH \doubleOctUp c'16->\ff\- s8\ppp s8 b,8\rest}
    \\
    \relative c'{b'16\rest[ \stemDown a'\- \hide NoteHead c8] 8[ b,8\rest ]}>>%}
    \stopStaff s2 \startStaff
    \override NoteHead.no-ledgers = ##f
    \octavaUp \noireNH <b''' cs' ds>32->-.\fff[\- \stopOctava r32 r16 r8] r4
    \stopStaff s2*2
    %439
    \startStaff
    <<\relative c'{b'4\rest \stemDown   \dalniente \hide NoteHead c'4\<^\markup {
       \vcenter {
         \override #'(font-encoding . fetaText)
         \column { \discant "10" \discant "1+0" }
         \override #'(font-encoding . fetaBraces)
         \rotate #180 \lookup "brace120"
         %\override #'(font-encoding . fetaText)
         \line { \teeny \box {"both registers half way down"}}}}
    \dalniente 8\p\>[ d,8\rest\!] b4\rest}
    \\
    \relative c'{s4 \hide Stem c''4\- 
    s8 d,8\rest s4 }>>
    \stopStaff s2*5
    %446
    \startStaff
    \blancheNH \discant "10" <a, b>2--\-\ppp \stopStaff \hide Rest r2 \undo \hide Rest
    \startStaff
    <<\relative c'{\hide NoteHead \stemDown b'4\rest \doubleOctUp cs'''4
    c4 16 \stopOctava b,,,16\rest b8\rest
    b4\rest b8\rest \doubleOctUp <b''' cs>8\ppp
    <b c>4 8[ \stopOctava b,8\rest]}
    \\
    \relative c'{\hide Stem s4 cs''''4^-\-\ppp
    s4 s16 b,,,16\rest s8
    s4. <b''' cs>8^-\- 
    s4 s8 b,8\rest}>>
    %451
    \stopStaff s2*8
    %460
    \startStaff
    \override Staff.StaffSymbol.line-count =#2
    \override Staff.StaffSymbol.line-positions = #'(-8 8)
    % <<\relative c''{\hide NoteHead s4 \stemDown \override NoteHead.no-ledgers = ##t <d,, g'''>8 8}
    % \\
    % \relative c''{}>> 
    b4\rest \stemDown \override NoteHead.no-ledgers = ##t \xH <d,, g'''>8-.->\-\f^\markup{\teeny{"+"}}]
    <d g'''>8-.\flageolet


    \stopStaff s2

    %462-475
    \startStaff 
    r32[ \stemDown \override NoteHead.no-ledgers = ##t \xH <d g'''>16.-.->\-\f^\markup{\teeny{"+"}}
    <d g'''>8-.\flageolet] r4
    \stemDown \xH <d g'''>16.-.->\-^\markup{\teeny{"+"}}[
    <d g'''>32-.\flageolet r8] r16[ \stemDown \xH <d g'''>32-.->\-^\markup{\teeny{"+"}}
    <d g'''>16.-.\flageolet] r16
    \stopStaff s2
    \startStaff 
    %465
    r8 \stemDown \tuplet 3/2{<d g'''>16-.->\-^\markup{\teeny{"+"}}[ <d g'''>16-.\flageolet r16]}
    \tuplet 5/4{r8[ <d g'''>8-.->\-^\markup{\teeny{"+"}} <d g'''>16-.\flageolet]}
    %466
    r8 r16 \tuplet3/2{r16[ <d g'''>8.-.->\-^\markup{\teeny{"+"}} <d g'''>16-.\flageolet r16]} r16
    \stopStaff s2
    %468
    \startStaff 
    \stemDown \xH <d g'''>32-.->\-^\markup{\teeny{"+"}}[ <d g'''>32-.\flageolet r16 r8] r4
    %469
    r4 \tuplet 5/4{r8[ \stemDown \xH <d g'''>16.-.->\-^\markup{\teeny{"+"}} <d g'''>32-.\flageolet r16]}
    %470
    r16 \tuplet3/2{r16[ \stemDown \xH <d g'''>16.-.->\-^\markup{\teeny{"+"}} <d g'''>32-.\flageolet]} r16
    r8[ \stemDown \xH <d g'''>16.-.->\-^\markup{\teeny{"+"}} <d g'''>32-.\flageolet]
    %471
    \tuplet 5/4{r8[ \stemDown \xH <d g'''>16.-.->\-^\markup{\teeny{"+"}} <d g'''>32-.\flageolet r16]} r4
    %472
    r32[ \stemDown \xH <d g'''>8..-.->\-^\markup{\teeny{"+"}}] <d g'''>32-.\flageolet[ r32 r16 <d g'''>32-.->\-^\markup{\teeny{"+"}} <d g'''>32-.\flageolet r16]
    %473
    r8[ \xH <d g'''>16.-.->\-^\markup{\teeny{"+"}} <d g'''>32-.\flageolet] r8[ r16 <d g'''>32-.->\-^\markup{\teeny{"+"}} <d g'''>32-.\flageolet]
    %474
    r8[ r16 <d g'''>32-.->\-^\markup{\teeny{"+"}} <d g'''>32-.\flageolet] r8[ r16 r32 <d g'''>32-.->\-^\markup{\teeny{"+"}}]
    %475
    <d g'''>32-.\flageolet[ r32 r16 r8] r4
    

    
    
    
    
    \stopStaff s2*16
    %492
    \startStaff
    \override NoteHead.no-ledgers = ##f
    \override Staff.StaffSymbol.line-count =#5
    \override Staff.StaffSymbol.line-positions = #'(-4 -2 0 2 4)
    <<\relative c'{\hide NoteHead 
      \discant "20" b4_-\ppp 4}
      \\
      \relative c'{\hide Stem 
    b4\- s4}>>
    \stopStaff 
    s2*3
    %496
    s2*3
    \startStaff <<\relative c'{\noireNH b'4\rest \discant "10" b8\rest[ \dalniente \stemDown \octavaUp b''8\<]
    \hide NoteHead 4 4 
    4 4 
    4 4
    4\ppp\< <fs, b'>16[\mp \undo \hide NoteHead b16\rest \dalniente \hide NoteHead b'8]\<
    \dalniente \undo \hide NoteHead <cs, b'>8.\p\> \hide NoteHead b'16 \stopOctava  b,4\rest\!}
    \\
    \relative c'{s4 s8 \makeClusters{<b'''>8
    <b>2 <b>2 <b>2 <b>4 \override NoteHead.no-ledgers = ##t <fs, b'>16} b16\rest \override NoteHead.no-ledgers = ##f 
    \makeClusters{<b'>8 <cs, b'>8. <b'>16}} b''4\rest>>
    \stopStaff s2*2
    \startStaff
    %507
    <<\relative c'{b'4\rest^\markup{
       \vcenter {
         \override #'(font-encoding . fetaText)
         \column { \discant "10" \discant "1+0" }
         \override #'(font-encoding . fetaBraces)
         \rotate #180 \lookup "brace120"
         %\override #'(font-encoding . fetaText)
         \line { \teeny \box {"both registers half way down"}}}} \hide NoteHead \noireNH \hide Stem <a, b cs f' c'!>4
    \undo \hide Stem \stemDown <a b c f' c'>4 4
    4 b'4\rest}
    \\
    \relative c'{s4 <a b cs fs' c'!>4\ppp\- \hide Stem 
    s4 s4 
    s4 b'\rest}>>
    \stopStaff s2*4
    \startStaff 
    \clef bass
    \dalniente \octavaDown \stemNeutral \noireNH fs,,,4--\> \glissando \glissandoSkipOn f!8. \glissandoSkipOff \undo \hide NoteHead \magnifyMusic 0.5 {e16\!} \stopOctava
    \stopStaff s2*14
    %529
    s2*7
    %536
    \startStaff 
    \clef treble 
    <<\relative c'{\stemDown a'''8.. \hide NoteHead \override NoteHead.no-ledgers = ##t  <b, a'>32}
    \\
    \relative c'{\undo \hide Stem \makeClusters{\dalniente <a'''>8..\< <b, a'>32\mf}}>>
    \dalniente \noireNH a'''''4\pppp\>\-
    \stopStaff \hide Rest r2\! 
    \undo \hide Rest 



}

\new Staff = "LH" 
\relative c{
    \time 2/4
    \numericTimeSignature
    \fuenteTimeSig
    \sizeTimeSig
    \clef bass
    %m1
    R2

    %m2-3
    \repeat unfold 2{
        <<\relative c, { s8 \hide NoteHead \dalniente e,8\< \tuplet 3/2{e8[ 8\f d''8\rest\!]} }
        \\
        \relative c, { d'8\rest \hide Stem \octavaDown e,,8\- \omit TupletNumber \tuplet 3/2{s8 s8 \stopOctava d''8\rest} }>>
    }
    %m4-12
    \stopStaff
    s2*9

    %m13
    r8 r16 
    <<\relative c{\hide NoteHead \uN g32->^\markup{\teeny{"R.H. (wrist hitting)"}}[g32->] g32->[g32-> g32-> g32->]}
    \\
    \relative c{ \uN g16\f\- s8.}>> r16
    %m14
    \startStaff
    \tuplet 3/2{r8 \octavaDown \noireNH \dalniente fs,,4\p\>\glissando \glissandoSkipOn} f8. \glissandoSkipOff e16\! \stopOctava

    %m15
    \stopStaff
    s2

    %M16
    s2 
    %m17
    <<\relative c{ \hide NoteHead \uN \tuplet 6/4{\repeat unfold 6{g16->}} }
    \\
    \relative c{ \stemDown \uN g4\f\-^\markup{\teeny{"R.H. (wrist hitting)"}}}>>
    r4

    %m18-23
    s2*6

    %m24
    \startStaff
    <<\relative c{ r16[ \hide NoteHead <fs,, cs'>16 <fs cs'>8] d'4\rest}
    \\
    \relative c{s16 \octavaDown \makeClusters{\dalniente <fs,, cs'>8.\< <fs cs'>16} \stopOctava s8.\pp}>> 
    %m25
    r16 \stopStaff \undo \hide NoteHead \uN g'8.\-\< r4\f

    %m26-27
    s2*2

    %m28
    \startStaff
    r4 r16[ \noireNH  \dalniente \octavaDown <f, g>8.]\glissando\p\> 
    %m29
    \magnifyMusic 0.5{<e fs>32} \stopOctava r32\! r16 r8 r4
    %m30
    \stopStaff
    s2
    %m31
    \startStaff
    <<\relative c{\hide NoteHead \dalniente a4 8 [ d8\rest] }
    \\
    \relative c{\hide Stem \makeClusters{ \dalniente <f, a>8\<  \dalniente <f a>8\p\> <f a>8 <f a>8\!}}>>
    \stopStaff

    %m32-47
    s2*16

    %m48
    \startStaff
    r4 <<\relative c{d8.\rest[ \hide NoteHead a,16]
    %m49
    8[ 16_. d'16\rest]}
    \\
    %M48
    \relative c{d8\rest s16 \hide Stem \octavaDown <f,, a?>16\-
    %m49
    s8 s16 \stopOctava d''16\rest}
    >> r4
    %m50
    \stopStaff
    r4 <<\relative c{d16\rest \hide NoteHead \uN g,8. 
    %m51
    8.[ d'16\rest]}
    \\
    %m50
    \relative c{d16\rest \hide Stem \dalniente \uN g,8.\-\<
    %m51
    \dalniente s8.\p\> d'16\rest\!}>>
    r4
    %52
    \startStaff
    r32 \undo \hide Stem \dalniente \octavaDown fs8.->\p\>\glissando \grace  \undo \hide Stem \magnifyMusic 0.5 {e32\!} \stopOctava 
    \stopStaff
    <<\relative c{d16\rest \hide NoteHead \uN \dalniente g,8.\<
    %m53
    \dalniente 8.\f\>[ d'16\rest\!] d8\rest[ d32\rest \dalniente g,16.-.->\<] 
    %m54
    g16[ 16 d'8\rest\f]}
    \\
    \relative c{
        %m52
        d16\rest \hide Stem \uN g,8.\- 
        %m53
        s8. d'16\rest d8\rest d32\rest g,16.\-
        %m54 
        s16 s16 d'8\rest 
    } >>
    r4
    %m55
    s2
    %m56
    <<\relative c{\hide NoteHead \uN d16\rest g,32->[ 32->] 32->[ 32-> 32-> 32->]}
    \\
    \relative c{
         d16\rest[\uN g,8.\-]
    }>>
    \startStaff
    \undo \hide Stem
    r8[ \octavaDown \dalniente    f8]\p\>\glissando \glissandoSkipOn 
    %m57
    f8[  \grace \glissandoSkipOff \undo \hide NoteHead \magnifyMusic0.5{e16} r16\!] \stopOctava r4
    %58
    \stopStaff
    s2*15

    %m73
    \startStaff
    r4 <<\relative c{\hide NoteHead d8\rest[ d,,8]
    %74
    4 8[ 16 d\rest]}
    \\
    \relative c{\hide Stem s8 \octavaDown \makeClusters{\dalniente <f,, c>8\< 
    %74
    <f c>8 <f c>8 \dalniente <f c>8\mp\> <f c>16 <f c>32 s32\! \stopOctava}}>>
    \stopStaff
    s2*2
    %77
    <<\relative c{ \hide NoteHead \uN \tuplet 6/4{\repeat unfold 6{g16->}} }
    \\
    \relative c{ \stemDown \uN g4\f\-}>> r4
    %78-79
    s2*2
    %80
    <<\relative c{\hide NoteHead \uN \omit TupletBracket \omit TupletNumber \tuplet 3/2{d8\rest d16->[ d16-> d16-> d16->]  }
    d16->[ d\rest d8\rest]}
    \\
    \relative c{ \tuplet 3/2{s8 \uN d4\-} s16 d\rest d8\rest}>>
    %81
    s2*3
    \startStaff
    <<\relative c{\hide NoteHead \uN  \tuplet 3/2{<fs, b>16->[ <fs b>16-> <fs b>16-> <fs b>16->] d'8\rest}}
    \\
    \relative c{ \omit TupletNumber \tuplet 3/2{\makeClusters{<fs, b>8\mf[ <fs b>8 <fs b>8] }}}>>
    r4
    %85
    \stopStaff
    s2
    %86
    <<\relative c{\hide NoteHead \uN d8\rest d8_-\upbow \tuplet 5/4{d16[ d16\rest d16\rest d8_-\downbow]}
    %87 incomplete
    d8[ d8\rest]}
    \\
    %86
    \relative c{\uN \hide Stem d8\rest d8\- \omit TupletBracket \omit TupletNumber \tuplet 5/4{s16 d16\rest d16\rest d8\-}
    %87
    s8 d\rest}>>
    r4
    %88
    s2
    %89
    s2*6 \startStaff 
    r8[ \octavaDown fs8] \glissando \glissandoSkipOn f!8[ \glissandoSkipOff e16 \stopOctava r16] \stopStaff %AQUI
    r16 <<\relative c{ \hide NoteHead \uN \tuplet 6/4{g16->[ g16-> g16-> g16-> g16-> g16-> ]} }
    \\
    \relative c{ \stemDown \uN g4\f\-}>> r8. 
    s2*13

    %this code is an interpolation with something I wrote at the very begining of the composition process more than a year ago, or so... ;)
    \stopStaff
    s2*5%m3_4
    \startStaff
    r8 <<\relative c{\hide NoteHead f,,8 8[ g8\rest]}
    \\
    \relative c{\makeClusters {\dalNienteExpo \octavaDown <e,, b>8\< <e b>16.. <e b>64\f  }}>> \stopOctava 
    \stopStaff 
    s2*2
    \startStaff 
    r4 <<\relative c{\hide NoteHead f,,4 16[ g8.\rest]}
    \\
    \relative c{\makeClusters{\dalNienteExpo \octavaDown <e,, b>4\< <e b>32. <e b>64\f}}>> \stopOctava r4 
    \stopStaff s2*3 %m7
    \startStaff 
    %124
    <<\relative c{\hide NoteHead \noireNH f,,2 4 c'4\rest}
    \\
    \relative c{\blancheNH \hide Stem \octavaDown f,,2\-  %m8 
    s4 c'4\rest \stopOctava }>>
    %\dalniente \octavaDown cs,8.\> \glissando c!16\! \stopOctava r2. 

    %continue with the code

    %125-126
    \startStaff \autoBeamOn 
    <<\relative c{s8 \hide NoteHead \noireNH \repeat unfold 4{\tuplet 3/2 {f,,16-> 16-> 16->} } 16->[ g'\rest]}
    \\
    \relative c{ \undo \hide Stem g8\rest[ \noireNH \octavaDown f,8\-\mf] s4 s8. \stopOctava g'16\rest }>>
    r4

    %127-133
    \stopStaff
    s2*7
    %134-135
    r4 <<\relative c{ s8 \hide NoteHead \uN \tuplet 3/2{d16-> 16-> 16->} 16}
    \\
    \relative c{d8\rest[ \uN d8]\- \hide Stem 16}>>
    \startStaff
    \undo \hide NoteHead \noireNH \octavaDown \dalniente <fs a b>8.--\p\>\glissando \magnifyMusic0.5{<e gs as>32\!} \stopOctava r8..
    %136
    r4 \octavaDown \dalniente a4--\p\>\glissando 
    %r137
    \magnifyMusic0.5{fs32} \stopOctava r8..\! r4
    %138
    \octavaDown \blancheNH f2\pp--\- 
    %139
    \stopStaff \hide Rest r2 \stopOctava
    %140
    s2
    %141
    s2*28
    %169
    \undo \hide Rest
    <<\relative c{\hide NoteHead \uN \tuplet 6/4{\repeat unfold 6{d16->}}}
    \\
    \relative c{\uN d4\-\mf}>>
    r4
    %170
    s2
    %171
    \startStaff
    r4 \undo \hide NoteHead \noireNH \octavaDown a4\mp\glissando \glissandoSkipOn 
    %172
    gs4 f!8.. \glissandoSkipOff \undo \hide NoteHead \magnifyMusic0.5{fs32} \stopOctava
    \stopStaff
    %173
    <<\relative c{s16 \hide NoteHead \uN \tuplet 3/2{\repeat unfold 3{d16->}} d16-> }
    \\
    \relative c{r16[ \uN d8.\-\f]}>>
    r4
    %174-181
    \stopStaff
    s2*8
    %182
    <<\relative c{d8\rest s16 \hide NoteHead \uN  d32->\- \repeat unfold 5{d32->} d8\rest}
    \\
    \relative c{d8.\rest[ \uN d16\-] s8 d8\rest}>>
    %183
    s2
    %184
    r4
    <<\relative c{\hide NoteHead \uN d4-> d16.[ d32\rest r8]}
    \\
    \relative c{\hide Stem \uN d4\- s16. d32\rest s8}>>
    \startStaff
    <<\relative c{\hide NoteHead \noireNH  f,4\pppp 8..[ g32\rest] \stemUp a,8.[ r16]}
    \\
    \relative c{\hide Stem \noireNH fs,4\- s8.. g32\rest \octavaDown \makeClusters{\dalniente  <f, a>8.\< <f a>16\f} \stopOctava }>>
    %187
    \stopStaff
    <<\relative c{s8. \hide NoteHead \uN d32->\- \repeat unfold 7{d32->} d16\rest}
    \\
    \relative c{r8[ r16 \undo \hide Stem \uN d16\f]\- s8. d16\rest}>>
    %188
    r4 r16[ \uN d''8.->\-]
    %189
    <<\relative c{s8. \hide NoteHead \uN d32-> \repeat unfold 5{d32->} d8\rest 
    %190 
    \tuplet 3/2{r8 d4_>\f\downbow} d16[ d8.\rest]}
    \\
    \relative c{r8.[ \uN d16\f\-] s8 d8\rest 
    %190
    \omit TupletBracket \omit TupletNumber \tuplet 3/2{s8 \hide Stem d4\-} s16 d8\rest}>>
    %191
    s2
    %192-
    s2
    %193
    \startStaff
    <<\relative c { s8 \hide NoteHead \dalniente e,,8\< \tuplet 3/2{e8[ 8\f g8\rest\!]} }
        \\
        \relative c{ g,8\rest \hide Stem \octavaDown e8\- \omit TupletNumber \tuplet 3/2{s8 s8 \stopOctava g8\rest} }>>
    %219
    \stopStaff
    s2*10
    \startStaff
    r4
    <<\relative c { s8 \hide NoteHead \dalniente e,,8\< \tuplet 3/2{e8[ 8\f g8\rest\!]} }
        \\
        \relative c{ g8\rest \hide Stem \octavaDown e,8\- \omit TupletNumber \tuplet 3/2{s8 s8 \stopOctava g8\rest} }>> r4
    \stopStaff 
    s2*4 \startStaff
    <<\relative c{\hide NoteHead \uN  \tuplet 5/4{<fs, b>16->[ <fs b>16-> <fs b>16-> <fs b>16-> <fs b>16->] } d'4\rest}
    \\
    \relative c{ \makeClusters{<fs, b>4\mf[ <fs b>16] } s8.}>>  \stopStaff
    s2
    \startStaff
    \noireNH \octavaDown \dalniente fs,,4--\mp\> \glissando \glissandoSkipOn f!8[ \glissandoSkipOff e16 r16\!] \stopOctava \stopStaff
    s2*7

    %220
    \startStaff
    <<\relative c{b8\rest \tuplet 3/2{b,16\rest[ \hide NoteHead \noireNH cs16-> cs16->]} \tuplet 3/2{cs16-> cs16-> cs16->} b'8\rest}
    \\
    \relative c{s8 \omit TupletBracket \omit TupletNumber \octavaDown \tuplet3/2 {b,16\rest <fs a b cs>8\mp\-} s8 \stopOctava b'\rest}>>
    %221
    \stopStaff
    <<\relative c{\hide NoteHead \uN \tuplet 3/2 {d16-> d16-> d16-> } d8\rest}
    \\
    \relative c{\uN d8\f\-[ d8\rest]}>> r4
    %222
    \startStaff
    <<\relative c{\hide NoteHead \noireNH \tuplet 3/2{r8[ r8 b,8]} b16.[ r32 r8]}
    \\
    \relative c{\hide Stem \omit TupletBracket \omit TupletNumber \makeClusters{\tuplet 3/2{s4 \octavaDown \dalniente <f,, b>8\-\<} <f b>16\mf <f b>16  s16 \stopOctava }}>>
    %223
    \stopStaff
    s2*33
    % \startStaff
    
    %256
    r4 <<\relative c{\hide NoteHead \uN \tuplet 3/2{d16->[ d16-> d16-> d16-> d8\rest]}}
    \\
    \relative c{\omit TupletBracket \omit TupletNumber \tuplet 3/2{\uN d4\-\mp d8\rest}}>>
    %257-259
    s2*3
    r4 <<\relative c{s16 \hide NoteHead \uN \tuplet 3/2{d16-> d16-> d16->} d16->}
    \\
    \relative c{r16[ \uN d8.\-\f]}>> \noBreak
    %261
     \hide Rest r2
    % R2
    \stopStaff

    %274-280
    s2*19

    %281
    \undo \hide Rest
    <<\relative c{\hide NoteHead \uN \tuplet 5/4{ \repeat unfold 5{d16->}} d4\rest
    s2*5 
    \omit TupletBracket \omit TupletNumber \tuplet 3/2{s4 d16-> d16->} \tuplet 3/2{d16-> d16-> d8\rest d8\rest}
    s2*11
    s4. d8 8 d8\rest d4\rest
    }
    \\
    \relative c{\uN d4\-\f d4\rest 
    s2*5
    \tuplet 3/2{d8\rest[ d8\rest d8\-]} \omit TupletBracket \omit TupletNumber \tuplet 3/2{s8 d8\rest s8} 
    s2*11
    %299
    d4\rest d8\rest \dalniente \hide Stem  d8\<\- \dalniente s8\f\> d8\rest\! d4\rest
    }>>
    \stopStaff %301
    
    s2*15

    %316
    s2*6
    %322
    \startStaff 
    \undo \hide NoteHead \dalniente \octavaDown a8..--\mf\> \glissando \magnifyMusic 0.5 {gs32\!} \stopOctava r4
    \octavaDown \undo \hide NoteHead \noireNH <e fs>32-.->\fff[ \stopOctava r8..] r4
    \stopStaff
    \tuplet 3/2{r4 \uN d''8--\mp\downbow\-} r4
    \stopStaff s2
    \startStaff 
    <<\relative c'{\hide NoteHead s8. \uN a,32-> a32-> a32-> a32-> a32-> a32-> g8\rest}
    \\
    \relative c'{\uN r8. \makeClusters{ <f,, a>8.\ppp\< <f a>8\ff} }>>
    \stopStaff s2
    %328
    s2*18
    \startStaff 
    r16[ \octavaDown \noireNH <f,, a bf>8\p\-  r16] \stopOctava r4
    <<\relative c'{\hide NoteHead \noireNH d,8\rest[ \dalniente df,8\<] 16\p[ d8.\rest]
    d4\rest s8 fs32-> fs32-> fs32-> fs32-> f32-> f32->  d8.\rest}
    \\
    \relative c'{\hide Stem \noireNH s8 \octavaDown <a,, c df>8\- s16 d8\rest \stopOctava s16
    s4 \undo \hide Stem d8\rest[ \octavaDown <e, f! d fs'>8\mp\-]
    s16 \hide Rest r8 \stopOctava \undo \hide Rest s16}>>
    r4
    \stopStaff s2
    %351
    \startStaff 
    <<\relative c'{\hide NoteHead s8. \uN a,32-> a32-> a32-> a32-> a32-> a32-> g8\rest}
    \\
    \relative c'{\uN r8. \makeClusters{ <f,, a>8.\ppp\< <f a>8\ff} }>> \stopStaff 
    %352
    s2
    %353
    \startStaff
    \octavaDown \dalniente <f gf>8..\glissando\mf--\> \magnifyMusic0.5{<e f>32\!} \stopOctava r4
    \stopStaff s2*5
    <<\relative c'{ \hide NoteHead \uN \tuplet 5/4{d16\rest[ d16\rest d16\rest d8\f\downbow]} \tuplet 5/4{d16[ d16\rest d16\rest d16\rest d16\downbow]}
    \tuplet 5/4{16[ d16\rest d16\rest d16\rest d16_-_>\downbow]} d16\pp[ d16\rest d16\rest d16\f\downbow_-_>] 
    %361
    d16_-->\upbow[ d8.\rest] d16\rest[ d16\downbow\f_-_> d16\upbow_-_> d16\rest]
    d4\rest \tuplet 5/4{d16\rest[ d16\rest d16\rest d8_-\f\downbow]}
    \tuplet 5/4{d8[ d16\rest d16\rest d16_-\downbow]} \tuplet 5/4{d8[ d16\rest d16\rest d16]}
    16[ d8.\rest] d4\rest 
    
    %365
    d,8\rest \tuplet 3/2{d16->[ d16-> d16->]}  \tuplet 3/2{d16->[ d16-> s16]} s8
    %366
    \startStaff
    d16\rest \tuplet 3/2{\noireNH bf,16-> 16-> 16->} d16\rest \tuplet 3/2{d8\rest d8\rest g16-> g16->} \pageBreak
    \tuplet 3/2{g16-> g16-> g16->} d'8\rest d4\rest 
    }
    \\
    \relative c'{ \hide Stem \uN \omit TupletBracket \omit TupletNumber \tuplet 5/4{d16\rest d\rest d\rest d8\-}
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{s16 d16\rest d\rest d\rest d16\-} \pageBreak
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{s16 d16\rest d\rest d\rest  d16\-}
    s16 d16\rest s16 d16\- \noBreak
    d16\- d16\rest s8 d16\rest d16\- d16\- d16\rest
    %362 
    s4 \omit TupletBracket \omit TupletNumber \tuplet 5/4{d16\rest d\rest d\rest d8\-}
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{s8 d16\rest d\rest d16\-}
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{s8 d16\rest d\rest  d16\-}^\downbow \pageBreak
    s16 d8\rest s16 s4 \stopStaff
    %365
    
    \undo \hide Stem d,8\rest[ d8\-] \tuplet 3/2{s8 d8\rest d8\rest} \noBreak
    \startStaff
    %366 
    \noireNH d16\rest[ \octavaDown <f,, a bf>8\-\p \stopOctava d'16\rest] \tuplet 3/2{d8\rest d8\rest \octavaDown <a bf f' g>8\-} s8 \stopOctava d'8\rest}>>
    %368
    \stopStaff s2*2
    %370
    <<\relative c'{\hide NoteHead \uN \tuplet 3/2{d,8\rest d16-> d16-> d16-> d16->} \startStaff d8\rest \tuplet 3/2{f,,16-> 16-> 16->}
    \stopStaff s2*3
    }
    \\
    \relative c'{\stopStaff \omit TupletBracket \omit TupletNumber \tuplet 3/2{d,8\rest \uN d4\f\-} \startStaff d8\rest \octavaDown \noireNH \hide Stem fs,,8\- \stopOctava
    \stopStaff \hide Rest r2 \undo \hide Rest 
    s2*3}>>
    \startStaff \dalniente \noireNH \octavaDown <f gf>8..->\mf\>\glissando \magnifyMusic0.5{<e f>32\!} \stopOctava r4
    \stopStaff s2 
    \startStaff 
    <<\relative c'{d,4\rest d16\rest \tuplet 3/2{\hide NoteHead b,16-> b16-> b16->} b16->}
    \\
    \relative c'{d,4\rest d16\rest[ \dalniente \octavaDown <f,, gf>8.\glissando\>] 
    \stemNeutral \magnifyMusic0.5{<e f>32} \stopOctava d''8..\rest\!}>> r4 \stopStaff 
    %379
    s2*6
    %385
    \startStaff
    r4 r16[ \octavaDown f8.--\-] 
    %386
    \stopStaff 
    <<\relative c{d,4\rest \stopOctava \hide NoteHead \noireNH d'16\rest \octavaDown b,32-> b32-> b32-> b32-> b32-> b32->
    \stopOctava  d'8\rest \uN \tuplet 3/2{d16-> d16-> d16->} d,8\rest cs32-> cs32-> cs32-> cs32->
    c32-> c32-> c32-> c32-> d'8\rest d4\rest}
    \\
    \relative c{\startStaff s4 d16\rest[  <f,, a bf>8.\-\pp\<] \stopStaff 
    d''8\rest\fff[ \uN d8\-] \startStaff \noireNH \octavaDown d,8\rest[ <a b cs>8\-]
    s8 \stopOctava d'8\rest s4}>>
    %389-434
    \stopStaff 
    s2*19
    %{391
    \startStaff 
    <<\relative c'{d,8\rest[ \hide NoteHead  f,8] 8[ d'8\rest]}
    \\
    \relative c'{s8 \octavaDown \hide Stem f,,8\- s8  d'8\rest \stopOctava}>>
    r4 r8[ \octavaDown f8\-] 
    r4 \stopOctava r16[ \octavaDown <e fs>8\- r16] \stopOctava
    r4  r16[ \octavaDown <e fs a>8.\-] 
    r4 \stopOctava  r16[ \octavaDown <e fs a b cs>8\- r16] \stopOctava
    r8[ \octavaDown <e fs a b cs>8\-] r4 \stopOctava
    \stopStaff s2
    \startStaff
    \octavaDown e8\-[ r8] \stopOctava r16[ \octavaDown e8\-  r16] \stopOctava
    r16[ \octavaDown e16\- \stopOctava r8]  \octavaDown e8\-[ r8] \stopOctava \stopStaff
    <<\relative c'{\hide NoteHead \uN d8\rest d32->\fffff d32-> d32-> d32-> d32-> d32-> d32-> d32-> d32-> d32-> d16\rest}
    \\
    \relative c'{\uN d8\rest[ d8\-] s8. d16\rest}>> 
    s2*3
    \startStaff
    <<\relative c'{\hide NoteHead \noireNH d,16\rest d16\rest d32\rest \hide Stem f,,16. \undo \hide Stem 4
    4 4
    4 4
    4 4}
    \\
    \relative c'{ \noireNH s8 s32 \stemUp \octavaDown f,,,16\- s32 \hide Stem s4
    s1. \stopOctava }>>
    %408%}
    \stopStaff
    <<\relative c'{\hide NoteHead \uNw d,32-> \repeat unfold 15{d32->} }
    \\
    \relative c'{\uNw d,2\-\fffff }>> 
    \stopStaff \hide Rest r2 
    \undo \hide Rest 
    %410
    r4
    <<\relative c'{\hide NoteHead \uNw d,32-> \repeat unfold 15{d32->} }
    \\
    \relative c'{\uNw d,2\-\fffff }>> r4
    \stopStaff \hide Rest r2 
    \undo \hide Rest 
    % \stopStaff

    s2*21
    
    
    %434
    \startStaff 
    \noireNH r16[ \octavaDown <f! fs>16->-.\f\- \stopOctava r8] r4
    <<\relative c'{\hide NoteHead \uN d,8\rest d16\rest d,32-> d32-> d32-> d32-> d32-> d32-> d''8\rest}
    \\
    \relative c'{s8. \octavaDown \makeClusters{<f,,, d'>16\mf <f d'>8 \stopOctava <f' d'>8}}>> 
    \octavaDown <fs g a'>32->-.\fffff[\- \stopOctava r32 r16 r8] r4
    \stopStaff s2*3
    %439
    s2*6
    %446
    \startStaff \blancheNH \octavaDown f2--\- \stopStaff \hide Rest  r2 \stopOctava
    \undo \hide Rest \startStaff 
    %448 
    <<\relative c'{\hide NoteHead \noireNH d,4\rest \octavaDown f,,4
    4 16[  \stopOctava d''\rest d8\rest]
    d4\rest d8\rest[ \octavaDown <f,, a>8]
    4 8[ \stopOctava d''8\rest]}
    \\
    \relative c'{\hide Stem \stemUp s4 f,,,4_-\-
    s4 s16 d''16\rest s8
    s4. <fs,, a>8_-\-
    s4 s8 d8\rest}>>
    \stopStaff %452
    s2*4
    %456 
    <<\relative c'{ \hide NoteHead d,8.\rest[ \uN d16] 8[ d\rest]
    d4\rest \tuplet 3/2{d16-> d16-> d16->} d8\rest
    s2 
    \tuplet 3/2{d8\rest[ d8\rest d16-> d16->]} \tuplet 3/2{d16-> d16-> d8\rest d8\rest}}
    \\
    \relative c'{s8. \hide Stem \uN d,16\- s8 d8\rest
    d4\rest \undo \hide Stem d8[\- d8\rest] 
    s2
    \omit TupletBracket \omit TupletNumber \tuplet3/2{d8\rest[ d8\rest d8\-]} \omit TupletBracket \omit TupletNumber \tuplet3/2{s8 d8\rest s8}}>>
    s2*38

    %498 [16]
    \startStaff
    <<\relative c'{\hide NoteHead \noireNH \tuplet 6/4{f,,,16-> 16-> 16-> 16-> 16-> 16->} d'4\rest}
    \\
    \relative c'{\hide Stem \octavaDown \stemDown <f,,, fs>4\-\mf \stopOctava d'4\rest}>>
    \stopStaff s2
    %500
    s2*10
    %510-529
    s2*19
    \startStaff r4 \octavaDown \noireNH fs4\f--\glissando
    \magnifyMusic0.5{e32} \stopOctava r32 r16 r8 r4
    \octavaDown <f a bf c>16->-.\-\mf[ \stopOctava r16 r8] <<\relative c'{\hide NoteHead \uN \stopStaff \tuplet 3/2{d,4\rest \uN d16->\downbow d16->}
    \tuplet 3/2{d16->\upbow 16-> 16-> 16-> d8\rest} s4
    d,8\rest \tuplet 3/2{d'16\rest a,16-> 16->} \tuplet 3/2{a16-> 16-> 16-> 16-> d8\rest}}
    \\
    \relative c'{\stopStaff \omit TupletBracket \omit TupletNumber \tuplet 3/2{s4 \uN d,8\- }
    \omit TupletBracket \omit TupletNumber \tuplet 3/2{d4\- d8\rest} \startStaff \octavaDown \dalniente \stemNeutral \noireNH fs,,4--\mf\>\glissando
    \magnifyMusic0.5{\hide Stem \omit Flag e32\!}  \stopOctava s32 s16 \omit TupletBracket  \tuplet 3/2{d''16\rest \octavaDown \undo \hide Stem \stemDown \undo \omit Flag <e,, fs a>8\-\mf} \omit TupletBracket \omit TupletNumber \tuplet3/2{s4 \stopOctava d'8\rest}}>>
    \stopStaff s2 \startStaff \pageBreak
    %535
    <<\relative c'{\hide NoteHead d,16\rest[ \dalniente b8.\<] \tuplet 3/2{b8[ \dalniente 8\mf d8\rest]}} 
    \\
    \relative c'{\hide Stem s16 \makeClusters{<f,, b>8. \omit TupletBracket \omit TupletNumber \tuplet3/2{<f b>8 <f b>8 <f b>8}}}>> \noBreak
    \stopStaff s2
    %537-539
    s2*3
    %540
    <<\relative c'{\hide NoteHead \uN d4_-\downbow 4
    d4_-\upbow 16[ d8._-\downbow] 
    d4 8 16 d16_-\upbow
    8[ 8]_-\downbow 4
    16[ d8._-\upbow] 4
    d4\downbow_- 8 16 d16\upbow_-
    4 \tuplet 3/2{4 d8\downbow_-}
    4 8[ d8\rest]}
    \\
    \relative c'{\hide Stem \uN \override NoteHead.no-ledgers = ##t  d4\f\- s4
    d4\- s16 d8.\-
    s4 s8 s16 d16\-
    s8 d8\- s4
    s16 d8.\- s4
    d4\- s8 s16 d16\-
    s4 \omit TupletBracket \omit TupletNumber \tuplet3/2{s4 d8\-}
    s4 s8 d\rest}>> 

    
     


    



}

% \new Staff = "whammyPedal" \with{
%     \remove "Time_signature_engraver"
%     \RemoveAllEmptyStaves
%     \magnifyStaff #2/3
%     firstClef = ##f
% }
% \relative c{
%     \time 2/4
%     \numericTimeSignature
%     \override Staff.StaffSymbol.line-count = #3
%     \override NoteHead.no-ledgers = ##t 
%     \override Staff.StaffSymbol.line-positions = #'(-5 0 5)
%     R1^\markup{\box \teeny \bold{"Whammy Pedal"}}
%     \stopStaff
%     s1*2 %m2,3
%     s2. \startStaff \stemUp \uN d''4 \glissando %m4
%     \uNw f,16 \stopStaff s8. s2. %5
%     s1*2 %m6,7
%     \startStaff g,2. %m8

% }
>>

% \score{\accordion}

\layout {

  indent = 3.0 \cm 
              short-indent = 1.5 \cm}

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