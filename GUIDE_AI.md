# 🤖 Hướng dẫn sử dụng Trợ lý AI (MB Workspace)

Chào mừng bạn đến với cách làm việc hiện đại: **Điều khiển Project bằng ngôn ngữ tự nhiên!** 

Để đảm bảo AI luôn nhận diện đúng bộ công cụ MB Workspace (tránh nhầm lẫn với các lệnh Git thông thường), bạn hãy bắt đầu yêu cầu bằng từ khóa **`/egit`** hoặc **`egit`**.

---

### 🛠️ 1. Cài đặt ban đầu
Nếu bạn là người dùng mới, hãy chạy lệnh này duy nhất một lần ở bất kỳ Terminal nào:
```bash
npx mb-workspace
```
*(Nếu máy chưa có Node.js thì xem hướng dẫn cài đặt tại file [README.md](README.md))*

---

### 💬 2. Các câu lệnh "sai bảo" AI (Dùng tiền tố /egit)

Bạn có thể chat trực tiếp các lệnh sau:

#### 📥 Thêm dự án mới:
- *`/egit clone [Link]`*
- *"egit clone dự án này cho anh: [Link]"*

#### 📝 Làm tính năng mới / Chuyển Task:
- *`/egit task thêm nút bấm trang chủ`*
- *`/egit task fix-bug-login`*

#### 💾 Lưu lại những gì vừa làm:
- *`/egit save xong giao diện`*
- *"egit save sửa xong lỗi vặt"*

#### 🚀 Nộp bài (Submit):
- *`/egit submit`*
- *"egit submit task này đi"*

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
