import json
import sys
from typing import Any, Dict

import requests

TOKEN = '<token>'
BASE_URL = 'https://api.json.pe/api'


def call_json_pe(payload: Dict[str, str]) -> Dict[str, Any]:
    response = requests.post(
        f"{BASE_URL}/dni",
        headers={
            'Authorization': f'Bearer {TOKEN}',
            'Content-Type': 'application/json',
        },
        json=payload,
        timeout=15,
    )
    response.raise_for_status()
    return response.json()


def main() -> None:
    print(json.dumps(call_json_pe({'dni': '27427864'}), ensure_ascii=False, indent=2))


if __name__ == '__main__':
    try:
        main()
    except Exception as err:  # noqa: BLE001
        print(f'Error: {err}', file=sys.stderr)
        sys.exit(1)
