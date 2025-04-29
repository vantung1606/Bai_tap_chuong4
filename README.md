# Kiểm thử tự động đăng nhập với Robot Framework và Selenium

Kho lưu trữ này chứa một kịch bản kiểm thử tự động đăng nhập đơn giản sử dụng **Robot Framework** và **SeleniumLibrary**. Kịch bản kiểm thử cả hai trường hợp đăng nhập hợp lệ và không hợp lệ trên **https://opensource-demo.orangehrmlive.com**.

## Yêu cầu

Trước khi chạy các bài kiểm thử, hãy chắc chắn rằng bạn đã cài đặt các phần mềm sau:

- Python
- Robot Framework
- SeleniumLibrary
- ChromeDriver (hoặc web driver khác tùy theo trình duyệt bạn chọn)

Bạn có thể cài đặt các thư viện cần thiết bằng pip:

- pip install robotframework
- pip install robotframework-seleniumlibrary

## Tổng quan các bài kiểm thử

### 3.1 Đăng nhập hợp lệ
Bài kiểm thử này kiểm tra việc đăng nhập thành công vào trang demo OrangeHRM với thông tin đăng nhập hợp lệ.

- **Tên người dùng**: Admin
- **Mật khẩu**: admin123

#### Các bước:

1. Mở trình duyệt và điều hướng đến trang đăng nhập.
2. Chờ trường nhập tên người dùng được kích hoạt.
3. Nhập tên người dùng và mật khẩu hợp lệ.
4. Nhấn nút đăng nhập và kiểm tra việc đăng nhập thành công bằng cách tìm kiếm từ "Dashboard" trên trang.
5. Ghi lại kết quả thành công vào console.

### 3.2 Đăng nhập không hợp lệ
Bài kiểm thử này kiểm tra việc đăng nhập không thành công với thông tin đăng nhập không hợp lệ.

- **Tên người dùng**: Admin
- **Mật khẩu**: 123456

#### Các bước:

1. Mở trình duyệt và điều hướng đến trang đăng nhập.
2. Chờ trường nhập tên người dùng được kích hoạt.
3. Nhập tên người dùng và mật khẩu không hợp lệ.
4. Thử nhấn nút đăng nhập và kiểm tra xem thông báo lỗi có xuất hiện không.
5. Ghi lại kết quả thất bại vào console.

## Chạy các bài kiểm thử

Để chạy các bài kiểm thử, bạn sử dụng lệnh sau trong terminal:

- robot test_login.robot

Trong đó `test_login.robot` là tên tệp kiểm thử của bạn.
