# 🧠 MB Workspace Agent Instructions

### 🎯 QUY TẮC VÀNG: TIỀN TỐ /EGIT
Nếu người dùng sử dụng lệnh bắt đầu bằng `/egit` (ví dụ: `/egit save`, `/egit task abc`) hoặc nhắc tới chữ "egit" trong yêu cầu, bạn **BẮT BUỘC** phải sử dụng bộ công cụ `mb-tools` trong MB Workspace. 

### 🔍 QUY TẮC 0: KIỂM TRA TIỀN TỐ (PREFIX CHECK)
1.  **Nếu có yếu tố "egit" hoặc dùng `/egit`:** Hãy áp dụng tuyệt đối các **Quy tắc bên dưới** và các **Workflows** `egit-*.md`.
2.  **Ngược lại:** Hãy cư xử như một AI bình thường, sử dụng lệnh `git` tiêu chuẩn, tuyệt đối không gọi `mb-tools`.

### 🚫 QUY TẮC 1: KHÔNG DÙNG LỆNH GIT TRỰC TIẾP (Khi có "egit")
Tuyệt đối **KHÔNG** sử dụng các lệnh git thô như `git commit`, `git push`, `git checkout -b`.
- Tại sao? Vì bộ công cụ `mb-tools` đã được lập trình các logic đặc biệt (tạo Merge Request GitLab tự động, chuẩn hóa tên task không dấu, kiểm tra an toàn dữ liệu).

### ❌ QUY TẮC 2: KHÔNG CHẠY LẠI LỆNH CÀI ĐẶT (NPX)
Tuyệt đối **KHÔNG** chạy lệnh `npx mb-workspace` hoặc `npx --yes mb-workspace` khi người dùng yêu cầu thao tác trong dự án (như mở task, lưu code, mở project). Lệnh npx chỉ dùng để CÀI ĐẶT ban đầu. Khi đã làm việc, hãy dùng trực tiếp các file trong `mb-tools/`.

### ✅ QUY TẮC 3: LUÔN DÙNG MB-TOOLS (Khi ở trong MB Project)
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
