CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE IF NOT EXISTS public.users (
    userid         VARCHAR NOT NULL,
    password_hash  VARCHAR NOT NULL,
    role           TEXT NOT NULL,
    CONSTRAINT users_pkey PRIMARY KEY (userid)
);

INSERT INTO public.users (userid, password_hash, role)
VALUES
    ('admin_test', '5f4dcc3b5aa765d61d8327deb882cf99', 'admin'),
    ('basic_test_user', '482c811da5d5b4bc6d497ffa98491e38', 'basic'),
    ('lakshya', '5f4dcc3b5aa765d61d8327deb882cf99', 'basic'),
    ('user1', '8223fe8dc0533c6ebbb717e7fda2833c', 'basic'),
    ('user2', '5f4dcc3b5aa765d61d8327deb882cf99', 'basic')
ON CONFLICT DO NOTHING;
