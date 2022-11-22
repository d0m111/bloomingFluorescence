\version "2.22.2"
\language "english"

\include "accidentals.ly"
\include "headNotes.ly"
\include "miscelaneas.ly"
\include "dinamics.ly"


%to print in the console the possibilities for diagram notation
%#(print-keys-verbose 'bass-clarinet (current-error-port))

bassFlute = \new Staff = "Dimitri" \with{
          instrumentName = "Bass Flute"
          shortInstrumentName = "B.Fl."
          %\RemoveAllEmptyStaves
          
          }
% \new StaffGroup = "Dimitri" \with{
%           instrumentName = "Bass Flute"
%           shortInstrumentName = "B.Fl."
%           }
% << 
% \set StaffGroup.systemStartDelimiter = #'SystemStartSquare
% \new Staff = "Dimitri" 
\relative c{

    


    \time 2/4
    \numericTimeSignature
    \fuenteTimeSig
    \sizeTimeSig
    \tempo 4=69
    \set Score.markFormatter = #format-mark-box-alphabet

    R2 \mark A %m1
    %m2-3
    \repeat unfold 2{
      <<\relative c' {s8 \hide NoteHead \stemNeutral \dalniente \uN c8:32\downbow_\markup{\line{"[R]"}\draw-line#'(18 . 0)}^\markup{\teeny{"exhale"}}\< 16:32[ \dalniente 8:32\mp\> g'16\rest\!] }
    \\
    \relative c' {\hide Stem g'8\rest \uN \once \override DurationLine.style = #'dashed-line c,8\- s8. g'16\rest}>>
    }
    %m4-12
    \stopStaff
    s2*9 %\break

    %m13
    \startStaff
    <<\relative c{\hide NoteHead \slap \tuplet 3/2{b''16-.^\markup{\teeny {"tongue ram (ricochet effect)"}} 16-. 16-.} cs,16_>_.[ cs16]\downbow cs8 b'8\upbow 
    %m14
    b16[ g16\rest g8\rest] s4
    }
    \\
    \relative c{ \autoBeamOff
      \mark B \slap b''8-.->  \hide Stem cs,16 \uN cs16_\markup{\line{"[F]"}\draw-line#'(10 . 0)}\mp\- s8 b'8_\markup{\line{"[S]"}\draw-line#'(10 . 0)}\fff^\markup{\teeny{"inhale"}}\-
      %m14
      s16 g16\rest g8\rest g4\rest
    }>>
    
    %m15
    \stopStaff
    s2

    %m16
    \startStaff
    r4 r16 \uN d'8.\-\upbow\f_\markup{\line{"[F]"}\draw-line#'(10 . 0)}
    %m17
    \noireNH \once \override DurationLine.style = #'dashed-line <c'? cs>4:32\-\mf r4 %break

    %18-23
    \stopStaff
    s2*5 \mark "C"

    s2 
    %m24
    \startStaff
    r16[ \dalniente fs,8.\-]\< r4\pp
    %m25
    r16 \uN \dalniente b8.\-\<\upbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)} r4\f \stopStaff

    %m26-27
    s2*2

    %m28
    \startStaff
    <<\relative c{ \hide NoteHead r8[ r16 \uN a''16\upbow] \tuplet 3/2{a8 c,4:32\downbow}
    %m29
    c16:32[ g'16\rest g8\rest]
    }
    \\
    \relative c{s8. \hide Stem \uN a''16\f\-_\markup{\line{"[F]"}\draw-line#'(2.5 . 0)} \omit TupletNumber \tuplet 3/2{ s8 \lineDashed c,4\-_\markup{\line{"[R]"}\draw-line#'(15 . 0)}} 
    %m29
    s16 g'16\rest g8\rest }>>
    \slap \tuplet 3/2{\dalniente d,16\mf\>-.( 16-. 16-.)} r8\!
    %30
    r4 \tuplet 6/4{\dalniente d16-.\p\> e-. fs-. gs-. as-. c-.\! } \stopStaff 

    %m31-44
    s2*14

    %45
    \startStaff
    <<\relative c{\hide NoteHead \uN \tuplet 3/2{g''8\rest[ g8\rest b8\upbow]} 16 d,8.\downbow
    %46
    8 cs8:32\downbow 8.:32 fs16\upbow
    %47
    f8[ g\rest] g8\rest[ d8:32\downbow]
    %48
    16[ g8.\rest] g8.\rest[
    \noireNH \naturalUp f16]
    %49
    8[ 16_._> g\rest]}
    \\
    \relative c{
      %45
      \mark D \hide Stem \omit TupletBracket \omit TupletNumber \tuplet 3/2{g''8\rest g8\rest \uN b8\-_\markup{\line{"[S]"}\draw-line#'(4 . 0)}} s16 d,8.\-_\markup{\line{"[F]"}\draw-line#'(7 . 0)}
      %46
      s8 \lineDashed cs8\-_\markup{\line{"[R]"}\draw-line#'(5 . 0)} s8. fs16\-_\markup{\line{"[F]"}\draw-line#'(5 . 0)}
      %47
      s8 g\rest g\rest \lineDashed d8\-_\markup{\line{"[R]"}\draw-line#'(13 . 0)}
      %48
      s16 g8\rest s16 g8\rest s16 \noireNH \naturalUp \dalniente f!16\-\<
      %49
      s8 s16\f g\rest 
    }>> r4
    %50
    \uN b8\upbow_\markup{\line{"[S]"}\draw-line#'(5 . 0)}[ r8] r16[ \noireNH \dalniente fqs8.\<\-] 
    %51
    \stopStaff \hide Rest r2\pp
    %52
    \startStaff \undo \hide Rest
    r16 \tuplet 3/2{ \slap d16-.\f\>( d16-. d16-.)} r16\! r16[ \uN \dalniente a'8.\-\<]
    %53
    r4\mp r8[ r32 \noireNH \dalniente bf16\p\>]\glissando \grace \hide Stem \parenthesize \magnifyMusic0.5{a32\!}
    %54-56
    \stopStaff
    s2*3 
    \startStaff
    %57
    \undo \hide Stem \slap \tuplet 3/2{b16-.\f\>( b16-. b16-.)} r8\! r4
    %58
    \stopStaff
    s2*7

    %65
    \startStaff
    \mark E r4 r32 \slap fs-.\f\>( 32-. 32-.) r8\!
    %m66
    \stopStaff 
    s2*9
    %75
    \startStaff
    \uN b4\-\upbow\f_\markup{\line{"[S]"}\draw-line#'(5 . 0)} r4
    \stopStaff
    %m76
    s2
    %77
    \startStaff
    <<\relative c{\hide NoteHead \uN g''8\rest[ d8:32\upbow] 16[ b'8\upbow c16\rest]}
    \\
    \relative c{\hide Stem \uN g''8\rest \lineDashed d\-_\markup{\line{"[R]"}\draw-line#'(3 . 0)} s16 b'8\-_\markup{\line{"[S]"}\draw-line#'(5 . 0)} c16\rest }
    >>
    %78
    r4 r16[ a8.--\-\upbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}]
    %79
    \tuplet 3/2 {c,4\-\downbow_\markup{\line{"[g]"}\draw-line#'(3 . 0)} r8} r4
    %80
    r16 \tuplet 3/2 {\slap ds16\mf\>-.( 16-. 16-.)} r16\!
    <<\relative c{\hide NoteHead \uN g''8\rest[ b8\upbow]
    %81
    16[ g8\rest s16]}
    \\
    \relative c{\hide Stem \uN g''8\rest b\f\-_\markup{\line{"[S]"}\draw-line#'(5 . 0)}
    s16 g8.\rest }>>
    r4
    %82-83
    \stopStaff
    s2*2
    %84
    \startStaff
    \uN \lineDashed fs8.:32\mf\-_\markup{\line{"[R]"}\draw-line#'(5 . 0)}[ r16] r4
    %85
    \noireNH \lineDashed a''8:32\-\flageolet\p[ r8] r4
    %86
    r4 <<\relative c{\hide NoteHead \uN \tuplet 3/2{d''8\rest[ d\rest b8\upbow]}
    %87
    16[ d,8.:32]\downbow}
    \\
    %86
    \relative c{
      \hide Stem \uN \omit TupletNumber \omit TupletBracket \tuplet 3/2{d''8\rest d\rest b8\-\mf_\markup{\line{"[F]"}\draw-line#'(1.5 . 0)}}
      %87
      s16 d,8.\-_\markup{\line{"[R]"}\draw-line#'(3 . 0)}
    }>> r4
    %88
    r8 \tuplet 3/2{\xH r16[ g,,16-.\f e-.] } r4 \stopStaff
    %89-124
    s2*21
    %110
    s2 \mark F
    %\stopStaff


    %the following lines where written in begining, thats the reason why the measures numbers are low
    s2*3%m2
    \startStaff
    r4 r8. << \relative c{\hide NoteHead \stemNeutral \uN b''16--_\markup{\line{"[F]"}\draw-line #'(3 . 0)}  %m3
    16 cs,8._---_\markup{\line{"[F]"}\draw-line #'(8 . 0)} 16[ e8.\rest] s4. f8
    4 16[ g8.\rest] } %m4
    \\
    \relative c{\hide Stem \uN b''16\f\- ^\upbow %m3
    s16 cs,8.\- ^\downbow s16 e8\rest s16 g4\rest g8\rest[ fs8\-] %m4
    s4 s16 g8\rest s16 }>> 
    r16[ \noireNH \dalniente c'8.\p\>] \glissando \glissandoSkipOn b8[ \glissandoSkipOff \undo \hide NoteHead \naturalDown a!16\! r16] %m5
    r4 r16[ \naturalUp \dalniente e'!8.\<\-] \stopStaff \hide Rest r2\p %m6
    \stopStaff s2*2
    \startStaff
    \undo \hide Rest
    <<\relative c{\hide NoteHead \blancheNH \stemDown <c''! cs>2:32 c4:32 g\rest }
    \\
    \relative c{\hide Stem \blancheNH \lineDashed <c''! cs>2\-\pp\-^\markup{\teeny {"fr."}} s4 g\rest}>>

    %the continuity restart from here----

    %125
    \startStaff
    <<\relative c{g''8\rest \hide NoteHead \stemDown \noireNH \naturalUp b'!8\p 4
    %126
    8.[ g16\rest]}
    \\
    \relative c{g''8\rest \hide Stem \noireNH b'8\- s4
    %126
    s8. g16\rest}>>
    r4
    \stopStaff 
    %127
    s2*6
    %133
    \startStaff \mark G
    \noireNH a8..\flageolet\glissando \magnifyMusic0.5{gf32}
    <<\relative c{\hide NoteHead \uN \tuplet 3/2{g''8\rest cs,4_-\downbow}
    %134
    c16[ a'8.\upbow_-] 16[ g8.\rest]}
    \\
    \relative c{\hide Stem \uN \omit TupletBracket \omit TupletNumber \tuplet 3/2{g''8\rest cs,4\-_\markup{\line{"[F]"}\draw-line#'(3 . 0)}}
    %134
    s16 a'8.\-_\markup{\line{"[S]"}\draw-line#'(3 . 0)} s16 g8\rest s16}>>
    %135
    r16 \slap \tuplet 3/2{d,16-.\p\>( e fs)} r16\! r4
    %136
    r4 \tuplet 3/2{fs16-.\p\>( 16-. 16-.)} r8\!
    %137
    \noireNH  <b' cs>4\p\- r4
    %138
    \blancheNH \lineDashed<c,! cs>2:32\pp\- 
    %139
     \stopStaff \hide Rest r2
    %140-159
    s2*18 \mark H
    s2*2 
    %160
    \startStaff
    \undo \hide Rest
    r4 \uN \tuplet 6/4{ \dalniente c,16\>\pp\downbow_\markup{\line{"[F]"}\draw-line#'(7 . 0)}( d e fs gs as)}
    %161
    \stopStaff
    s2\!
    %162-168
    s2*6
    s2 \mark "I" 
    %169
    \startStaff
    \noireNH b''4\-\flageolet\ppp r4
    %170
    r4 \uN b,,8:32\downbow\f_\markup{\line{"[R]"}\draw-line#'(5 . 0)}[ r8]
    %171
    r4 \noireNH a''8\-\ppp\flageolet[ r8]
    %172-173
    r4 <<\relative c{\hide NoteHead \uN ds'4:32\upbow\f_\markup{\line{"[R]"}\draw-line#'(7 . 0)} d16:32[ a'8.\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}]}
    \\
    \relative c{\hide Stem \uN \lineDashed ds'4\- s16 as'8.\- g4\rest}>>
    \stopStaff
    %174-178
    s2*5 \mark J
    %179
    \startStaff
    <<
    \relative c{\hide NoteHead \blancheNH \stemDown <c'' cs>2:32 c2:32 2:32 16:64[ g16\rest] \uN \stemUp  d8\upbow}
    \\
    \relative c{\hide Stem \blancheNH \lineDashed <c''! cs>2\- s2 s2 s16 g16\rest \uN d8\-}>>
    r4
    %183
    <<\relative c{\hide NoteHead \noireNH \stemDown r8[ a''''8\mf\flageolet] 8\flageolet[ g,,16\rest \undo \hide NoteHead \xH b32-.\f a-.]}
    \\
    \relative c{\hide Stem \noireNH s8 a''''8\- s8 g,,16\rest s16}>>
    %184
    \xH \tuplet 3/2{af,,16-. g-. f-.} 
    <<
    \relative c{ \xH e'16-. \hide NoteHead \uN d16\f\upbow_-_\markup{\line{"[F]"}\draw-line#'(7 . 0)} 4 e16.[ g32\rest r8]}
    \\
    \relative c{\hide Stem \uN s16 d'16\- s4 s16 s32 g32\rest s8 }>>
    r4
    %186
    \stopStaff
    s2
    %187-188
    \startStaff
    r4 <<\relative c{\hide NoteHead \uN r8[ f'8\upbow\f_\markup{\line{"[g]"}\draw-line#'(7 . 0)}] 16[ g\rest r8]}
    \\
    \relative c{\hide Stem \uN s8 f'8\- s16 g\rest s8}>>
    \tuplet 3/2{r8[ r8 \uN b->\fff\upbow\-_\markup{\line{"[sh]"}\draw-line#'(1.5 . 0)}]}
    %189
    r4 \slap \tuplet 3/2{cs,16-.( 16-. 16-.)} r8
    %190-191
    <<
    \relative c{\hide NoteHead \uN r16[ e'8:32\upbow_\markup{\line{"[R]"}\draw-line#'(2 . 0)} c16\downbow_\markup{\line{"[g]"}\draw-line#'(7 . 0)}] 8. bf'16\upbow_\markup{\line{"[sh]"}\draw-line#'(7 . 0)} b8.[ g16\rest]}
    \\
    \relative c{\hide Stem \uN s16 \lineDashed e'8\- c16\- s8. bf'16\- s8. g16\rest}>> r4
   
    %192-219
    \stopStaff
    s2*28 \mark K



    %220

    \startStaff
    <<\relative c{\hide NoteHead \uN g''8.\rest[ a16:32\downbow\f_\markup{\line{"[R]"}\draw-line#'(6 . 0)}] a8:32[ g8\rest]}
    \\
    \relative c{\hide Stem \uN s8. a''16\- s8 g\rest}>>
    %221
    \stopStaff
    s2
    %222
    \startStaff
    <<\relative c{\hide NoteHead \uN a''4\upbow\f_\markup{\line{"[g]"}\draw-line#'(13 . 0)} 16.[ g32\rest g8\rest] }
    \\
    \relative c{\hide Stem \uN a''4\- s16. g32\rest s8}>>

    %223
    \stopStaff
    s2*13 \mark L

    %236-239
    \startStaff
    r4 <<\relative c{\stemDown g''8\rest[ \hide NoteHead \noireNH  <c! cs>8:32] \repeat unfold 4{c4:32} c16:64[ g8.\rest]}
    \\
    \relative c{s8 \hide Stem \noireNH \lineDashed <c''! cs>8\p\- s2 s2 s16 g8\rest s16}>>
    r4
    %240
    r4 <<\relative c{g''8\rest[ \hide NoteHead \uN f8\f\upbow_\markup{\line{"[g]"}\draw-line#'(13 . 0)}] 8[ g\rest]}
    \\
    \relative c{\hide Stem s8 \uN f'8\- s8 g\rest}>> r4
    \stopStaff
    %241
    s2*6 \mark "M"

    %248
    \startStaff
    r4 r8 \tuplet 3/2{\xH d16->-.\f( b' a)}
    \uN a8\upbow\-_\markup{\line{"[F]"}\draw-line#'(5 . 0)}\mf \xH \tuplet 3/2{f16->-.\f e-.-> d-.->} \uN \lineDashed d4:32\-\downbow_\markup{\line{"[R]"}\draw-line#'(5 . 0)}
    %251
    \stopStaff \hide Rest r2
    \startStaff
    \undo \hide Rest
    r8 \tuplet 3/2{\slap b'16-.[ r16 af-.]} \tuplet 3/2{r16[ bf-. r16]} r8 \stopStaff
    %253_254
    s2*3
    %255
    \startStaff
    r4 \tuplet 3/2{fs16-.\f\> 16-. 16-.} r8\! \stopStaff
    s2
    \startStaff
    %257
    <<\relative c{g''16\rest[ \hide NoteHead \xH c,32->-.\f \uN b'32\upbow\p_\markup{\line{"[F]"}\draw-line#'(13 . 0)} 8] \tuplet 5/4{8.[ cs,8]} 
    %258
    c16[ g'8.\rest]}
    \\
    %257
    \relative c{\hide Stem g''16\rest  \xH c,32 \uN b'32\- s8 \omit TupletBracket \omit TupletNumber \tuplet 5/4{s8. cs,8\-} 
    %258
    s16 g'8\rest s16 }>> r4
    %259
    \stopStaff
    s2
    %260
    \startStaff
    r8.[ \xH c16-.->\f^\markup{\teeny{"+"}}]( c'16\flageolet) r16 \tuplet 3/2{\slap f,16-.\mf\>([ 16-. 16-.\!])}
    %261
    <<\relative c{g''16.\rest[ \uN \hide NoteHead c,32:64\upbow_\markup{\line{"[R]"}\draw-line#'(10 . 0)} c8:32] 16:32[ g'8.\rest] 
    %262
    \repeat unfold 2{ \stemDown g8\rest[ cs8]\upbow_\markup{\line{"[S]"}\draw-line#'(8 . 0)}}
    %263
    g8.\rest[ cs16\upbow_\markup{\line{"[S]"}\draw-line#'(8 . 0)}] 16[ g8.\rest]}
    \\
    %261
    \relative c{g''16\rest s32 \hide Stem \uN c,32\- s8 s16 g'8\rest s16 
    %262
    \repeat unfold 2{g8\rest cs8\-}
    %263
    g8\rest s16 cs16\- s16 g8\rest s16
    }>>

    %264_272
    \stopStaff
    s2*6 \mark "N"

    %273
    \startStaff
    \tuplet 3/2{\uN \lineDashed cs8:32--\-[_\markup{\line{"[R]"}\draw-line#'(8 . 0)} r8 r8]} r4
    r4 r16[ \naturalUp \noireNH \dalniente f''!8.\-\<] 
    r4\! \slap \tuplet 3/2{f,,16-.\mp\>[ 16-. 16-.]} r8\!
    \stopStaff

    %274-280
    s2*8 \mark "O"

    %281
    \startStaff
    \slap \tuplet 3/2{a16-.\p\>[ 16-. 16-.]} r8\!
    <<\relative c'{\hide NoteHead \uN g'8\rest[ f8:32_-_\markup{\line{"[R]"}\draw-line#'(5 . 0)}] 16[ g8.\rest]}
    \\
    \relative c'{\hide Stem \uN g'8\rest \lineDashed f8\f\- s16 g8\rest s16}>>
    r4 
    \stopStaff s2*2
    \startStaff
    \uN \lineDashed d,8\upbow--_\markup{\line{"[F]"}\draw-line#'(3 . 0)}\mf\-[ r8] r4 
    r4 b'8.\upbow_\markup{\line{"[S]"}\draw-line#'(3 . 0)}\-[ r16]
    r4 r8 \tuplet 3/2{\slap fs16-.\p\> fs16-. fs16-.\!}
    r4 <<\relative c'{\hide NoteHead \uN \tuplet 3/2{ \stemDown g'8\rest a4--\downbow\mp_\markup{\line{"[R]"}\draw-line#'(5 . 0)}} 8 d8:32\upbow--_\markup{\line{"[R]"}\draw-line#'(5 . 0)}}
    \\
    \relative c'{\hide Stem \omit TupletBracket \omit TupletNumber \tuplet 3/2{ s8 \uN a'4\-} s8 \lineDashed d8\-}>>
    r4
    \stopStaff
    s2*9 \mark "P"
    s2*17
    %316 [13]
    \startStaff
    \mark "Q" r4 <<\relative c'{g'8\rest[ \hide NoteHead \slap d32_._>\f d32\rest \uN d16\upbow_-_\markup{\line{"[F]"}\draw-line#'(5 . 0)}] 
    8.[ b'16\upbow_-_\markup{\line{"[S]"}\draw-line#'(5 . 0)}] 8.[ g16\rest]}
    \\
    \relative c'{\hide Stem s8 \slap d32 s32 \uN d16\- s8. b'16\- s8. g16\rest}>>
    r4 <<\relative c'{\hide NoteHead \uN \tuplet 3/2{g'4\rest fs8\downbow_-_\markup{\line{"[F]"}\draw-line#'(5 . 0)}} 
    f8[ cs8:32_-\upbow_\markup{\line{"[R]"}\draw-line#'(5 . 0)}] cs16:32[ b'8.\downbow_-_\markup{\line{"[sh]"}\draw-line#'(5 . 0)}]
    \tuplet 3/2{4 d,8\downbow_-_\markup{\line{"[F]"}\draw-line#'(5 . 0)}} \slurDown \tuplet 5/4{\dalniente d16\> e( fs gs as)} g4\rest\!}
    \\
    \relative c'{\hide Stem \uN \omit TupletBracket \omit TupletNumber \tuplet 3/2{s4 fs8\-}
    s8 cs8\- s16 b'8.\-
    \omit TupletBracket \omit TupletNumber \tuplet 3/2{s4 d,8\-} \omit TupletBracket \omit TupletNumber \tuplet 5/4{s16 e fs gs as} s4}>>
    %321 from 2nd beat
    \uN \dalniente b8\-\upbow_\markup{\line{"[S]"}\draw-line#'(5 . 0)}\<[ r8\f]
    \noireNH \naturalUp \dalniente d,!8..\<\glissando \magnifyMusic0.5{cs32} r4\pp
    \uN \dalniente b'8\f--\-\downbow_\markup{\line{"[S]"}\draw-line#'(5 . 0)}\>[ r8\!] 
    <<\relative c'{\hide NoteHead \uN cs4\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}\p 
    c16[ b'8.\upbow_\markup{\line{"[S]"}\draw-line#'(5 . 0)}] g4\rest
    \stopStaff s2
    \startStaff \tuplet 3/2{g8\rest \stemDown b4--\upbow\f_\markup{\line{"[sh]"}\draw-line#'(5 . 0)}} 8[ g8\rest]}
    \\
    \relative c'{\hide Stem \uN cs4\- s16 b'8.\- g4\rest
    \stopStaff s2
    \startStaff \omit TupletBracket \omit TupletNumber \tuplet 3/2{g8\rest b4\-} s8 g8\rest}>>
    \stopStaff
    %327
    s2*19 \mark "R"

    %346
    \startStaff
    \slap f16-.->\f[ r8.] r4
    r16 \tuplet 3/2{a16-.(\mp\> 16-. 16-. )} r16\! r4
    r4 \uN \lineDashed cs,4:32\downbow\-_\markup{\line{"[R]"}\draw-line#'(5 . 0)}
    \stopStaff \hide Rest r2
    \startStaff \undo \hide Rest 
    %250
    r4 <<\relative c'{\hide NoteHead \uN \tupletDown \tuplet 3/2{\stemDown g'8\rest[ g8\rest  b8_\markup{\line{"[F]"}\draw-line#'(5 . 0)}\p\downbow]}
    8.[ g16\rest]}
    \\
    \relative c'{\hide Stem \uN \omit TupletBracket \omit TupletNumber \tuplet 3/2{ s4 b'8\-} s8. g16\rest}>>
    r4
    \stopStaff s2
    \startStaff
    %352
    \noireNH \dalniente a'''8..\pp\>\flageolet\glissando \magnifyMusic0.5{gs32\flageolet\!} r4
    \stopStaff s2*2
    \startStaff
    \dalniente a,,8.\-\<[ r16\pp] \naturalDown \dalniente f!8\<\-[ r8\p]
    \dalniente a''8..\pp\>\flageolet\glissando \magnifyMusic0.5{gs32\flageolet\!}
    <<\relative c'{\hide NoteHead \uN \stemDown r8.[ b'16\upbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}] 16[ g8.\rest]}
    \\
    \relative c'{\hide Stem \uN s8. b'16\- s16 g8\rest s16}>>
    \uN \lineDashed c,,,8:32\upbow_\markup{\line{"[R]"}\draw-line#'(5 . 0)}[ r8]
    %359
    <<\relative c'{\hide NoteHead \uN \tuplet 5/4{g'16\rest[ g16\rest g16\rest fs8\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}]} \tuplet 5/4{16[ g16\rest g16\rest d8]\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}}
    \tuplet 5/4{16[ g16\rest g16\rest g16\rest d16_-\upbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}]} \tuplet 3/2{8[ g\rest b8\downbow--_\markup{\line{"[S]"}\draw-line#'(5 . 0)}]}}
    \\
    \relative c'{\hide Stem \uN \omit TupletBracket \omit TupletNumber \tuplet 5/4{s8. \uN fs8\-} \omit TupletBracket \omit TupletNumber \tuplet 5/4{s16 g16\rest g16\rest d8\-}
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{s16 g16\rest g16\rest g16\rest d\-} \omit TupletBracket \omit TupletNumber \tuplet 3/2{s8 g8\rest b8\-}}>>
    %361 
    r4 <<\relative c'{\hide NoteHead \uN \tuplet 3/2{g'8\rest[ g8\rest cs8_-\upbow_\markup{\line{"[sh]"}\draw-line#'(5 . 0)}]}
    c16[ d,8:32\downbow_\markup{\line{"[R]"}\draw-line#'(5 . 0)} g16\rest] \tuplet 5/4{g16\rest[ g16\rest g16\rest fs8]_\markup{\line{"[F]"}\draw-line#'(5 . 0)}}
    \tuplet 5/4{f8[ g16\rest g16\rest f16\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}]} \tuplet 5/4{8[ g16\rest g16\rest d16_\markup{\line{"[F]"}\draw-line#'(5 . 0)}]}
    16[ g8.\rest]}
    \\
    \relative c'{\hide Stem \uN \omit TupletBracket \omit TupletNumber \tuplet 3/2{s4 cs'8\-}
    s16 d,8\- g16\rest
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{g16\rest g\rest g\rest fs8\-}
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{s8 g16\rest g\rest fs16\-}
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{s8 g16\rest g\rest  d16\-}
    s16 g8\rest s16}>>
    r4
    %365
    <<\relative c'{\hide NoteHead \uN
    g'8\rest[ d8:32] \tuplet 3/2{d8:32\f\downbow_\markup{\line{"[R]"}\draw-line#'(5 . 0)}[ g8\rest g\rest]} 
    g16\rest[ e8:32\upbow_\markup{\line{"[R]"}\draw-line#'(5 . 0)} g16\rest] \noireNH \tuplet 3/2{g8\rest[ g\rest a8:32\mp]}
    a16:32[ g'8.\rest]}
    \\
    \relative c'{\hide Stem g'8\rest \lineDashed d8\-\mp \omit TupletBracket \omit TupletNumber \tuplet 3/2{s8 g8\rest g\rest} 
    g16\rest \lineDashed e8\- g16\rest \noireNH \omit TupletBracket \omit TupletNumber \tuplet 3/2{ g8\rest g\rest \lineDashed a8\-}
    s16 g'8\rest s16}>> r4
    \stopStaff s2
    \startStaff 
    r16 \tuplet 3/2{\slap d16-.\mf\>[ d16-. d16-.]} r16\! r4
    %370 
    \noireNH a'''8.\flageolet\ppp[ r16] r8[ \uN b,,8--\upbow\f_\markup{\line{"[F]"}\draw-line#'(5 . 0)}]
    \stopStaff s2
    %372
    \startStaff
    <<\relative c'{\hide NoteHead \uN \tuplet 3/2{r8 \stemDown cs'4--\upbow\mf_\markup{\line{"[sh]"}\draw-line#'(5 . 0)}} \stemNeutral 16[ cs,8.\downbow\p_\markup{\line{"[F]"}\draw-line#'(5 . 0)}]
    g'4\rest g16.\rest[ cs,32:64--_\markup{\line{"[R]"}\draw-line#'(5 . 0)}\f cs8:32]}
    \\
    \relative c'{\hide Stem \uN \omit TupletBracket \omit TupletNumber \tuplet 3/2{ s8 cs'4\-} s16 cs,8.\-
    g'4\rest s16. \lineDashed cs,32\- s8}>>
    %374
    r4 r8[ \lineDashed a8:32\-\downbow\f_\markup{\line{"[R]"}\draw-line#'(5 . 0)}]
    %375
    \noireNH \dalniente a''8..\pp\>\glissando\flageolet \magnifyMusic0.5{gs32\flageolet\!} r4
    %376
    \stopStaff s2*2 
    \startStaff
    <<\relative c'{\hide NoteHead \uN \tupletDown \stemDown \tuplet 3/2{g'8\rest[ g\rest b--\mf\upbow_\markup{\line{"[sh]"}\draw-line#'(5 . 0)}]} 16 \undo \hide NoteHead \stemNeutral \tuplet 3/2{\slap d,16_.\f[ d16_. d16_.]} g16\rest}
    \\
    \relative c'{\hide Stem \uN \omit TupletBracket \omit TupletNumber \tuplet 3/2{s4 b'8\-} s16 \hide Rest r8. \undo \hide Rest}>>
    \stopStaff s2
    \startStaff r4 \noireNH \dalniente a8..\pp\>\glissando\flageolet \magnifyMusic0.5{gs32\flageolet\!}
    r4 <b,! cs>4\-\pp
    r8 r16 \tuplet 3/2{\slap fs,16-.\p\>[ 16-. 16-.]} r16\! r8
    %383
    <<\relative c'{\hide NoteHead \uN g'8.\rest[ a16\upbow\mp--_\markup{\line{"[g]"}\draw-line#'(5 . 0)}] \tuplet3/2{ 4 fs8\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)} }
    f8.[ g16\rest]}
    \\
    \relative c'{\hide Stem s8. \uN a'16\- \omit TupletNumber \omit TupletBracket \tuplet 3/2{s4 fs8\-} s8. g16\rest}>>
    \dalniente \noireNH a''8..\pp\>\glissando\flageolet \magnifyMusic0.5{gs32\flageolet\!}
    r4 r16[ <b,! cs>8.\-\p]
    r4 r16[ \lineDashed <c,! cs>8.:32\mp\-]
    r8[ \uN \lineDashed fs,8:32--\upbow\-_\markup{\line{"[R]"}\draw-line#'(5 . 0)}] 
    <<\relative c'{\hide NoteHead \stemDown b'8\rest[ \noireNH a'8:32--\p]
    8:32[ g,8\rest]}
    \\
    \relative c'{\hide Stem b'8\rest \lineDashed a'8\- s8 g,8\rest}>> r4
    %389 
    r4 r8[ \uN \lineDashed fs8:32--\upbow\-_\markup{\line{"[R]"}\draw-line#'(5 . 0)}]
    %390
    <<\relative c'{\stemDown g'8.\rest[ \hide NoteHead \sharpUp fs'16:64] 8:32[ g,8\rest]}
    \\
    \relative c'{s8. \hide Stem \sharpUp \lineDashed fs'16\-\ppp s8 g,8\rest}>>
    %391
    <<\relative c'{\hide NoteHead \stemDown b'8\rest[ \noireNH a'8--]
    8[ b,8\rest]}
    \\
    \relative c'{\hide Stem b'8\rest a'8\- s8 b,8\rest}>>
    r4 r8[ \noireNH a'8\-]
    r4 r16[ <b cs>8\- r16]
    r4 r16[ <b cs>8.\-]
    r4 r16[ <b cs>8\- r16]
    %396
    <<\relative c'{\hide NoteHead \noireNH \stemDown b'8\rest[ <b' cs>8]
    \stemNeutral 16[ b,16\rest b16\rest \uN cs,16:64_-\downbow_\markup{\line{"[R]"}\draw-line#'(5 . 0)}]
    b'8.\rest[ \noireNH <c cs>16:64\p] c16:64[ b8.\rest]} 
    \\
    \relative c'{\hide Stem \stemDown \noireNH s8 <b'' cs>8\-
    s16 b,16\rest s16 \uN \lineDashed cs,16\-\f
    b'8\rest s16 \lineDashed \noireNH <c! cs>16\- s16 b8\rest s16}>>
     \lineDashed <c,! cs>8:32\-[ r8]  r16[ \lineDashed 8:32\-  r16] 
    r16[ \lineDashed \uN cs,16:64\-\f\downbow_\markup{\line{"[R]"}\draw-line#'(1 . 0)} r8]  \lineDashed \noireNH <c'! cs>8:32\p\-[ r8] 
    %400
    <<\relative c''{\stemDown \hide NoteHead b4\rest b8\rest[ b16\rest \naturalUp b'!16]
    4 16[ d,16\rest d8\rest]
    b'8[ b,8\rest] b8\rest[ b16\rest b'16]
    8.[ b,16\rest] b8\rest[ b16\rest b'16]
    16 b,16\rest b32\rest \naturalDown a''!16.\flageolet 4
    4 4
    4 4
    4 4}
    \\
    \relative c''{\hide Stem s4.. \naturalUp b'!16\-
    s4 s16 d,16\rest s8
    b'8\- b,8\rest s8. b'16\-
    s8. b,16\rest s8. b'16\-
    s16 b,16\rest s32 \naturalDown a''!16\- s32 s4
    s1.}>>

    
    %410
    <<\relative c'{\hide NoteHead cs4:32\downbow_\markup{\line{"[R]"}\draw-line#'(10 . 0)} b4:32}
    \\
    \relative c'{\hide Stem \uN \lineDashed cs4\-\fffff s4}>>
    
    \stopStaff s2*25 \mark "S"
    %434
    \startStaff r16[ \uN \lineDashed c,8.:32\-\upbow_\markup{\line{"[R]"}\draw-line#'(5 . 0)}]
    <<\relative c'{\hide NoteHead  b'8\-\upbow--_\markup{\line{"[S]"}\draw-line#'(3 . 0)}[ s16 cs,16\downbow_\markup{\line{"[F]"}\draw-line#'(5 . 0)}]
    c16[ a'8.\upbow--_\markup{\line{"[F]"}\draw-line#'(5 . 0)}] g4\rest}
    \\
    \relative c'{\stemUp \hide Stem \uN b'8.\- cs,16\- 
    s16 a'8\- s16 g4\rest}>>
    \noireNH \dalniente fs8.\>\mf\glissando[ \magnifyMusic0.5{e32\!} r32] r4
    \stopStaff s2*2
    \startStaff %439
    <<\relative c'{\stemDown \hide NoteHead \noireNH \dalniente c''4\< \dalniente 4\p\> \hide Rest r2\!}
    \\
    \relative c'{\hide Stem 
    \naturalUp \dalniente c''!2\- \stopStaff \hide Rest r2}>>
    %441
    \startStaff
    r16[ \uN b'8.--\upbow\f\-_\markup{\line{"[S]"}\draw-line#'(3 . 0)}] r4 \stopStaff 
    %442
    s2*4 \mark "T"
    \startStaff 
    \blancheNH a''2\-\ppp\flageolet \stopStaff \hide Rest r2
    %448
    \startStaff
    <<\relative c'{\hide NoteHead b'4\rest \stemDown \naturalUp b'!4
    4 16[ b,16\rest b8\rest]
    b4\rest b8\rest[ <b' cs>8]
    <b c>4 8[ b,8\rest]
    \stopStaff s2*4
    %456 
    \stemNeutral fs4\downbow_\markup{\line{"[F]"}\draw-line#'(10 . 0)} 16 a8.\upbow--_\markup{\line{"[g]"}\draw-line#'(3 . 0)}
    \stopStaff s2*2
    \startStaff b4\rest b16\rest[ a8.\downbow\p_\markup{\line{"[S]"}\draw-line#'(3 . 0)}]
    16.[ b32\rest b8\rest] b4\rest
    }
    \\ 
    \relative c'{\hide Stem \noireNH \naturalUp s4 b''!4\-
    s4 s16 b,\rest s8
    s4. <b' cs>8\-
    s4 s8 b,8\rest
    \stopStaff s2*4 \mark "U"
    %456 
    \startStaff
    \uN fs4\- s16 a8.\- \stopStaff \hide Rest r2
    s2
    \startStaff %458
    s4 s16 a8.\-
    s16. b32\rest s4.
    }>>
    \stopStaff s2

    %462-475
    s2*13
    

    \stopStaff s2*5 \mark "V"
    %480 
    s2*12 \mark "W"
    %492 [15]
    \startStaff 
    <<\relative c'{\hide NoteHead \uN   c8_-_\markup{\line{"[F]"}\draw-line#'(3 . 0)}\downbow f\upbow_\markup{\line{"[g]"}\draw-line#'(3 . 0)} 16[ bf8.\upbow_\markup{\line{"[S]"}\draw-line#'(3 . 0)}_-]}
    \\
    \relative c'{\hide Stem \uN c8\- f\- s16 bf8.\- }>>
    \stopStaff \hide Rest r2 \undo \hide Rest
    %493 
    s2*2
    \startStaff 
    %496
    \mark "X" r4 r16 \tuplet 3/2{ \slap d,,,16-.->\f\> d16-. d16-.} r16\!
    r4 r16 \tuplet 3/2{ \slap d16-.->\f\> d16-. d16-.} r16\!
    %498
    \noireNH a'''4\-\p\flageolet r4 
    \uN \lineDashed c,,,8:32\-\downbow_\markup{\line{"[R]"}\draw-line#'(3 . 0)}\mf[ r8] r4
    %500
    \stopStaff s2*3
    \startStaff
    r4 <<\relative c'{\stemDown \hide NoteHead \noireNH b'16\rest[  <b' cs>8.\pp]
    \dalniente <b c>4\> b,4\rest\!}
    \\
    \relative c'{\hide Stem \noireNH s16 <b'' cs>8\- s16
    s4 b,4\rest}>>
    \stopStaff s2*2
    %507
    \startStaff
    <<\relative c'{b'4\rest \stemDown \hide NoteHead \noireNH c'4\pp
    4 4
    4 b,4\rest}
    \\
    \relative c'{s4 \hide Stem \naturalUp c''!4\- s2. b,4\rest}>>
    %510 
    \stopStaff 
    s2*19
    %529
    \startStaff
    \mark "Y" r4 \dalniente \noireNH \dalniente a'8..\pp\glissando\> \magnifyMusic0.5{g32\!}
    <<\relative c'{\hide NoteHead \uN \tuplet 3/2{a'4:32--\upbow_\markup{\line{"[R]"}\draw-line#'(3 . 0)} cs,8--\downbow_\markup{\line{"[F]"}\draw-line#'(3 . 0)}} 8[ fs\upbow--_\markup{\line{"[S]"}\draw-line#'(3 . 0)}]
    f16[ b\rest \noireNH \undo \hide NoteHead a''8\flageolet\glissando] fs16\flageolet[ \hide NoteHead b,16\rest b8\rest]
    \tuplet 3/2{b,4\rest a8--\downbow_\markup{\line{"[F]"}\draw-line#'(3 . 0)}} 16[ cs,8.:32_\markup{\line{"[R]"}\draw-line#'(3 . 0)}]\downbow
    \tuplet 6/4{\dalniente c16:64\> ds16:64 f16:64 g16:64 a16:64 b16:64} b4\rest\!}
    \\
    \relative c'{\hide Stem \uN \omit TupletBracket \omit TupletNumber \tuplet 3/2{\lineDashed a'4 cs,8\-} s8 fs8\-
    s16 b16\rest s8 s4
    \omit TupletBracket \omit TupletNumber \tuplet 3/2{b4\rest a8\-}
    s16 \lineDashed cs,8.\-
    \omit TupletBracket \omit TupletNumber \tuplet 6/4{s16 \lineDashed d\- \lineDashed f\- \lineDashed g\- \lineDashed a\- \lineDashed b\-} b4\rest}>>
    \stopStaff s2 %534
    \startStaff 
    \slap \tuplet 5/4{cs,16-.\mp\> ds-. f-. g-. a-.} r4\! 
    \noireNH \dalniente f''8..\p\glissando\flageolet\> \magnifyMusic0.5{e32\flageolet\!} r4
    \stopStaff s2*3
    
    %540 [30]  
    \startStaff  \mark "Z"
    <<\relative c'{\hide NoteHead \uN b'4._-\upbow_\markup{\line{"[g]"}\draw-line#'(7 . 0)} c,8--\downbow_\markup{\line{"[F]"}\draw-line#'(7 . 0)}
    \tuplet 3/2{2 fs4\upbow_\markup{\line{"[F]"}\draw-line#'(7 . 0)}}
    f16[ b8.\downbow_\markup{\line{"[S]"}\draw-line#'(7 . 0)}] 4
    4 cs,4\upbow_\markup{\line{"[g]"}\draw-line#'(7 . 0)}
    c8 ds4:32\downbow_\markup{\line{"[R]"}\draw-line#'(7 . 0)} a'8\upbow_\markup{\line{"[F]"}\draw-line#'(7 . 0)}
    4 16[ fs8.\upbow_\markup{\line{"[g]"}\draw-line#'(7 . 0)}]
    f4 8[ cs\downbow_\markup{\line{"[F]"}\draw-line#'(7 . 0)}]
    c4 8[ g'8\rest]}
    \\
    \relative c'{\hide Stem \uN 
    b'4.\- c,8\-
    \omit TupletBracket \omit TupletNumber \tuplet 3/2{s2 fs4\-}
    s16 b8.\- s2
    cs,4\- s8 \lineDashed ds4\- a'8\- s4 s16 fs8.\- s4. cs2\- g'8\rest}>>
    \stopStaff




    }
% >>





%\score{\bassFlute}

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