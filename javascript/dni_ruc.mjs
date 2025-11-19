import fetch from 'node-fetch';

const TOKEN = '<token>';
const BASE_URL = 'https://api.json.pe/api';

async function callJsonPe(payload) {
  const response = await fetch(${BASE_URL}/dni, {
    method: 'POST',
    headers: {
      Authorization: Bearer ,
      'Content-Type': 'application/json'
    },
    body: JSON.stringify(payload)
  });

  if (!response.ok) {
    const text = await response.text();
    throw new Error(Error : );
  }

  return response.json();
}

const run = async () => {
  console.log(await callJsonPe({ dni: '27427864' }));
};

run().catch(console.error);
