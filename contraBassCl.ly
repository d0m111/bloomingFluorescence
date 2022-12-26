\version "2.24.0"
\language "english"

\include "accidentals.ly"
\include "headNotes.ly"
\include "miscelaneas.ly"
\include "dinamics.ly"

contraBassCl = \new Staff = "Heni" \with{
    instrumentName = "ContraBass Clarinet"
    shortInstrumentName = "C.B.Cl"
    %\RemoveAllEmptyStaves
}
\relative c{
    \clef treble
    \time 2/4
    \numericTimeSignature
    \fuenteTimeSig
    \sizeTimeSig
    %m1
    R2

    %m2-3
    \repeat unfold 2{
        <<\relative c{s8 \hide NoteHead \dalniente c8\< 16[ \dalniente 8\f\> d'16\rest\!] }
        \\
        \relative c{ g''8\rest \hide Stem c,,8\- s8. d'16\rest}>>
    }
    %m4-12
    \stopStaff
    s2*9

    %m13
    \startStaff
    \slap c16-.->\f^\markup{\teeny{"slap"}} r16 c32-.->( \xH b''^\markup{\teeny{"key noise only"}} a fs) r8 
    <<\relative c{\hide NoteHead \noireNH \dalniente cs8\<
    %m14
    \tuplet 3/2{c8[ 8-.\f d'8\rest]} }
    \\
    \relative c{\hide Stem \noireNH cs8\- 
    %m14
    \omit TupletNumber \tuplet 3/2{s8 s8 d'8\rest}}>> r4

    %m15
    \stopStaff s2 

    %m16
    \startStaff 
    r4 r16 \slap e,-.->\f r8
    %m17
    \uN \once \override DurationLine.style = #'dashed-line gs4:32\downbow^\markup{\teeny{"exhale"}}_\markup{\line{"[R]"}\draw-line#'(13 . 0)}\- \f r4 \stopStaff

    %m18-23
    s2*6

    %m24
    \startStaff 
    r4 \xH \tuplet 3/2{gs'16\f([ b g])} cs,16 \slap cs,\f->-.^\markup{\teeny{"slap"}}
    %m25
    r16 \dalniente \uN \once \override DurationLine.style = #'dashed-line cs8.:32\downbow_\markup{\line{"[R]"}\draw-line#'(5 . 0)}\-\< r4\f \stopStaff
    %m26-27
    s2*2
    %m28
    \startStaff
    r4 r16[ \slap g'16-.->\f r8]
    %m29
    r4 r16[ \noireNH \dalniente cs,8.\-\<]
    %m30
    r4\p <<\relative c{\hide NoteHead \tuplet 3/2{g'8\rest[ g8\rest c,!8]} c16[ 16_._> d'8\rest] }
    \\
    \relative c{\omit TupletNumber \hide Stem \once \override TupletBracket.bracket-visibility = ##f \tuplet 3/2{g'8\rest g8\rest \dalniente c,8\-\<} s16 s16\f d'\rest}>> r4 \stopStaff

    %m31-44
    s2*13

    %C1
    %45
    \startStaff
    <<\relative c{ \hide NoteHead \uN \tuplet 3/2{ d'8\rest[ d8\rest cs,8\f_-\upbow^\markup{\teeny{"inhale"}}]} cs16 e'8._-\downbow
    %m46 
    16 \noireNH gs,8.:32 16[ d'\rest d8\rest]}
    \\
    \relative c{\hide Stem \omit TupletNumber \omit TupletBracket \tuplet 3/2{ d'8\rest[ d8\rest] \uN cs,8\-_\markup{\line{"[F]"}\draw-line#'(4 . 0)}} s16 e'8.\-_\markup{\line{"[sh]"}\draw-line#'(7 . 0)}
    %m46
    s16 \noireNH \lineDashed gs,8.\ppp\- s16 d'\rest d8\rest}>>
    %47
    \stopStaff 
    s2
    %48
    \startStaff
    <<\relative c{\hide NoteHead \uN  cs'8.:32_-\downbow[ b'16\upbow] 16[ g\rest g\rest \noireNH g,16]
    %m49
    8[ 16 d'\rest]}
    \\
    %m48
    \relative c{\hide Stem \uN \lineDashed cs'8.\fff_\markup{\line{"[R]"}\draw-line#'(3 . 0)}\- b'16\-_\markup{\line{"[sh]"}\draw-line#'(3 . 0)} s16 g\rest g\rest \noireNH \dalniente g,16\-\<
    %m49
    s8 s16 d'\rest\f}>> r4
    %m50 
    << \relative c'{ s16 \hide NoteHead \dalniente gs8.\< \dalniente 8.\mf\> g'16\rest\!}
    \\
    \relative c'{\hide Stem g'16\rest[ gs,8.]\- s8. g'16\rest}>>
    
    %m51
    % \stopStaff \hide Rest r2\pp
    %52
    % \startStaff \undo \hide Rest
    <<\relative c'{\override NoteHead.no-ledgers = ##t \hide NoteHead \diamondH \stemDown \override Stem.length = #30 \once \override NoteColumn.force-hshift = #0.5 e''4 4 4}
    \\
    \relative c'{ \override NoteHead.no-ledgers = ##t \hide Stem \hide Flag \diamondH \once \override NoteColumn.force-hshift = #0.5 <e'' f>4\- s4 s4 }
    \\
    \relative c'{ \hide Stem \hide Flag \noireNH \once \override NoteColumn.force-hshift = #0.5 cs,4\pp\- s4 s4 }>>
    r16 \uN \dalniente gs'8.\<_\markup{\line{"[R]"}\draw-line#'(3 . 0)}--\- 
    %53
    r4\mp r8[ r32 \slap e-.->\f( \xH a' af] 
    %54
    ef)[ r32 r8.] \noireNH \dalniente g,8.\-\<[ r16]\p
    %55
    \stopStaff
    s2 
    %m56
    \startStaff
    <<\relative c{\hide NoteHead \noireNH g'8\rest[ \dalniente c,8\<] 8 \dalniente 8\p\> 
    %57
    8[\- d8\rest\!] g4\rest}
    \\
    \relative c{\hide Stem g'8\rest c,8\- s8 s8 s8 }>>
    %58
    \stopStaff
    s2*7

    %65
    \startStaff
    r4 \slap \tuplet 3/2{gs16\f\>-.( 16-. 16-.)} r8\!
    %66
    \stopStaff
    s2*7
    %78
    \startStaff
    r4 <<\relative c{\hide NoteHead \noireNH \dalniente cs4\<
    %79
    \tuplet 3/2{c8[ 8_._>\f g'\rest]}}
    \\
    \relative c{
        %78 
        \hide Stem \noireNH cs4\- 
        %79
        \omit TupletBracket \omit TupletNumber \tuplet 3/2{s8 s8 g'\rest}
    }>>
    r4 
    %75_76
    \stopStaff
    s2*2
    %77
    \startStaff
    r4 g'8.\rest \xH cs,,32\f-.(^\markup{"+"} g''32-.\flageolet)
    %78
    \slap g,32-.->\f[ r16. r8] r4
    %79
    r16 \tuplet 3/2{gs16\f\>(-. 16-. 16-.) } r16\! r4
    %80
    r16[ cs,16-.->\mf r8] e16-.->\p[ \xH b''32\f-.( af-. gf-. f-. ef-. df-. )]
    \stopStaff
    %81-83
    s2*3
    %84
    \startStaff
    \slap b16-.->\f[ r16 r8] r4
    %85
    \noireNH \lineDashed b8:32\p\-[ r8] r4
    %86
    <<\relative c{g''16\rest \override NoteHead.no-ledgers = ##t \hide NoteHead \diamondH \stemDown \override Stem.length = #30 \once \override NoteColumn.force-hshift = #0.5 e''8. 4 4 4 8 \undo \hide NoteHead \override NoteHead.no-ledgers = ##f \xH \slurDown c,,,32_._>(\f^\markup{"+"} g''?\flageolet) g16\rest}
    \\
    \relative c{ g''16\rest \override NoteHead.no-ledgers = ##t \hide Stem \hide Flag \diamondH \once \override NoteColumn.force-hshift = #0.5 <e'' f>8.\- s4 s4 s4 s8 }
    \\
    \relative c{ g''16\rest \hide Stem \hide Flag \noireNH \once \override NoteColumn.force-hshift = #0.5 d,8.\pp\- s4 s4 s4 s8 }>>
    r4
    \stopStaff
    %89
    s2*6
    \startStaff 
    %94
    << \relative c'{ g'8\rest[ \hide NoteHead \noireNH b8_-] 8[ g8\rest] }
       \\
       \relative c'{ s8 \hide Stem \noireNH b'8\mp\- s8 g8\rest}>>
    %95
    \stopStaff s2*14
    
    s2*5 %m2,3
    \startStaff
    r16 \slap cs,16-.->\f^\markup{\teeny \italic{"slap"}} << \relative c{\hide NoteHead cs8  16[ d'8.\rest]  d8.\rest[ \dalniente e,16\<] 16[ \dalniente 8\mp\> d'16\rest\!] }
    \\
    \relative c{\hide Stem \dalNienteExpo cs8\-\< s32. s64\f d'8\rest s16 s8. e,16\- s16 s8 d'16\rest}>> %m4
    R2
    <<\relative c{s4 \override NoteHead.no-ledgers = ##f \stemUp cs8[ \hide NoteHead 16 b'16\rest]}
    \\
    \relative c{\stemDown \dalniente \noireNH b''4\p\>^> \glissando \dalniente \hide Stem \noireNH \magnifyMusic 0.75{\grace {\hide Stem \parenthesize as16}} \dalniente cs,,8\<\- s16 b'16\rest\f  }>> %m5
    r4 r16[ \dalniente \noireNH d8.\<\-] \stopStaff \hide Rest r2\p %6
    \stopStaff s2*2
    \startStaff 
    % \time 3/4
    \undo \hide Rest
    <<\relative c'{\hide NoteHead \blancheNH \stemDown \override Stem.length = #35 <b''' \parenthesize aqf>2\flageolet\-^\markup{\teeny {"stabilize the upper harmonics"}} b4 g,,\rest}
    \\
    \relative c'{\hide Stem \blancheNH <d, b'''' aqf>2\pp\- s4 g'\rest}>>%m8
    %125
    <<\relative c{g''8\rest \hide NoteHead \noireNH \stemDown \override Stem.length = #35 <b'' a>8\flageolet\-^\markup{\teeny {"stabilize the upper harmonics"}} <b a>4 
    %126
    <b a>8. g,,16\rest}
    \\
    %125
    \relative c'{g'8\rest \hide Stem \noireNH <d, b'''' aqf>8\pp\- s4 
    %126
    s8. g'16\rest}>>r4
    %127-132
    \stopStaff
    s2*6
    %133
    \startStaff
    \noireNH \dalniente gs8..\p--\>\glissando \magnifyMusic0.5{fs32} r4\!
    %134-135
    r4 
    <<\relative c{\hide NoteHead \uN g'8\rest[ gs8:32\downbow_\markup{\line{"[R]"}\draw-line#'(3 . 0)}] g16:32[ \slap cs,16_._> g'8\rest]}
    \\
    \relative c{g'8\rest \hide Stem  \uN \lineDashed gs8\-\f s16 \slap cs,16 g'8\rest}>>
    r4
    %136
    r4 \slap cs16-.->[ r16 r8]
    %137
    <<\relative c'{\override NoteHead.no-ledgers = ##t \hide NoteHead \diamondH \stemDown \override Stem.length = #30 \once \override NoteColumn.force-hshift = #0.5 e''4 4 
    4 4 
    4 4
    4 4}
    \\
    \relative c'{\override NoteHead.no-ledgers = ##t \hide Stem \hide Flag \diamondH \once \override NoteColumn.force-hshift = #0.5 <e'' f>4\- s4 
    s4 s4
    s4 s4
    s4 s4 }
    \\
    \relative c'{\hide Stem \hide Flag \noireNH \once \override NoteColumn.force-hshift = #0.5 d,4\pp\- s4 
    %138
    s4 s4
    %139
    s4 s4
    %140
    s4 s4 }>>
    %141-157
    \stopStaff
    \hide Rest r2 
    \undo \hide Rest 
    s2*16
    %158-160
    \startStaff
    <<\relative c{\hide NoteHead \stemDown \blancheNH \octavaUp <d''' e'>2 2 8.[ \stopOctava b16\rest]}
    \\
    \relative c{\hide Stem \blancheNH <d''' e'>2\-\pp^- s2 s8. b16\rest }>> r4
    %161
    \stopStaff
    s2*8
    %169
    \startStaff
    <<\relative c'{ \override NoteHead.no-ledgers = ##t \hide NoteHead \diamondH \stemDown \override Stem.length = #30 \once \override NoteColumn.force-hshift = #0.5 e''4 4 4 }
    \\
    \relative c'{\override NoteHead.no-ledgers = ##t \hide Stem \hide Flag \diamondH \once \override NoteColumn.force-hshift = #0.5 <e'' f>4\- s4 s4}
    \\
    \relative c'{\hide Stem \hide Flag \noireNH \once \override NoteColumn.force-hshift = #0.5 cs,4\pp\- s4 s4 }>>
    %170
     \lineDashed \noireNH c8:32\f\-[ r8]
    %171
    r4 \uN \lineDashed b'8:32\-_\markup{\line{"[R]"}\draw-line#'(3 . 0)}[ r8]
    %172
    r4 \noireNH \dalniente cs,4\<
    %173
    r16\f[ \uN ef'8.\upbow--_\markup{\line{"[S]"}\draw-line#'(3 . 0)}\-] r4
    %174-181
    \stopStaff
    s2*8
    \startStaff
    %182
    <<\relative c{\hide NoteHead \noireNH r8.[ b'16:32\ppp_-] 8:32[ g8\rest]}
    \\
    \relative c{\hide Stem \noireNH s8. \lineDashed b'16\- s8 g8\rest}>>
    %183
    <<\relative c{\hide NoteHead r16[ \slap cs16-.->\f \noireNH cs8:32\ppp] 8:32 \xH \slurDown c!16._._>\f^\markup{"+"}( g''32\flageolet) }
    \\
    \relative c{\hide Stem s16 \slap cs16 \noireNH \lineDashed cs8\- s8 \xH c!16. g''32}>>
    \stopStaff
    %184
    s2
    %185
    \startStaff
    <<\relative c{r8.[ \hide NoteHead \uN g'16:32_-\fff\downbow_\markup{\line{"[R]"}\draw-line#'(3 . 0)}] g16:32[ g8.\rest] }
    \\
    \relative c{s8. \hide Stem \uN \lineDashed g'16\- s16 g8\rest s16}>>
    %186
    \noireNH r4 \dalniente g,8.\-\<[ r16\mf]
    %187
    \stopStaff
    s2
    %188
    \startStaff
    r4
    \slap cs,16-.->\mf[ r16 \uN cs8\-\downbow\f_\markup{\line{"[F]"}\draw-line#'(3 . 0)}]
    %189
    r4 \noireNH \lineDashed gs'8:32\pp\-[ r8]
    %190
    r16[ \slap fs-.->\f r8] r4
    %191
    r8.
    <<\relative c{\diamondH \override NoteHead.no-ledgers = ##t \stemDown \omit Flag \once \override NoteColumn.force-hshift = #0.5 \override Stem.length = #25 <e''' f>16\- s4 
    %192
    s4}
    \\
    \relative c{s16 \hide Stem \omit Flag \once \override NoteColumn.force-hshift = #0.5 \override NoteHead.no-ledgers = ##t \hide NoteHead \undo \hide Stem <d e'''>4  
    <d e'''>4 }
    \\
    \relative c{\once \override NoteColumn.force-hshift = #0.5 \stemDown d16\pp\- s4 s4 }>>
    r4
    %193
    <<\relative c{s8 \hide NoteHead \dalniente c8\< 16[ \dalniente 8\f\> d'16\rest\!] }
    \\
    \relative c{ g''8\rest \hide Stem c,,8\- s8. d'16\rest}>>
    %-219
    \stopStaff
    s2*10
    \startStaff
    % j1
    r4
    <<\relative c{s8 \hide NoteHead \dalniente c8\< 16[ \dalniente 8\f\> d'16\rest\!] }
    \\
    \relative c{ g''8\rest \hide Stem c,,8\- s8. d'16\rest}>> r4
    \stopStaff
    s2*3
    \startStaff
    r16[ \slap cs16-.\f^\markup{\teeny{"slap"}} r8] \tuplet 3/2{r16 ds16-.\> f16-.} \tuplet 3/2{g16-. a16-. b-.\!} \stopStaff
    s2*2 \startStaff
    \noireNH \lineDashed \dalniente gs8.:32\<\-[ r16\f] r4 \stopStaff
    s2*7

    %220
    \startStaff
    r8 \tuplet 3/2{r16[ \slap cs16-.\mp cs16-.]} \tuplet 3/2{cs16-. cs16-. cs16-.} r8
    %221
    \noireNH \lineDashed gs'8:32\-\f[ r8] r4
    %222
    <<\relative c{\hide NoteHead \tuplet 3/2{r8[ r8 \dalniente c!8\<]} 16.[ g'32\rest\mf g8\rest]}
    \\
    \relative c{\hide Stem \omit TupletBracket \omit TupletNumber \tuplet 3/2{ \noireNH s4 c!8\-} s16. g'32\rest s8 }>>

    %223
    \stopStaff
    s2*13

    %236
    \startStaff
    r4 <<\relative c{\stemDown b''8\rest[ \hide NoteHead \noireNH <d' e'>8] 4 4 4 4 \stemUp  b16\rest[ \stopOctava  b,,8._-] 4 4 4}
    \\
    \relative c{b''8\rest \hide Stem \noireNH \octavaUp <d' e'>8\pp\- s1 b16\rest b,,8.\- s2.}>>
    \stopStaff \hide Rest r2

    %242
    \stopStaff
    s2*6

    %248
    \startStaff \undo \hide Rest
    r4 r16[ r16 r16 \xH cs,,-.->\f^\markup{\teeny{"+"}}] 
    \slap c16.-.([ \xH g''32\flageolet)->-.] r8 r4
    \stopStaff s2 \startStaff
    r8[\slap g,16-.->\mf \xH b'16-.\f( a32-. g-. f-. e-.)] r8
    r16 c,16.->-.\f([^\markup{\teeny{"+"}} g''32\flageolet]) r16 r4
    \stopStaff
    %253-254
    s2*2
    \startStaff
    r8 r32 \slap cs,,16^\markup{\teeny{"+"}}( \xH g''32\flageolet) r8[ fs,16->-.(^\markup{\teeny{"+"}} g'16\flageolet)]
    %256-257
    r4 <<\relative c{\hide NoteHead \uN g''8\rest[ gs,8:32_-_\markup{\line{"[R]"}\draw-line#'(5 . 0)}] g16:32[ g'8.\rest]}
    \\
    \relative c{\hide Stem \uN g''8\rest \lineDashed gs,8\- s16 g'8\rest s16}>>
    r4
    %258-259
    r4 r16[\slap e,16-.->\mf( \xH g'16-.\flageolet) b16-.->^\markup{\teeny{"+"}}](
    g16-.\flageolet)[ r16  \xH fs,32-.->\f^\markup{\teeny{"+"}}( g'32-.\flageolet) r16] r4
    \stopStaff
    %260
    s2*2
    \startStaff
    %262
    <<\relative c{ \repeat unfold 2{ \hide NoteHead d'8\rest[ \uN cs,8:32_-\downbow_\markup{\line{"[R]"}\draw-line#'(8 . 0)}]}}
    \\
    \relative c{\repeat unfold 2{\hide Stem \uN d'8\rest \lineDashed cs,8\-}}>>
    %263
    <<\relative c{d'8.\rest[ cs,16:32] cs16:32_-_\markup{\line{"[R]"}\draw-line#'(8 . 0)}[ d'8.\rest]}
    \\
    \relative c{d'8\rest s16 \lineDashed cs,16\- s16 d'8\rest s16}>>

    %264_269
    \stopStaff
    s2*6

    %270
    \startStaff
    <<\relative c' {\diamondH \override NoteHead.no-ledgers = ##t \stemDown \omit Flag \once \override NoteColumn.force-hshift = #0.5 \override Stem.length = #25  <e'' f>2\- s2}
    \\
    \relative c'{s4 
        \hide NoteHead 
        \once \override NoteColumn.force-hshift = #0.5 
        \override NoteHead.no-ledgers = ##t  <fs, e''' f>4  <f e''' f>4 4 }
    \\
    \relative c' {\noireNH \stemDown \once \override NoteColumn.force-hshift = #0.5 fs,4\-\ppp s4
    s2 }>>
    % r4
    % R2
    % r4 \tuplet 3/2{\uN \lineDashed b,4:32\downbow\mp_\markup{\line{"[R]"}\draw-line#'(4 . 0)}\- r8}
    r8[ \slap g,16-.\mp r16] r8[ r32 \uN \lineDashed e16.\downbow\mf--\-_\markup{\line{"[R]"}\draw-line#'(4 . 0)} ]
    f'8_-\upbow_\markup{\line{"[F]"}\draw-line#'(8 . 0)}[ r8] 
    <<\relative c' {\diamondH \override NoteHead.no-ledgers = ##t \stemDown \omit Flag \once \override NoteColumn.force-hshift = #0.5 \override Stem.length = #25  <e'' f>4\- 
    %274
    s2
    %275
    s4.}
    \\
    \relative c'{s4 
    %274
        \hide NoteHead 
        \once \override NoteColumn.force-hshift = #0.5 
        \override NoteHead.no-ledgers = ##t  <c, e''' f>4  <c e''' f>4 
        %275
        4 8 r8 }
    \\
    \relative c' {\noireNH \stemDown \once \override NoteColumn.force-hshift = #0.5 cs,4\-\ppp 
    %274 
    s2
    s4.  }>> 
    
    \stopStaff
    
    %274-280
    s2*5

    %281
    \startStaff
    \slap b,16-.\f[ r8.] r4
    \stopStaff s2*3
    %285
    \startStaff
    <<\relative c'{\hide NoteHead \uN \tuplet 5/4{ g'16\rest[ g\rest g\rest g,8:32\downbow\mp_\markup{\line{"[R]"}\draw-line#'(4 . 0)}_-]} 16[ g'8.\rest] }
    \\
    \relative c'{\hide Stem \omit TupletBracket \omit TupletNumber \uN \tuplet 5/4{ g'16\rest s8 \lineDashed g,8\-} s16 g'8\rest s16}>>
    g'8.\rest[ \xH c,,32\f-.->(^\markup{\teeny{"+"}} g''32\flageolet)] \slap c,,16-.\p[ r16 f-. r16]
    r4 \tuplet 5/4{r16[ a-.\p r16 fs-. r16]}
    \stopStaff s2
    \startStaff 
    <<\relative c'{\hide NoteHead \uN \tuplet 3/2{ g'8\rest[ g\rest g,8:32_-\downbow_\markup{\line{"[R]"}\draw-line#'(4 . 0)}]} 16:64[ g'8.\rest]}
    \\
    \relative c'{\hide Stem \uN \omit TupletBracket \omit TupletNumber \tuplet 3/2{g'8\rest s8 \lineDashed g,8\-} s16 g'8\rest s16}>>
    \stopStaff s2*9
    %299
    \startStaff
    r4 <<\relative c'{\hide NoteHead \noireNH g'8\rest[ \dalniente cs,,8\<] \dalniente c8\f\>[ g''8\rest\!]}
    \\
    \relative c'{\hide Stem \noireNH g'8\rest cs,,8\- s8 g''8\rest}>>
    r4 
    \stopStaff 
    s2*15

    %316
    \startStaff
    r4 r8[ \slap c'16->-.\f gs'-.]
    r4 r32[ ds16-.-> g,32 r8 ]
    \uN \lineDashed ds8:32_-\upbow\p\-_\markup{\line{"[R]"}\draw-line#'(4 . 0)}[ r8] r4
    r32[ \slap e'16-.->\f b32-.] r8 
    <<\relative c'{\hide NoteHead \uN \tuplet 5/4{r8[ cs8._-\downbow_\markup{\line{"[F]"}\draw-line#'(4 . 0)}]}
    c16 \slurDown \dalniente b'\upbow(\>_\markup{\line{"[S]"}\draw-line#'(4 . 0)} a fs) g4\rest\!}
    \\
    \relative c'{\hide Stem \uN \omit TupletBracket \omit TupletNumber \tuplet 5/4{s8 cs8.\-} s16 b' a fs g4\rest}>>
    \slap cs,32-.->\f \xH b''32( bf32 af32) r8 \noireNH \dalniente ds,,8\-\<[ r8\ppp]
    \noireNH \sharpDown \dalniente cs''8..\<\glissando \magnifyMusic0.5{\naturalDown b!32\mf}
    %{<<\relative c' {\diamondH \override NoteHead.no-ledgers = ##t \stemDown \omit Flag \override Stem.length = #25 <e'' f>8.\-}
    \\
    \relative c' {\noireNH e,8.\-\ppp[ g'16\rest] }>> %}
    
    r8..[\xH cs,,32-.->^\markup{\teeny{"+"}}] 
    \slap cs32-.\pp[ \xH g''32-.\flageolet r16 r8] r4
    <<\relative c'{\hide NoteHead \uN \tuplet 5/4{r8[ gs8.\downbow_-_\markup{\line{"[F]"}\draw-line#'(4 . 0)}]} gs16 a'8.\downbow--_\markup{\line{"[g]"}\draw-line#'(4 . 0)}_-
    \stopStaff s2
    \startStaff r8.[ \noireNH \dalniente b,16\<] b8[ g'8\rest\pp]}
    \\
    \relative c'{\hide Stem \uN \omit TupletBracket \omit TupletNumber \tuplet 5/4{s8 gs8.\-} s16 a'8.\-
    \stopStaff \hide Rest r2
    \startStaff \undo \hide Rest s8. \noireNH b,16\- s8 g'\rest }>>
    \stopStaff 
    %327
    s2*19
    \startStaff
    %346
    r16[ \noireNH \lineDashed c,8:32\-\p-- r16] r4
    %347
    <<\relative c'{g8\rest[ \hide NoteHead \noireNH \dalniente g8\<] 16[ g\rest-.\p g8\rest]}
    \\
    \relative c'{s8 \hide Stem g8\- s16 g8\rest s16}>>
    r4 \tuplet 3/2{r8 \lineDashed ds4:32\-\pp--} \stopStaff \hide Rest r2
    \undo \hide Rest
    \startStaff
    %350
    <<\relative c'{g8\rest[ \hide NoteHead \noireNH \dalniente g8\<] 16[ g16_>_.\f g8\rest]}
    \\
    \relative c'{s8 \hide Stem g8\- s8 g8\rest}>>
    
    %351
    \startStaff
     <<\relative c' {\undo \hide NoteHead \diamondH 
                     \override NoteHead.no-ledgers = ##t 
                     \stemDown 
                     \omit Flag 
                     \once \override NoteColumn.force-hshift = #0.5 
                     \override Stem.length = #25  <e'' f>2\- s2 s8.}
    \\
    \relative c'{s4 
                 \undo \hide Stem
        \hide NoteHead 
        \once \override NoteColumn.force-hshift = #0.5 
        \override NoteHead.no-ledgers = ##t  <fs, e''' f>4  <f e''' f>4 4 8. }
    \\
    \relative c' {\noireNH 
                  \stemDown 
                  \once \override NoteColumn.force-hshift = #0.5 fs,4\-\ppp s4
    s2 s8. }>> r16 r4
    \stopStaff s2*2
    \startStaff
    \dalniente cs,8.[\-\< r16\p] \dalniente c!8[\<\- r8\p]
    r4 \tuplet 3/2{r8 \uN \lineDashed ds'4:32--\-\p_\markup{\line{"[R]"}\draw-line#'(4 . 0)}}
    %358
    <<\relative c'{\hide NoteHead \uN \tuplet 3/2{g'8\rest[ g\rest a8_-_\markup{\line{"[F]"}\draw-line#'(4 . 0)}]} 16[ g16\rest g32\rest \undo \hide NoteHead \slap g,16_._>] s32
    %359
    \hide NoteHead
    \tuplet 5/4{g'16\rest[ g16\rest g16\rest gs,8\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}]} \tuplet 5/4{16[ g16\rest g16\rest e8]\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}}
    \tuplet 5/4{16[ g16\rest g16\rest g16\rest e16_-\upbow_\markup{\line{"[S]"}\draw-line#'(5 . 0)}]} 16[ g16\rest \slap cs,16_._>\mf g'16\rest]
    %361
    g'4\rest g16\rest[ fs8._-\downbow_\markup{\line{"[g]"}\draw-line#'(5 . 0)}]
    \tuplet 3/2{f8 b4\upbow_-_\markup{\line{"[sh]"}\draw-line#'(5 . 0)}} \tuplet 5/4{16[ g16\rest g16\rest gs,8]_\markup{\line{"[F]"}\draw-line#'(5 . 0)}}
    \tuplet 5/4{g8[ g16\rest g16\rest gs16\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}]} \tuplet 5/4{8[ g16\rest g16\rest e16_\markup{\line{"[F]"}\draw-line#'(5 . 0)}]}
    16[ g8.\rest] g'4\rest
    %365
    \noireNH
    g8\rest[ g,8:32] \tuplet 3/2{g8:32[ g8\rest g\rest]} 
    g16\rest[ g8:32 g16\rest] \tuplet 3/2{d'8\rest[ d\rest b8:32]}
    c16:32[ g'8.\rest]
    }
    \\
    \relative c'{\hide Stem \uN \omit TupletBracket \omit TupletNumber \tuplet 3/2{s4 a'8\-} s16 g16\rest s8
    %359
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{s8. \uN gs,8\-} \omit TupletBracket \omit TupletNumber \tuplet 5/4{s16 g16\rest g16\rest e8\-}
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{s16 g16\rest g16\rest g16\rest e\-}
    s16 g16\rest \slap cs,16 s16
    s4 s16 \uN fs'8.\-
    \omit TupletBracket \omit TupletNumber \tuplet 3/2{s8 b4\-} \omit TupletBracket \omit TupletNumber \tuplet 5/4{s16 g16\rest g16\rest gs,8\-}
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{s8 g16\rest g16\rest gs16\-} \omit TupletBracket \omit TupletNumber \tuplet 5/4{s8 g16\rest g16\rest e16\-}
    s16 g8\rest s16 s4
    %365
    \noireNH
    g'8\rest \lineDashed g,8\-\mp \tuplet 3/2{s8 g8\rest g\rest} 
    g16\rest \lineDashed g8\- g16\rest \tuplet 3/2{d'8\rest d\rest \lineDashed b8\-}
    s16 g'8\rest s16}>> r4
    %368
    \stopStaff s2
    %369
    \startStaff
    \tuplet 3/2{r8[ \slap c,8-.->\f r8]} \uN a''8--\-\upbow_\markup{\line{"[S]"}\draw-line#'(5 . 0)}[ r8]
    \stopStaff
    %370
    \startStaff
    \slap g,16-.->\f[ \uN \lineDashed cs,8.:32--\mp\-_\markup{\line{"[R]"}\draw-line#'(5 . 0)}]
    r8 \dalniente \noireNH b''16..\pp\>\glissando \magnifyMusic0.5{ bf64\!}
    r16[ \slap e,,16-.->\f \xH cs16.->-.^\markup{\teeny{"+"}}( g''32\flageolet)] r4
    \lineDashed \noireNH \tuplet 3/2{r8  d,4:32\p--\-} r8[ r16. \slap cs32-.->\f] 
    r4 <<\relative c'{\hide NoteHead \noireNH g'16.\rest[ \dalniente g,32\< 8] g'4\rest\f}
    \\
    \relative c'{\hide Stem s16. \noireNH g32\- s8 \hide Rest r4 \undo \hide Rest}>>
     r8[ \uN \lineDashed fs8:32\-\downbow\f_\markup{\line{"[R]"}\draw-line#'(5 . 0)}\f]
    %375
    %{<<\relative c' {\diamondH \override NoteHead.no-ledgers = ##t \stemDown \omit Flag \override Stem.length = #25 <e'' f>8.\-}
    \\
    \relative c' {\noireNH g8.\-\pp[ g'16\rest] }>> %}
    \dalniente \noireNH b8.\-\<[ r16\f] 
    r4
    \stopStaff s2
    %377
    \startStaff r4 <<\relative c'{\hide NoteHead \uN g'16\rest[ gs8._-\mf\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}]
    g4 16[ \undo \hide NoteHead \slap gs,16->-.\f g'8\rest]}
    \\
    \relative c'{\hide Stem \uN s16 gs'8.\-
    s4 s16 \hide Rest r8.}>>
    r4 r16[ \slap cs,16-.->\f r8]
    <<\relative c'{\hide NoteHead 
                          b8\rest[ \dalniente ds,8\<] ds16[ \dalniente ds8.\mf\>]
                          b4\rest\!
      }
      \\
      \relative c'{\hide Stem 
                        s8 ds,8\- s4
      }>> 
   %{ r4 <<\relative c' { g'16\rest  \diamondH \override NoteHead.no-ledgers = ##t \stemDown \omit Flag \override Stem.length = #25 <e'' f>8.\-}
    \\
    \relative c' {g'16\rest[ \noireNH cs,,8.\pp] }
    \\
    \relative c'{s16 \noireNH \hide Stem \hide Flag s32 \override NoteHead.no-ledgers = ##t \magnifyMusic0.45{cs,32_\markup{\teeny{"bisb."}} 32 32 32 32} }>> %}
    \slap cs32-.->\f[ \uN 8..\p\-\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}]
    %382
    r8 \slap \tuplet 3/2{cs16-.->\f\>( ds16-. e-.)} r4\!
    \stopStaff s2
    \startStaff r4 \dalniente \noireNH cs4\-\<
    %{
    <<\relative c' {  \diamondH \override NoteHead.no-ledgers = ##t \stemDown \omit Flag \override Stem.length = #25 <e'' f>4\-}
    \\
    \relative c' { \noireNH cs,4\pp }
    \\
    \relative c'{\noireNH \hide Stem \hide Flag s32 \override NoteHead.no-ledgers = ##t \magnifyMusic0.45{cs,32_\markup{\teeny{"bisb."}} 32 32 32 32 32 32} }>> %}
    %385
    r4\f %{ <<\relative c' { g'16\rest  \diamondH \override NoteHead.no-ledgers = ##t \stemDown \omit Flag \override Stem.length = #25 <e'' f>8.\-}
    \\
    \relative c' {g'16\rest[ \noireNH cs,,8.\pp] }
    \\
    \relative c'{s16 \noireNH \hide Stem \hide Flag s32 \override NoteHead.no-ledgers = ##t \magnifyMusic0.45{cs,32_\markup{\teeny{"bisb."}} 32 32 32 32} }>> %}
    r16[ \dalniente cs8.\<\-]
    %386
    r4\f %{<<\relative c' { g'16\rest  \diamondH \override NoteHead.no-ledgers = ##t \stemDown \omit Flag \override Stem.length = #25 <e'' f>8.\-}
    \\
    \relative c' {g'16\rest[ \noireNH cs,,8.\pp] }
    \\
    \relative c'{s16 \noireNH \hide Stem \hide Flag s32 \override NoteHead.no-ledgers = ##t \magnifyMusic0.45{cs,32_\markup{\teeny{"bisb."}} 32 32 32 32} }>> %}
    r16[ \dalniente c!8.\<\-]
    %387
    r8\f[ \uN \lineDashed g''8:32\-\downbow\f_\markup{\line{"[R]"}\draw-line#'(5 . 0)}]
    <<\relative c'{g'8\rest[ \hide NoteHead \noireNH  gs,8:32\mp_-] 
    g8:32[ g'8\rest]}
    \\
    \relative c'{g'8\rest \noireNH \hide Stem \lineDashed gs,8\- 
    s8 g'8\rest}>>
    r4 \stopStaff 
    %390
    s2*19
    %{393
    \startStaff
    r4 r16[ \lineDashed \noireNH cs,8:32--\mp\- r16]
    %394
    r4 r16[ \lineDashed \noireNH cs8.:32--\-]
    %395
    r4 r16[ \lineDashed cs8:32\- r16]
    % r8[ \uN \lineDashed cs8:32\-] s16[ r16 r16 \lineDashed c!16:64\-\downbow_\markup{\line{"[R]"}\draw-line#'(2 . 0)}]
    <<\relative c'{\hide NoteHead \uN d8\rest[ \uN \lineDashed cs,8:32] 16[ d'16\rest d16\rest \lineDashed c,!16:64\downbow_\markup{\line{"[R]"}\draw-line#'(2 . 0)}]
    % d'8.\rest[ c,16\downbow_\markup{\line{"[R]"}\draw-line#'(5 . 0)}] 16[ d'16\rest d8\rest]
    \stopStaff s2
    }
    \\
    \relative c'{s8 \hide Stem \lineDashed cs,8\- s16 d'\rest d\rest \lineDashed \uN c,16\-\ff 
    % d'8\rest s16 \lineDashed c,16\-\p s16 d'16\rest s8 
    \stopStaff \hide Rest r2 \undo \hide Rest}>>
    %398
    s2*2
    %400
    \startStaff
    r4 <<\relative c'{b'8.\rest \hide NoteHead \noireNH \hide Stem <cs, a'>16
    %401
    \undo \hide Stem \stemDown <c a''>4 <c a''>16[ b'16\rest b8\rest]
    a'8[ b8\rest] b8\rest[ b16\rest \flatDown af16]
    a8.[ b16\rest] b8\rest[ b16\rest \flatDown af16]
    a16 b16\rest b32\rest <c,,,  b'''>16.\flageolet 4
    4 4
    4 4
    4 4}
    \\
    \relative c'{s8. \uN   \noireNH <cs a''>16\-\p 
    %401
    \hide Stem s4 s16 b'16\rest s8 
    a'8\- b8\rest s8. \flatDown af16\-
    s8. b16\rest s8. \flatDown af16\-
    s16 b16\rest s32 <d,,, aqf''' b> 16\-^\markup{\teeny{"come prima (m.213)"}} s32 s4
    s4 s4
    s4 s4
    s4 s4
    }>> %}
    %408 
    \startStaff
    <<\relative c'{\hide NoteHead cs,4:32\downbow_\markup{\line{"[R]"}\draw-line#'(10 . 0)} cs4:32}
    \\
    \relative c'{\hide Stem \uN \lineDashed cs,4\-\fffff s4}>> \stopStaff s2
    \startStaff r4
    <<\relative c'{\hide NoteHead cs,4:32\downbow_\markup{\line{"[R]"}\draw-line#'(10 . 0)} c4:32}
    \\
    \relative c'{\hide Stem \uN \lineDashed cs,4\-\fffff s4}>> r4
    \stopStaff
    s2*22
    \startStaff 
    %434
    <<\relative c' {s4
    \tuplet 3/2{\hide NoteHead b8\rest \uN \stemNeutral c,4:32_-_\markup{\line{"[R]"}\draw-line#'(5 . 0)}\downbow}
    8 cs'8\upbow}
    \\
    \relative c' { b'16\rest \noireNH \dalniente \stemNeutral gs,8.\<\-
    \omit TupletBracket \omit TupletNumber \tuplet 3/2{ \hide Stem \uN \hide Rest r8\f \undo \hide Rest \lineDashed c,4\-}
    s8 cs'8\-}>> r4
    \slap cs,,16-.->\f[ r8.] r4
    %437
    \stopStaff s2*2
    %439
    \startStaff <<\relative c'{b'4\rest \hide NoteHead \noireNH \dalniente \hide Stem <cs, a'>4\<
    \dalniente \undo \hide Stem \stemDown <c a''>4\p\> b'4\rest\!
    \tuplet 3/2{b8\rest \uN \stemNeutral g,4:32\downbow_\markup{\line{"[R]"}\draw-line#'(5 . 0)}\f} 16[ b16\rest b8\rest]}
    \\
    \relative c'{s4 \uN   \noireNH <cs a''>4\- 
    s4 b'4\rest \hide Stem
    \omit TupletBracket \omit TupletNumber \tuplet 3/2{s8 \uN \lineDashed g,4\-} s16 b16\rest s8}>>
    \stopStaff s2*4
    %446
    \startStaff 
    <<\relative c' {\diamondH \override NoteHead.no-ledgers = ##t \stemDown \omit Flag \once \override Stem.length = #25 <e'' f>2\-}
    \\
    \relative c' {\blancheNH g2\-\pp}>> \stopStaff \hide Rest r2 \undo \hide Rest
    \startStaff %448
    r4 <<\relative c' {\diamondH \override NoteHead.no-ledgers = ##t \stemDown \once \override Stem.length = #25 <e'' f>4\-
    s4 s16 \hide Rest r8 s16 \undo \hide Rest
    s4. \once \override Stem.length = #25 <e f>8\- 
    s4 s8 b,8\rest}
    \\
    \relative c' {\noireNH \hide Stem g4\-\pp
    s4 s16 \hide Rest r8 s16 \undo \hide Rest
    b'4\rest b8\rest g,8\- 
    s4 s8 b'8\rest }
    \\
    \relative c'{\override NoteHead.no-ledgers = ##t \hide Stem \hide NoteHead <g e'''>4 
    \undo \hide Stem \stemDown 4 16[ b16\rest b8\rest]
    s4. \hide Stem \hide NoteHead <g e'''>8 \undo \hide Stem
    4 8[ b'8\rest]}>> \stopStaff 
    %452
    s2*4
    \startStaff
    %456
    r4 \xH cs16.-.->\f^\markup{\teeny{"+"}}[( g''32\flageolet) \slap cs,,16-.->\mp r16] 
    r4 \uN \lineDashed b'8:32_-\downbow\-_\markup{\line{"[R]"}\draw-line#'(5 . 0)}[ r8]
    \stopStaff s2
    \startStaff r4 r16[ \lineDashed a'8.:32\-\p_\markup{\line{"[R]"}\draw-line#'(5 . 0)}]
    r16.[ \slap gs,32-.->\f] \tuplet 6/4{\xH a'16-.( g-. f-. e-. d-. c-.)} b'8\rest

    \stopStaff %s2*31
    s2
    %462
    \startStaff
    \slap cs,,16-.\mf[ r8.] r4
    %463
    cs16[ r8.] r16[ \xH cs16.->^\markup{\teeny{"+"}}( g''32\flageolet) r16]
    %464
    \stopStaff s2
    %465
    \startStaff
    r8[ \slap cs,,16->-.\mf r16] \tuplet3/2{r8[ \xH b''8->( g16-.) r16]} 
    %466
    \tuplet3/2{r8[ r8 fs,8-.]} \tuplet 5/4{r16[ cs8.->( g''16-.\flageolet)]}
    %467
    \stopStaff s2
    %468
    \startStaff
    \slap cs,,16-.->[ r16 r8] r4
    %469
    r4 \tuplet5/4{r8[ ds16 \xH cs16(-.-> g''16\flageolet)]}
    %470
    r8[ \slap fs16-.-> r16] r8[ r16 \xH cs,16-.->^\markup{\teeny{"+"}}](
    %471
    g''32\flageolet-.[) r32 r16 r16. \slap ds,32-.] \tuplet 5/4{r16[ cs16-. r8.]}
    %472
    r32[ \xH c!32-.(^\markup{\teeny{"+"}} g''16\flageolet) r8] r4
    %473
    r16.[ \slap cs,,16( \xH g''32\flageolet) r16] r4
    %474
    r16[ \slap fs,16-. r8] r8[ r16. cs32-.](
    %475
    \xH g''32\flageolet)[ r32 r16 r8] r4


    \stopStaff
    s2*4
    %480
    \startStaff 
    <<
    \relative c'{g'4\rest \hide NoteHead \noireNH \tuplet 3/2{g4\rest cs,,8_-}] 
    \tuplet 3/2{c8_- c8_- c8_-} \tuplet 5/4{8._- 8_-}
    \tuplet 5/4{16 8_- 8_-} 16[ g''16\rest g8\rest]
    \stopStaff s2
    \startStaff g8\rest \tuplet 5/4{cs,,8._-[ 8_-]} \tuplet3/2{16[ 8_-]}
    \tuplet 3/2{c16_- 8._- 8_-} \tuplet3/2{16 4_- 16_-}
    \tuplet5/4{8 cs8._-} 16[ 8._-]
    \stopStaff s2
    \startStaff g''4\rest \tuplet 3/2{g4\rest cs,,8_-} 
    \tuplet 3/2{c8_- 8_- 8_-} \tuplet 5/4{8._- 8_-}
    \tuplet 5/4{16 8_- 8_-} 16[ g''16\rest g8\rest]}
    \\
    \relative c'{s4 \hide Stem \omit TupletNumber \tuplet 3/2{s4 cs,8\p\-^\markup{\teeny{"smorzando"}}]} 
    \omit TupletBracket \omit TupletNumber \tuplet 3/2{cs8\- c8\- c8\-} \omit TupletBracket \omit TupletNumber \tuplet 5/4{c8.\- 8\-}
    \omit TupletBracket \omit TupletNumber  \tuplet 5/4{s16 cs?8\- c8\-} s16 g''\rest s8
    \stopStaff s2
    \startStaff s8 \omit TupletBracket \omit TupletNumber \tuplet 5/4{cs,,?8.\- cs8\-} \omit TupletBracket \omit TupletNumber  \tuplet3/2{ s16 cs8\-}
    \omit TupletBracket \omit TupletNumber \tuplet 3/2{s16 cs?8.\- c8\-}\omit TupletBracket \omit TupletNumber  \tuplet3/2{s16 c4\- c16\-}
    \omit TupletBracket \omit TupletNumber \tuplet5/4{s8 cs?8.\-} s16 cs8.\-
    \stopStaff \hide Rest r2 \undo \hide Rest
    \startStaff s4 \omit TupletBracket \omit TupletNumber \tuplet 3/2{s4 cs?8\-} 
    \omit TupletBracket \omit TupletNumber \tuplet 3/2{cs?8\- c8\- c8\-} \omit TupletBracket \omit TupletNumber  \tuplet 5/4{c8.\- 8\-}
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{s16 cs?8\- c8\-} s16 g''\rest s8}>> \stopStaff
    s2

    %492 [15]
    \startStaff \slap cs,,16-.->\f[ r8.] r4 \stopStaff 
    s2*3
    
    %496 [16]
    \startStaff 
    <<\relative c' {\diamondH \override NoteHead.no-ledgers = ##t \stemDown \once \override Stem.length = #30 <e'' f>4..\-
    b,16\rest}
    \\
    \relative c'{\stemDown \tupletDown \tuplet 5/4{c,16_\markup{\teeny{"bisb."}}\pp \override NoteHead.no-ledgers = ##t \magnifyMusic0.5{16 16 16 16}}  
    \magnifyMusic0.5{\tupletDown \tuplet 3/2{c16[ 16 16]} 16 s16}}>>
    \xH r4 r8[ c16.->-.\f^\markup{\teeny{"+"}}( g''32\flageolet)]
    <<\relative c' {\diamondH \override NoteHead.no-ledgers = ##t \stemDown \once \override Stem.length = #30 <e'' f>4\-
    g,,4\rest}
    \\
    \relative c' {\noireNH \hide Stem cs,4\-\pp
    \hide Rest r4 \undo \hide Rest}>>
    \xH r8[ c,,16->-.\f^\markup{\teeny{"+"}}( g''16\flageolet)] r4
    %500
    \stopStaff s2*3
    \startStaff r4 <<\relative c'{g'16\rest[ \slap cs,,16->-.\f \dalniente \hide NoteHead \uN cs8:32\<\downbow_\markup{\line{"[R]"}\draw-line#'(5 . 0)}]
    \dalniente c4:32\mf\> g''4\rest\!}
    \\
    \relative c'{s8 \uN \hide Stem \lineDashed cs,8\-
    s4 g''\rest}>>
    \stopStaff s2*2
    \startStaff 
    %507
    <<\relative c'{g'4\rest \hide NoteHead \noireNH \hide Stem <cs, a'>4\p
    \undo \hide Stem <c a'>4 4
    4 g'4\rest}
    \\
    \relative c'{s4  \noireNH <cs a''>4\- \hide Stem s2. g'4\rest}>>
    %510
    \stopStaff s2*19
    
    %529
    \startStaff r4 \noireNH gs4\glissando--\p 
    \magnifyMusic0.5{\naturalDown f!32} r32 r16 r8 r8.[ \slap cs,16->-.\f]
    <<\relative c' {\diamondH \override NoteHead.no-ledgers = ##t \stemDown \once \override Stem.length = #30 <e'' f>8.\-
    b,16\rest}
    \\
    \relative c' {\noireNH \hide Stem cs,8.\-\pp
    \hide Rest r16 \undo \hide Rest}>> r16 \tuplet 3/2{\slap g'16-.\p\> 16 16} r16\!
    \uN r16[ a'8.--\upbow\f_\markup{\line{"[F]"}\draw-line#'(5 . 0)}] \slap b,16-.->\mf\>[ cs16-. r8\!]
    r16 \tuplet 3/2{cs,16-.\mf\> 16-. 16-.} r16\! 
    <<\relative c'{\hide NoteHead \uN \tuplet 3/2{g'4\rest a8\upbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}}
    \tuplet 3/2{4 cs,8\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}} 16[ \undo \hide NoteHead \slap cs,16 g'8\rest]
    fs16_._>\f[ \hide NoteHead \noireNH \dalniente fs8.\<] \dalniente 8\mf\> g'8\rest\!}
    \\
    \relative c'{\hide Stem \uN \omit TupletBracket \omit TupletNumber \tuplet 3/2{s4 a'8\-}
    \omit TupletBracket \omit TupletNumber \tuplet 3/2{s4 cs,8\-} s16 \hide Rest r8. 
    r16 \undo \hide Rest \undo \hide NoteHead \noireNH fs,8.\- s8 g'\rest}>>
    \stopStaff s2*4
    
    %540
    \startStaff
    <<\relative c'{\hide NoteHead \uN 
    \tuplet 5/4{gs'4.\upbow_\markup{\line{"[S]"}\draw-line#'(5 . 0)} ds4\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}} 
    \tuplet 5/4{d8 b'4.\upbow_\markup{\line{"[g]"}\draw-line#'(5 . 0)} b,8\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}} 
    \tuplet 5/4{4 ds4.\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}} 
    \tuplet 5/4{b'4\upbow_\markup{\line{"[sh]"}\draw-line#'(5 . 0)} gs\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)} b,8\upbow_\markup{\line{"[g]"}\draw-line#'(5 . 0)}} 
    \tuplet 5/4{4 cs,4.\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}} 
    \tuplet 5/4{gs''4.\upbow_\markup{\line{"[S]"}\draw-line#'(5 . 0)} b4\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}} 
    \tuplet 5/4{4. gs,4\upbow_\markup{\line{"[g]"}\draw-line#'(5 . 0)}} 
    g4 8[ g'\rest]}
    \\
    \relative c'{\hide Stem 
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{\uN gs'4.\- ds4\-} 
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{\uN s8 b'4.\- b,8\-} 
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{\uN s4 ds4.\-} 
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{\uN b'4 gs4\- b,8\-} 
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{\uN s4 cs,4.\-} 
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{\uN gs''4.\- b4\-} 
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{\uN s4. gs,4\-} 
    s4. g'8\rest}>> \stopStaff 






}

% \relative c' {\noireNH \hide Stem c,4\-\pp
    % s8. \hide Rest r16 \undo \hide Rest }
    % \\