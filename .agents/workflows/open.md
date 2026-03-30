---
description: Mở hoặc chuyển sang một dự án (project) khác trong MB Workspace
---

Sử dụng kịch bản này khi người dùng muốn "Mở dự án abc", "Vào project xyz", "Chuyển sang mát bảo...".

1.  Xác định "Tên dự án" (Project Name) từ yêu cầu của người dùng.
2.  Tìm kiếm thư mục dự án trong `$MB_WORKSPACE_HOME/projects/`.
3.  Nếu không tìm thấy tên chính xác, hãy liệt kê các dự án hiện có và hỏi lại người dùng.
4.  Nếu tìm thấy:
    -   Sử dụng lệnh `cd` để chuyển đến thư mục dự án đó.
    -   Mở IDE (VS Code/Cursor/Antigravity) tại thư mục đó: `code -r .` hoặc `cursor -r .` hoặc `antigravity -r .`.
5.  Thông báo cho người dùng: "Dạ, em đã chuyển sang dự án [Tên] và mở IDE cho anh rồi ạ!"

CRITICAL: Tuyệt đối không chạy `npx mb-workspace` để mở dự án. Chỉ cần dùng lệnh `cd` và mở IDE.
