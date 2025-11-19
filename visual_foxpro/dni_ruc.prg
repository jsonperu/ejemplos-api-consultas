* Ejecuta este archivo desde Visual FoxPro 9
LOCAL lcToken
lcToken = "<token>"

FUNCTION CallJsonPe(tcBody)
    LOCAL loReq
    loReq = CREATEOBJECT("WinHttp.WinHttpRequest.5.1")
    loReq.Open("POST", "https://api.json.pe/api/dni", .F.)
    loReq.SetRequestHeader("Authorization", "Bearer " + lcToken)
    loReq.SetRequestHeader("Content-Type", "application/json")
    loReq.Send(tcBody)
    RETURN loReq.ResponseText
ENDFUNC

? CallJsonPe('{"dni":"27427864"}')
