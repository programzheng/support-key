#MaxThreadsPerHotkey 3
`::
#MaxThreadsPerHotkey 1
if Running{
    Send {LButton Up}
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
        }

}
Running := false
Return