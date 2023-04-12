#! /usr/bin/env python3

import os
import sys
from datetime import datetime, timedelta, timezone

print("== db-datetime-test")

current_path = os.path.dirname(os.path.abspath(__file__))
parent_path = os.path.abspath(os.path.join(current_path, '..', '..'))
sys.path.append(parent_path)
from lib.db import db

def datetime_test():
  sql = """
    SELECT activities.created_at
    FROM activities
    LIMIT 1
  """
  data = db.query_value(sql,{})
  return data

d = datetime_test()

print('type:',type(d))
print('value:',d)
print('datetime aware?:', d.tzinfo)

print('now',datetime.now())
print('now:utc',datetime.now(timezone.utc))
print('astimezone',datetime.now(timezone.utc).astimezone())
print('now:isoformat',datetime.now().isoformat())
print('now:utc:isoformat',datetime.now(timezone.utc).isoformat())
print('now+timedelta',(datetime.now() + timedelta(minutes=35)))

'2023-I04-05 13:15:19.922515'
'2023-04-05T13:15:19.922515'