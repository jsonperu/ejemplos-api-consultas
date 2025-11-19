import Foundation

let token = "<token>"
let requestURL = URL(string: "https://api.json.pe/api/dni")!

func callJsonPe(payload: [String: String]) async throws -> Data {
    var request = URLRequest(url: requestURL)
    request.httpMethod = "POST"
    request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    request.httpBody = try JSONSerialization.data(withJSONObject: payload)

    let (data, response) = try await URLSession.shared.data(for: request)
    guard let http = response as? HTTPURLResponse, 200..<300 ~= http.statusCode else {
        throw URLError(.badServerResponse)
    }
    return data
}

Task {
    do {
        let dni = try await callJsonPe(payload: ["dni": "27427864"])
        print(String(data: dni, encoding: .utf8) ?? "")
    } catch {
        print("Error", error)
    }
    exit(EXIT_SUCCESS)
}

RunLoop.main.run()
