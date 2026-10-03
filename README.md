# Omni Gun สำหรับ Dungeon Blasters

ปืน unique ที่สร้างเพิ่มให้ modpack **Dungeon Blasters** (Minecraft 1.16.5 / Mine and Slash) ใส่เข้าเกมผ่าน datapack ของ OpenLoader

ค่าพลังทั้งหมดของ devgun (ปืนทดสอบของ pack) ยังอยู่ครบ แล้วเพิ่มดาเมจธาตุกับสถานะเข้าไป

## ค่าพลัง

| ประเภท | ค่า |
|---|---|
| Physical Weapon Damage | 500 |
| Fire / Water / Earth Weapon Damage | อย่างละ 500 |
| Strength, Vitality | อย่างละ +500 |
| Fire / Earth / Water Resist | อย่างละ +500 |
| Health Regen | +500 |
| Energy, Energy Regen | อย่างละ +5000 |

ยิงโดนแล้วติดสถานะ 100% ทุกนัด ได้แก่ Bleed, Slow, Stun, Burn, Chill, Poison, Blind, Petrify, Torment, Shred, Curse of Weakness, Curse of Agony และ Curse of Despair

## ติดตั้ง

1. copy โฟลเดอร์ `openloader` ใน repo นี้ไปวางในโฟลเดอร์ instance ของ Dungeon Blasters ให้รวมกับโฟลเดอร์ `openloader` ที่มีอยู่แล้ว
2. ปิด Minecraft แล้วเปิดใหม่

## วิธีใช้

ต้องเปิด cheat ในโลกก่อน

1. เอา Soul ของ Omni Gun มา ใส่เลเวลไม่เกินเลเวล Mine and Slash ของตัวเอง (สูงสุด 100)
   ```
   /mine_and_slash give unique_gear @p omnigun <เลเวล> 1
   ```
2. เอาปืนเปล่ามา 1 กระบอก `IgnoreAmmo:1b` ทำให้กระสุนไม่จำกัด
   ```
   /give @p tac:hk416_a5{IgnoreAmmo:1b}
   ```
3. ใน inventory ให้คลิก Soul ให้ติดเมาส์ แล้วไปคลิกลงบนปืน รอประมาณ 1 วินาที ชื่อปืนจะเปลี่ยนเป็น "Omni Gun"

ต้องใช้ปืนที่ pack จัดไว้ในกลุ่ม Gun (ดู `gear_compatibility` ใน `mmorpg-server.toml`) เช่น `tac:hk416_a5`, `tac:mk18_mod1`, `tac:m4`, `tac:mp7` หรือ `lesraisinsadd:txc` ปืนกลุ่ม blaster หรือ shooter อย่างสไนเปอร์จะใส่ Soul ไม่ได้

## ข้อควรรู้

- ถ้าเคยใส่ stat ให้ตัวเองด้วย `/mine_and_slash stat give` โดยเฉพาะ `convert_fire_to_phys` ให้เคลียร์ก่อนด้วย `/mine_and_slash stat clear @p exact` ไม่อย่างนั้นดาเมจกายภาพจะถูกแปลงเป็นไฟหมด
- ทุกนัดใส่สถานะหลายอย่าง ถ้าใช้กับปืนที่ยิงเร็ว เกมอาจกระตุก
- Mine and Slash หักความหิวทุกครั้งที่ฟื้นเลือด Health Regen ของปืนเลยทำให้หลอดหิวลดเร็วขึ้น

## ถอนการติดตั้ง

ลบโฟลเดอร์ `openloader/data/omnigun` กับ `openloader/resources/omnigun` ออกจาก instance

## ไฟล์ใน repo

```
openloader/
├── data/omnigun/                       datapack
│   ├── pack.mcmeta
│   └── data/mmorpg/unique_gears/omnigun.json
└── resources/omnigun/                  resource pack (ชื่อปืนในเกม)
    ├── pack.mcmeta
    └── assets/mmorpg/lang/en_us.json
```
