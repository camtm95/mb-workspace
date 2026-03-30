description: Tạo task mới hoặc chuyển đổi sang task (nhánh) cũ (local hoặc origin) (/egit task)
---

Sử dụng kịch bản này khi người dùng gõ `/egit task`, hoặc muốn "Chuyển qua nhánh abc" bằng bộ công cụ MB.

1.  Xác định "Tên task" từ yêu cầu của người dùng.
2.  Kiểm tra xem người dùng có file nào đang sửa dở (`git status`) chưa được lưu không.
3.  Nếu có file sửa dở: Hỏi người dùng muốn lưu (`mb-save`) hay mang code sang task đó (`git checkout`).
4.  Gọi lệnh terminal: `mb-task "<tên-task>"` 
    -   *Lưu ý:* Lệnh `mb-task` đã được lập trình sẵn để tự động nhận diện: Nếu task đã có ở máy thì nhảy qua, nếu chỉ có trên Server (Origin) thì hỏi anh muốn tải về không, nếu chưa có đâu hết thì mới tạo mới.
5.  Thông báo kết quả cho người dùng.
