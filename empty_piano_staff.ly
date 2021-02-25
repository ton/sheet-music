#(set-global-staff-size 40.2)

\header { tagline = "" }

\score {
  \new PianoStaff 
  <<
    \new Staff
    {
      \repeat unfold 4 { s1 \break }
    }
    \new Staff
    {
      \clef bass
      \repeat unfold 4 { s1 \break }
    }
  >>
  \layout {
    indent = 0\in
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}

\paper {
  #(set-paper-size "a4")
  ragged-last-bottom = ##f
  line-width = 7.5 \in
  left-margin = 0.5 \in
  bottom-margin = .50 \in
  top-margin = .75 \in
}
