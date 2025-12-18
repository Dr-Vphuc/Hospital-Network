# Stream wrỉter & batching
from typing import Iterable, List

class SqlWriter:
    def __init__(self, fp):
        self.fp = fp

    def write_line(self, s: str = ""):
        self.fp.write(s + "\n")

    def section(self, title: str, idx: int):
        self.write_line("/* =========================")
        self.write_line(f"{idx}. {title}")
        self.write_line("========================= */")

    def insert_values_terminated(self, table: str, row_iter: Iterable[str], batch_size: int = 5000):
        batch: List[str] = []
        for row in row_iter:
            batch.append(row)
            if len(batch) >= batch_size:
                self._flush_batch(table, batch)
                batch.clear()
        if batch:
            self._flush_batch(table, batch)

    def _flush_batch(self, table: str, batch: List[str]):
        self.write_line(f"INSERT INTO {table} VALUES")
        for i, r in enumerate(batch):
            end = ";" if i == len(batch) - 1 else ","
            self.write_line(r + end)
        self.write_line("")
