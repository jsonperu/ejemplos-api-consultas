package main

import (
    "bytes"
    "encoding/json"
    "fmt"
    "io"
    "net/http"
)

const token = "<token>"
const baseURL = "https://api.json.pe/api/dni"

func call(payload any) ([]byte, error) {
    body, _ := json.Marshal(payload)
    req, _ := http.NewRequest(http.MethodPost, baseURL, bytes.NewReader(body))
    req.Header.Set("Authorization", "Bearer "+token)
    req.Header.Set("Content-Type", "application/json")

    resp, err := http.DefaultClient.Do(req)
    if err != nil {
        return nil, err
    }
    defer resp.Body.Close()

    if resp.StatusCode >= 400 {
        data, _ := io.ReadAll(resp.Body)
        return nil, fmt.Errorf("error %d: %s", resp.StatusCode, data)
    }

    return io.ReadAll(resp.Body)
}

func main() {
    res, err := call(map[string]string{"dni": "27427864"})
    if err != nil {
        panic(err)
    }
    fmt.Println(string(res))
}
