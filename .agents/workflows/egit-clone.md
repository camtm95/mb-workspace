description: Tải (Clone) dự án mới về máy, hỗ trợ Access Token nếu cần (/egit clone-dự-án)
---

Sử dụng kịch bản này khi người dùng gõ `/egit clone`, hoặc muốn "Thêm dự án", "Clone cái này" bằng bộ công cụ MB.

1.  Xác định "Link Repository" (URL) từ yêu cầu của người dùng.
2.  Nếu dự án yêu cầu quyền truy cập riêng tư, hãy hỏi "Username" và "Access Token" (ví dụ: "Dự án này cần token để tải, anh cho em xin Username và Token nhé?").
3.  Gọi lệnh terminal: `mb-clone "<URL>" "<TOKEN>" "<USERNAME>"`
4.  Sau khi tải xong, tự động `cd` vào thư mục dự án mới.
5.  Mở IDE (VS Code/Cursor) bằng lệnh: `code -r .` hoặc `cursor -r .` 
6.  Thông báo cho người dùng: "Xong rồi ạ! Em đã tải dự án và mở sẵn IDE cho anh rồi nhé."
