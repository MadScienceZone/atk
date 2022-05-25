module github.com/MadScienceZone/atk

go 1.18

replace github.com/MadScienceZone/atk/tk/interp => ../atk/tk/interp

replace github.com/MadScienceZone/atk/tk => ../atk/tk

replace github.com/MadScienceZone/atk => ../atk

replace github.com/MadScienceZone/go-gma/v4 => ../go-gma

require (
	github.com/MadScienceZone/atk v1.2.2
	github.com/MadScienceZone/go-gma/v4 v4.3.12
	golang.org/x/sync v0.0.0-20210220032951-036812b2e83c // indirect
)
