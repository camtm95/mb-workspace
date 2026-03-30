---
description: Lưu lại toàn bộ mã nguồn đang sửa đổi của Task hiện tại (Save/Commit/Push)
---

Sử dụng kịch bản này khi người dùng muốn lưu code, cất code, save project, hoặc ghi nhận những gì vừa làm.

1.  Hỏi người dùng "Lời nhắn dự kiến" (Message) nếu họ chưa cung cấp (ví dụ: "Anh muốn ghi lời nhắn gì cho lần lưu này ạ?").
2.  Xác định đường dẫn của MB Workspace: Lấy từ biến môi trường `MB_WORKSPACE_HOME` hoặc mặc định là `.mb-workspace` trong Home.
3.  Gọi lệnh terminal: `mb-save "<lời-nhắn>"`
4.  Thông báo cho người dùng khi hoàn tất.
