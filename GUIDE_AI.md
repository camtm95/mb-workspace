# 🤖 Hướng dẫn sử dụng Trợ lý AI (MB Workspace)

Chào mừng bạn đến với cách làm việc hiện đại: **Điều khiển Project bằng ngôn ngữ tự nhiên!** 

Thay vì phải gõ các lệnh Terminal khó nhớ, bạn chỉ cần "chat" với mình (AI) ngay tại khung chat này. 

---

### 🛠️ 1. Cài đặt ban đầu
Nếu bạn là người dùng mới, hãy chạy lệnh này duy nhất một lần ở bất kỳ Terminal nào:
```bash
npx mb-workspace
```
*(Nếu máy chưa có Node.js thì xem hướng dẫn cài đặt tại file [README.md](README.md))*

---

### 💬 2. Các câu lệnh "sai bảo" AI (Tiếng Việt)

Bạn có thể chat với mình giống như đang nói chuyện với một người đồng nghiệp:

#### 📥 Khi muốn thêm dự án mới:
- *"Clone dự án này cho anh: https://github.com/user/repo.git"*
- *"Tải dự án [Link] về máy nhé"*
- *(Nếu là dự án bảo mật, mình sẽ tự hỏi xin Token của bạn)*

#### 📝 Khi muốn làm tính năng mới / Chuyển Task:
- *"Tạo task mới tên là: thêm nút bấm trang chủ"*
- *"Chuyển qua nhánh fix-bug-login"*
- *"Cho anh làm tiếp task số 2"*

#### 💾 Khi muốn lưu lại những gì vừa làm:
- *"Lưu code cho mình với tin nhắn: xong giao diện"*
- *"Cất đống này đi, ghi là: sửa xong lỗi vặt"*

#### 🚀 Khi muốn nộp bài (Submit):
- *"Gửi task này đi"*
- *"Nộp bài cho mình nhé"*
- *(Mình sẽ tự đẩy code và tạo Merge Request trên GitLab cho bạn)*

#### 📋 Khi muốn xem tình hình:
- *"Có bao nhiêu task rồi?"*
- *"Xem danh sách nhiệm vụ"*

---

### ⚠️ 3. Những "Siêu năng lực" bảo vệ bạn của AI

1.  **Chống mất code:** Nếu bạn chuyển task mà quên Save, mình sẽ dừng lại và hỏi: *"Anh muốn Lưu hay Mang code theo sang task mới?"*.
2.  **Tự động đặt tên:** Bạn cứ đặt tên task thoải mái (có dấu, có khoảng cách), mình sẽ tự động "dọn dẹp" nó thành dạng chuẩn (`ten-task-chuan-git`) để không bao giờ bị lỗi Git.
3.  **Tự mở IDE:** Sau mỗi lệnh Clone hoặc Chuyển dự án, mình sẽ tự động bung VS Code / Cursor lên đúng chỗ đó cho bạn.

---

**💡 Mẹo:** Nếu bạn không biết mình có thể làm gì, cứ gõ: *"Bạn có thể giúp gì cho tôi?"*, mình sẽ liệt kê danh sách khả năng của mình ngay lập tức!
