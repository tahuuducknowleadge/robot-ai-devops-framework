# 🤖 Robot AI DevOps Testing Framework  
Framework kiểm thử chức năng hướng dữ liệu (data-driven) sử dụng Robot Framework, hỗ trợ tích hợp AI và DevOps (CI/CD) dành cho ứng dụng web.  

## 🚀 Mục Tiêu  
✅ Tự động hoá kiểm thử chức năng website bằng Robot Framework 
✅ Tách riêng dữ liệu test (Excel, JSON...) ra khỏi logic test 
✅ Tích hợp công cụ AI: Faker, OpenCV, Tesseract, ChatGPT API (tuỳ chọn) 
✅ Tích hợp DevOps: GitHub Actions hoặc Jenkins 
✅ Cấu trúc rõ ràng, dễ mở rộng

## 📁 Cấu Trúc Thư Mục
`robot-ai-devops-framework/`  
├── `testsuites/` - Test case theo chức năng (VD: login.robot)  
├── `resources/` - Các bước dùng chung (login_steps.robot, ...)  
├── `keywords/` - Keyword Python mở rộng nếu cần  
├── `data/` - Dữ liệu test: Excel, JSON, CSV  
├── `ai/` - Tích hợp AI: sinh dữ liệu, kiểm UI, OCR  
├── `reports/` - Báo cáo test HTML  
├── `ci_cd/` - Pipeline CI/CD: GitHub Actions hoặc Jenkins  
├── `requirements.txt` - Thư viện cần thiết  
└── `README.md` - Tài liệu dự án  

## ⚙️ Công Nghệ Sử Dụng
**Framework:** Robot Framework  
**WebDriver:** SeleniumLibrary  
**Dữ liệu test:** JSON / Excel / CSV  
**Báo cáo:** Robot Report, Allure (nâng cao)  
**Sinh dữ liệu:** Faker  
**AI hỗ trợ:** ChatGPT, OpenCV, Tesseract  
**CI/CD:** GitHub Actions / Jenkins  

## 📌 Cài Đặt
```bash
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate
pip install -r requirements.txt

## ▶️ Chạy Test  
robot testsuites/login.robot          # Chạy 1 file
robot testsuites/                     # Chạy tất cả
robot --outputdir reports testsuites/ # Ghi log vào thư mục reports

## 🔍 Báo Cáo  
Sau khi test xong, mở `reports/log.html` hoặc `reports/report.html` để xem kết quả chi tiết.  

## 🤖 Tính Năng AI  
Faker: tạo email, tên, địa chỉ ngẫu nhiên
OpenCV: so sánh ảnh giao diện để phát hiện thay đổi
Tesseract: OCR popup hoặc UI không truy cập được qua DOM
ChatGPT: sinh test case từ user story (tùy chọn nâng cao)

## 🔄 CI/CD  
- Tự động chạy test khi push code (GitHub Actions/Jenkins) 
- Cài dependencies → Run tests → Tạo report → Gửi thông báo Slack/Email (nếu có)  
