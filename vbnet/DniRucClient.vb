Imports System
Imports System.Net.Http
Imports System.Net.Http.Headers
Imports System.Text
Imports System.Threading.Tasks

Module DniRucClient
    Private ReadOnly client As New HttpClient()
    Private Const token As String = "<token>"

    Private Async Function CallAsync(payload As String) As Task(Of String)
        Dim request = New HttpRequestMessage(HttpMethod.Post, "https://api.json.pe/api/dni") With {
            .Content = New StringContent(payload, Encoding.UTF8, "application/json")
        }
        request.Headers.Authorization = New AuthenticationHeaderValue("Bearer", token)
        Dim response = Await client.SendAsync(request)
        response.EnsureSuccessStatusCode()
        Return Await response.Content.ReadAsStringAsync()
    End Function

    Public Async Function Main() As Task
        Console.WriteLine(Await CallAsync("{\"dni\":\"27427864\"}"))
    End Function
End Module
