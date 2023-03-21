SELECT
  activities.uuid,
  users.handle,
  users.display_name,
  activities.message,
  activities.created_at,
  activities.expires_at
FROM public.activities
INNER JOIN public.users ON users.uuid = activities.user_uuid
WHERE
  activities.uuid = %(uuid)s