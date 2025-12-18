# generators users
from typing import List
from utils import q

_BCRYPT_SAMPLE = "$2b$12$eIXhD1YwFzQkLQ9R0O6B8e1Y6uJp9gE5MZkXGQn0qj2FhQZ3BvZ9K"

def rows_users_bacsi(bs_ids: List[str]) -> List[str]:
    rows: List[str] = []
    for bs in bs_ids:
        uname = bs.lower()
        rows.append(f"({q(uname)},{q(_BCRYPT_SAMPLE)},{q('BACSI')},{q(bs)})")
    return rows

def rows_users_benhnhan(bn_ids: List[str]) -> List[str]:
    rows: List[str] = []
    for bn in bn_ids:
        uname = bn.lower()
        rows.append(f"({q(uname)},{q(_BCRYPT_SAMPLE)},{q('BENHNHAN')},{q(bn)})")
    return rows

def dump_users_bacsi(writer, bs_ids: List[str]):
    writer.write_line("INSERT INTO user (username, password, role, ref_id) VALUES")
    rows = rows_users_bacsi(bs_ids)
    for i, r in enumerate(rows):
        writer.write_line(r + ("," if i < len(rows) - 1 else ";"))
    writer.write_line("")

def dump_users_benhnhan(writer, bn_ids: List[str]):
    writer.write_line("INSERT INTO user (username, password, role, ref_id) VALUES")
    rows = rows_users_benhnhan(bn_ids)
    for i, r in enumerate(rows):
        writer.write_line(r + ("," if i < len(rows) - 1 else ";"))
    writer.write_line("")
