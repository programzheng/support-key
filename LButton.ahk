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
            ; 滑鼠點擊
            Send {LButton Down}
            Send {LButton Up}
            Sleep 10
        }

}
Running := false
Return