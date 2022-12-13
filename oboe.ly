\version "2.22.2"
\language "english"

\include "accidentals.ly"
\include "headNotes.ly"
\include "miscelaneas.ly"
\include "dinamics.ly"


oboe = \new StaffGroup = "Tamon Yashima" \with{
          instrumentName = "Oboe"
          shortInstrumentName = "Ob."
          %\RemoveAllEmptyStaves
}

<<
\set StaffGroup.systemStartDelimiter = #'SystemStartSquare
        \new Staff = "oboe" 
\relative c' {
  
    \time 2/4
    \numericTimeSignature
    \sizeTimeSig
    \fuenteTimeSig
    %m1
    R2^\markup{\teeny \box \bold{"reed OFF"}} 
    
    %m2-3
    r8 \uN \dalniente d32\<_\markup{\line{"[F]"}\draw-line#'(15 . 0)}(ds e f fs g gs a\f) r8
    r8 \uN \dalniente d,32\<_\markup{\line{"[F]"}\draw-line#'(15 . 0)}(ds e f fs g gs a\f) r8^\markup{\teeny \box \bold{"reed ON"}}
    %m4-6
    \stopStaff
    s2
    s2 %\break 
    s2 
    %m7-12
    s2*6 %\break
    \startStaff
    \noireNH <e fs c''>16\staccato\ppp[ r16 <e fs c''>16\staccato r16] r4 

    %m14-15
    \stopStaff
    s2 %\break
    s2
    % \startStaff
    % s16 \stopStaff s8. s4

    %m16
    \startStaff 
    r4 r16 dqs16-.\p r8
    %m17
    \once \override DurationLine.style = #'dashed-line b4:32\-\p r4^\markup{\teeny \box \bold {"reed OFF"}}
    \stopStaff 
    %m18-22
    s2*5 %\break

    %m23
    \startStaff
    <<\relative c{\hide NoteHead \uN fs'4\downbow^\markup{\teeny{"exhale"}}_\markup{\line{"[F]"}\draw-line#'(27 . 0)} 4 f16[ g8.\rest]}
    \\
    \relative c{ \uN \hide Stem fs'4\- s4 
    %m24
    s16 g8\rest s16 }>>
    r4 \stopStaff
    %m25
    s2*3 %\break

    %m28
    \startStaff 
    \uN f'8.[\downbow\-_\markup{\line{"[F]"}\draw-line#'(5 . 0)} r16] r4 
    %m29
     <<\relative c{\hide NoteHead a''8.\upbow^\markup{\teeny{"inhale"}}[ cs,16]\downbow 8[ d8\rest]} 
    \\
    \relative c{\hide Stem \uN a''8.\-_\markup{\line{"[F]"}\draw-line#'(5 . 0)} cs,16\-_\markup{\line{"[s]"}\draw-line#'(10 . 0)} s8 d8\rest}>>
    %m30
    r4 \lineDashed bf,16:32[\upbow\-_--\markup{\line{"[R]"}\draw-line#'(0.3 . 0)} a'8.]\downbow--\-_\markup{\line{"[F]"}\draw-line#'(10 . 0)}\stopStaff
    %31
    \hide Rest r2 \undo \hide Rest  %\break
    %32-44
    s2*8 %\break
    s2*5 %\break

    %m45
    \startStaff
    \uN  d,8.\downbow\f--\-_\markup{\line{"[F]"}\draw-line#'(7 . 0)} r16
    <<\relative c{g''8.\rest[ \hide NoteHead \uN b16\upbow]
    %46
    8. cs,16\downbow 8. g'16\rest 
    %47
    g8\rest[ g32\rest b16.\upbow] 8.[ g16\rest]
    %48
    g8.\rest[ d16\downbow] 8.[ g16\rest] }
    \\
    %45 (final part of the measure)
    \relative c{g''8\rest s16 \hide Stem \uN b16\-_\markup{\line{"[s]"}\draw-line#'(1 . 0)}
    %46
    s8. cs,16\-_\markup{\line{"[F]"}\draw-line#'(7 . 0)} s8. g'16\rest
    %m47
    g8\rest s32 b16.\-_\markup{\line{"[g]"}\draw-line#'(5 . 0)} s8. g16\rest
    %48
    g8\rest s16 d16\-_\markup{\line{"[F]"}\draw-line#'(5 . 0)} s8. g16\rest
    }>>
    %m49
    \stopStaff
    s2 %\break
    %m50
    \startStaff
    \uN f4--\downbow_\markup{\line{"[F]"}\draw-line#'(7 . 0)}\-\f \lineDashed d8:32--[\-_\markup{\line{"[R]"}\draw-line#'(7 . 0)}\upbow r8]
    %m51
    <<\relative c{ \hide NoteHead \uN d''4\upbow 16 d,8.\downbow
    %52
    8[ g\rest]}
    \\
    %m51
    \relative c{\hide Stem \uN d''4\-_\markup{\line{"[S]"}\draw-line#'(7 . 0)} s16 d,8.\-_\markup{\line{"[F]"}\draw-line#'(7 . 0)}
    %52
    s8 g\rest}>>
    r4 \stopStaff
    %53-54
    s2
    s2 %\break
    %55
    \startStaff
    <<\relative c{g''8\rest[ \hide NoteHead \uN a8\upbow] 8 32 b,16.
    %56
    8[ g'\rest]}
    \\
    %55
    \relative c{
    g''8\rest \hide Stem \uN a8\-_\markup{\line{"[S]"}\draw-line#'(7 . 0)} s8 s32 b,16.\-_\markup{\line{"[F]"}\draw-line#'(7 . 0)}
    %56 
    s8 g'\rest   
    }>>
    r4^\markup{\teeny \box \bold{"reed ON"}} \stopStaff
    %57
    s2*3 %\break
    %60
    s2*5 %\break


    %65 D
    \startStaff r4 r32 \noireNH fs8.\p\glissando \magnifyMusic0.5 f!32
    \stopStaff 
    %59
    s2^\markup{\teeny \box \bold{"reed OFF"}}
    %60-67
    s2*6 %\break
    s2*2
    \startStaff
    %75
    \uN a4\f\downbow\-_\markup{\line{"[S]"}\draw-line#'(5 . 0)} r4
    %76
    r4
    <<\relative c{\hide NoteHead \uN cs'8.\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)} b'16\downbow_\markup{\line{"[g]"}\draw-line#'(5 . 0)}
    %77
    \tuplet 3/2{ \stemDown 4  g8\rest}}
    \\
    \relative c{
      %76
      \hide Stem \uN cs'8.--\- b'16\- %\break
      %77
      \omit TupletBracket \omit TupletNumber \tuplet 3/2{s4 g8\rest }
    }>>
    r4
    %78
    <<\relative c{\hide NoteHead \uN f'8.\f\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)} d16\upbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}
    8 g\rest
    %79
    \stemDown g\rest b8\upbow_\markup{\line{"[S]"}\draw-line#'(5 . 0)} 8 g\rest}
    \\
    %78
    \relative c{\hide Stem \uN f'8.\- d16\- s8 g\rest
    %79
    g\rest b8\- s8 g\rest}>>
    %80
    \stopStaff
    s2 %\break
    %81
    \startStaff
    <<\relative c{\hide NoteHead \uN d'4_\markup{\line{"[F]"}\draw-line#'(45 . 0)} 4
    %82
    4 4
    %83
    \uN 4 8[  b'8]\upbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}
    %84
    \stemDown 16[ g8.\rest]}
    \\
    %81
    \relative c{\uN \hide Stem d'4--\- s4 
    %82
    s4 s4
    %83
    \uN s4. b'8\-
    %84
    s16 g8\rest s16 }>>
    r4
    %m85
    \stopStaff
    s2 %\break
    %86
    \startStaff
    <<\relative c{g''8\rest \hide NoteHead \uN d8\downbow_\markup{\line{"[g]"}\draw-line#'(5 . 0)} 16
    b'8.\upbow_\markup{\line{"[F]"}\draw-line#'(10 . 0)} 4 16[ g16\rest g8\rest]}
    \\
    \relative c{g''8\rest \hide Stem \uN d8\- s16 b'8.\- s4 s16 g\rest g8\rest}>>
    %88
    r8 \slap \tuplet 3/2{d,16\>-.^\markup{\teeny{"tongue ram(ricochet effect)"}}( 16-. 16-.)}
    r4\!
    \stopStaff
    %89
    s2*21

    %the following was written before (in august 2022)
    s2
    \startStaff
    <<\relative c'{\hide NoteHead \uN cs4_\markup{\line{"[F]"}\draw-line#'(41 . 0)}\mp 4 c4 4 %m2
    c4 4 4 8.[ e16\rest]}
    \\
    \relative c'{\uN cs1\- 
    s2... e16\rest}>>
    \stopStaff s2*2  %m4 
    \startStaff r4 \uN cs8.\-[  r16] 
    \stopStaff 
    s2
    \startStaff %m5
    << \relative c{ b''4\rest r8[ \hide NoteHead \uN f8] 4 4 %m6
    4 4 4 4} %m7
    \\
    \relative c{s4 \hide Stem s8 \uN f'8\- s4 s4 %m6
    s1 
    \stopStaff

    

    %code restart from here

    %123-124
    \hide Rest r2^\markup{\teeny \box \bold{"reed ON"}}}>>  
    \undo \hide Rest
    s2
    %125
    \startStaff
    <<\relative c{\hide NoteHead \noireNH g''8\rest a8 4
    %126 
    8.[ g16\rest^\markup{\teeny \box \bold{"reed OFF"}}]}
    \\
    \relative c{\hide Stem \noireNH g''8\rest aqs\- s4 
    s8. g16\rest}>> r4
    %127-132
    \stopStaff
    s2*6
    %133
    \startStaff
    <<\relative c{\hide NoteHead \uN fs'4\downbow_\markup{\line{"[F]"}\draw-line#'(7 . 0)} 16[ a8.\upbow_\markup{\line{"[g]"}\draw-line#'(7 . 0)} ]}
    \\
    \relative c{\hide Stem \uN fs'4--\- s16 a8.--\-}>>
    %134
    \stopStaff \hide Rest r2  
    %135
    \startStaff
    \undo \hide Rest
    r8 \slap \tuplet 3/2{cs16\p\>-.( ds-. e-.)} \tuplet 3/2{fs16-.( gs-. a-.)} r8\!
    %136
    <<\relative c{\hide NoteHead \uN b'4\downbow_\markup{\line{"[g]"}\draw-line#'(7 . 0)} \tuplet 3/2{8 a'4_\markup{\line{"[F]"}\draw-line#'(3 . 0)}\upbow}}
    \\
    \relative c{\hide Stem \uN b'4\- \omit TupletBracket \omit TupletNumber \tuplet 3/2{s8 a'4\-}}>>
    %137
    \stopStaff \hide Rest r2
    %138
    \startStaff
    \undo \hide Rest
    \lineDashed \uNw b,2:32\downbow\-\f_\markup{\line{"[R]"}\draw-line#'(7 . 0)}
    %139
    \stopStaff \hide Rest r2 
    %140
    s2*20
    %160
    \startStaff
    \undo \hide Rest
    <<\relative c{d'8\rest[ d32\rest \hide NoteHead \uN c16.\upbow_\markup{\line{"[F]"}\draw-line#'(7 . 0)}] 32[ d8..\rest]^\markup{\teeny \box \bold{"reed ON"}}}
    \\
    \relative c{s8 s32 \uN \hide Stem c'16.\- s32 d8\rest s16. }>>
    \stopStaff
    %161-168
    s2*8
    %169
    \startStaff
    \noireNH
    bf4--\-\pp r4
    %170
    r4 dqs8--\-\pp[ r8]
    %171
    r4 \naturalDown \lineDashed d!8:32\-\pp--[ r8]
    %172
    r4 \flatUp bf4--\-\pp
    %173
    \stopStaff \hide Rest r2
    \stopStaff
    %174-181
    s2*8
    %182
    \startStaff
    \undo \hide Rest
    <e fs c''>16[ r16 r16 aqs16] r4
    %183
    <<\relative c{\hide NoteHead \noireNH s8 \hide Stem <a'' b c' e>8 \undo \hide Stem \stemDown 8[ g8\rest]}
    \\
    \relative c{\noireNH r8[ <a'' b c' e>8]\ppp\- s8 \hide Stem  g8\rest }>>
    \stopStaff
    %184
    s2*4
    %188
    \startStaff
    r16[ dqs,8.--\p] r4 %\break
    %189
    r4 aqs'8--\p[ r8]
    %190 
    \stopStaff
    s2
    %191
    \startStaff
    <<\relative c{\hide NoteHead \noireNH r8.[ f'16] f8[ d8\rest]}
    \\
    \relative c{\hide Stem s8. \sharpDown fs'16\- s8 d8\rest}>>
    %192-219
    \stopStaff
    s2*28



    %220
    \startStaff
    <<\relative c{\hide NoteHead \noireNH  r8.[ \sharpDown fs'16] 8[ g\rest] aqs4 4 a16[ g8.\rest]}
    \\
    \relative c{\hide Stem \noireNH s8. \sharpDown fs'16\- s8 g\rest aqs4\- s4 s16 g8\rest s16}>>
    r4 
    %223
    \stopStaff
    s2*13

    %236
    \startStaff
    r4 <<\relative c{g''8\rest[ \hide NoteHead \sharpUp cs,8\ppp] c4 4 4 4 16[ d8.\rest] }
    \\
    \relative c{s8 \hide Stem \sharpUp cs'8\- s1 s16 d8\rest s16}>>
    r4^\markup{\teeny \box \bold{"reed OFF"}}
    %240
    r4 <<\relative c{g''8.\rest[ \hide NoteHead \uN a16\downbow_\markup{\line{"[F]"}\draw-line#'(7 . 0)}] 8[ g\rest]}
    \\
    \relative c{s8. \hide Stem \uN a''16\- s8 g\rest}>>
    r4 \stopStaff
    %242
    s2*6

    %248
    \startStaff
    r4 r16 \tuplet 3/2{\slap d,16-.\mf e16-. fs16-.} r16
    r8.[ fs16-.] r4
    \stopStaff s2
    \startStaff
    r8 \tuplet 3/2{r16[ cs-. r16]} \tuplet 3/2{ds16-.[ r16 f16-.]} r8
    \tuplet 3/2{r8[ b,8-. cs-.]} r4
    \stopStaff
    s2*2 
    \startStaff
    %255
    r8 r16 \tuplet 3/2{b16-.\mp cs-. ds-.} r16 r8 \pageBreak
    r4 \tuplet 3/2{bf16-.\mp c-. d-.} r8 
    r4 <<\relative c{\hide NoteHead \uN \tuplet 5/4{g''8\rest[ g16\rest a8]} 8. fs16:64_\markup{\line{"[F]"}\draw-line#'(7 . 0)} \downbow 16 d16\rest d16\rest \undo \hide NoteHead \tuplet 3/2{\slap d16-.\f e-. fs-.} \hide NoteHead \uN cs8.\downbow}
    \\
    \relative c{\hide Stem \uN \omit TupletBracket \omit TupletNumber \tuplet 5/4{ g''8\rest g16\rest a8\-_\markup{\line{"[S]"}\draw-line#'(8 . 0)} \upbow} s8. fs16\- s16 d16\rest d16\rest s8 cs8.\- }>> r4
    %260
    \stopStaff s2*2
    \startStaff %262
    <<\relative c{ \repeat unfold 2{ \hide NoteHead d'8\rest[ \uN cs8\downbow_\markup{\line{"[S]"}\draw-line#'(8 . 0)}]}}
    \\
    \relative c{\repeat unfold 2{\hide Stem \uN d'8\rest cs8\-}}>>
    %263
    <<\relative c{d'8.\rest[ cs16\downbow_\markup{\line{"[S]"}\draw-line#'(8 . 0)}] 16 d8.\rest}
    \\
    \relative c{d'8\rest s16 cs16\- s16 d8\rest s16}>>
    \stopStaff
    %264_269
    \stopStaff
    s2*6

    %270
    \startStaff
    \uN cs8--\-\upbow_\markup{\line{"[S]"}\draw-line#'(8 . 0)}[ r8] r4
    <<\relative c'{\hide NoteHead \uN g'8.\rest[ a16\downbow_\markup{\line{"[g]"}\draw-line#'(8 . 0)}] 4 
    g4\rest g8.\rest[ f16--\downbow_\markup{\line{"[F]"}\draw-line#'(8 . 0)}]
    \tuplet 3/2{8-- a4\upbow--_\markup{\line{"[sh]"}\draw-line#'(5 . 0)}}} 
    \\
    \relative c'{\hide Stem \uN g'8\rest s16 a16\- s4
    g4\rest g8\rest s16 f16\- \omit TupletBracket \omit TupletNumber \tuplet 3/2{ s8 a4\-}}>>
    r4
    \stopStaff
    
    %274-280
    s2*7

    %281
    \startStaff \uNw f2--_\markup{\line{"[g]"}\draw-line#'(8 . 0)}\-\downbow
    \stopStaff \hide Rest r2
    s2*2
    \startStaff
    \undo \hide Rest
    <<\relative c'{\hide NoteHead \uN \tuplet 3/2{ g'8\rest a4\downbow_-_\markup{\line{"[F]"}\draw-line#'(8 . 0)}} 16[ g8.\rest]}
    \\
    \relative c'{\hide Stem \uN \omit TupletBracket \omit TupletNumber \tuplet 3/2{g'8\rest a4\-} s16 g8\rest s16} >>
    r4 \tuplet 5/4{\slap d16-.\p\> e-. fs-. gs-. as-.}
    r4\! <<\relative c'{\hide NoteHead \uN g'16\rest[ d8._-\downbow_\markup{\line{"[g]"}\draw-line#'(8 . 0)}] 4 4 16[ a8._-\upbow_\markup{\line{"[F]"}\draw-line#'(8 . 0)}]}
    \\
    \relative c'{\hide Stem \uN g'16\rest d8.\- s2 s16 a8.\- }
    >>
    r4
    %290
    \stopStaff
    s2*26

    %316
    \startStaff
    <<\relative c'{\hide NoteHead \uN f4._-\downbow_\markup{\line{"[F]"}\draw-line#'(8 . 0)} \stemDown b8--\upbow_\markup{\line{"[S]"}\draw-line#'(8 . 0)}
    \tuplet 3/2{8 \stemNeutral ds,4\downbow_-} 16. cs32\upbow_\markup{\line{"[F]"}\draw-line#'(8 . 0)} 8
    \slurDown \tuplet 6/4{\dalniente c16:64\>_\markup{\line{"[R]"}\draw-line#'(8 . 0)} d16:64( e16:64 fs16:64 gs16:64 as16:64)} g4\rest\!
    g4\rest g8.\rest[ e16_-\downbow_\markup{\line{"[F]"}\draw-line#'(8 . 0)}] 4 16[ g8.\rest]
    }
    \\
    \relative c'{\hide Stem \uN f4.\- b8\- \omit TupletBracket \omit TupletNumber \tuplet 3/2{s8 ds,4\-} s16. cs32--\- s8
    \omit TupletBracket \omit TupletNumber \tuplet 6/4{s16 d16 e fs gs as} s4
    s4 s8. e16\- s4 s16 g8\rest s16}>>

    %borrar este break
    %\break
    %321
    \uN \lineDashed b,16:64\f\-\downbow_\markup{\line{"[R]"}\draw-line#'(2 . 0)}[ g'8.\rest]
    b8\-\upbow_\markup{\line{"[S]"}\draw-line#'(2 . 0)}\f[ r8]
    %322
    <<\relative c'{ \hide NoteHead \uN \stemDown b'4\upbow--_\markup{\line{"[F]"}\draw-line#'(10 . 0)} \stemNeutral b16  cs,8.\downbow_-_\markup{\line{"[F]"}\draw-line#'(8 . 0)}
    g'4\rest bf,16.:64_-_\markup{\line{"[R]"}\draw-line#'(2 . 0)}[ g32\rest g8\rest]
    g'8.\rest[ a16_-\upbow_\markup{\line{"[F]"}\draw-line#'(2 . 0)}] 8[ g8\rest]
    g4\rest g8\rest[ fs8_-_\markup{\line{"[F]"}\draw-line#'(2 . 0)}\downbow] 
    f16[ cs8:32_-\downbow_\markup{\line{"[R]"}\draw-line#'(2 . 0)} g'16\rest]}
    \\
    \relative c'{ \hide Stem \stemNeutral \uN b'4\- s16  cs,8\- s16
    g'4\rest \lineDashed bf,16\- s32 g32\rest s8
    s8. a'16\- s8 g\rest
    s4. fs8\- 
    s16 \lineDashed cs8\- g'16\rest}>>
    r4 \stopStaff 
    %327
    s2*19
    %346
    s2
    \startStaff
    <<\relative c'{g'8\rest[ \hide NoteHead \uN f8\downbow_\markup{\line{"[F]"}\draw-line#'(8 . 0)}] 4
    8[ 32 a16.\upbow_\markup{\line{"[S]"}\draw-line#'(8 . 0)}] 32[ g16.\rest g8\rest] }
    \\
    \relative c'{\hide Stem \uN s8 f8\- s4 
    s8 s32 a16.\- s32 g16\rest s32 s8}>>
    \stopStaff s2
    \startStaff 
    r4 r16[ \uN cs,8.\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}\-]
    \stopStaff \hide Rest r2^\markup{\teeny \box \bold{"reed ON"}}
    \undo \hide Rest
    s2
    \startStaff
    %353
    <<\relative c'{\hide NoteHead \noireNH \sharpUp cs4 4
    c16.[ d32\rest d8\rest] g4\rest}
    \\
    \relative c'{\hide Stem 
    \sharpUp \noireNH cs4\-\ppp s4
    s16. d32\rest s8 s4^\markup{\teeny \box \bold{"reed OFF"}}}>>
    \stopStaff s2*2
    \startStaff
    %357
    <<\relative c'{r16.[ \hide NoteHead \uN cs32\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)} 8] 8[ a'--\upbow_\markup{\line{"[S]"}\draw-line#'(5 . 0)}]
    g8\rest b,8\upbow_\markup{\line{"[g]"}\draw-line#'(5 . 0)} 8[ 32 a'16.\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}]
    \tuplet 5/4{a16[ g16\rest g16\rest fs8\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}]} \tuplet 5/4{16[ g16\rest g16\rest d8]\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}}
    \tuplet 5/4{16[ g16\rest g16\rest g16\rest d_-\upbow_\markup{\line{"[S]"}\draw-line#'(5 . 0)}]} 16[ b'8._-\p\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}]
    %361
    g4\rest g8\rest[ a_-\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}] 
    8.[ b,16_-\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}] \tuplet 5/4{b16[ g'16\rest g16\rest fs8]_\markup{\line{"[F]"}\draw-line#'(5 . 0)}}
    \tuplet 5/4{f8[ g16\rest g16\rest f16\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}]} \tuplet 5/4{8[ g16\rest g16\rest d16_\markup{\line{"[F]"}\draw-line#'(5 . 0)}]}
    8.[ g16\rest] g4\rest
    %365
    g8\rest[ b,8:32\downbow_\markup{\line{"[R]"}\draw-line#'(5 . 0)}] \tuplet 3/2{b8:32[ g'8\rest g\rest]} 
    g16\rest[ cs,8:32\upbow_\markup{\line{"[R]"}\draw-line#'(5 . 0)} g'16\rest] \tuplet 3/2{g8\rest[ g\rest cs,8:32\upbow_\markup{\line{"[R]"}\draw-line#'(5 . 0)}]}
    c16:32[ a'8.\downbow_\markup{\line{"[F]"}\draw-line#'(55 . 0)}] a4
    4 4 
    16[ g16\rest g8\rest] g4\rest^\markup{\teeny \box \bold{"reed ON"}}}
    \\
    \relative c'{\hide Stem \uN s16. cs32\- s8 s8 a'8\-
    g8\rest b,8\- s8 s32 a'16.\-
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{s16 g16\rest g16\rest fs8\-} \omit TupletBracket \omit TupletNumber \tuplet 5/4{ s16 g\rest g\rest d8\-}
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{s16 g16\rest g16\rest g16\rest d16\-} s16 b'8.\- 
    g4\rest g8\rest a8\-
    s8. b,16\- \omit TupletBracket \omit TupletNumber \tuplet 5/4{s16 g'\rest g\rest fs8\-}
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{s8 g16\rest g\rest fs16\-}
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{s8 g16\rest g\rest  d16\-}
    s8. g16\rest s4
    %365
    s8 \lineDashed b,8\- \omit TupletBracket \omit TupletNumber \tuplet3/2{ s8 g'8\rest s8}
    s16 \lineDashed cs,8\- g'16\rest \omit TupletBracket \omit TupletNumber \tuplet3/2{ s4 \lineDashed cs,8\-}
    s16 a'8.\- s4 
    s2
    s16 g16\rest s8 s4}>>
    %370
    \stopStaff s2*2
    \startStaff 
    <<\relative c'{ \hide NoteHead \tuplet 3/2{ \noireNH \sharpUp r8 cs4^\markup{\teeny{"sotto voce"}}\ppp} 4
    c4 4 
    4 8[ g'\rest^\markup{\teeny \box \bold{"reed OFF"}}]
    \stopStaff s2*3
    \startStaff 
    g4\rest \uN g16\rest[ fs8._-\downbow_\markup{\line{"[F]"}\draw-line#'(25 . 0)}]
    f8. a16_-\downbow_\markup{\line{"[g]"}\draw-line#'(5 . 0)} s16 b,8._-\upbow_\markup{\line{"[F]"}\draw-line#'(55 . 0)}
    4 4
    8.[ g'16\rest] a4_-\downbow_\markup{\line{"[F]"}\draw-line#'(20 . 0)}
    16[ g8\rest fs16_-\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}] \tuplet 3/2{4 \stemDown b8\upbow_\markup{\line{"[g]"}\draw-line#'(5 . 0)}}
    16 \undo \hide NoteHead \slap \stemNeutral \tuplet 3/2{b,16_.\f[ cs16_. ds_.]} g16\rest g4\rest
    g8.\rest fs16_.\f \hide NoteHead \uN fs4--\downbow_\markup{\line{"[F]"}\draw-line#'(40 . 0)}
    f4 16 cs8._-\downbow_\markup{\line{"[g]"}\draw-line#'(10 . 0)}
    %386
    g'4\rest g16\rest[ b,8._-\downbow_\markup{\line{"[F]"}\draw-line#'(10 . 0)}] 
    g'8\rest[ d8:32_-\downbow_\markup{\line{"[R]"}\draw-line#'(5 . 0)}] g8\rest[ d8_-\downbow_\markup{\line{"[F]"}\draw-line#'(20 . 0)}]
    8[ g8\rest] g4\rest }
    \\
    \relative c'{\hide Stem \omit TupletBracket \omit TupletNumber \tuplet 3/2{s8 \sharpUp cs4\-} s1 s8 g'8\rest
    \stopStaff s2*3
    %378
    \startStaff s4 s16 \uN fs8.\- s8. a16\- s16 b,8.\- s2 s8. g'16\rest a4\-
    %382 
    s16 g8\rest fs16\- \omit TupletBracket \omit TupletNumber \tuplet 3/2{s4 b8\-} s16 \hide Rest r8. \undo \hide Rest s4
    s4 fs4\- s4 s16 cs8.\- g'4\rest
    %386 
    s16 b,8.\-
    g'8\rest \lineDashed d\-
    g8\rest d8\- 
    s8 g8\rest g4\rest
    }>>
    %389 
    %390 
    s2
    %391
    <<\relative c'{g'8.\rest[ \hide NoteHead \uN d16:64\downbow_\markup{\line{"[R]"}\draw-line#'(8 . 0)}] d8:64[ g8\rest]}
    \\
    \relative c'{s8. \hide Stem \lineDashed \uN d16\- s8 g8\rest}>>
    \stopStaff s2*5
    %396
    \startStaff
    r4 r8.[ \uN \lineDashed b16:64\-\downbow\downbow_\markup{\line{"[R]"}\draw-line#'(2 . 0)}]
    \stopStaff \hide Rest r2 \undo \hide Rest
    
    \stopStaff s2*2
    %400
    \startStaff
    <<\relative c'{\hide NoteHead g'8\rest[ \uN b,!8:32\downbow_\markup{\line{"[R]"}\draw-line#'(10 . 0)}] b8.:32[ g'16\rest]}
    \\
    \relative c'{\hide Stem s8 \lineDashed \uN b!8\-\fff s8. g'16\rest}>>

    \stopStaff s2*7

    %408
    \startStaff
    <<\relative c'{\hide NoteHead b4:32\downbow_\markup{\line{"[R]"}\draw-line#'(10 . 0)} b4:32}
    \\
    \relative c'{\hide Stem \uN \lineDashed b4\-\fffff s4}>>
    
    
    \stopStaff
    s2*25
    % \stopStaff s2*13
    %434
    \startStaff
    \noireNH r16[ <a' b c'>16\p-. r8] r4
    <<\relative c'{g'8.\rest[ \hide NoteHead \noireNH b,16:32\mp] b8:32[ g'8\rest]}
    \\
    \relative c'{\hide Stem \noireNH s8 s16 \lineDashed b16\- s8 g'8\rest}>>
    <b ef cs'>16\f->-.[ r8.] r4
    \stopStaff s2*2
    %[14A]
    %439
    s2 
    %440
    \startStaff
    <<\relative c'{\hide NoteHead \noireNH \naturalUp f!4 4
    16[ g16\rest g8\rest]}
    \\
    \relative c'{ \hide Stem \naturalUp \noireNH f!4\- s4
    s16 g16\rest s8}>> r4
    \stopStaff
    s2*4
    %446 [27]
    \startStaff
    \blancheNH \naturalUp b!2\-\pp \stopStaff \hide Rest r2
    \undo \hide Rest \startStaff r4  <<\relative c'{ \hide NoteHead aqs'4
    a4 16[ g16\rest g8\rest]
    g4\rest g8\rest[ b8]
    4 8[ g8\rest]}
    \\
    \relative c'{\hide Stem aqs'4\-
    s4 s16 g16\rest s8
    s4. b!8\-
    s4. g8\rest}>>
    %452
    \stopStaff s2*4
    %456
    \startStaff r4 r8 \tuplet 3/2{\slap b,16->-.\p 16-. 16-.}
    r4 <<\relative c'{\hide NoteHead \uN b4\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}
    8. a'16:64\upbow_\markup{\line{"[R]"}\draw-line#'(5 . 0)} 16.:64 cs,32\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)} 8
    c8. g'16\rest}
    \\
    \relative c'{\hide Stem \uN b4\-
    s8. \lineDashed a'16\- s16. cs,32\- s8
    s8. g'16\rest}>> r4
    r4 \tuplet 5/4{\slap r16[ d-. e-. fs-. gs-.]}
    %461
    %\stopStaff
    %s2*31%^\markup{\teeny \box \bold{"reed ON"}}
    
    \stopStaff s2^\markup{\teeny \box \bold{"reed ON"}}

    %462-475
    % \startStaff 
    s2*13
    

    \stopStaff s2*17


    %492
    \startStaff
    <<\relative c'{\hide NoteHead b4\p 16[ g'16\rest g8\rest]
    \stopStaff s2*3 
    \startStaff \uN d4 8.[ g16\rest]
    g4\rest g8\rest \undo \hide NoteHead \tuplet 3/2{\slap d16_.\f e_. fs_.}
    \hide NoteHead \uN fs4\downbow_-_\markup{\line{"[F]"}\draw-line#'(5 . 0)} \tuplet 3/2{4 a8\upbow--_\markup{\line{"[S]"}\draw-line#'(5 . 0)}}
    8[ g8\rest] \undo \hide NoteHead \tuplet 3/2{\slap cs,16_.\f ds_. f_.} g8\rest}
    \\
    \relative c'{\hide Stem \noireNH \naturalUp b!4\- s16 g'16\rest s8
    \stopStaff s2*3
    \startStaff \uN d4\- s8. g16\rest
    s2
    fs4\- \omit TupletBracket \omit TupletNumber \tuplet 3/2{s4 a8\-}
    s8 g8\rest s4}>>
    %500
    \stopStaff s2*7
    %507
    \startStaff r4 <<\relative c'{\hide NoteHead \noireNH \naturalUp f!4
    4 4 
    4 g4\rest}
    \\
    \relative c'{\hide Stem \noireNH \naturalUp f!4\- s2. g4\rest}>>
    %510
    \stopStaff s2*19
    \startStaff r4 \tuplet 6/4{\slap c,16-.\f d-. e-. fs-. gs-. as-.}
    \tuplet 5/4{cs,16-. ds-. f-. g-. a-.} <<\relative c'{\hide NoteHead \uN \stemDown g'16\rest[ b8.\upbow_\markup{\line{"[sh]"}\draw-line#'(5 . 0)}]\mf--
    \tuplet 3/2{8 \stemNeutral cs,4\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}} 8[ fs8:32\downbow_\markup{\line{"[R]"}\draw-line#'(5 . 0)}]
    f8:32 \undo \hide NoteHead \slap \tuplet 3/2{b,16_. cs_. ds_.} \tuplet 3/2{f16_.[ g_. b16\rest]}
    g8\rest g4\rest g16\rest[ \hide NoteHead \uN b,8.\downbow_-_\markup{\line{"[F]"}\draw-line#'(5 . 0)}] 
    16 a'8.\upbow_\markup{\line{"[S]"}\draw-line#'(5 . 0)} 16 \undo \hide NoteHead \slap \tuplet 3/2{b,16-.\f cs-. ds-.} g16\rest
    \hide NoteHead \uN e4_-\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)} 4
    a4\upbow_-_\markup{\line{"[S]"}\draw-line#'(5 . 0)} cs,8:32\downbow_-_\markup{\line{"[R]"}\draw-line#'(5 . 0)}[ g'8\rest]
    \stopStaff s2*3 
    %540 [30]
    \startStaff cs,4_-\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)} a'4_-\downbow_\markup{\line{"[S]"}\draw-line#'(5 . 0)}
    8.[ fs16\upbow_\markup{\line{"[g]"}\draw-line#'(5 . 0)}] 4
    \tuplet 3/2{f4 b,8\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}} 4
    8[ a'\upbow_\markup{\line{"[sh]"}\draw-line#'(5 . 0)}] 8.[ fs16\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}]
    \tuplet 3/2{f2 cs4_-\upbow_\markup{\line{"[g]"}\draw-line#'(5 . 0)}}
    \tuplet 3/2{c4 b8:32_-\downbow_\markup{\line{"[R]"}\draw-line#'(5 . 0)}} b8.:32[ a'16_-\upbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}]
    4 8.[ fs16_-\downbow_\markup{\line{"[g]"}\draw-line#'(5 . 0)}]
    f4 8[ g8\rest]}
    \\
    \relative c'{s16 \hide Stem \uN b'8\- s16 
    \omit TupletBracket \omit TupletNumber \tuplet 3/2{s8 cs,4\-}
    s8 \lineDashed fs8\-
    s8 \hide Rest r8 r4 \undo \hide Rest
    s4 s16 b,8.\-
    s16 a'8.\- s16 \hide Rest r8. \undo \hide Rest
    e4\- s4 
    a4\- \lineDashed cs,8\- g'8\rest
    \stopStaff s2*3
    \startStaff 
    cs,4\- a'\-
    s8. fs16\- s4
    \omit TupletBracket \omit TupletNumber \tuplet 3/2{s4 b,8\-} s4 
    s8 a'8\- s8. fs16\-
    \tuplet 3/2{s2 cs4\-}
    \omit TupletBracket \omit TupletNumber \tuplet 3/2{s4 \lineDashed b8\-} s8. a'16\-
    s4 s8. fs16\-
    s4. g8\rest }>>
 

}
\new Staff = "overDrivePedal" \with{
  \remove "Time_signature_engraver"
  \RemoveAllEmptyStaves
  \magnifyStaff #2/3
  firstClef = ##f
}
\relative c'{
  \time 2/4
  \numericTimeSignature
  \override Staff.StaffSymbol.line-count = #1
   \override NoteHead.no-ledgers = ##t 
   
   %m1
  \startStaff
  R2^\markup{\box \teeny \bold{"Over Drive"}} 
  \repeat unfold 2{<<\relative c''{\hide NoteHead \uN b8\rest[ b8] \uNw 16-.[ b8.\rest]}
  \\
  \relative c''{\hide Stem \uN s8 b8\- \uNw 16 b16\rest s8 }>> }
  \stopStaff 
  s2*19
  \startStaff
  r4 r16[ \uN b'8.\-]
  \uNw 16-.[ r8.] r4 \stopStaff
  s2*3
  %28
  \startStaff
  \repeat unfold 2{\uN b8.\-[ \uNw 16] r4}
  \stopStaff %30
  s2*15
  %45
  \startStaff 
  \uN b8.[\- \uNw 16-.] r4
  %46
  <<\relative c''{b8.\rest[ \hide NoteHead b16] 8[ \uNw 16-. b16\rest] 
  b8\rest[ b32\rest \uN b16.] 16[ \uNw 16-. b8\rest]
  s4 b8. 16-.
  \stopStaff s2*2
  \startStaff  b4\rest b16\rest[ \uN b8.]
  8 \uNw b16-. s16 s4}
  \\
  \relative c''{s8. \hide Stem \uN b16\- s8 \uNw 16 b8\rest
  s16 s32 \uN b16.\- s16 \uNw b16 b8\rest
  b4\rest \uN b8.\-[ \uNw 16] \stopStaff 
  s2*2 
  \startStaff b4\rest b16\rest \uN b8.\-
  s8 \uNw b16 b16\rest b4\rest}>> 
  \stopStaff s2*2 %53-54
  %55
  \startStaff
  r4 r8[ r32 \uN b16.\-] 
  \uNw 16-.[ r8.] r4 \stopStaff 
  s2*18
  \startStaff 
  r8[ \uN b8\-] \uNw b16[ r8.]
  r4 \uN b8.\-[ \uNw 16-.]
  \stopStaff s2 %77
  \startStaff \uN b8.\-[ \uNw 16-.] r4
  <<\relative c''{\hide NoteHead \uN b8\rest[ b8] 8[ 16-. b16\rest]}
  \\
  \relative c''{\hide Stem \uN s8 b8\- s8 \uNw 16 b16\rest}>>%78
  \stopStaff s2*3
  \startStaff %83
  r4 r8[ \uN b8\-] 
  \uNw 16-.[ r8.] r4
  \stopStaff s2*2
  \startStaff <<\relative c''{\hide NoteHead \uN \tuplet 3/2{b8\rest[ b8\rest \uN b8]} 16[ 16 b8\rest]}
  \\\relative c''{\hide Stem \uN \omit TupletBracket \omit TupletNumber \tuplet 3/2{s4 \uN b8\-} s16 \uNw 16 b8\rest}>>
  \stopStaff s2*26
  \startStaff %114
  r4 \uN b8.\-[ \uNw16-.] \stopStaff s2*2 \startStaff
  %115
  r4 \uN b8.\-[ \uNw16-.] \stopStaff 
  s2*4
  \startStaff r4 \uN b4\-
  \uNw16-.[ r8.] r4 \stopStaff
  %124
  s2*9
  \startStaff 
  %133
  <<\relative c''{\hide NoteHead b8\rest[ \uN b8] 16[ 16-. b8\rest]}
  \\
  \relative c''{\hide Stem \uN s8 b8\- s16 \uNw 16 b8\rest}>>
  \stopStaff s2*2
  \startStaff %136
  \uN b4\- \uNw b16-.[ r8.]
  %137 
  \stopStaff s2*23
  %160
  \startStaff 
  r8[r32 \uN b16.\-] \uNw b32[ r32 r16 r8] \stopStaff 
  s2*28 \startStaff
  %189
  r4 \uN b8\-[ \uNw 16-. r16] \stopStaff 
  s2
  \startStaff 
  %191
  <<\relative c''{\hide NoteHead b8.\rest[ b16] 8[ 16-. b16\rest]}
  \\
  \relative c''{\hide Stem s8. \uN b16\- s8 \uNw 16 b16\rest}>> \stopStaff 
  s2*28
  \startStaff
  %220
  <<\relative c''{\hide NoteHead b8.\rest[ b16] 8[ 16-. b16\rest]
  r4 \tuplet 3/2{b8\rest b4}
  16[ b16-. b8\rest] b4\rest}
  \\
  \relative c''{\hide Stem s8. \uN b16\- s8 \uNw 16 b16\rest
  s4 \omit TupletBracket \omit TupletNumber \tuplet 3/2{s8 \uN b4\-} s16 \uNw16 b8\rest}>> \stopStaff 
  s2*15
  \startStaff
  %238
  r4 r8[ \uN b8\-]
  \uNw b16-.[ r8.] r4
  <<\relative c''{\hide NoteHead b4\rest b8.\rest[ b16]
  8[ \uNw 16-. b16\rest]}
  \\
  \relative c''{\hide Stem \uN s4.. b16\- s8 \uNw b16 b16\rest}>> r4 \stopStaff 
  s2*15
  \startStaff <<\relative c''{\hide NoteHead g4\rest \tuplet 5/4{b8\rest[ b16\rest b8]}
  b8[ b16-. b16\rest]}
  \\
  \relative c''{\hide Stem s4 \omit TupletBracket \omit TupletNumber \tuplet 5/4{s8. \uN b8\-} s8 \uNw 16 b16\rest}>> r4
  \stopStaff s2*3
  \startStaff 
  %262 
  r8[ \uN b8\-] \uNw 16-.[ r16 \uN b8\-]
  <<\relative c''{\hide NoteHead b16-.[ b8\rest \uN b16]
  16 16-. b8\rest}
  \\
  \relative c''{\hide Stem \uNw 16 b8\rest \uN 16\-
  s16 \uNw 16 b8\rest}>> \stopStaff s2*7
  \startStaff 
  <<\relative c''{\hide NoteHead b8.\rest[ b16] 16[ 16-. b8\rest]
  b4\rest b8.\rest[ b16]
  \tuplet 3/2{8 \uN 16-. b16\rest b8\rest}}
  \\
  \relative c''{\hide Stem s8. \uN b16\- s16 \uNw 16 b8\rest
  s4.. \uN b16
  \omit TupletBracket \omit TupletNumber \tuplet3/2{s8 \uNw16 b16\rest b8\rest}}>> r4 \stopStaff 
  s2*7 \startStaff
  %281
  r4 \uN b8.\-[ \uNw 16] \stopStaff s2*6
  %288
  \startStaff <<\relative c''{\hide NoteHead g4\rest g8\rest[ g32\rest b16.]
  16[ 16-. g8\rest] g4\rest \stopStaff s2*27
  \startStaff %317
  g4\rest g16.\rest[ \uN b32 8]
  \uNw 16-.[ g16\rest g8\rest] g4\rest
  g4\rest g8\rest[ g16\rest \uN b16]
  4 \uNw 16-.[ g16\rest g8\rest]
  \stopStaff s2
  \startStaff
  b4 32[ 32-. g16\rest g8\rest]
  \stopStaff s2
  \startStaff g8\rest[ s16 \uN b16] 8[ \uNw 16-. g16\rest]
  g4\rest g8\rest[ \uN b8]
  16[ \uNw 16-. g8\rest] g4\rest
  }
  \\
  \relative c''{\hide Stem s4 s8 s32 \uN b16.\-
  s16 \uNw16 b8\rest b4\rest \stopStaff s2*27
  \startStaff %317
  b4\rest b16.\rest \uN b32\- s8
  \uNw 16 b16\rest s4.
  s4.. \uN b16\- 
  s4 \uNw 16 b16\rest s8
  \stopStaff s2
  \startStaff
  \uN b4\- s32[ \uNw 32-. b16\rest b8\rest]
  \stopStaff s2
  \startStaff b8.\rest[ \uN b16\-] s8[ \uNw 16-. b16\rest]
  b4\rest b8\rest[ \uN b8\-]
  s16[ \uNw 16-. b8\rest] b4\rest
  }>> \stopStaff s2*21
  \startStaff r8[ r32 \uN b16.] \uNw b32-.[ r16. r8]
  \stopStaff s2
  \startStaff r4 r16[ \uN b8 \uNw 16-.] \stopStaff s2*2
  %353
  \startStaff <<\relative c''{\hide NoteHead b4\rest b16\rest[ \uN b8.]
  16.[ \uNw b32 b8\rest ] b4\rest 
  \stopStaff s2*2
  \startStaff
  b16.\rest[ \uN b32 8]
  16[ \uNw 16-. b8\rest]
  b4\rest b8\rest[ b32\rest \uN b16.]
  16[ \uNw b16-. b8\rest] b4\rest
  \stopStaff s2*2
  b8\rest[ b16\rest \uN 16] 16[ \uNw 16-. g8\rest]
  \stopStaff s2
  \startStaff \uN b8.[ \uNw b16-.] b4\rest
  b8\rest[ \uN b8] \tuplet 3/2{8[ \uNw 8-. b8\rest]}
  \stopStaff s2 \startStaff 
  b16\rest[ \uN b8.] \uNw b16[ b16\rest b8\rest]
  \stopStaff s2*5 \startStaff 
  b4\rest b16.\rest[ \uN b32 8] \uNw32[ b16.\rest \uN b8] 8[ \uNw 16-. b16\rest]
  \stopStaff s2*3 \startStaff
  b4\rest b16\rest[ \uN b8.]
  \uNw b16-.[ b16\rest b16\rest \uN b16] \uNw b16-.[ b8.\rest]
  b4\rest b8\rest[ b16. \uN b32] 
  b8.[ \uNw 16-.] b4\rest
  \stopStaff s2*3 \startStaff
  b4\rest b16\rest[ \uN b8.]
  \uNw 16-.[ b16\rest b8\rest] b16\rest[ b8.]
  \uNw b16-.[ b16\rest b8\rest] b8\rest[ \uN b8]
  8[ \uNw 16-. b16\rest] b4\rest}
  \\
  \relative c''{\hide Stem s4 s16 \uN b8.\- 
  s16. \uNw b32 g8\rest s4
  \stopStaff s2*2
  \startStaff
  b16.\rest[ \uN b32\- s8]
  s16[ \uNw 16-. b8\rest]
  b4\rest b8\rest[ b32\rest \uN b16.\-]
  s16[ \uNw b16-. b8\rest] b4\rest
  \stopStaff s2*2 \startStaff
  b8\rest[ b16\rest \uN 16\-] s16[ \uNw 16-. g8\rest]
  \stopStaff s2
  \startStaff \uN b8.\-[ \uNw b16-.] b4\rest
  b8\rest[ \uN b8\-] \omit TupletBracket \omit TupletNumber \tuplet 3/2{s8 \uNw 8-. b8\rest}
  \stopStaff s2 \startStaff 
  b16\rest[ \uN b8.\-] \uNw b16[ b16\rest b8\rest]
  \stopStaff s2*5 \startStaff 
  b4\rest b16.\rest[ \uN b32\- s8] \uNw32[ b16.\rest \uN b8\-] s8[ \uNw 16-. b16\rest]
  \stopStaff s2*3 \startStaff
  b4\rest b16\rest[ \uN b8.\-]
  \uNw b16-.[ b16\rest b16\rest \uN b16\-] \uNw b16-.[ b8.\rest]
  b4\rest b8\rest[ b16.\rest \uN b32\-] 
  s8.[ \uNw 16-.] b4\rest
  \stopStaff s2*3 \startStaff
  b4\rest b16\rest[ \uN b8.\-]
  \uNw 16-.[ b16\rest b8\rest] b16\rest[ \uN b8.\-]
  \uNw b16-.[ b16\rest b8\rest] b8\rest[ \uN b8\-]
  s8[ \uNw 16-. b16\rest] b4\rest }>>
  \stopStaff %389
  s2*7 \startStaff
  %396
  r4 r8.[ \uN 16\-] 
  %397
  \uNw 16-.[ r16 r8] r4 \stopStaff s2*2
  %400
  \startStaff
  <<\relative c''{b8\rest[ \hide NoteHead \uN b8] 8.[ \uNw 16-.] \stopStaff s2*7
  %408
  \startStaff \uN b4 4
  \uNw 16-.[ b16\rest b8\rest]}
  \\
  \relative c''{\hide Stem s8 \uN b8\- s8. \uNw 16 \stopStaff s2*7
  %408
  \startStaff \uN b4\- s4
  \uNw 16-. b16\rest b8\rest}>> r4
  \stopStaff %410

  
  s2*30
  %440
  \startStaff
  <<\relative c''{\hide NoteHead \uN b4 4
  \uNw 16-.[ b16\rest b8\rest] b4\rest
  %442
  \stopStaff s2*16
  %458
  \startStaff b8\rest[ b16\rest \uN b16] b16.[ \uNw 32-. b8\rest]
  %459 
  \stopStaff s2*33 \startStaff 
  %492 
  \uN b4\- 16[ \uNw b16 b8\rest]}
  \\
  \relative c''{\hide Stem \uN b4\- s4
  \uNw 16-. b16\rest s8 b4\rest
  %442
  \stopStaff s2*16
  %458
  \startStaff b8\rest b16\rest \uN b16\- s16. \uNw 32 b8\rest
  %459 
  \stopStaff s2*33 
  %492
  \startStaff \uN b4\-
  s16 \uNw b16 b8\rest }>> \stopStaff s2*3
  \startStaff
  r4 r16[ \uN b8\- \uNw 16-.] 
  \stopStaff s2 
  \startStaff r4 \tuplet 3/2{\uN b4\- \uNw 8-.}
  \stopStaff s2*34
  %533
  \startStaff
  <<\relative c''{\hide NoteHead b4\rest b16\rest[ b8.] 
  16[ \uNw 16-. b8\rest] b4\rest}
  \\
  \relative c''{\hide Stem s4 s16 \uN b8\- s16 
  s16 \uNw b16 b8\rest s4}>>
  r4 r16[ \uN b8.\-] 
  \uNw b16-.[ r16 r8] r4 
  \stopStaff

  

  



  %m4-6
  % s2*3 %\break

  
  % s1 %m2
  % s2. \startStaff \stemUp \uN b'8. \uNw 16 %m3
  % \stopStaff 
  % s1 %m4,5
  % s4 \startStaff \uN b8. \uNw 16 \stopStaff  s2 %6
  
 
}
>>
%\score {\oboe}

\layout {

        indent = 3.0 \cm 
        short-indent = 1.5 \cm
        \context{
          \Voice
          \consists "Duration_line_engraver"

          \override NoteHead.duration-log = 2
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