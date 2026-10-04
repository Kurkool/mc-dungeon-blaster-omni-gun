# Omni Gun, Omni Sword และ Omni Necklace สำหรับ Dungeon Blasters

ไอเทม unique 3 ชิ้นที่สร้างเพิ่มให้ modpack **Dungeon Blasters** (Minecraft 1.16.5 / Mine and Slash) พร้อมระบบกัน potion effect แบบ vanilla ทั้งหมดใส่เข้าเกมผ่าน datapack ของ OpenLoader

- **Omni Gun** กับ **Omni Sword** ทำดาเมจได้ทุกธาตุ ตีหรือยิงโดนแล้วติดสถานะทุกครั้ง และมีเอฟเฟค AoE
- **Omni Necklace** กันสถานะลบของ Mine and Slash ได้ทุกตัว
- **ระบบกัน potion effect แบบ vanilla** ล้าง effect ฝั่งลบของ vanilla ออกทุก tick

## Omni Gun

| ประเภท | ค่า |
|---|---|
| Physical / Fire / Water / Earth Weapon Damage | อย่างละ 500 |
| Energy | +5000 |
| Spell Power | +500 |
| Elemental Defense | +500 |
| Vitality | +500 |

ยิงโดนแล้วติดสถานะ 100% ทุกนัด ได้แก่ Bleed, Slow, Burn, Poison, Blind, Petrify, Torment, Shred และ Curse of Weakness

## Omni Sword

| ประเภท | ค่า |
|---|---|
| Physical / Fire / Water / Earth Weapon Damage | อย่างละ 500 |
| Energy | +5000 |
| Spell Power | +500 |
| Lifesteal | 10% |
| Elemental Defense | +500 |

ตีโดนแล้วติดสถานะ 100% ทุกครั้ง ชุดเดียวกับ Omni Gun

ดาบใช้ Energy ครั้งละ 2 ทุกครั้งที่ตี Energy +5000 เลยพอให้ตีได้ยาวๆ

ดาบตีระยะประชิดได้ เลยใช้จัดการ Enderman ได้ ซึ่งกระสุนทำไม่ได้ เพราะ Enderman วาร์ปหลบ projectile ทุกชนิด

### AoE ของปืนและดาบ

ทั้ง 3 ตัวติด 100% ทุกครั้งที่โดน

| เอฟเฟค | ทำอะไร |
|---|---|
| Bullet Storm | ทุก 1 วินาทีทำดาเมจกายภาพใส่ศัตรูรอบมอนที่โดนในรัศมี 3 บล็อก ความแรงคิดจาก Energy |
| Fire Nova | ระเบิดไฟใส่ศัตรูรัศมี 3 บล็อกตอนเอฟเฟคหมดเวลา ความแรงคิดจาก Spell Power |
| Ice Pillar | ทำให้ศัตรูในรัศมี 3 บล็อกติด Chill กับ Stun ไปเรื่อยๆ ตัวนี้ไม่ทำดาเมจ |

Bullet Storm กับ Fire Nova ตัวเดิมของ pack (`chance_of_bullet_storm`, `chance_of_fire_nova`) ติดได้เฉพาะอาวุธระยะไกลหรือสายเวท ดาบเลยใช้ stat ที่สร้างใหม่ใน datapack นี้แทน คือ `omni_chance_of_bullet_storm` กับ `omni_chance_of_fire_nova` สองตัวนี้ตัดเงื่อนไขเรื่องประเภทอาวุธออก ส่วนอื่นเหมือนของเดิมทุกอย่าง

### ข้อจำกัดจำนวน stat

Mine and Slash ให้ไอเทม unique ใส่ stat ได้สูงสุด 12 ตัวในช่อง unique กับ 8 ตัวในช่อง base ถ้าใส่เกิน stat ส่วนที่เกินจะไม่ทำงาน ปืนกับดาบเลยใส่ไว้เต็มทั้งสองช่องพอดี และตัดบางอย่างออกไปดังนี้
- Stun กับ Chill เพราะ Ice Pillar ใส่ให้อยู่แล้ว
- Curse of Agony กับ Curse of Despair
- Strength, Health Regen และ Energy Regen
- Fire / Earth / Water Resist รวมเป็น Elemental Defense ตัวเดียว

## Omni Necklace

| stat | ค่า |
|---|---|
| ระยะเวลาของสถานะลบที่เราโดน | -100% (stat นี้แรงขึ้นตามเลเวล จะเป็น -101% ถึง -200%) |
| ความแรงของสถานะลบที่เราโดน | -100% |

สถานะลบของ Mine and Slash ทุกตัวที่มีแท็ก negative จะหมดทันทีที่โดน และไม่มีผลอะไรเลย เช่น Bleed, Burn, Poison, Chill, Stun, Slow, Blind, Petrify และ Curse ทั้งหลาย สร้อยนี้ไม่กัน potion effect แบบ vanilla ส่วนนั้นใช้ระบบด้านล่าง

## กัน potion effect แบบ vanilla

function ใน datapack นี้ทำงานทุก tick และล้าง effect ฝั่งลบของ vanilla ออกจากผู้เล่นที่มี tag `omni_immune`

- เปิดใช้: `/tag @p add omni_immune` ตัว tag ติดอยู่กับตัวละครถาวร ไม่ต้องพิมพ์ใหม่
- ปิด: `/tag @p remove omni_immune`

effect ที่ล้างให้ ได้แก่ Slowness, Mining Fatigue, Nausea, Blindness, Hunger, Weakness, Poison, Wither, Levitation และ Bad Luck ซึ่งจะติดอย่างมาก 1 tick แล้วหายไป

ที่ไม่ได้ใส่ไว้
- **Instant Damage** เป็นดาเมจทันที ล้างก่อนโดนไม่ทัน
- **Bad Omen กับ Glowing** vanilla จัดเป็น effect กลางๆ และ Bad Omen ต้องใช้เปิด raid

ระบบนี้ไม่ได้ผูกกับการใส่ Omni Necklace เพราะคำสั่งของเกมเช็คของในช่อง Curios ได้ยาก และแยกไม่ออกว่าเป็น Omni Necklace หรือสร้อยธรรมดา

## ติดตั้ง

1. copy โฟลเดอร์ `openloader` ใน repo นี้ไปวางในโฟลเดอร์ instance ของ Dungeon Blasters ให้รวมกับโฟลเดอร์ `openloader` ที่มีอยู่แล้ว
2. ปิด Minecraft แล้วเปิดใหม่

ถ้ามีไอเทมจากเวอร์ชันก่อนอยู่แล้ว ปิดเปิดเกมใหม่ stat จะเปลี่ยนตามไฟล์ใหม่เอง เพราะ mod อ่านรายการ stat จากไฟล์ทุกครั้ง

## วิธีใช้

ต้องเปิด cheat ในโลกก่อน เลเวลในคำสั่งต้องไม่เกินเลเวล Mine and Slash ของตัวเอง (สูงสุด 100)

**Omni Gun**
```
/mine_and_slash give unique_gear @p omnigun <เลเวล> 1
/give @p tac:hk416_a5{IgnoreAmmo:1b}
```
`IgnoreAmmo:1b` ทำให้กระสุนไม่จำกัด ต้องใช้ปืนที่ pack จัดไว้ในกลุ่ม Gun (ดู `gear_compatibility` ใน `mmorpg-server.toml`) เช่น `tac:hk416_a5`, `tac:mk18_mod1`, `tac:m4`, `tac:mp7` หรือ `lesraisinsadd:txc` ปืนกลุ่ม blaster หรือ shooter อย่างสไนเปอร์จะใส่ Soul ไม่ได้

**Omni Sword**
```
/mine_and_slash give unique_gear @p omnisword <เลเวล> 1
/give @p minecraft:netherite_sword{Unbreakable:1b}
```

**Omni Necklace**
```
/mine_and_slash give unique_gear @p omninecklace <เลเวล> 1
/give @p mmorpg:jewelry/necklace/diamond
```
ทำเสร็จแล้วเอาสร้อยไปใส่ช่อง necklace ในหน้า Curios

ได้ Soul กับไอเทมแล้ว ให้คลิก Soul ใน inventory ให้ติดเมาส์ แล้วไปคลิกลงบนไอเทม รอประมาณ 1 วินาที ชื่อจะเปลี่ยนเป็น "Omni Gun", "Omni Sword" หรือ "Omni Necklace"

## ข้อควรรู้

- ถ้าเคยใส่ stat ให้ตัวเองด้วย `/mine_and_slash stat give` โดยเฉพาะ `convert_fire_to_phys` ให้เคลียร์ก่อนด้วย `/mine_and_slash stat clear @p exact` ไม่อย่างนั้นดาเมจกายภาพจะถูกแปลงเป็นไฟหมด
- โดนแต่ละครั้งใส่สถานะกับ AoE หลายอย่าง ถ้าใช้กับปืนที่ยิงเร็ว เกมอาจกระตุก
- Fire Nova ระเบิดตอนเอฟเฟคหมดเวลา ถ้าโจมตีรัวใส่มอนตัวเดิม เอฟเฟคอาจถูกรีเซ็ตเวลาไปเรื่อยๆ จนระเบิดตอนหยุดโจมตี

## ถอนการติดตั้ง

ลบโฟลเดอร์ `openloader/data/omnigun` กับ `openloader/resources/omnigun` ออกจาก instance ส่วน tag `omni_immune` ที่ติดตัวละครอยู่ไม่มีผลอะไรแล้วเมื่อไม่มี datapack แต่จะลบออกด้วย `/tag @p remove omni_immune` ก็ได้

## ไฟล์ใน repo

```
openloader/
├── data/omnigun/                             datapack
│   ├── pack.mcmeta
│   └── data/
│       ├── mmorpg/
│       │   ├── unique_gears/
│       │   │   ├── omnigun.json
│       │   │   ├── omnisword.json
│       │   │   └── omninecklace.json
│       │   └── stat/
│       │       ├── omni_chance_of_bullet_storm.json
│       │       └── omni_chance_of_fire_nova.json
│       ├── omnigun/functions/
│       │   └── clear_vanilla_debuffs.mcfunction
│       └── minecraft/tags/functions/
│           └── tick.json                     สั่งให้ function ด้านบนทำงานทุก tick
└── resources/omnigun/                        resource pack (ชื่อไอเทมกับชื่อ stat ในเกม)
    ├── pack.mcmeta
    └── assets/mmorpg/lang/en_us.json
```
