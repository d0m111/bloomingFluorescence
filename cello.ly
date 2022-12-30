\version "2.24.0"
\language "english"

\include "accidentals.ly"
\include "headNotes.ly"
\include "miscelaneas.ly"
\include "dinamics.ly"

cello = \new Staff = "Rob" \with{
    instrumentName = "Violoncello"
    shortInstrumentName = "Vc."
    %\RemoveAllEmptyStaves
}
\relative c{
    \time 4/4
    \numericTimeSignature
    \fuenteTimeSig
    \sizeTimeSig
    \clef bass
    % m1
    R2

    %m2
    <<\relative c{s8 \hide NoteHead \dalniente s8\< \tuplet 3/2{<c, b'\harmonic>8 \dalniente 4\mp\>}
    %m3
    <c b'\harmonic>16 s16\! \dalniente s8\< \tuplet 3/2{<c b'\harmonic>8[ \dalniente <c b'\harmonic>8\mp\> d'8\rest\!]}
    }
    \\
    \relative c{ r8 \stemUp <c, b'\harmonic>8\-^\markup{\teeny{"crine"}} \hide Stem \omit TupletNumber \tuplet 3/2{s8 s4}
    %m3
    s16 r16 \undo \hide Stem <c b'\harmonic>8\- \omit TupletNumber \tuplet 3/2{s8 s8 d'8\rest} 
    }>>
    %m4-12
    \stopStaff
    s2*9

    %m13-14
    \startStaff
    c,16-.^\markup{\teeny {"pizz."}}\laissezVibrer r16 r8 r8
    <<\relative c{\hide NoteHead s8 \repeat unfold 3{<c, d'>8}}
    \\
    \relative c{\stemUp \dalniente \lineDashed <c, d'\harmonic>8\-\<^\markup{\teeny{"legno/crine"}} \hide Stem \dalniente s8 s8\mp\> s8 r8\!}>>

    %m15
    \stopStaff s2 

    %m16
    \startStaff
    r4 r16 <fs'\harmonic d'\harmonic>8.^\markup{\teeny{"pizz."}}-.\mf\laissezVibrer 
    %m17
    \clef treble
    \uN \once \override DurationLine.style = #'dashed-line fs''4\mp\-^\markup{\teeny{"crine"}}^\markup{\teeny  \hspace#-2. \box \column{
      \line{\lower #3 \teeny{"muting string w/left hand"}}
      \line{\lower #1 \teeny{"bow plays at the pitch position"}}
      \line{\lower #-1 \teeny {"acting as left hand"}}
      \line{\lower #-3 \teeny{"producing a stutter steady croaking sound"}}}}  r4 \stopStaff 

    %m18-23
    s2*6

    %m24
    \startStaff
    \clef bass
    r16 \dalniente \diamondH fqs,,8.\-\< r4\p
    %m25
    r16 \noireNH \dalniente \once \override DurationLine.style = #'dashed-line c,8.\-^\markup{\teeny{"col legno tratto"}}\< r4\p
    \stopStaff

    %m26-28
    s2*3

    %m29
    \startStaff
    r4^\markup{\teeny{"crine/legno"}} <<\relative c{s16 \hide Stem \stemDown \lineDashed f'8.\-^\markup{\teeny{"fast bowing"}} 
    %m30
    s4 \omit TupletNumber \omit TupletBracket \tuplet 3/2{ s16 r16 r8 \hide NoteHead \undo \hide Stem \stemUp \dalniente d,,8\<^\markup{\teeny{"crine"}}} 
    %m31
    d16[ 16\f_. b'8\rest] }
    \\
    \relative c{
      r16[ \hide NoteHead f'8.\p]
    %m30 
    f4   \tuplet 3/2 {f16 s16 s8 \undo \hide NoteHead \hide Stem d,,8\-}
    %m31
    s8 b'8\rest
    }>> r4 \stopStaff s2
    \startStaff \dalniente c4\<\-  r4\ff 
    <<\relative c'{\hide NoteHead \stemDown
      d,16\rest[  \diamondH fs8.--^\markup{\teeny{"legno tratto, fast bowing"}}] 4}
      \\
      \relative c'{\hide Stem 
    s16 \diamondH \lineDashed fs,8\-\mp s16 s4}>>
    \stopStaff 
    s2*2 \startStaff
   \dalniente c4\-\<^\markup{\teeny{"crine"}} r4\fff \stopStaff 
   %38-44
    s2*7

    %m45
    \startStaff
    r4^\markup{\teeny  \hspace#-2. \box \teeny{"pitch filtered sound (like air)"}} <<\relative c{
      r16 \hide NoteHead \uN b8.--^\markup{\teeny{"crine"}} 
    %m46 
    b16 fs'8.-- d8.\rest[ d16--]
    %m47
    8. d16\rest d4\rest
    %m48
    d4\rest g,8.\rest[ \noireNH \dalniente d16\<]
    %M49
    d8[ 16_._>\f g16\rest] g4\rest 
    %m50 
    d'4\rest d16\rest[ d8.]
    %m51
    8[ 16 g16\rest] d4\rest 
    }
    \\
    \relative c{
      s16 \hide Stem \uN b8.\-
    %m46
    s16 fs'8.\- d8\rest s16 d16\-
    %m47
    s8. d16\rest s4
    %m48
    s4 s8. \noireNH \dalniente d,16\-
    %m49
    s8 s16 g16\rest s4
    %m50
    d'4\rest d16\rest \dalniente \diamondH \lineDashed d8.\<\-^\markup{\teeny {"legno/crine"}} 
    %m51 
    \dalniente s8\mp\> s16 s16 d4\rest\!
    }>>
    
    %m52
    r32[ \diamondH <b' a'>8..^\markup{\teeny{"pizz."}}]\laissezVibrer
    <<\relative c{
    \hide NoteHead \noireNH g16\rest[ \dalniente d8.\<]
    %m53 &st quarter note
    \dalniente 8.\mf\>[ g16\rest\!] 
    }
    \\
    %m52
    \relative{
    \hide Stem \noireNH s16 d,8.\-^\markup{\teeny{"crine"}}
    %m53 (1st quarter note)
    s8. g16\rest 
    }>>

    %m53 2nd quarter note (flipping heck!)
    <<\relative c{b8\rest[ b32\rest \hide NoteHead \stemUp \dalniente \once \override NoteColumn.force-hshift = #0.5 <c, b'>16.\<] 
    %m54
    b16[ 16\f_._> g'8\rest]}
    \\
    \relative c{b8\rest b32\rest \stemUp \omit Flag \diamondH \once \override NoteColumn.force-hshift = #0.5 b16\- s32
    %m54
    s16 s16 g8\rest }
    \\
    \relative c{b8\rest b32\rest \hide Stem \once \override NoteColumn.force-hshift = #0.5 c,16\- s32
    %m54
    s8 g'8\rest}
    >>
    r4
    %m55_56
    \stopStaff
    s2*2
    %m57
    \startStaff
    \clef treble
    r8 \uN \lineDashed d''8--\mp\-  r4
    %m58
    \stopStaff
    s2*7

    %65
    \startStaff
    \clef bass
    r4 r32[ \diamondH a,8..^\markup{\teeny{"pizz."}}\p\laissezVibrer]
    \stopStaff
    %66
    s2*7
    \startStaff
    %73
    <<\relative c{\hide NoteHead \hide Stem \noireNH s4^\markup{\teeny{"crine (bowing)"}} s4
    %74
    \undo \hide Stem d,8[ g\rest]}
    \\
    \relative c{ \stemUp \blancheNH \dalniente d,2\-\<
    %74
    s8 g\rest\fff}>>
    r4
    %75
    \stopStaff
    s2*4
    %79
    \startStaff
    r4 <<\relative c{\hide NoteHead \diamondH \stemDown <d b'>4\p^\markup{\teeny{"crine/legno" (fast bowing)}} 
    %80
    \tuplet 3/2{<d b'>8 <b fs'>4:32^\markup{\teeny{"tremolo alla punta (serratissimo)"}}} 8.:32[ d16\rest]}
    \\
    %79
    \relative c{ \hide Stem \diamondH \lineDashed <d b'>4\- 
    %80
    \omit TupletBracket \omit TupletNumber \tuplet 3/2{s8 \lineDashed  <b fs'>4\-} s8 s16 d\rest}>>
    %81
    \stopStaff
    s2*3
    %84
    \startStaff
    \clef treble 
    \uN \lineDashed d'8.--\mf\-[^\markup{\teeny{"crine"}} r16] r4
    %85
    \lineDashed b8.--\mf\-[ r16] r4
    %m86
    \clef bass
    r16 \noireNH c,,,8.-.\mp\laissezVibrer^\markup{\teeny{"pizz."}} r4
    %87
    \clef treble 
    <<\relative c{\hide NoteHead \uN \stemDown \tuplet 3/2{g''8\rest^\markup{\teeny{"crine"}} a'4--} 16[ g8.\rest]}
    \\
    \relative c{\hide Stem \omit TupletBracket \omit TupletNumber \tuplet 3/2{s8 \uN \lineDashed a'''4\p\-} s16 g8\rest s16}>>
    %88
    r8[ \slap e'''16-.\laissezVibrer^\markup{\teeny{"col legno battuto"}} fs,16-.\laissezVibrer] r4
    %89 
    \stopStaff
    s2*6 \startStaff
    %95 
    \clef bass
    r8[ \diamondH <fs, cs'>8]\laissezVibrer\mp^\markup{\teeny{"pizz."}} r4 
    r16[ \diamondH <b, fs'>8.]\laissezVibrer\mp^\markup{\teeny{"pizz."}} r4
    r4 \clef treble r16[ \uN \lineDashed fs'''8.\-^\markup{\teeny{"crine"}}\mp]
    \stopStaff
    \hide Rest r2 \undo \hide Rest
    s2*11





    \stopStaff 
    s2*6 %m2,3
    \startStaff
    \clef bass
    r4 
    << \relative c {s8. s16 \hide NoteHead c,16[ \flageolet \uN g'8 \downbow 16] \upbow 8.[ c,16( \flageolet \downbow] g'16\flageolet)[ 8 \upbow s16] c,4 \tuplet 3/2{c8[ 8 g'8\rest]} } \\ 
    \relative c { \stemUp \uN c,8.--\mf\-[ %m4
    \noireNH c16\ppp\-] ^\flageolet s16 \hide Stem \uN g'8\f--\- g16--\- s8. \noireNH c,16->\f\>\-  g'16\-  \uN 8.\mf--\-  \dalNienteExpo \noireNH c,4\<\- 
    \hide TupletNumber \tuplet 3/2{s8 s8\f g'8\rest}} >>   %m5
    r16[ \dalniente \diamondH fqs,,,8.\<\-] \stopStaff \hide Rest r2\pp %m6
    \stopStaff s2*2 %m7
    \harmonicsOff
    \startStaff
    \undo \hide Rest
    <<\relative c{\hide NoteHead \stemDown \diamondH f2 4 d\rest}
    \\
    \relative c{ \blancheNH \hide Stem \diamondH fqs2\-\p\-^\markup{\teeny{"msp"}} s4 d\rest}>>     %m8
    % % \dalniente c,4.\>^\markup{\teeny{"m.s.p"}} r8\! r2

    %125-126
    <<
    \relative c{s8 \hide Stem \undo \hide NoteHead \diamondH \once \override NoteColumn.force-hshift = #0.5 b8\- s4 s8. d16\rest}
    \\
    \relative c{d8\rest \hide NoteHead \undo \hide Stem \stemUp  \once \override NoteColumn.force-hshift = #0.5 <c, b'>8 4 8.[ d'16\rest]}
    \\
    \relative c{s8 \hide Stem \noireNH \once \override NoteColumn.force-hshift = #0.5 c,8\- s4 s8. d'16\rest}>>
    r4
    %m127-134
    \stopStaff
    s2*8
    %135
    \startStaff
    r16[ \diamondH fs'8.-.\p^\markup{\teeny{"pizz."}}\laissezVibrer] r4
    %136
    r4 <a cs>8\p-.\laissezVibrer r8
    %137
    <<\relative c{\diamondH b8-.\laissezVibrer}
    \\
    \relative c{\stemUp \omit Flag \noireNH c,8\p\laissezVibrer}>>
    r8 r4
    %138
    \diamondH <d, a'>2\-\pp^\markup{\teeny{"bowing slowly(as much as possible)"}}
    %139
    \stopStaff \hide Rest r2 s2 \startStaff \undo \hide Rest
    <<\relative c'{\hide NoteHead \diamondH \stemNeutral <a cs>2:32--^\markup{\teeny{"tremolo alla punta (serratissimo)"}}
                   <a c>2:32}
      \\
      \relative c'{\hide Stem \diamondH \lineDashed <a cs>2\- s2}>> \stopStaff 
    %143_157
    s2*15
    %158_160
    \startStaff
    %\undo \hide Rest
    <<\relative c{\hide NoteHead \stemDown d2-- 2 8.[ d16\rest]}
    \\
    \relative c{\hide Stem \diamondH \flatUp d2\-\pp^\markup{\teeny{"crine"}} s2 s8. d16\rest}>> r4
    %161
    \stopStaff
    s2*8
    %169
    \startStaff
    \diamondH <fs cs'>8-.\mp\laissezVibrer^\markup{\teeny{"pizz."}} r8 r4
    %170-171
    r4 
    <<\relative c{\hide NoteHead \diamondH \stemDown d'4:32^\markup{\teeny  \hspace#-2. \column{
      \line{\lower #3 \teeny{"crine, "}}
      \line{\lower #1 \teeny{"tremolo alla"}}
      \line{\lower #-1 \teeny {"punta (serratissimo)"}}
      }} d4:32}
    \\
    \relative c{\hide Stem \diamondH \lineDashed d'4\ppppp\- s4}>>
    b,8^\markup{\teeny{"pizz."}}\laissezVibrer[ r8]
    %172
    r4 \clef treble \lineDashed \uN d''4\pp^\markup{\teeny{"crine"}}--\-
    %173
     \stopStaff \hide Rest r2
    %174-178
    s2*5
    %179
    \startStaff
    \undo \hide Rest
    \clef bass
    <<
    \relative c{\hide NoteHead \stemUp \once \override NoteColumn.force-hshift = #0.5 <c, b'>2_-^\markup{\teeny{"crine/legno (hyper slow bowing)"}} 2 2 16[ \diamondH fs'8.:32_-^\markup{\teeny{"tremolo alla punta(serratissimo)"}}]}
    \\
    \relative c{ \hide Stem \blancheNH \once \override NoteColumn.force-hshift = #0.5 \lineDashed c,2\-\pp s2 s2 s16 \diamondH \lineDashed fs'8.\-}
    \\
    \relative c{ \hide Stem \diamondH \once \override NoteColumn.force-hshift = #0.5 \lineDashed b2\- s2 s2 s16 \hide NoteHead \diamondH fs'8 s16}
    \\
    \relative c{s2 s2 s4}
    >>
    r4
    %183
    \clef treble 
    << \relative c{\hide NoteHead \uN \stemDown r8[ f''8]--^\markup{\teeny{"crine"}} 8[ g8\rest]}
    \\
    \relative c{s8 \hide Stem \uN \lineDashed f''8\-\p s8 g\rest }>>
    %184
    r16[ \slap ef16-.\mp^\markup{\teeny{"col legno battuto"}} af,-. r16] r4
    \clef bass
    %185-186
    r4 <<\relative c{\hide NoteHead \noireNH \stemDown f4--\ppp^\markup{\teeny{"col legno tratto (fast bowing)"}} 4}
    \\
    \relative c{\hide Stem \noireNH \lineDashed fqs4\- s4}>>
     \dalniente fs,,8.\-\<^\markup{\teeny{"crine"}}[ r16\mf]
    %187-188
    r4 <<\relative c{\hide NoteHead \diamondH \stemDown \tupletDown \tuplet 3/2{r8[ r8 cs'8--^\markup{\teeny{"legno/crine"}}]} c16 <b, fs'>8.--}
    \\
    \relative c{\hide Stem \diamondH \omit TupletNumber \omit TupletBracket \tuplet 3/2{ s8 s8 \lineDashed cs'8\-\mp} s16 \lineDashed <b, fs'>8\- s16}>>
    r4
    %189
    r4 \diamondH \lineDashed a'8--\-\mp[ r8]
    %190
    \clef treble 
    <<
    \relative c{\hide NoteHead \uN \stemDown r16[ f''8.^\markup{\teeny{"crine"}}] 16[ g8.\rest]}
    \\
    \relative c{\hide Stem \uN s16 \lineDashed f''8\- s16 s16 g8\rest s16}
    >>
    %191
    \clef bass
    <<
    \relative c{\hide NoteHead \diamondH \stemDown r8.[ fs16:32--^\markup{\teeny{"tremolo alla punta(serratissimo)"}}] 4:32 f4:32 16.:64[ g32\rest g8\rest]}
    \\
    \relative c{\hide Stem \diamondH s8.\lineDashed fs16\-\pppp s4 s4 s16. g32\rest s8}>>
    %193

    <<\relative c{s8 \once \override NoteColumn.force-hshift = #0.5  \hide Stem \undo \hide NoteHead \diamondH b8\- \omit TupletBracket \omit TupletNumber \tuplet 3/2{s8 \dalniente s4\mp\>}}
    \\
    \relative c{s8 \once \override NoteColumn.force-hshift = #0.5 \stemUp \hide NoteHead \undo \hide Stem \dalniente <c, b'>8\< \tupletUp \tuplet 3/2{<c b>8 \dalniente <c b>4\>} \stopStaff \hide Rest r2\!}
    \\
    \relative c{ r8 \once \override NoteColumn.force-hshift = #0.5 \hide Stem \noireNH c,8\-^\markup{\teeny{"crine"}}  \omit TupletNumber \tuplet 3/2{s8 s4}}>>
    %-219
    \stopStaff
    s2*9
    \startStaff
    r4 
    <<\relative c{s8 \once \override NoteColumn.force-hshift = #0.5  \hide Stem \undo \hide NoteHead \diamondH b8\- \omit TupletBracket \omit TupletNumber \tuplet 3/2{s8 \dalniente s4\mp\>}}
    \\
    \relative c{s8 \once \override NoteColumn.force-hshift = #0.5 \stemUp \hide NoteHead \undo \hide Stem \dalniente <c, b'>8\< \tupletUp \tuplet 3/2{<c b>8 \dalniente <c b>4\mp\>} d'4\rest\!}
    \\
    \relative c{ d8\rest \once \override NoteColumn.force-hshift = #0.5 \hide Stem \noireNH c,8\-^\markup{\teeny{"crine"}}  \omit TupletNumber \tuplet 3/2{s8 s4} }>> 
    \stopStaff
    s2*3 \startStaff
    \clef treble r4 r8[ \lineDashed \uN d'8\-\mp]
    \clef bass \diamondN \dalniente fs,,4\-\< r4\f
    a8^\markup{\teeny{"pizz."}}\laissezVibrer\mp  r8 r4 
    \dalniente \noireNH c,,8.\-\<^\markup{\teeny{"crine"}}[ r16\f] r4 \stopStaff
    
    s2*7

    %220
    \startStaff
    \clef treble
    <<\relative c{\hide NoteHead \uN \stemDown g''8.\rest[ cs16] 8[ g\rest]}
    \\
    \relative c{\hide Stem \uN  s8. \lineDashed cs''16\- s8 g\rest}>>
    %221
    \clef bass
    \diamondH \lineDashed e'2\-\pp^\markup{\teeny{"legno/crine"}}
    %222
    <<
    \relative c{\hide Stem \diamondH \omit TupletBracket \omit TupletNumber \tuplet 3/2{s4 \once \override NoteColumn.force-hshift = #0.5 b8\-^\markup{\teeny{"crine"}}} s16. g32\rest s8}
    \\
    \relative c{\hide NoteHead \diamondH \stemUp \tupletUp \tuplet 3/2{r8 r8 \dalniente \once \override NoteColumn.force-hshift = #0.5 <c, b'>8\<} 16.[ g'32\rest\f r8]}
    \\
    \relative c{\hide Stem \noireNH \omit TupletBracket \omit TupletNumber \tuplet 3/2{s4  \once \override NoteColumn.force-hshift = #0.5 c,8\-} s16. g'32\rest s8}
    >>
    %223
    \stopStaff
    s2*13

    %236 [24] from the sketchbook
    \startStaff
    r4 <<\relative c{d8\rest \hide NoteHead \diamondH \stemDown \flatUp af'8--\p a2 2 \stemUp 16 \flatUp df,8._-\p 4 d4 4 }
    \\
    \relative c{s8 \hide Stem \flatUp \diamondH af'8\- s2 s2 s16 \flatUp df,8.\- s4 s2 }>>
     \stopStaff \hide Rest r2
    s2*6

    %248
    \startStaff \undo \hide Rest
    r4 \clef treble r8.[ \slap fs''16^\markup{\teeny{"col legno battuto"}}-.\laissezVibrer]
    r8[ ds-.\laissezVibrer] r4
    % \stopStaff
    %250
    \stopStaff s2 \startStaff
    %251
    \startStaff
    \clef bass r8[ \diamondH a,-.\laissezVibrer^\markup{\teeny{"pizz."}}] r4
    \clef treble 
    r8.[ \slap cs'16^\markup{\teeny{"col legno battuto"}}-.\mp\laissezVibrer] r4
    \stopStaff
    s2*2
    %255
    \startStaff
    \clef treble r4 
    <<\relative c{\hide NoteHead \uN \stemDown g''8.\rest[ cs16] c4 16[ g16\rest g8\rest] }
    \\
    \relative c{g''8\rest s16 \hide Stem \uN \lineDashed cs16\p\-^\markup{\teeny{"crine"}} s4 s16 g16\rest s8}>>
    \stopStaff
    s2*2
    \startStaff
    %259
    \clef bass
    <<\relative c{\stemDown g'8\rest[ \diamondH \hide NoteHead g8^\markup{\teeny{"legno tratto"}}] 8 g8\rest g8.\rest[ fs16] 8[ g\rest]}
    \\
    \relative c{g'8\rest \diamondH \hide Stem \lineDashed g8\-\mp s8 g8\rest 
    s8. \lineDashed fs16\- s8 g\rest }>>
    \stopStaff
    s2%262
    \startStaff
    \clef treble
    <<\relative c'{ \repeat unfold 2{ \hide NoteHead \stemDown g'8\rest[ \uN cs8\p]}}
    \\
    \relative c'{\repeat unfold 2{\hide Stem \uN g'8\rest \lineDashed cs8\-^\markup{\teeny{"crine"}}}}>>
    %263
    <<\relative c'{\stemDown g'8.\rest[ cs16] 16 d8.\rest}
    \\
    \relative c'{g'8\rest s16 \lineDashed cs16\- s16 d8\rest s16}>>
    \stopStaff
    %264_269
    \stopStaff
    s2*6

    %270
    \startStaff
    \clef treble
    \uN \lineDashed f8\mp[\-^\markup{\teeny{"crine"}} r8 ] r4
    <<\relative c'{ \stemDown \hide NoteHead g'8.\rest[ \uN d'16] 16[ g,8.\rest]}
    \\
    \relative c'{g'8\rest \hide Stem s16  \lineDashed \uN d'16\-\mp s16 g,8\rest s16}>>
    \stopStaff
    s2*3 \startStaff
    \clef bass
    r16[ \uN \lineDashed c,,,8.\---\fff] r4 \stopStaff
    %274
    s2*5
    %281
    \startStaff
    \clef bass
    \diamondH d''8\mf\laissezVibrer-.^\markup{\teeny{"pizz."}}[ r8] r4
    \clef treble r16[\uN \lineDashed cs'8\-\mf--^\markup{\teeny{"crine"}} r16] r4
    \clef bass r4 r16[ \dalniente \noireNH d,,,8.\-\<]
    \stopStaff \hide Rest r2\ff \undo \hide Rest
    \startStaff  r16[ \uN a'8.\mp--\-] r4
    r4 <<\relative c'{\stemDown \hide NoteHead \diamondH a4\mp^\markup{\teeny{"crine/legno (fast bowing)"}} 
    16[ \lineDashed fs8--\- d16\rest] }
    \\
    \relative c'{\hide Stem \diamondH \lineDashed a4^-\- s16 \lineDashed fs8\- d16\rest}>>
    r4 
    \stopStaff s2*11
    %299
    \startStaff 
    r4
    <<
    \relative c{\hide NoteHead \stemUp  d8\rest[ \dalniente \once \override NoteColumn.force-hshift = #0.5 <c, b'>8^\markup{\teeny{"crine/legno (bowing slowly)"}}]\< \dalniente 8\p\>[ d'8\rest\!]}
    \\
    \relative c{ \hide Stem \blancheNH s8 \once \override NoteColumn.force-hshift = #0.5 \lineDashed c,4\-\pp d'8\rest}
    \\
    \relative c{ \hide Stem \diamondH s8 \once \override NoteColumn.force-hshift = #0.5 \lineDashed b4\- d8\rest}
    >> r4
    %301 
    \stopStaff
    s2*15
    %316
    \startStaff
    r4 \clef treble r8[ \slap \tuplet 3/2{ef'''16-.\mf^\markup{\teeny{"col legno battuto"}} r16 cs-.}]
    \stopStaff s2
    \startStaff \clef bass
    <<\relative c{\diamondH \hide NoteHead \stemDown a'8.\downbow--^\markup{\teeny{"legno/crine"}}[ a16--\upbow] \tuplet 3/2{a16 fs8--\downbow} fs8}
    \\
    \relative c{\hide Stem \diamondH \lineDashed a'8\- s16 \lineDashed a16\- \omit TupletBracket \omit TupletNumber \tuplet 3/2{s16 \lineDashed fs8\-} s8}>>
    \stopStaff s2*2
    \startStaff \diamondH d,,8\mp\laissezVibrer-.^\markup{\teeny{"pizz."}}[ r8] r4
    \stopStaff s2
    %323
    \startStaff 
    \clef bass
    \diamondH b8-.\mp^\markup{\teeny{"pizz."}}\laissezVibrer[ r8] 
    <<\relative c{\hide NoteHead \diamondH cs4:32\ppp^\markup{\teeny{"bowing, tremolo alla punta (serratissimo)"}}
    c16:32[ \uN a8._-\mp\downbow] \tuplet 3/2{a4 cs8\upbow_-} c16-.[ fs8.\downbow_-\>] \stemDown \diamondH fs16.\ppp\<[ \uN fs32\!\upbow 8\downbow--]}
    \\
    \relative c{\hide Stem \diamondH \lineDashed cs4\- s16 \uN a8.\- \omit TupletBracket \omit TupletNumber \tuplet 3/2{s4 cs8\-} s16 fs8.\- \diamondH fs16\- s32 \uN fs32\- s8}>>
    \stopStaff \hide Rest r2
    \undo \hide Rest s2
    %327
    s2*18

    %346
    \startStaff
    \diamondH a'8\mp\laissezVibrer^\markup{\teeny{"pizz."}}[ r8] r4
    r16[ fs8.\laissezVibrer\mp] r4
    \stopStaff s2*2
    %350
    \startStaff \dalniente d'8.\-\<^\markup{\teeny{"crine"}}[ r16\f] r4
    r16[ \uN \lineDashed fs,8.\-] r4
    \stopStaff s2
    \startStaff \noireNH c,8\p\laissezVibrer^\markup{\teeny{"pizz."}}[ r8] r4
    \stopStaff s2
    \startStaff
    %355
    r4 <<\relative c'{\hide NoteHead \diamondH \stemDown \dalniente d4\<^\markup{\teeny{"crine"}}
    16\f[ g,8.\rest] \dalniente \stemNeutral d,8\<[ g8\rest\f]
    g'8.\rest[ \uN fs16--\mp] 16 a,8.
    \clef treble d''16\rest[ a'8\mp d,16\rest] \clef bass \tupletDown \tuplet 3/2{g,,8\rest[ g\rest fs8]}
    %359
    \tuplet 5/4{f16[ d16\rest d16\rest fs8]} \tuplet 5/4{16[ d16\rest d16\rest d8]}
    \tupletUp \tuplet 5/4{16[ d16\rest d16\rest d16\rest b16_-]} \tuplet 3/2{16 d16\rest cs4_-}
    %361
    d4\rest \clef treble b''8.\rest[ d16] 
    %362
    8 b\rest \clef bass \tupletNeutral \tuplet 5/4{d,,16\rest[ d16\rest d16\rest fs8]}
    \tuplet 5/4{f8[ d16\rest d16\rest fs16--]} \tuplet 5/4{8[ \clef treble g'16\rest g16\rest b16--]}
    4 8.[ b16\rest]
    %365
    b8\rest[ e8] \tuplet 3/2{e8[ b\rest b\rest]}
    b16\rest[ cs8 b16\rest] \tupletUp \tuplet 3/2{b8\rest[ b\rest a8]}
    16[ b\rest b8\rest] b4\rest}
    \\
    \relative c'{\hide Stem \diamondH d4\-
    s16 g,8\rest s16 \noireNH d,8\- g\rest
    s8. \uN fs'16\- s16 \stemUp a,8_-\- s16
    \clef treble d''16\rest \lineDashed a'8--\- d,16\rest \omit TupletBracket \omit TupletNumber \tuplet 3/2{s4 fs,,8--\-}
    %359
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{s16 d16\rest d16\rest fs8--\-} \omit TupletBracket \omit TupletNumber \tuplet 5/4{ s16 d\rest d\rest d8--\-}
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{s16 d16\rest d16\rest d16\rest b16\-} \tuplet 3/2{s16 d\rest cs4\-}
    %361
    d4\rest \clef treble b''8\rest s16 \lineDashed d16--\- 
    %362
    s8 b\rest \clef bass \omit TupletBracket \omit TupletNumber \tuplet 5/4{s16 d,,\rest d\rest fs8--\-}
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{s8 d16\rest d\rest fs16\-}
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{s8 \clef treble g'16\rest g\rest \lineDashed b16\-}
    s4 s8 s16 b\rest
    %365
    b8\rest \lineDashed e8^-\- \omit TupletBracket \omit TupletNumber \tuplet 3/2{s8 b8\rest s8}
    s16 \lineDashed cs8^-\- b16\rest \omit TupletBracket \omit TupletNumber \tuplet 3/2{s4 \lineDashed a8--\-}
    s16 b\rest s8 s4}>>
    \stopStaff s2
    %369
    \startStaff \clef bass r8[ \diamondH \dalniente \lineDashed d''--\-\<^\markup{\teeny{"legno/crine"}}] r4\mp
    \lineDashed <a cs>8.--\mp\-[ r16] r8[ b,8\p^\markup{\teeny{"pizz."}}\laissezVibrer-.]
    <<\relative c'{\hide NoteHead \diamondH \stemDown d,16\rest[ fs8.^\markup{\teeny{"legno tratto"}}] 16[ d16\rest d8\rest]}
    \\
    \relative c'{\hide Stem \diamondH s16 \lineDashed fs,8^-\- s16 s16 d16\rest s8}>>
    <<\relative c'{\hide NoteHead \diamondH \tuplet 3/2{d8\rest \stemDown cs4} 8.[ g16\rest]
    d4\rest \clef treble b''16.\rest[ \uN fs'32\mp^\markup{\teeny{"crine"}} 8]
    b,4\rest}
    \\
    \relative c'{\hide Stem \omit TupletBracket \omit TupletNumber \tuplet 3/2{ \diamondH s8 \lineDashed cs4^-\-} s8 s16 g16\rest
    d4\rest \clef treble s16. \uN \lineDashed f''32^-\- s8
    \hide Rest r4 \undo \hide Rest}>>
    \clef bass r8[ \uN \lineDashed cs'8--\mp\-]
    \noireNH c,,8[\p^\markup{\teeny{"pizz."}}\laissezVibrer r8] r4
    r4 <<\relative c'{\diamondH \hide NoteHead \dalniente \stemDown d4\<^\markup{\teeny{"crine"}}
    \tuplet 3/2{d8 \dalniente 4\p\>}
    16[ fs,8.\!^\markup{\teeny{"pizz."}}]}
    \\
    \relative c'{\hide Stem \diamondH d4\- 
    s4 s16 fs,8\mf\laissezVibrer s16}>>
    \stopStaff s2
    \startStaff 
    r4 r16[ \diamondH b'8.\laissezVibrer\p^\markup{\teeny{"pizz."}}]
    r4 r16[ <c a'>8.\p\laissezVibrer]
    r4 <a' cs>4\p\laissezVibrer
    %382
    <<\relative c'{\stemDown d,8.\rest[ \hide NoteHead \diamondH fs16]^\markup{\teeny{"legno tratto (fast bowing)"}} 4
    f16[ a8.--\p] 4
    8[ d,8^\markup{\teeny{"pizz."}}\p\laissezVibrer]}
    \\
    \relative c'{d,8\rest s16 \hide Stem \diamondH \stemDown \lineDashed fs16^-\- s4 
    s16 \lineDashed a8\- s16 s4 
    s8 d,8}>> r4
    %385
    r4 r16[ \lineDashed b,8.\p^\markup{\teeny{"legno/crine"}}\-]
    r4 <<\relative c'{d,16\rest[ \diamondH \lineDashed \dalniente b8.\-\<] d8\rest\f}
    \\
    \relative c'{ d,16\rest \noireNH \hide Flag \stemUp \lineDashed c,8.\-}>>
    \clef treble  \uN \lineDashed a''8\-\mp^\markup{\teeny{"crine"}} <<\relative c'{\stemDown b'8\rest[  \hide NoteHead fs'8] 
    f8[ b,8\rest]}
    \\
    \relative c'{s8 \lineDashed \hide Stem \uN fs'8\- 
    s8 b,8\rest}>>
    r4 %\clef bass 
    %389 
    \stopStaff 
    s2*19 %{
    r4 r8[ \diamondH b,,8\p^\markup{\teeny{"legno/crine"}}\-]
    <<
    \relative c'{\stemUp s4 \hide NoteHead <c,, b'>8[ d'8\rest]}
    \\
    \relative c'{\omit Flag s8.\diamondH \stemUp \once \override NoteColumn.force-hshift = #0.5 b,16\- s8 d8\rest}
    \\
    \relative c'{ d,8.\rest[ \noireNH \stemUp  c,16_-\-] \hide Stem s8 d'8\rest}>>
    %391
    <<\relative c'{\hide NoteHead d,8\rest \diamondH <b a'>8 8[ d8\rest] }
    \\
    \relative c'{\hide Stem s8 \diamondH <b, a'>8\- s8 d8\rest}>>
    %392
    r4 r8[ \diamondH a'8\-]
    r4 r16[ <a cs>8\- r16]
    r4 r16[ cs8.\-]
    r4 r16[ cs8\-^\markup{\teeny{"legno/crine"}} r16]
    <<\relative c'{\stemDown  d,8\rest[ \hide NoteHead \diamondH \sharpUp cs'8--] 16[ d,16\rest d16\rest cs'16--]
    d,8\rest[ d16\rest \flatDown df'16] 16[ b16\rest b8\rest] }
    \\
    \relative c'{s8\hide Stem \diamondH cs8\- s16 d,16\rest d16\rest cs'16\-
    d,8\rest s16 \flatDown df'16\- s16 b16\rest s8}>>
    \flatDown df8\-[ r8] r16[ \flatDown df8\- r16]
    r16[ \flatDown df16\- r8] \flatDown df8\-[ r8]
    %400
    <<\relative c'{\stemDown \hide NoteHead  d,4\rest b'8\rest[ b16\rest  af16]
    a4 16[ b16\rest b8\rest]
    af8[ b8\rest] b16\rest[ b8\rest af16]
    a8.[ b16\rest] b16\rest[ b8\rest af16]
    a16 b16\rest b32\rest df,16. 4
    d4 d4
    d4 d4
    d4 d4}
    \\
    \relative c'{\hide Stem \diamondH \flatDown s4  b8\rest s16 \flatDown af16\-
    s4 s16 b16\rest s8
    \flatDown af8\- b8\rest s8. \flatDown af16\-
    s8. b16\rest s8. \flatDown af16\-
    s16 b16\rest s32 \flatDown df,16\-^\markup{\teeny{"crine"}} s32 s4 
    s2
    s2
    s2 
    \stopStaff }>> %} 
    \startStaff 
    \clef bass \uNw \lineDashed c,,,2--\-^\markup{\teeny {\box {"the grain should be as regular as possible"}}}
    \stopStaff \hide Rest r2 \startStaff
    r4 <<\relative c'{\hide NoteHead
         \uN c,,4 4}
         \\
         \relative c'{\hide Stem
                          \uN \lineDashed c,,4_-\- s4}>> r4 \stopStaff
    s2*22

    %[14] %measure 434
    
    \startStaff
    <<\relative c'{d,16\rest[ \diamondH b8.^\markup{\teeny{"pizz."}}\laissezVibrer]}
    \\
    \relative c'{ d,16\rest \noireNH \hide Flag \stemUp c,8._-\laissezVibrer}>> \undo \hide Rest r4 
    %435
    \clef treble <<\relative c'{\stemDown b'8.\rest[ \hide NoteHead \uN c16] 8[ b8\rest]}
    \\
    \relative c'{\hide Stem s8. \lineDashed \uN c'16\-\p^\markup{\teeny{"crine"}} s8 b8\rest}>>
    \clef bass \diamondH fs'8[\mf^\markup{\teeny{"pizz"}}\laissezVibrer r8] r4
    \stopStaff
    s2*2
    %439
    \startStaff
    <<\relative c'{d,4\rest \diamondH \hide NoteHead \flatUp \dalniente \stemDown a'4\<^\markup{\teeny{"crine"}} \dalniente 4\p\> d,4\rest\! }
    \\
    \relative c'{s4 \flatUp \diamondH \hide Stem af4\- s4 d,4\rest}>>
    %441
    <<\relative c'{\hide NoteHead 
      d,8.\rest[ \uN c,16_-] 8[ d'8\rest] }
      \\
      \relative c'{\hide Stem \stemUp 
      s8. \uN \lineDashed c,,16\f\- s8 d'8\rest
    }>>
    \stopStaff s2*4

    %446 [27]
    \startStaff
    <<\relative c{ \diamondH b2\-^\markup{\teeny{"crine"}} \stopStaff \hide Rest r2 \undo \hide Rest
    \startStaff d4\rest b4\- 
    s4 s16 d16\rest s8
    d4\rest d8\rest \hide NoteHead <b a'>8
    4 8[ d8\rest]}
    \\
    \relative c{\blancheNH \hide Flag \stemUp c,2_-\-\mp
    \stopStaff \hide Rest r2 \undo \hide Rest 
    s4 c4_-\-\mp
    s4 s16 d'16\rest s8
    s4 s8 \diamondH <b a'>8--\-\mp 
    s4 s8 d8\rest}
    \\
    \relative c{s1 \hide NoteHead \hide Stem 
    s4 <c, b'>4 \undo \hide Stem \stemUp
    4 16[ d'16\rest d8\rest]}>>
    \stopStaff s2*4
    %456
    \startStaff 
    \clef treble <<\relative c'{\stemDown  b'4\rest b8\rest[ \hide NoteHead cs\p]
    c16.[ b32\rest b8\rest] b4\rest}
    \\
    \relative c'{s4. \uN \lineDashed \hide Stem cs'8^-\-
    s16. b32\rest s4.}>> \stopStaff 
    s2 \startStaff 
    r8[ \lineDashed \uN a''^-\-\p] r4
    r8.[ \slap d,16-.^\markup{\teeny{"col legno battuto"}}] r16[ cs,16-. r16 a'-.]
    \stopStaff %s2*32

    %s2*20

    s2
    %462
    \startStaff %R2*13
    fs'16-.[ r8.] r4
    b,16-.[ r8.] r16[ cs-. r8]
    \stopStaff s2
    \startStaff r8[ a,16-. r16] r8[ d'16-. r16]
    r8.[ c16-.] r8[ b16-. r16] 
    \stopStaff s2
    \startStaff a'16-.[ r8.] r4
    r4 r8[ r32 fs16-. r32]
    r16.[ cs16-. ds16-. r32] r8[ r16. b32-.]
    r8.[  fs16-.] r4
    r4 r8[ a'16-. r16]
    r16.[ c,!16.-. b'16-.] r8.[ g,16-.]
    r16[ a16-. r8] r8[ r16. cs,32-.]
    \stopStaff 

    \stopStaff s2*5
    %480
    \startStaff 
    \clef bass
    <<
    \relative c{g4\rest \hide NoteHead \noireNH \tuplet 3/2{g4\rest c,8_-\downbow}] 
    \tuplet 3/2{c8_-\upbow 8_-\downbow c8_-\upbow} \tuplet 5/4{8._-\downbow 8_-\upbow}
    \tuplet 5/4{16 8_-\downbow 8_-\upbow} 16[ g'16\rest g8\rest]
    \stopStaff s2
    \startStaff g'8\rest \tuplet 5/4{c,,8._-\downbow[ 8_-\upbow]} \tuplet3/2{16[ 8_-\downbow]}
    \tuplet 3/2{c16_-\upbow 8._-\downbow 8_-\upbow} \tuplet3/2{16 4_-\downbow 16_-\upbow}
    \tuplet5/4{8 c8._-\downbow} 16[ 8._-\upbow]
    \stopStaff s2
    \startStaff g''4\rest \tuplet 3/2{g4\rest c,,8_-\downbow} 
    \tuplet 3/2{c8_-\upbow 8_-\downbow 8_-\upbow} \tuplet 5/4{8._-\downbow 8_-\upbow}
    \tuplet 5/4{16 8_-\downbow 8_-\upbow} 16[ g'16\rest g8\rest]}
    \\
    \relative c{s4 \hide Stem \omit TupletNumber \tuplet 3/2{s4 c,8\p\-]} 
    \omit TupletBracket \omit TupletNumber \tuplet 3/2{c8\- c8\- c8\-} \omit TupletBracket \omit TupletNumber \tuplet 5/4{c8.\- 8\-}
    \omit TupletBracket \omit TupletNumber  \tuplet 5/4{s16 c8\- c8\-} s16 g'\rest s8
    \stopStaff s2
    \startStaff s8 \omit TupletBracket \omit TupletNumber \tuplet 5/4{c,8.\- c8\-} \omit TupletBracket \omit TupletNumber  \tuplet3/2{ s16 c8\-}
    \omit TupletBracket \omit TupletNumber \tuplet 3/2{s16 c8.\- c8\-}\omit TupletBracket \omit TupletNumber  \tuplet3/2{s16 c4\- c16\-}
    \omit TupletBracket \omit TupletNumber \tuplet5/4{s8 c8.\-} s16 c8.\-
    \stopStaff \hide Rest r2 \undo \hide Rest
    \startStaff s4 \omit TupletBracket \omit TupletNumber \tuplet 3/2{s4 c8\-} 
    \omit TupletBracket \omit TupletNumber \tuplet 3/2{c8\- c8\- c8\-} \omit TupletBracket \omit TupletNumber  \tuplet 5/4{c8.\- 8\-}
    \omit TupletBracket \omit TupletNumber \tuplet 5/4{s16 c8\- c8\-} s16 g'\rest s8}>> \stopStaff
    s2


    %492
    \startStaff
    \noireNH c,,16\mp-.\laissezVibrer^\markup{\teeny{"pizz."}}[ r8.] r4 \stopStaff 
    s2*3
    %496 [16]
    \startStaff
    <<\relative c'{\hide NoteHead \diamondH d,4\mp^\markup{\teeny{"legno/crine (bowing real slowly)"}} 4
    8.[ \uN a16_-] 16[ d8.\rest] }
    \\
    \relative c'{\hide Stem \diamondH \lineDashed d,4\- s4
    s8. \uN a16\-^\markup{\teeny{"crine"}} s16 d8\rest s16}>>
    \stopStaff s2
    \startStaff r4 r16[ \diamondH b'8.\p\laissezVibrer^\markup{\teeny{"pizz."}}]
    \stopStaff %500
    s2*3
    \startStaff 
    %503
    r4 <<\relative c'{\hide NoteHead \diamondH \stemDown d16\rest[ \flatUp af8.--\pp^\markup{\teeny{"crine"}}]
    \dalniente a4\> d,4\rest\!}
    \\
    \relative c'{\hide Stem \diamondH \flatUp s16 af8\- s16
    s4 d,4\rest}>> \stopStaff
    %505
    s2*2
    %507
    \startStaff r4 <<\relative c'{\hide NoteHead \stemDown \diamondH \flatUp df,4--\mf
    d4 4
    d4 d4\rest}
    \\
    \relative c'{\hide Stem \diamondH \flatUp df,4\-
    s2. d4\rest}>> \stopStaff
    %510
    s2*4 \startStaff
    \dalniente \noireNH fs4\p\>^\markup{\teeny{"pizz"}}\glissando \magnifyMusic 0.5 {c32\!} r32 r8.
    r8[ \diamondH fs'8-.\laissezVibrer]^\markup{\teeny{"pizz."}}\mf r4
    r4 r8.[ <a cs>16-.\laissezVibrer^\markup{\teeny{"pizz."}}\mf]
    \stopStaff s2*12
    \startStaff 
    r4 \diamondH a8\p^\markup{\teeny{"pizz."}}-.\laissezVibrer[ r8]
    \stopStaff s2
    \startStaff \noireNH \dalniente d,,8..\mp\>->-.\glissando^\markup{\teeny{"pizz."}} \magnifyMusic0.5{c32}  r4\!
    r4 <<\relative c'{\hide NoteHead \noireNH \dalniente d,,4\<
    \dalniente 8.\mp\>[ d'16\rest\!]}
    \\
    \relative c'{\hide Stem \noireNH d,,4\-^\markup{\teeny{"crine"}}
    s8. d'16\rest}>> r4 \stopStaff
    s2 \startStaff
    %535 
    \diamondH <a'' cs>8\p\laissezVibrer[^\markup{\teeny{"pizz."}} r8] r4 \stopStaff
    s2*4
    %540
    \startStaff
    <<\relative c'{\hide NoteHead \uN a,4_-^\markup{\teeny{"crine"}} 8.[ fs'16_-]
    \stemDown f4 \stemNeutral 8[ cs8--]
    c4 16[ b'8.--]
    4 16[ a,8.--]
    \tuplet 3/2{4 cs8_-} 4
    c16[ fs8.--] 4
    \tuplet 3/2{b,4_- \uNw \stemDown a'2--}
    4 8[ d,8\rest]}
    \\
    \relative c'{\hide Stem \uN a,4\-\mf s8. fs'16\-
    s4 s8 cs8\-
    s4 s16 b'8.\-
    s4 s16 a,8.\-
    \omit TupletBracket \omit TupletNumber \tuplet 3/2{s4 cs8\-} s4
    s16 fs8\- s16 s4 
    \omit TupletBracket \omit TupletNumber \tuplet 3/2{b,4\- \uNw a'2\-}
    s4 s8 d,8\rest}>> \stopStaff





}


% \score{\cello}

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