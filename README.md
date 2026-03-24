# 🚀 MB Workspace

Bộ công cụ quản lý dự án và Git thông minh dành cho team phát triển, giúp tối ưu hóa quy trình làm việc (clone code, quản lý branch/task, commit, submit) một cách nhanh chóng và an toàn nhất. Bạn có thể sử dụng qua giao diện dòng lệnh (UI) cực kỳ trực quan hoặc các lệnh gõ tắt siêu tốc.

---

## 💻 1. Hướng dẫn cài đặt

Bạn có thể cài đặt MB Workspace cực kỳ dễ dàng bằng 1 trong 2 cách sau:

### Cách 1: Cài qua NPM (Khuyên dùng)
Nếu máy bạn đã có sẵn Node.js:
```bash
npx mb-workspace@latest
```
*(Lệnh này tự động nhận diện hệ điều hành Windows hoặc MacOS/Linux/WSL để cài đặt công cụ tương ứng)*

### Cách 2: Cài trực tiếp từ Script (Không cần Node.js)
**👉 Dành cho MacOS / Linux / WSL (Ubuntu):**
```bash
curl -fsSL https://raw.githubusercontent.com/camtm95/mb-workspace/main/install.sh | bash
```

**👉 Dành cho Windows PowerShell (Chạy dưới quyền Admin):**
```powershell
iwr -useb https://raw.githubusercontent.com/camtm95/mb-workspace/main/install.ps1 | iex
```

> **Lưu ý sau khi cài đặt:** Bạn hãy tắt Terminal hiện tại và mở lại một cái mới để các lệnh có hiệu lực. Hệ thống sẽ tự động cấu hình tính năng ghi nhớ mật khẩu Git (`credential.helper store`) cho bạn để không phải gõ lại password mỗi khi pull/push code nữa.

---

## 🌟 2. Hướng dẫn sử dụng bằng giao diện (UI)

Giao diện UI là trái tim của bộ công cụ, cung cấp cho bạn mọi thứ trên một màn hình duy nhất mà không cần phải nhớ lệnh Git nào.

Chỉ cần gõ 1 trong 2 lệnh sau ở bất kỳ đâu trong terminal:
```bash
mb-ui
# hoặc gọi bằng tên viết tắt siêu nhanh:
ecu
```

### Chức năng chính trong UI:
Hệ thống sẽ dựa vào vị trí thư mục hiện tại của bạn để dọn đường và hiển thị Menu phù hợp:

#### A. MB WORKSPACE MENU (Quản lý dự án):
Nếu bạn đang ở ngoài thư mục dự án, menu này sẽ hiện ra:
*   **Danh sách dự án:** Liệt kê toàn bộ các dự án bạn đã tải về máy, được tự động sắp xếp theo thứ tự ưu tiên (dự án bạn code gần đây nhất sẽ nằm trên cùng). Chọn số thứ tự để vào code ngay.
*   **`[C] Clone project`**: Tự động chặn lỗi bừa bộn báo động, đưa bạn về thư mục gốc, tải code về an toàn, và nhảy thẳng vào dự án mới.

#### B. TASK MENU (Quản lý công việc):
Nếu bạn đang đứng bên trong dự án (hoặc sau khi chọn dự án), không gian làm việc này sẽ hiện ra đầu tiên:
*   **Hiển thị thông minh:** Các nhánh (task) mới nhất, mới code xong sẽ tự trồi lên trên cùng theo thời gian thực để bạn dễ dàng ấn chọn số `0`, `1`... Báo hiệu trực quan bằng màu sắc trạng thái: Xanh `[Đang làm]`, Xám `[Đã nộp]`.
*   **Bảo vệ mã nguồn tuyệt đối:** Nếu code đang sửa dở mà bạn vô tình muốn chuyển task khác, hệ thống sẽ chặn đứng bạn lại và đưa ra tuỳ chọn: _(1) Mang code đi theo task MỚI_ hoặc _(2) Lưu lại ngay tại chỗ vào task CŨ_. Tránh mất source code hay gây ra conflict.
*   **Thao tác nhanh không cần thoát menu**:
    *   `[N]`: Tạo task mới (Có cơ chế tải task từ origin nếu phát hiện trùng tên nhánh trên mạng).
    *   `[S]`: Lưu task đang làm (Chỉ cần điền nội dung thay đổi, hệ thống tự động commit & push).
    *   `[D]`: Golive (Submit) task hoàn thiện cho reviewer/DE.
    *   `[C]`: Liếc xem nhanh trạng thái các file (bị sửa/xóa/thêm) hiện tại mà không phải thoát menu.
    *   `[L]`: Load full toàn bộ danh sách lịch sử task của dự án này.
    *   `[P]`: Bật lại menu Project.

---

## ⚡ 3. Hướng dẫn sử dụng bằng dòng lệnh rời (mb-xxx)

Dành cho những bạn thích tự do gõ lệnh (CLI mode), hoặc muốn viết script tự động tự chế lại luồng làm việc cho mình. 

| Câu lệnh | Mô tả & Chức năng |
| :--- | :--- |
| `mb-home` | Lệnh di chuyển "xuyên không" từ bất kì thư mục nào về thẳng thư mục gốc của MB Workspace. |
| `mb-ui` / `ecu` | Mở giao diện thông minh tích hợp (như mô tả ở phần 2). |
| `mb-list` | In ra màn hình danh sách các task (nhánh) trong dự án hiện hành, tự động xếp task thời gian mới nhất lên đầu. Nhấn phím `q` để thoát danh sách. |
| `mb-task <tên_task>` | Lệnh 2-trong-1 siêu tiện: Tự động kiểm tra mạng để tải branch từ origin về nếu có sẵn, hoặc tự tạo nhánh mới nếu chưa ai tạo. (Cũng tích hợp tính năng check chống mất code nếu đang có file sửa dở). |
| `mb-save "<lọc_nhắn>"` | Lưu lại (Git Add + Commit + Push) trong chớp mắt. VD: `mb-save "Fix api thanh toan"` |
| `mb-submit` | Đánh dấu task đã được hoàn thành (trên UI sẽ đổi màu đoạn text task đó thành Xám `[Đã nộp]`) và chuẩn bị bước cuối trước khi ra mắt golive. |
