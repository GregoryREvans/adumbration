\version "2.19.82"
\language "english"
\include "stylesheet.ily"


\new Score {
	\new StaffGroup <<
		\context ViolinStringStaff = "violin_string_staff" {
			b'4
			c''4
		}
		\context Staff = "StaffTwo" {
			c'4
			d'
			e'
			f'
		}
		\context Staff = "StaffThree" {
			c'4
			d'
			e'
			f'
		}
	>>
}
