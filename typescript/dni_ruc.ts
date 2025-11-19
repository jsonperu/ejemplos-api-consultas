const TOKEN = '<token>';
const BASE_URL = 'https://api.json.pe/api';

type DniPayload = { dni: string };
type JsonPeResponse = Record<string, unknown>;

async function callJsonPe(payload: DniPayload): Promise<JsonPeResponse> {
  const response = await fetch(${BASE_URL}/dni, {
    method: 'POST',
    headers: {
      Authorization: Bearer ,
      'Content-Type': 'application/json'
    },
    body: JSON.stringify(payload)
  });

  if (!response.ok) {
    throw new Error(Error );
  }

  return response.json();
}

(async () => {
  console.log(await callJsonPe({ dni: '27427864' }));
})();
