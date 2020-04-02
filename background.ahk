; 請修改需要調整的文字
#If WinActive("ahk_class CLASS名稱")
    #MaxThreadsPerHotkey 3
    `::
    #MaxThreadsPerHotkey 1
    if Running{
        Running := false
        Return
    }
    Running := true
    Loop
    {
            if not Running
                break
            if !GetKeyState("") {
                ; 滑鼠背景點擊
                ControlClick, X0 Y0, 視窗名稱, , Left
                ; 鍵盤背景點擊
                ControlSend, , {Space}, 視窗名稱
                Sleep 10
            }

    }
    Running := false
    Return