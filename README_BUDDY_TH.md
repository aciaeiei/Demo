# คู่มือการใช้ Buddy.works เพื่อ Build APK (ภาษาไทย)

วิธีใช้งานย่อ:
1. สร้าง repository ใหม่บน GitHub และอัปโหลดโฟลเดอร์นี้ขึ้นไป (หรืออัปโหลด ZIP เข้า Buddy).
2. เข้า https://buddy.works แล้วสร้าง New Project -> Git repository (เชื่อมกับ GitHub) หรือ Upload ZIP.
3. สร้าง Pipeline ใหม่ (Automation) ใส่ขั้นตอน:
   - Install Flutter SDK (ใช้ official image หรือ run script)
   - flutter pub get
   - flutter build apk --release
4. หลัง build สำเร็จ ดาวน์โหลด artifact `app-release.apk` จาก workspace/build outputs.

ตัวอย่าง Buddy pipeline ถูกเตรียมในไฟล์ `buddy.yml` ใน repo นี้.
