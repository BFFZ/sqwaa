
-- قاعدة بيانات المستخدمين
CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    role ENUM('parent', 'psychologist', 'admin') DEFAULT 'parent',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- محتوى الصفحة الرئيسية
CREATE TABLE Homepage_Content (
    id INT AUTO_INCREMENT PRIMARY KEY,
    section VARCHAR(50),
    title VARCHAR(150),
    content TEXT,
    image_url VARCHAR(255),
    order_number INT
);

-- الأسئلة الشائعة
CREATE TABLE FAQ (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL,
    answer TEXT NOT NULL,
    order_number INT
);

-- شهادات المستخدمين
CREATE TABLE Testimonials (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(100),
    role VARCHAR(50),
    statement TEXT,
    avatar_url VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
