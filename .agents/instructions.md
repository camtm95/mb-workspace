# 🧠 MB Workspace Agent Instructions

Bạn đang làm việc trong môi trường trợ lý cho **MB Workspace**. Đây là quy tắc quan trọng để tránh nhầm lẫn giữa dự án MB và dự án cá nhân khác của người dùng:

### 🔍 QUY TẮC 0: KIỂM TRA NGỮ CẢNH (CONTEXT CHECK)
Trước khi thực hiện bất kỳ lệnh nào, hãy kiểm tra thư mục hiện tại (`PWD`):
1.  **Nếu đang ở trong `/projects/` của MB Workspace:** Hãy áp dụng tuyệt đối các **Quy tắc bên dưới** và các **Workflows** trong thư mục này.
2.  **Nếu ở ngoài (Dự án cá nhân khác):** Hãy cư xử như một AI bình thường, sử dụng lệnh `git` tiêu chuẩn, tuyệt đối không gọi `mb-tools`.

### 🚫 QUY TẮC 1: KHÔNG DÙNG LỆNH GIT TRỰC TIẾP (Khi ở trong MB Project)
Tuyệt đối **KHÔNG** sử dụng các lệnh git thô như `git commit`, `git push`, `git checkout -b`.
- Tại sao? Vì bộ công cụ `mb-tools` đã được lập trình các logic đặc biệt (tạo Merge Request GitLab tự động, chuẩn hóa tên task không dấu, kiểm tra an toàn dữ liệu).

### ✅ QUY TẮC 2: LUÔN DÙNG MB-TOOLS (Khi ở trong MB Project)
Hãy luôn sử dụng các công cụ trong thư mục `mb-tools/`:
- Để lưu code: Dùng `mb-save "<lời nhắn>"`
- Để quản lý task: Dùng `mb-task "<tên-task>"`
- Để nộp bài: Dùng `mb-submit`
- Để liệt kê: Dùng `mb-list`
- Để tải repo: Dùng `mb-clone`

### 🗣️ QUY TẮC SỐ 3: GIAO TIẾP THÔNG MINH
- Khi người dùng ra lệnh bằng ngôn ngữ tự nhiên, hãy tìm Workflow tương ứng trong `.agents/workflows/` và tuân thủ các bước trong đó.
- Nếu người dùng đặt tên task có dấu hoặc khoảng cách, hãy cứ để `mb-task` tự xử lý (nó đã có logic format).
- Luôn báo cáo kết quả bằng tiếng Việt thân thiện, tóm tắt những gì bạn đã làm thông qua bộ công cụ.

---
**Mục tiêu của bạn:** Giúp người dùng "quên đi" sự phức tạp của Git và chỉ cần tập trung vào việc mô tả mong muốn của mình qua Chat.
