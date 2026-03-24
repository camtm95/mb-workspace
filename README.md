# 🚀 MB Workspace

Bộ công cụ CLI cực kỳ thông thái giúp bạn quản lý dự án, xử lý vòng đời Git (clone, tạo task, chuyển nhánh, commit, submit) cực kỳ trơn tru. Hệ thống tự động cảnh báo xung đột, tránh mất mã nguồn, và đặc biệt dành cho những bạn không muốn gõ/nhớ lệnh Git dài dòng.

---

## 💻 1. Cài đặt và cập nhật (Bằng lệnh tự động)

Cách **nhanh nhất** và **khuyên dùng** để cài hoặc nâng cấp phiên bản mới nhất (yêu cầu máy có cài Node.js):

Mở terminal ở bất kỳ đâu và gõ lệnh:
```bash
npx mb-workspace
```
*(Lệnh này tự động nhận diện hệ điều hành Windows/MacOS/Linux để cài đặt, và sẽ cập nhật nếu bạn đã cài rồi)*

> **Lưu ý:** Cài xong hãy tắt terminal hiện tại và bật cái mới lên để hệ thống nhận diện câu lệnh nhé! Công cụ cũng sẽ tự động lưu lại mật khẩu Git giúp bạn ở lần yêu cầu gõ mật khẩu tiếp theo.

---

## 🛠 2. Cài đặt thủ công (Không dùng NPM)

Nếu không có sẵn Node.js, bạn copy 1 trong 2 dòng lệnh tương ứng với máy mình để chạy nhé:

**👉 Dành cho MacOS / Linux / WSL (Ubuntu):**
```bash
curl -fsSL https://raw.githubusercontent.com/camtm95/mb-workspace/main/install.sh | bash
```

**👉 Dành cho Windows PowerShell (Mở bằng quyền Administrator):**
```powershell
iwr -useb https://raw.githubusercontent.com/camtm95/mb-workspace/main/install.ps1 | iex
```

---

## 🌟 3. Hướng dẫn sử dụng bằng giao diện Menu (UI)

Chỉ cần gõ 1 lệnh thần thánh duy nhất ở bất kỳ đâu để hiển thị menu thông minh:

```bash
ecu
# hoặc dùng lệnh: mb-ui
```

Hệ thống sẽ **tự động nhìn xem bạn đang đứng ở đâu** để đưa ra màn hình phù hợp:

### 📁 A. Màn hình chọn Dự án (MB WORKSPACE)
Sẽ hiện ra khi bạn đang đứng ở một thư mục bất kỳ bên ngoài:
*   **[0], [1], [2]...:** Liệt kê các project bạn có trong máy. Dự án nào bạn code gần đây nhất sẽ nhảy lên đầu. Chọn số thứ tự để hệ thống **tự động mở IDE** (VS Code, Cursor...) lên dự án đó.
*   **[C] Clone project mới:** Dán link kho chứa mã nguồn vào, hệ thống tự clone an toàn về máy và trả lại Menu để bạn tải lên IDE làm việc.
*   **[Q] Thoát:** Đóng Menu.

### 📝 B. Màn hình quản lý Task (TASK MENU)
Sẽ hiện ra khi bạn dùng lệnh `ecu` mà đã đứng sẵn trong thư mục của 1 dự án (Hoặc gõ terminal bên trong IDE):
*   **Liệt kê Task thông minh:** Các nhánh (branch) bạn đang làm sẽ nằm trên cùng. Bạn chỉ cần gõ số `0`, `1`... để nhảy qua lại giữa các tính năng. **Đặc biệt: Nếu bạn đang viết dở code mà chưa lưu, công cụ sẽ chặn chặn đứng bạn lại và hỏi bạn muốn lưu hay mang code theo, siêu an toàn.** (Màu xanh: Đang mần, Màu Vàng: Bình thường, Màu Xám: Đã nộp/Golive).
*   **[N] Tạo task mới:** Điền tên nhánh mới, nếu mạng đã có file nhánh trùng tên, hệ thống hỏi bạn có kéo về không.
*   **[S] Lưu task đang làm:** Nhập lời nhắn xong hệ thống gộp 3 lệnh Git (Add + Commit + Push) trong 1 giây.
*   **[D] Golive task:** Đánh dấu task của bạn là đã làm xong, đã nộp mã nguồn. 
*   **[C] Xem file thay đổi:** Liếc xem có bao nhiêu file thư mục xanh đỏ đang bị thay đổi mà không cần đóng Menu.
*   **[L] Hiển thị toàn bộ:** Xem list full các branch cũ (Mặc định ẩn bớt 3 task mới cho gọn).
*   **[P] Chuyển dự án:** Trở lại Màn hình Project.

> **💡 Thoát ngang mọi lúc:** gõ `\q` rồi Enter.

---

## ⚡ 4. Các lệnh rời thao tác nhanh (mb-xxx)

Nếu bạn không muốn nhìn Menu mà muốn "ra lệnh trực tiếp", đây là bộ công cụ gõ tắt cho bạn:

*   `mb-home`: Dịch chuyển nhanh (cd) từ chỗ bất kỳ về thẳng thư mục chứa tất cả project.
*   `mb-list`: In nhanh ra danh sách các task trong project bạn đang làm.
*   `mb-task <tên_task>`: Chuyển nhanh qua nhánh mới lập tức, tự kéo code về nếu mạng có sẵn. Vẫn tích hợp chống vô tình mất code sửa dở.
*   `mb-save "<lời_nhắn>"`: Lưu toàn bộ (Add + Commit + Push) tức thì.
  *VD: `mb-save "Sửa xong bug giao diện login"`*
*   `mb-submit`: Đánh dấu đã nộp code thành công trên hệ thống.
