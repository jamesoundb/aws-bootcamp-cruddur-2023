-- this file was manually created
INSERT INTO public.users (display_name, handle, email, cognito_user_id)
VALUES
  ('James Wurbel', 'jamesoundb' ,'jameswurbel.it@gmail.com', '7a310240-e888-4f0a-b9f5-7a434a8a471f'),
  ('Andrew Bayko', 'bayko', 'bayko@mock.com', '8vc48b2f-x548-8ejs-w24d-2ic9wiwhfna3'),
  ('James Wurbel', 'jamesoundb II', 'jameswurbel@gmail.com', 'fb1a437a-1457-4dbc-982e-5d0be7cecd76');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'jamesoundb' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )