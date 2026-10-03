# Omni Gun สำหรับ Dungeon Blasters

ปืน unique ที่สร้างเพิ่มให้ modpack **Dungeon Blasters** (Minecraft 1.16.5 / Mine and Slash) ใส่เข้าเกมผ่าน datapack ของ OpenLoader

ยิงได้ทุกธาตุ ยิงโดนแล้วติดสถานะทุกนัด และมีเอฟเฟค AoE

## ค่าพลัง

| ประเภท | ค่า |
|---|---|
| Physical / Fire / Water / Earth Weapon Damage | อย่างละ 500 |
| Energy | +5000 |
| Spell Power | +500 |
| Elemental Defense | +500 |
| Vitality | +500 |

ยิงโดนแล้วติดสถานะ 100% ทุกนัด ได้แก่ Bleed, Slow, Burn, Poison, Blind, Petrify, Torment, Shred และ Curse of Weakness

### AoE

ทั้ง 3 ตัวติด 100% ทุกนัดเหมือนกัน

| เอฟเฟค | ทำอะไร |
|---|---|
| Bullet Storm | ทุก 1 วินาทีทำดาเมจกายภาพใส่ศัตรูรอบมอนที่โดนยิงในรัศมี 3 บล็อก ความแรงคิดจาก Energy |
| Fire Nova | ระเบิดไฟใส่ศัตรูรัศมี 3 บล็อกตอนเอฟเฟคหมดเวลา ความแรงคิดจาก Spell Power |
| Ice Pillar | ทำให้ศัตรูในรัศมี 3 บล็อกติด Chill กับ Stun ไปเรื่อยๆ ตัวนี้ไม่ทำดาเมจ |

### ข้อจำกัดจำนวน stat

Mine and Slash ให้ปืน unique ใส่ stat ได้สูงสุด 12 ตัวในช่อง unique กับ 8 ตัวในช่อง base ถ้าใส่เกิน stat ส่วนที่เกินจะไม่ทำงาน ปืนนี้เลยใส่ไว้เต็มทั้งสองช่องพอดี และตัดบางอย่างออกไปดังนี้
- Stun กับ Chill เพราะ Ice Pillar ใส่ให้อยู่แล้ว
- Curse of Agony กับ Curse of Despair
- Strength, Health Regen และ Energy Regen
- Fire / Earth / Water Resist รวมเป็น Elemental Defense ตัวเดียว

## ติดตั้ง

1. copy โฟลเดอร์ `openloader` ใน repo นี้ไปวางในโฟลเดอร์ instance ของ Dungeon Blasters ให้รวมกับโฟลเดอร์ `openloader` ที่มีอยู่แล้ว
2. ปิด Minecraft แล้วเปิดใหม่

ถ้ามี Omni Gun จากเวอร์ชันก่อนอยู่แล้ว ปิดเปิดเกมใหม่ stat จะเปลี่ยนตามไฟล์ใหม่เอง เพราะ mod อ่านรายการ stat จากไฟล์ทุกครั้ง

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
- ทุกนัดใส่สถานะกับ AoE หลายอย่าง ถ้าใช้กับปืนที่ยิงเร็ว เกมอาจกระตุก
- Fire Nova ระเบิดตอนเอฟเฟคหมดเวลา ถ้ายิงรัวใส่มอนตัวเดิม เอฟเฟคอาจถูกรีเซ็ตเวลาไปเรื่อยๆ จนระเบิดตอนหยุดยิง

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
