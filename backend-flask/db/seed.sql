-- this file was manually created
INSERT INTO public.users (display_name, handle, email, cognito_user_id)
VALUES
  ('Andrew Brown', 'andrewbrown', 'andrew@mock.com', '2104de31-c4ae-4a31-b396-93bec358a660'),
  ('James Wurbel', 'jamesoundb' ,'jameswurbel.it@gmail.com', '7a310240-e888-4f0a-b9f5-7a434a8a471f'),
  ('James Wurbel', 'jamesoundb II', 'jameswurbel@gmail.com', 'fb1a437a-1457-4dbc-982e-5d0be7cecd76');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'andrewbrown' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )