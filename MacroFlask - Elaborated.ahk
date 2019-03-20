#NoEnv 
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


Timer(Timer_Name := "", Timer_Opt := "D")
{
 static
 global Timer, Timer_Count
 if RegExMatch(Timer_Opt,"(\d+)",Timer_Match)
  Timer_Period := Timer_Match1
 else
  Timer_Period := 0
 if RegExMatch(Timer_Opt,"(\D+)",Timer_Match)
  Timer_Opt := Timer_Match1
 else
  Timer_Opt := "D"
 if !Timer
  Timer := {}
 if (Timer_Name = "")
 {
  for index, element in Timer
   Timer(index)
  return
 }
 if Timer_Period
 {
  Timer[Timer_Name,"Start"] := A_TickCount
  Timer[Timer_Name,"Finish"] := A_TickCount + Timer_Period
  Timer[Timer_Name,"Period"] := Timer_Period
  Timer_Count += 1
 }
 if (Timer_Opt = "R" or Timer_Opt = "Reset")
 {
  Timer[Timer_Name,"Start"] := A_TickCount
  Timer[Timer_Name,"Finish"] := A_TickCount + Timer[Timer_Name,"Period"]
 }
 Timer[Timer_Name,"Now"] := A_TickCount
 Timer[Timer_Name,"Left"] := Timer[Timer_Name,"Finish"] - Timer[Timer_Name,"Now"]
 Timer[Timer_Name,"Done"] := true
 if (Timer[Timer_Name,"Left"] > 0)
  Timer[Timer_Name,"Done"] := false
 if (Timer_Opt = "D" or Timer_Opt = "Done")
  return Timer[Timer_Name,"Done"]
 if (Timer_Opt = "S" or Timer_Opt = "Start")
  return Timer[Timer_Name,"Start"]
 if (Timer_Opt = "F" or Timer_Opt = "Finish")
  return Timer[Timer_Name,"Finish"]
 if (Timer_Opt = "L" or Timer_Opt = "Left")
  return Timer[Timer_Name,"Left"]
 if (Timer_Opt = "N" or Timer_Opt = "Now")
  return Timer[Timer_Name,"Now"]
 if (Timer_Opt = "P" or Timer_Opt = "Period")
  return Timer[Timer_Name,"Period"]
}








return


Random, rand, 100, 200

~e::

IfWinActive Path of Exile ahk_class POEWindowClass
{

WinActivate

	if Timer("flask02"){
		
		Send 2


		Timer("flask02",3400)

		
		}
 Sleep rand

 
 
	if Timer("flask03"){
		
		Send 3


		Timer("flask03",5300)

		
		}
 Sleep rand

	
		if Timer("flask04"){
		
		Send 4


		Timer("flask04",3800)

		
		}
Sleep rand
		
 
 if Timer("flask05"){
		
		Send 5


		Timer("flask05",3800)

		
		}
		}
Sleep rand

return






~w::


	IfWinActive Path of Exile ahk_class POEWindowClass
{
WinActivate

		if Timer("flask04"){
		
		Send 4


		Timer("flask04",3800)

		
		}
}
		

return



~2::
		Timer("flask02",3400)
return

~3::
		Timer("flask03",5300)
return

~4::
		Timer("flask04",3800)
return

~5::
		Timer("flask05",3800)
return







