description: Gửi task (Submit) và tạo Merge Request trên GitLab (/egit submit)
---

Sử dụng kịch bản này khi người dùng gõ `/egit submit`, hoặc muốn "Nộp bài", "Gửi task" bằng bộ công cụ MB.

1.  Thông báo cho người dùng là mình đang tiến hành đẩy code và tạo Merge Request (MR).
2.  Xác định Remote URL của dự án hiện tại để kiểm tra xem có phải GitLab không.
3.  Gọi lệnh terminal: `mb-submit` (Lệnh này đã được cấu hình để tự động tạo MR cho GitLab).
4.  Báo cáo kết quả và cung cấp link Merge Request nếu có.
