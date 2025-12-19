# Lưu trữ trạng thái hiện tại để tiếp tục dump sau
import json
from pathlib import Path

def load_state(path: str) -> dict:
    p = Path(path)
    if p.exists():
        # ngoại lệ nếu file rỗng hoặc format lỗi
        try:
            content = p.read_text(encoding="utf-8").strip()
            if not content:
                return {}
            return json.loads(content)
        except json.JSONDecodeError:
            # Nếu file rỗng/format lỗi thì coi như state mới
            return {}
    return {}

def save_state(state: dict, path: str):
    Path(path).write_text(json.dumps(state, ensure_ascii=False, indent=2), encoding="utf-8")

class PersistentIdGen:
    def __init__(self, prefix: str, width: int, key: str, state: dict, start: int = 1):
        self.prefix = prefix
        self.width = width
        self.key = key
        self.state = state
        if key not in state:
            state[key] = start

    def next(self) -> str:
        cur = self.state[self.key]
        self.state[self.key] = cur + 1
        return f"{self.prefix}{cur:0{self.width}d}"
