-- 테이블 삭제 --
DROP TABLE users;
DROP TABLE post;

-- 테이블 생성
CREATE TABLE users (
    user_no INT AUTO_INCREMENT PRIMARY KEY,  -- 회원 번호 (자동 증가, 기본키)
    username VARCHAR(50) NOT NULL,      -- 사용자 이름
    password VARCHAR(100) NOT NULL,     -- 비밀번호
    email VARCHAR(100),                 -- 이메일 주소
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- 가입 일시 (기본값 현재 시간)
);

CREATE TABLE post (
    post_no INT AUTO_INCREMENT PRIMARY KEY,  -- 게시글 ID
    title VARCHAR(255) NOT NULL,        -- 게시글 제목
    content TEXT NOT NULL,              -- 게시글 내용
    private_yn CHAR(1) DEFAULT 'N',     -- 공개 여부 (Y: 비공개, N: 공개)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- 작성 시간
);
