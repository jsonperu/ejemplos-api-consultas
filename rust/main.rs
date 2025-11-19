use reqwest::blocking::Client;
use serde_json::json;

const TOKEN: &str = "<token>";
const BASE_URL: &str = "https://api.json.pe/api/dni";

fn main() -> anyhow::Result<()> {
    let client = Client::new();
    let response = client
        .post(BASE_URL)
        .bearer_auth(TOKEN)
        .json(&json!({"dni": "27427864"}))
        .send()?;

    if !response.status().is_success() {
        anyhow::bail!("Error {}", response.status());
    }

    println!("{}", response.text()?);
    Ok(())
}
