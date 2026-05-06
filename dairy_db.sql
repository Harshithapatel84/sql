create database happy_cow;
use happy_cow;
INSERT INTO admin_info (
    admin_name,
    email_id,
    phone_number,
    password,
    confirm_password,
    profile_picture_content_type,
    failed_attempts,
    account_locked,
    locked_at,
    unlock_token,
    unlock_token_expiry,
    otp,
    otp_expiry
) VALUES (
    'Harshitha',
    'harshithashanthraju@gmail.com',
    8431567243,
    '$2a$10$Ojy8noXN5kJTLEfb2U47du.Z2XAmO4oBGrA3SzGwK4/HGgXffq4ha',
    'password123',
    'image/jpeg',
    0,
    false,
    NULL,
    '',
    NULL,
    NULL,
    NULL
);
