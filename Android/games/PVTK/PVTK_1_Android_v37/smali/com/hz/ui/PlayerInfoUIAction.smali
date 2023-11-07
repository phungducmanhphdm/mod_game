.class public Lcom/hz/ui/PlayerInfoUIAction;
.super Ljava/lang/Object;
.source "PlayerInfoUIAction.java"

# interfaces
.implements Lcom/hz/ui/UIListener;


# static fields
.field public static final ATTRIBUTE_TEXT:[Ljava/lang/String;

.field public static final ATTR_ARENA:I = 0x24

.field public static final ATTR_ATK_AGI:I = 0x8

.field public static final ATTR_ATK_MAGIC:I = 0x9

.field public static final ATTR_ATK_STR:I = 0x7

.field public static final ATTR_ATK_TIME:I = 0x6

.field public static final ATTR_AUTO_HP:I = 0x17

.field public static final ATTR_AUTO_MP:I = 0x18

.field public static final ATTR_BACK:I = 0x1a

.field public static final ATTR_BLOCK:I = 0x13

.field public static final ATTR_BORNSTATUS:I = 0x3

.field public static final ATTR_BRK:I = 0x14

.field public static final ATTR_COMBAT:I = 0x26

.field public static final ATTR_CRITICAL:I = 0x10

.field public static final ATTR_DEF_AGI:I = 0xb

.field public static final ATTR_DEF_FIELD:I = 0x19

.field public static final ATTR_DEF_MAGIC:I = 0xc

.field public static final ATTR_DEF_STR:I = 0xa

.field public static final ATTR_DMG:I = 0x5

.field public static final ATTR_DODGE:I = 0xd

.field public static final ATTR_FORCE_HIT:I = 0x16

.field public static final ATTR_GET_HP:I = 0x1c

.field public static final ATTR_GET_MP:I = 0x1d

.field public static final ATTR_HIT_MAGIC:I = 0xf

.field public static final ATTR_HIT_RATE:I = 0xe

.field public static final ATTR_HP:I = 0x0

.field public static final ATTR_IGNORE_BACK:I = 0x27

.field public static final ATTR_IGNORE_BLOCK:I = 0x29

.field public static final ATTR_IGNORE_INSIGHT:I = 0x2a

.field public static final ATTR_IGNORE_MAGIC_BACK:I = 0x28

.field public static final ATTR_IGNORE_TOUCH:I = 0x2c

.field public static final ATTR_IGNORE_WIL:I = 0x2b

.field public static final ATTR_INSIGHT:I = 0x1e

.field public static final ATTR_INTEGRAL:I = 0x23

.field public static final ATTR_KEEPOUT_ATK_TIME:I = 0x1f

.field public static final ATTR_LEVEL2:I = 0x2

.field public static final ATTR_MAGIC_BACK:I = 0x1b

.field public static final ATTR_MAGIC_PEN:I = 0x15

.field public static final ATTR_MONEY1:I = 0x20

.field public static final ATTR_MONEY2:I = 0x21

.field public static final ATTR_MONEY3:I = 0x22

.field public static final ATTR_MP:I = 0x1

.field public static final ATTR_SKY_ARENA:I = 0x25

.field public static final ATTR_SPEED:I = 0x4

.field public static final ATTR_TOUGH:I = 0x12

.field public static final ATTR_WIL:I = 0x11

.field public static DEL_ARRTIBUTE:[I

.field public static final SOCIETY_EXPLAIN:[Ljava/lang/String;


# instance fields
.field private CHANGE_TEXT:[[Ljava/lang/String;

.field private SOCIETY_CHANGE_TEXT:[[Ljava/lang/String;

.field baseAtt:[S

.field baseCP:I

.field baseHP:I

.field baseMP:I

.field basePlayer:Lcom/hz/actor/Player;

.field buffAtt:[I

.field opePlayer:Lcom/hz/actor/Player;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 54
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hz/ui/PlayerInfoUIAction;->DEL_ARRTIBUTE:[I

    .line 2701
    const/16 v0, 0x26

    new-array v0, v0, [Ljava/lang/String;

    .line 2702
    const-string v1, "HP:/c00FF00%U/p"

    aput-object v1, v0, v4

    .line 2703
    const-string v1, "Ph\u00e1p l\u1ef1c:/c00FF00%U/p"

    aput-object v1, v0, v5

    .line 2705
    const-string v1, "HP t\u1ed1i \u0111a:/c00FF00%U/p\nMP t\u1ed1i \u0111a:/c00FF00%U/p\nT\u0103ng t\u1ec9 l\u1ec7 r\u1edbt b\u1ea3o v\u1eadt (Bao g\u1ed3m qu\u00e1i r\u1edbt, b\u1ea3o r\u01b0\u01a1ng m\u1edf ra). T\u1ec9 l\u1ec7 r\u1edbt t\u0103ng theo c\u1ea5p th\u1ea7n k\u1ef3.\n\nGi\u1ea3m \u0111\u1ecbch th\u1ee7: \u0110\u1ee1 \u0110\u00f2n, Th\u1ea5u R\u00f5, Ph\u1ea3n K\u00edch, H\u1ed3i Ma Ph\u00e1p, Ph\u00f2ng Ch\u00e9m, Ph\u00f2ng Th\u1ee7 Ph\u00e1p Thu\u1eadt, Ph\u00f2ng \u0110\u00e2m, Ch\u00ed M\u1ea1ng, Chu\u1ea9n Ph\u00e1p Thu\u1eadt. C\u1ea5p th\u1ea7n k\u1ef3 c\u00e0ng cao hi\u1ec7u qu\u1ea3 c\u00e0ng r\u00f5 r\u00e0ng."

    aput-object v1, v0, v6

    .line 2707
    const-string v1, "%U"

    aput-object v1, v0, v3

    .line 2709
    const-string v1, "T\u1ed1c \u0110\u1ed9 Ra \u0110\u00f2n quy\u1ebft \u0111\u1ecbnh th\u1ee9 t\u1ef1 h\u00e0nh \u0111\u1ed9ng trong m\u1ed7i hi\u1ec7p \u0111\u1ea5u. Nhanh Nh\u1eb9n (L\u1edbn) v\u00e0 C\u1ea3m Tr\u00ed (Nh\u1ecf) c\u00f3 th\u1ec3 t\u0103ng T\u1ed1c \u0110\u1ed9 Ra \u0110\u00f2n."

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 2711
    const-string v2, "S\u00e1t th\u01b0\u01a1ng hi\u1ec7n t\u1ea1i/c00FF00%U/p, S\u00e1t Th\u01b0\u01a1ng V\u0169 Kh\u00ed c\u00e0ng cao, s\u00e1t th\u01b0\u01a1ng trong chi\u1ebfn \u0111\u1ea5u c\u00e0ng l\u1edbn."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 2713
    const-string v2, "1 l\u1ec7nh t\u1ea5n c\u00f4ng c\u1ee7a b\u1ea1n, s\u1ebd t\u1ea5n c\u00f4ng m\u1ee5c ti\u00eau /c00FF00%U/p l\u1ea7n. T\u1ec9 l\u1ec7 Chu\u1ea9n X\u00e1c, Ch\u00ed M\u1ea1ng m\u1ed7i l\u1ea7n s\u1ebd t\u00ednh \u0111\u1ed9c l\u1eadp. T\u1ed5ng l\u1ef1c c\u00f4ng/S\u1ed1 l\u1ea7n t\u1ea5n c\u00f4ng + S\u00e1t Th\u01b0\u01a1ng V\u0169 Kh\u00ed = L\u1ef1c t\u1ea5n c\u00f4ng c\u1ee7a m\u1ed7i l\u1ea7n."

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 2715
    const-string v2, "Khi d\u00f9ng v\u0169 kh\u00ed, k\u0129 n\u0103ng lo\u1ea1i ch\u00e9m s\u1ebd d\u00f9ng L\u1ef1c Ch\u00e9m t\u00ednh s\u00e1t th\u01b0\u01a1ng. M\u1ee5c ti\u00eau d\u00f9ng Ph\u00f2ng Ch\u00e9m \u0111\u1ec3 t\u00ednh ph\u00f2ng th\u1ee7. S\u1ee9c M\u1ea1nh (L\u1edbn) v\u00e0 Nhanh Nh\u1eb9n (Nh\u1ecf) c\u00f3 th\u1ec3 t\u0103ng L\u1ef1c Ch\u00e9m."

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 2717
    const-string v2, "Khi d\u00f9ng v\u0169 kh\u00ed, k\u0129 n\u0103ng lo\u1ea1i \u0111\u00e2m s\u1ebd d\u00f9ng L\u1ef1c \u0110\u00e2m t\u00ednh s\u00e1t th\u01b0\u01a1ng. M\u1ee5c ti\u00eau d\u00f9ng Ph\u00f2ng \u0110\u00e2m t\u00ednh ph\u00f2ng th\u1ee7. S\u1ee9c M\u1ea1nh v\u00e0 Nhanh Nh\u1eb9n c\u00f3 th\u1ec3 t\u0103ng L\u1ef1c \u0110\u00e2m."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 2719
    const-string v2, "Khi d\u00f9ng v\u0169 kh\u00ed, k\u0129 n\u0103ng lo\u1ea1i ma ph\u00e1p s\u1ebd d\u00f9ng Ma C\u00f4ng t\u00ednh s\u00e1t th\u01b0\u01a1ng. M\u1ee5c ti\u00eau d\u00f9ng Ma Th\u1ee7 t\u00ednh ph\u00f2ng th\u1ee7. Tr\u00ed L\u1ef1c (L\u1edbn) v\u00e0 C\u1ea3m Tr\u00ed (Nh\u1ecf) c\u00f3 th\u1ec3 t\u0103ng Ma C\u00f4ng."

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 2721
    const-string v2, "Khi ch\u1ecbu t\u1ea5n c\u00f4ng ch\u00e9m c\u00f9ng c\u1ea5p (/c00FF00%U/p) c\u1ee7a \u0111\u1ecbch, s\u1ebd gi\u1ea3m /c00FF00%U%/p s\u00e1t th\u01b0\u01a1ng g\u00e2y ra cho b\u1ea1n. C\u1ea5p c\u1ee7a \u0111\u1ecbch c\u00e0ng cao, hi\u1ec7u \u1ee9ng gi\u1ea3m c\u00e0ng th\u1ea5p v\u00e0 ng\u01b0\u1ee3c l\u1ea1i. Th\u1ec3 L\u1ef1c (L\u1edbn) c\u00f3 th\u1ec3 t\u0103ng Ph\u00f2ng Ch\u00e9m."

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 2723
    const-string v2, "Khi ch\u1ecbu t\u1ea5n c\u00f4ng \u0111\u00e2m c\u00f9ng c\u1ea5p (/c00FF00%U/p) c\u1ee7a \u0111\u1ecbch, s\u1ebd gi\u1ea3m /c00FF00%U%/p s\u00e1t th\u01b0\u01a1ng g\u00e2y ra cho b\u1ea1n. C\u1ea5p c\u1ee7a \u0111\u1ecbch c\u00e0ng cao, hi\u1ec7u \u1ee9ng gi\u1ea3m c\u00e0ng th\u1ea5p v\u00e0 ng\u01b0\u1ee3c l\u1ea1i. Th\u1ec3 L\u1ef1c (L\u1edbn) c\u00f3 th\u1ec3 t\u0103ng Ph\u00f2ng Ch\u00e9m."

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 2725
    const-string v2, "Khi ch\u1ecbu t\u1ea5n c\u00f4ng ma ph\u00e1p c\u00f9ng c\u1ea5p (/c00FF00%U /p) c\u1ee7a \u0111\u1ecbch, s\u1ebd gi\u1ea3m /c00FF00%U%/p s\u00e1t th\u01b0\u01a1ng g\u00e2y ra cho b\u1ea1n. C\u1ea5p c\u1ee7a \u0111\u1ecbch c\u00e0ng cao, hi\u1ec7u \u1ee9ng gi\u1ea3m c\u00e0ng th\u1ea5p v\u00e0 ng\u01b0\u1ee3c l\u1ea1i. C\u1ea3m Tr\u00ed (L\u1edbn) v\u00e0 Tr\u00ed L\u1ef1c (Nh\u1ecf) c\u00f3 th\u1ec3 t\u0103ng Ma Th\u1ee7."

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 2727
    const-string v2, "N\u00e9 Tr\u00e1nh c\u00e0ng cao, t\u1ec9 l\u1ec7 Chu\u1ea9n X\u00e1c c\u1ee7a \u0111\u1ecbch c\u00e0ng th\u1ea5p. Nhanh Nh\u1eb9n v\u00e0 C\u1ea3m Tr\u00ed c\u00f3 th\u1ec3 t\u0103ng N\u00e9 Tr\u00e1nh."

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 2729
    const-string v2, "Chu\u1ea9n V\u1eadt L\u00fd gi\u1ea3m N\u00e9 Tr\u00e1nh c\u1ee7a m\u1ee5c ti\u00eau b\u1eb1ng t\u1ec9 l\u1ec7 Chu\u1ea9n X\u00e1c. Chu\u1ea9n V\u1eadt L\u00fd c\u00e0ng cao, t\u1ec9 l\u1ec7 tr\u00fang \u0111\u1ecbch c\u1ee7a t\u1ea5n c\u00f4ng v\u1eadt l\u00fd c\u00e0ng l\u1edbn."

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 2731
    const-string v2, "D\u00f9ng Ma C\u00f4ng t\u1ea5n c\u00f4ng \u0111\u1ecbch c\u00f9ng c\u1ea5p (/c00FF00%U/p), s\u1ebd c\u00f3 /c00FF00%U%/p  tr\u00fang k\u1ebb \u0111\u1ecbch. V\u00e0 Ma C\u00f4ng c\u1ee7a b\u1ea1n s\u1ebd t\u0103ng /c00FF00%U%/p."

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 2733
    const-string v2, "Khi t\u1ea5n c\u00f4ng \u0111\u1ecbch c\u00f9ng c\u1ea5p (/c00FF00%U/p), s\u1ebd c\u00f3 /c00FF00%U%/p g\u00e2y ra x1.5 s\u00e1t th\u01b0\u01a1ng ch\u00ed m\u1ea1ng."

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 2735
    const-string v2, "Khi b\u1ea1n ch\u1ecbu tr\u1ea1ng th\u00e1i b\u1ea5t l\u1ee3i, c\u00f3 /c00FF00%U%/p khi\u1ebfn tr\u1ea1ng th\u00e1i n\u00e0y v\u00f4 hi\u1ec7u. Khi hi\u1ec7p \u0111\u1ea5u k\u1ebft th\u00fac, c\u00f3 /c00FF00%U%/p h\u1ee7y b\u1ecf 1 tr\u1ea1ng th\u00e1i b\u1ea5t l\u1ee3i tr\u00ean ng\u01b0\u1eddi. C\u1ea3m Tr\u00ed (L\u1edbn) v\u00e0 Tr\u00ed L\u1ef1c (Nh\u1ecf) c\u00f3 th\u1ec3 t\u0103ng Kh\u00e1ng Tr\u1ea1ng Th\u00e1i."

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 2737
    const-string v2, "Khi ch\u1ecbu s\u00e1t th\u01b0\u01a1ng, s\u1ebd gi\u1ea3m /c00FF00%U%/p s\u00e1t th\u01b0\u01a1ng. Khi g\u1eb7p gi\u1ea3m %HP, s\u1ebd gi\u1ea3m /c00FF00%U%/p hi\u1ec7u \u1ee9ng gi\u1ea3m tr\u1eeb. Cao nh\u1ea5t 70%."

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 2739
    const-string v2, "Khi ch\u1ecbu t\u1ea5n c\u00f4ng v\u1eadt l\u00fd c\u00f9ng c\u1ea5p (/c00FF00%U/p) c\u1ee7a \u0111\u1ecbch, s\u1ebd c\u00f3 /c00FF00%U%/p c\u01a1 h\u1ed9i \u0111\u1ee1 t\u1ea5n c\u00f4ng c\u1ee7a \u0111\u1ed1i ph\u01b0\u01a1ng, t\u1ec9 l\u1ec7 \u0110\u1ee1 \u0110\u00f2n cao nh\u1ea5t l\u00e0 /c00FF0070%/p. \u0110\u1ee1 \u0111\u00f2n th\u00e0nh c\u00f4ng, s\u1ebd kh\u00f4ng ph\u1ea3i ch\u1ecbu s\u00e1t th\u01b0\u01a1ng. N\u1ebfu l\u1ea7n t\u1ea5n c\u00f4ng n\u00e0y, c\u00f3 nhi\u1ec1u l\u1ea7n t\u1ea5n c\u00f4ng, m\u1ed7i khi \u0111\u1ee1 \u0111\u00f2n th\u00e0nh c\u00f4ng s\u1ebd gi\u1ea3m 10% t\u1ec9 l\u1ec7 \u0110\u1ee1 \u0110\u00f2n."

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 2741
    const-string v2, "Khi t\u1ea5n c\u00f4ng v\u1eadt l\u00fd, b\u1ecf qua /c00FF00%U/p \u0111i\u1ec3m Ch\u00e9m v\u00e0 Ph\u00f2ng \u0110\u00e2m c\u1ee7a m\u1ee5c ti\u00eau."

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 2743
    const-string v2, "Khi t\u1ea5n c\u00f4ng ma ph\u00e1p, b\u1ecf qua /c00FF00%U/p \u0111i\u1ec3m Ma Th\u1ee7 c\u1ee7a m\u1ee5c ti\u00eau."

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 2745
    const-string v2, "Khi d\u00f9ng t\u1ea5n c\u00f4ng v\u1eadt l\u00fd, c\u00f3 /c00FF00%U%/p t\u1ec9 l\u1ec7 Chu\u1ea9n X\u00e1c t\u1ea5t nhi\u00ean. T\u1ed1i \u0111a /c00FF00%U%/p."

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 2747
    const-string v2, "Tr\u01b0\u1edbc m\u1ed7i hi\u1ec7p \u0111\u1ea5u t\u1ef1 \u0111\u1ed9ng h\u1ed3i /c00FF00%U/p \u0111i\u1ec3m HP."

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 2749
    const-string v2, "Tr\u01b0\u1edbc m\u1ed7i hi\u1ec7p \u0111\u1ea5u t\u1ef1 \u0111\u1ed9ng h\u1ed3i /c00FF00%U/p \u0111i\u1ec3m MP."

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 2751
    const-string v2, "Thu\u1eabn Ph\u00e1p L\u1ef1c c\u00f3 th\u1ec3 tri\u1ec7t ti\u00eau b\u1ea5t c\u1ee9 s\u00e1t th\u01b0\u01a1ng v\u00e0 hi\u1ec7u \u1ee9ng b\u1ea5t l\u1ee3i n\u00e0o trong chi\u1ebfn \u0111\u1ea5u. M\u1ed7i khi tri\u1ec7t ti\u00eau 1 \u0111i\u1ec3m s\u00e1t th\u01b0\u01a1ng c\u1ea7n 1 \u0111i\u1ec3m Thu\u1eabn Ph\u00e1p L\u1ef1c v\u00e0 1\u0111i\u1ec3m MP. Khi MP kh\u00f4ng \u0111\u1ee7, Thu\u1eabn Ph\u00e1p L\u1ef1c v\u00f4 hi\u1ec7u."

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 2753
    const-string v2, "C\u00f3 /c00FF00%U%/p x\u00e1c su\u1ea5t t\u1ef1 \u0111\u1ed9ng ph\u1ea3n k\u00edch t\u1ea5n c\u00f4ng lo\u1ea1i v\u1eadt l\u00fd, khi\u1ebfn /c00FF00%U%/p s\u00e1t th\u01b0\u01a1ng ph\u1ea3n th\u01b0\u01a1ng l\u1ea1i cho k\u1ebb t\u1ea5n c\u00f4ng. T\u1ed1i \u0111a c\u00f3 th\u1ec3 ph\u1ea3n k\u00edch 70% s\u00e1t th\u01b0\u01a1ng."

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 2755
    const-string v2, "C\u00f3 /c00FF00%U%/p x\u00e1c su\u1ea5t t\u1ef1 \u0111\u1ed9ng ph\u1ea3n k\u00edch t\u1ea5n c\u00f4ng lo\u1ea1i ma ph\u00e1p, khi\u1ebfn /c00FF00%U%/p s\u00e1t th\u01b0\u01a1ng ph\u1ea3n th\u01b0\u01a1ng l\u1ea1i cho k\u1ebb t\u1ea5n c\u00f4ng. T\u1ed1i \u0111a c\u00f3 th\u1ec3 ph\u1ea3n k\u00edch 70% s\u00e1t th\u01b0\u01a1ng."

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 2757
    const-string v2, "Khi g\u00e2y s\u00e1t th\u01b0\u01a1ng cho m\u1ee5c ti\u00eau, t\u1ef1 h\u1ed3i ph\u1ee5c HP t\u01b0\u01a1ng \u0111\u01b0\u01a1ng /c00FF00%U%/p s\u00e1t th\u01b0\u01a1ng."

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 2759
    const-string v2, "Khi g\u00e2y s\u00e1t th\u01b0\u01a1ng cho m\u1ee5c ti\u00eau, t\u1ef1 h\u1ed3i ph\u1ee5c MP t\u01b0\u01a1ng \u0111\u01b0\u01a1ng /c00FF00%U%/p s\u00e1t th\u01b0\u01a1ng."

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 2761
    const-string v2, "C\u00f3 /c00FF00%U%/p x\u00e1c su\u1ea5t v\u00f4 hi\u1ec7u hi\u1ec7u \u1ee9ng t\u1ea5n c\u00f4ng ma ph\u00e1p, ph\u00f9 ch\u00fa g\u00e2y ra cho b\u1ea1n.Th\u1ea5u r\u00f5 ph\u00e1p thu\u1eadt c\u1ea7n ti\u00eau hao \u0111i\u1ec3m MP \u0111\u1ed1i ph\u01b0\u01a1ng d\u00f9ng ma ph\u00e1p. MP kh\u00f4ng \u0111\u1ee7 s\u1ebd kh\u00f4ng th\u1ec3 thi tri\u1ec3n."

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 2763
    const-string v2, "Mi c\u00f3 th\u1ec3 gi\u1ea3m /c00FF00%U/p l\u1ea7n s\u00e1t th\u01b0\u01a1ng t\u1ea5n c\u00f4ng. Ch\u00fa \u00fd, h\u1ed9 thu\u1eabn mi\u1ec5n th\u01b0\u01a1ng kh\u00f4ng th\u1ec3 l\u00e0m m\u1ea5t \u0111i c\u00e1c tr\u1ea1ng th\u00e1i b\u1ea5t l\u1ee3i kh\u00e1c ngo\u00e0i s\u00e1t th\u01b0\u01a1ng"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 2765
    const-string v2, "Gi\u00e1 tr\u1ecb b\u1ecf qua ph\u1ea3n k\u00edch hi\u1ec7n t\u1ea1i\uff1a/c00FF00%U/p"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 2767
    const-string v2, "Gi\u00e1 tr\u1ecb b\u1ecf qua h\u1ed3i ma ph\u00e1p hi\u1ec7n t\u1ea1i\uff1a/c00FF00%U/p"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 2769
    const-string v2, "Gi\u00e1 tr\u1ecb b\u1ecf qua \u0111\u1ee1 hi\u1ec7n t\u1ea1i\uff1a/c00FF00%U/p"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 2771
    const-string v2, "Gi\u00e1 tr\u1ecb b\u1ecf qua \u0111\u1ed9ng s\u00e1t hi\u1ec7n t\u1ea1i\uff1a/c00FF00%U/p"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 2773
    const-string v2, "Gi\u00e1 tr\u1ecb b\u1ecf qua kh\u00e1ng tr\u1ea1ng th\u00e1i hi\u1ec7n t\u1ea1i\uff1a/c00FF00%U/p"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 2775
    const-string v2, "Gi\u00e1 tr\u1ecb b\u1ecf qua mi\u1ec5n s\u00e1t th\u01b0\u01a1ng hi\u1ec7n t\u1ea1i\uff1a/c00FF00%U/p"

    aput-object v2, v0, v1

    .line 2701
    sput-object v0, Lcom/hz/ui/PlayerInfoUIAction;->ATTRIBUTE_TEXT:[Ljava/lang/String;

    .line 2915
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    .line 2916
    const-string v1, "Ti\u1ec1n hi\u1ec7n t\u1ea1i /cFFFF00%U/p\n V\u00e0ng c\u00f3 th\u1ec3 tri tr\u1ea3 ph\u00ed d\u1ecbch v\u1ee5 t\u0103ng th\u00eam, c\u00f3 th\u1ec3 thay th\u1ebf Kim Di\u1ec7p \u0111\u1ec3 chi tr\u1ea3. V\u00e0ng c\u00f3 \u0111\u01b0\u1ee3c khi n\u1ea1p th\u1ebb."

    aput-object v1, v0, v4

    .line 2917
    const-string v1, "Ti\u1ec1n hi\u1ec7n t\u1ea1i/c9acaff%U/p\n Kim Di\u1ec7p l\u00e0 ti\u1ec1n kh\u00f3a, kh\u00f4ng th\u1ec3 giao d\u1ecbch, c\u00f3 th\u1ec3 d\u00f9ng mua \u0111\u1ea1o c\u1ee5 t\u0103ng \u0111i\u1ec3m kh\u00f3a. Kim Di\u1ec7p nh\u1eadn \u0111\u01b0\u1ee3c khi l\u00e0m nhi\u1ec7m v\u1ee5 v\u00e0 n\u1ea1p ti\u1ec1n."

    aput-object v1, v0, v5

    .line 2918
    const-string v1, "Ti\u1ec1n hi\u1ec7n t\u1ea1i/cc45712%U/p\n \u0110\u1ed3ng l\u00e0 ti\u1ec1n game, d\u00f9ng \u0111\u1ec3 mua c\u00e1c lo\u1ea1i \u0111\u1ea1o c\u1ee5. \u0110\u1ed3ng c\u00f3 \u0111\u01b0\u1ee3c khi l\u00e0m nhi\u1ec7m v\u1ee5, qu\u00e1i \u0111\u00e1nh r\u01a1i."

    aput-object v1, v0, v6

    .line 2919
    const-string v1, "V\u00e0o th\u1eddi gian ch\u1ec9 \u0111\u1ecbnh c\u1ee7a m\u1ed7i ng\u00e0y c\u00f3 th\u1ec3 tham gia ph\u00f3 b\u1ea3n \u0111o\u00e0n \u0111\u1ed9i, nh\u1eadn \u0110i\u1ec3m Vinh D\u1ef1."

    aput-object v1, v0, v3

    .line 2920
    const-string v1, "V\u00e0o th\u1eddi gian ch\u1ec9 \u0111\u1ecbnh m\u1ed7i ng\u00e0y tham gia \u0110\u1ea5u Tr\u01b0\u1eddng thi \u0111\u1ea5u c\u00f9ng ng\u01b0\u1eddi ch\u01a1i kh\u00e1c, th\u1eafng s\u1ebd nh\u1eadn \u0111\u01b0\u1ee3c \u0110i\u1ec3m Thi \u0110\u1ea5u."

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 2921
    const-string v2, "H\u00e0ng ng\u00e0y v\u00e0o \u0110\u1ea5u Tr\u01b0\u1eddng Thi\u00ean Kh\u00f4ng khi\u00eau chi\u1ebfn th\u1ee7 v\u1ec7, chi\u1ebfn th\u1eafng s\u1ebd nh\u1eadn \u0111\u01b0\u1ee3c \u0110i\u1ec3m Khi\u00eau Chi\u1ebfn."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 2922
    const-string v2, "L\u1ef1c chi\u1ebfn hi\u1ec7n t\u1ea1:%U\nT\u00ednh t\u1ed5ng L\u1ef1c Chi\u1ebfn theo danh s\u00e1ch thu\u1ed9c t\u00ednh ng\u01b0\u1eddi ch\u01a1i m\u1ed7i thu\u1ed9c t\u00ednh nh\u00e2n cho h\u1ec7 s\u1ed1."

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 2923
    const-string v2, "\u0110\u1ed9 Ph\u00f9 ma\uff1a%U/10000\nC\u00f3 th\u1ec3 nh\u1eadn \u0111\u01b0\u1ee3c th\u00f4ng qua h\u1ea5p thu trang b\u1ecb, ti\u1ebfn h\u00e0nh ph\u00f9 ma trang b\u1ecb th\u00f4ng qua ti\u00eau hao \u0111i\u1ec3m Ph\u00f9 ma, s\u1eafp ch\u1ec9 \u0111\u1ecbnh thu\u1ed9c t\u00ednh Ph\u00f9 ma \u0111\u00ednh k\u00e8m l\u00ean trang b\u1ecb. \u0110\u1ed3ng th\u1eddi c\u1ea7n \u0111\u1ea1o c\u1ee5 Ph\u00f9 ma t\u01b0\u01a1ng \u1ee9ng khi Ph\u00f9 ma"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 2924
    const-string v2, "Khi nh\u00e2n v\u1eadt /c00FF00 c\u1ee7a b\u1ea1n max level/p, to\u00e0n b\u1ed9 EXP b\u1ea1n nh\u1eadn \u0111\u01b0\u1ee3c s\u1ebd chuy\u1ec3n th\u00e0nh EXP Th\u1ea7n K\u00ec. D\u00f9ng EXP Th\u1ea7n K\u00ec th\u0103ng C\u1ea5p Th\u1ea7n K\u00ec.C\u1ea5p Th\u1ea7n K\u00ec /c00FF00t\u0103ng thu\u1ed9c t\u00ednh chi\u1ebfn \u0111\u1ea5u c\u1ee7a b\u1ea1n/p, gi\u00fap b\u1ea1n chi\u1ebfm \u01b0u th\u1ebf trong chi\u1ebfn \u0111\u1ea5u; t\u0103ng C\u1ea5p Th\u1ea7n K\u00ec c\u00f2n c\u00f3 th\u1ec3 /c00FF00t\u0103ng t\u1ec9 l\u1ec7 r\u1edbt b\u1ea3o c\u1ee7a qu\u00e1i v\u1eadt/p, v\u00e0 /c00FF00t\u0103ng t\u1ec9 l\u1ec7 r\u1edbt c\u1ef1c ph\u1ea9m c\u1ee7a b\u1ea3o r\u01b0\u01a1ng /p."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 2926
    const-string v2, "%U"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 2927
    const-string v2, "D\u00f9ng \u0111\u1ea1o c\u1ee5 m\u1edf r\u1ed9ng kho c\u00f3 th\u1ec3 t\u0103ng \u00f4 kho."

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 2928
    const-string v2, "T\u1ed5ng s\u1ed1 qu\u00e1i ti\u00eau di\u1ec7t t\u1edbi gi\u1edd."

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 2929
    const-string v2, "S\u1ed1 l\u1ea7n quy\u1ebft \u0111\u1ea5u th\u1eafng."

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 2930
    const-string v2, "T\u1ec9 l\u1ec7 quy\u1ebft \u0111\u1ea5u th\u1eafng."

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 2931
    const-string v2, "B\u1ea1n \u0111\u1eddi \nPhu th\u00ea \u0111\u1ed3ng th\u1eddi online c\u00f3 th\u1ec3 nh\u1eadn 1.1 exp\nPhu th\u00ea d\u1ecbch chuy\u1ec3n qua l\u1ea1i kh\u00f4ng c\u1ea7n d\u00f9ng \u0111\u00e1 d\u1ecbch chuy\u1ec3n"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 2932
    const-string v2, "Ng\u01b0\u1eddi ch\u01a1i ch\u1ec9 c\u00f3 th\u1ec3 tr\u1edf th\u00e0nh \u0111\u1ec7 t\u1eed ho\u1eb7c s\u01b0 ph\u1ee5 (c\u00f3 th\u1ec3 nh\u1eadn 5 \u0111\u1ec7 t\u1eed). Khi quan h\u1ec7 duy tr\u00ec 3 ng\u00e0y tr\u1edf l\u00ean, s\u01b0 ph\u1ee5 c\u00f3 th\u1ec3 nh\u1eadn \u0111\u01b0\u1ee3c Kim Di\u1ec7p c\u1ee7a 5% s\u1ed1 ti\u1ec1n \u0111\u1ec7 t\u1eed n\u1ea1p. \u0110\u1ec7 t\u1eed c\u1ea5p 40 ho\u1eb7c cao h\u01a1n c\u1ea5p s\u01b0 ph\u1ee5, s\u1ebd t\u1ef1 \u0111\u1ed9ng tho\u00e1t kh\u1ecfi quan h\u1ec7 s\u01b0 \u0111\u1ed3."

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 2933
    const-string v2, "/c00FF00%U/p"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 2934
    const-string v2, "Khi n\u01b0\u1edbc li\u00ean minh x\u1ea3y ra qu\u1ed1c chi\u1ebfn, b\u1ea1n c\u00f3 th\u1ec3 xin v\u00e0o vi\u1ec7n qu\u00e2n, gi\u00fap n\u01b0\u1edbc li\u00ean minh t\u00e1c chi\u1ebfn!"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 2935
    const-string v2, "Khi tra album c\u1ee7a ng\u01b0\u1eddi kh\u00e1c, c\u00f3 th\u1ec3 ch\u1ecdn \u0111\u1ed1i t\u01b0\u1ee3ng y\u00eau th\u1ea7m!"

    aput-object v2, v0, v1

    .line 2915
    sput-object v0, Lcom/hz/ui/PlayerInfoUIAction;->SOCIETY_EXPLAIN:[Ljava/lang/String;

    .line 2936
    return-void

    .line 54
    nop

    :array_0
    .array-data 4
        0xc
        0x2
        0x64
    .end array-data
.end method

.method public constructor <init>(Lcom/hz/actor/Player;)V
    .locals 1
    .param p1, "p"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2790
    iput-object v0, p0, Lcom/hz/ui/PlayerInfoUIAction;->CHANGE_TEXT:[[Ljava/lang/String;

    .line 2937
    iput-object v0, p0, Lcom/hz/ui/PlayerInfoUIAction;->SOCIETY_CHANGE_TEXT:[[Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hz/ui/PlayerInfoUIAction;->init(Lcom/hz/actor/Player;Z)V

    .line 80
    return-void
.end method

.method private static final addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "attrWindow"    # Lcom/hz/gui/GWindow;
    .param p1, "attrLinePanel"    # Lcom/hz/gui/GContainer;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2134
    if-nez p1, :cond_0

    .line 2164
    :goto_0
    return-void

    .line 2138
    :cond_0
    invoke-virtual {p1}, Lcom/hz/gui/GContainer;->getClone()Lcom/hz/gui/GWidget;

    move-result-object v1

    check-cast v1, Lcom/hz/gui/GContainer;

    .line 2141
    .local v1, "choicePanel":Lcom/hz/gui/GContainer;
    const/16 v5, 0xc1e

    invoke-virtual {v1, v5}, Lcom/hz/gui/GContainer;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v3

    check-cast v3, Lcom/hz/gui/GLabel;

    .line 2142
    .local v3, "nameLabel":Lcom/hz/gui/GLabel;
    if-eqz v3, :cond_1

    .line 2143
    invoke-virtual {v3, p3}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2145
    if-eqz p2, :cond_1

    instance-of v5, p2, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    move-object v5, p2

    .line 2146
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2149
    .local v0, "attr":I
    add-int/lit8 v2, v0, -0x20

    .line 2150
    .local v2, "moenyIcon":I
    if-ltz v2, :cond_1

    const/4 v5, 0x5

    if-gt v2, v5, :cond_1

    .line 2151
    int-to-byte v5, v2

    const/16 v6, 0x1000

    invoke-virtual {v3, v5, v6}, Lcom/hz/gui/GLabel;->setIconValue(BI)V

    .line 2157
    .end local v0    # "attr":I
    .end local v2    # "moenyIcon":I
    :cond_1
    const/16 v5, 0xc1f

    invoke-virtual {v1, v5}, Lcom/hz/gui/GContainer;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v4

    check-cast v4, Lcom/hz/gui/GLabel;

    .line 2158
    .local v4, "valueLabel":Lcom/hz/gui/GLabel;
    if-eqz v4, :cond_2

    .line 2159
    invoke-virtual {v4, p4}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2162
    :cond_2
    invoke-virtual {v1, p2}, Lcom/hz/gui/GContainer;->setObj(Ljava/lang/Object;)V

    .line 2163
    invoke-virtual {p0, v1}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    goto :goto_0
.end method

.method private static final addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "attrWindow"    # Lcom/hz/gui/GWindow;
    .param p1, "attrLinePanel"    # Lcom/hz/gui/GContainer;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2129
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2130
    return-void
.end method

.method private static final addPlayerInfoTabGWidget(Lcom/hz/ui/UIHandler;I)V
    .locals 4
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "tabEvent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1438
    const/16 v3, 0x36

    invoke-virtual {p0, v3}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    check-cast v0, Lcom/hz/gui/GLinePanel;

    .line 1439
    .local v0, "framePanel":Lcom/hz/gui/GLinePanel;
    if-eqz v0, :cond_0

    .line 1440
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/hz/gui/GContainer;->add(Lcom/hz/gui/GWidget;)V

    .line 1445
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    check-cast v2, Lcom/hz/gui/GWindow;

    .line 1446
    .local v2, "tagWindow":Lcom/hz/gui/GWindow;
    if-eqz v2, :cond_1

    .line 1447
    invoke-virtual {v2, p1}, Lcom/hz/gui/GWindow;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v1

    .line 1448
    .local v1, "gwidget":Lcom/hz/gui/GWidget;
    invoke-virtual {v2, v1}, Lcom/hz/gui/GWindow;->setFocus(Lcom/hz/gui/GWidget;)V

    .line 1449
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/hz/gui/GContainer;->add(Lcom/hz/gui/GWidget;)V

    .line 1451
    .end local v1    # "gwidget":Lcom/hz/gui/GWidget;
    :cond_1
    return-void
.end method

.method private static final addRaidersPlayerInfoTabGWidget(Lcom/hz/ui/UIHandler;I)V
    .locals 5
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "tabEvent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3336
    if-nez p0, :cond_1

    .line 3384
    :cond_0
    :goto_0
    return-void

    .line 3340
    :cond_1
    const/16 v4, 0x319d

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    check-cast v2, Lcom/hz/gui/GWindow;

    .line 3341
    .local v2, "tagWindow":Lcom/hz/gui/GWindow;
    if-eqz v2, :cond_0

    .line 3344
    iget-object v4, v2, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-nez v4, :cond_2

    .line 3345
    invoke-virtual {v2}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    .line 3348
    :cond_2
    const/4 v1, 0x0

    .line 3349
    .local v1, "gw":Lcom/hz/gui/GWidget;
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v0

    .line 3351
    .local v0, "frameContainer":Lcom/hz/gui/GContainer;
    packed-switch p1, :pswitch_data_0

    .line 3374
    :goto_1
    :pswitch_0
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/hz/gui/GContainer;->remove(Lcom/hz/gui/GWidget;Z)V

    .line 3375
    invoke-virtual {v0, v2}, Lcom/hz/gui/GContainer;->add(Lcom/hz/gui/GWidget;)V

    .line 3377
    invoke-virtual {v0}, Lcom/hz/gui/GContainer;->show()V

    goto :goto_0

    .line 3379
    .end local v0    # "frameContainer":Lcom/hz/gui/GContainer;
    .end local v1    # "gw":Lcom/hz/gui/GWidget;
    .end local v2    # "tagWindow":Lcom/hz/gui/GWindow;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 3353
    .restart local v0    # "frameContainer":Lcom/hz/gui/GContainer;
    .restart local v1    # "gw":Lcom/hz/gui/GWidget;
    .restart local v2    # "tagWindow":Lcom/hz/gui/GWindow;
    :pswitch_1
    const/16 v4, 0x31a4

    invoke-virtual {p0, v4}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v1

    .line 3354
    if-nez v1, :cond_3

    .line 3355
    const/16 v4, 0x7f

    invoke-static {v4}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v3

    .line 3356
    .local v3, "xmlUI":Lcom/hz/ui/UIHandler;
    invoke-virtual {p0, v3}, Lcom/hz/ui/UIHandler;->addEventGWidget(Lcom/hz/ui/UIHandler;)V

    .line 3357
    const/16 v4, 0x31a4

    invoke-virtual {p0, v4}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v1

    .line 3359
    .end local v3    # "xmlUI":Lcom/hz/ui/UIHandler;
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/hz/gui/GContainer;->remove(Lcom/hz/gui/GWidget;Z)V

    .line 3360
    invoke-virtual {v0, v1}, Lcom/hz/gui/GContainer;->add(Lcom/hz/gui/GWidget;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3351
    :pswitch_data_0
    .packed-switch 0x319e
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static final addSkillPanelTab(Lcom/hz/ui/UIHandler;)V
    .locals 4
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v3, 0x25

    .line 1690
    if-nez p0, :cond_0

    .line 1718
    :goto_0
    return-void

    .line 1696
    :cond_0
    invoke-virtual {p0, v3}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 1699
    .local v0, "gw":Lcom/hz/gui/GWidget;
    if-nez v0, :cond_1

    .line 1700
    const/16 v2, 0x20

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v1

    .line 1701
    .local v1, "skillUIHandler":Lcom/hz/ui/UIHandler;
    if-eqz v1, :cond_1

    .line 1702
    invoke-virtual {v1, v3}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 1703
    invoke-virtual {p0, v0}, Lcom/hz/ui/UIHandler;->addEventGWidget(Lcom/hz/gui/GWidget;)V

    .line 1705
    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hz/ui/UIHandler;->addEventGWidget(Lcom/hz/gui/GWidget;)V

    .line 1706
    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hz/ui/UIHandler;->addEventGWidget(Lcom/hz/gui/GWidget;)V

    .line 1707
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hz/ui/UIHandler;->addEventGWidget(Lcom/hz/gui/GWidget;)V

    .line 1708
    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hz/ui/UIHandler;->addEventGWidget(Lcom/hz/gui/GWidget;)V

    .line 1709
    const/16 v2, 0xc81

    invoke-virtual {v1, v2}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hz/ui/UIHandler;->addEventGWidget(Lcom/hz/gui/GWidget;)V

    .line 1710
    const/16 v2, 0xc82

    invoke-virtual {v1, v2}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hz/ui/UIHandler;->addEventGWidget(Lcom/hz/gui/GWidget;)V

    .line 1715
    .end local v1    # "skillUIHandler":Lcom/hz/ui/UIHandler;
    :cond_1
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/hz/gui/GContainer;->add(Lcom/hz/gui/GWidget;)V

    goto :goto_0
.end method

.method private cancelChangeAttValue()V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    iget-object v1, p0, Lcom/hz/ui/PlayerInfoUIAction;->baseAtt:[S

    const/4 v2, 0x0

    aget-short v1, v1, v2

    iput-short v1, v0, Lcom/hz/actor/Player;->str:S

    .line 308
    iget-object v0, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    iget-object v1, p0, Lcom/hz/ui/PlayerInfoUIAction;->baseAtt:[S

    const/4 v2, 0x1

    aget-short v1, v1, v2

    iput-short v1, v0, Lcom/hz/actor/Player;->con:S

    .line 309
    iget-object v0, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    iget-object v1, p0, Lcom/hz/ui/PlayerInfoUIAction;->baseAtt:[S

    const/4 v2, 0x2

    aget-short v1, v1, v2

    iput-short v1, v0, Lcom/hz/actor/Player;->agi:S

    .line 310
    iget-object v0, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    iget-object v1, p0, Lcom/hz/ui/PlayerInfoUIAction;->baseAtt:[S

    const/4 v2, 0x3

    aget-short v1, v1, v2

    iput-short v1, v0, Lcom/hz/actor/Player;->ilt:S

    .line 311
    iget-object v0, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    iget-object v1, p0, Lcom/hz/ui/PlayerInfoUIAction;->baseAtt:[S

    const/4 v2, 0x4

    aget-short v1, v1, v2

    iput-short v1, v0, Lcom/hz/actor/Player;->wis:S

    .line 313
    iget-object v0, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    iget v1, p0, Lcom/hz/ui/PlayerInfoUIAction;->baseCP:I

    int-to-short v1, v1

    iput-short v1, v0, Lcom/hz/actor/Player;->cp:S

    .line 314
    iget-object v0, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    iget v1, p0, Lcom/hz/ui/PlayerInfoUIAction;->baseHP:I

    iput v1, v0, Lcom/hz/actor/Player;->hp:I

    .line 315
    iget-object v0, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    iget v1, p0, Lcom/hz/ui/PlayerInfoUIAction;->baseMP:I

    iput v1, v0, Lcom/hz/actor/Player;->mp:I

    .line 316
    return-void
.end method

.method private static final cleanPlayerInfoTabGWidget(Lcom/hz/ui/UIHandler;Z)V
    .locals 7
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "isPetMer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1365
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v0

    .line 1367
    .local v0, "frame":Lcom/hz/gui/GContainer;
    if-eqz p1, :cond_0

    .line 1371
    const/16 v5, 0x37

    invoke-virtual {p0, v5}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    .line 1372
    .local v2, "gw":Lcom/hz/gui/GWidget;
    invoke-virtual {v0, v2, v6}, Lcom/hz/gui/GContainer;->remove(Lcom/hz/gui/GWidget;Z)V

    .line 1375
    const/16 v5, 0x3a

    invoke-virtual {p0, v5}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    .line 1376
    invoke-virtual {v0, v2, v6}, Lcom/hz/gui/GContainer;->remove(Lcom/hz/gui/GWidget;Z)V

    .line 1379
    const/16 v5, 0x3b

    invoke-virtual {p0, v5}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    .line 1380
    invoke-virtual {v0, v2, v6}, Lcom/hz/gui/GContainer;->remove(Lcom/hz/gui/GWidget;Z)V

    .line 1410
    :goto_0
    const/16 v5, 0x25

    invoke-virtual {p0, v5}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    .line 1411
    invoke-virtual {v0, v2, v6}, Lcom/hz/gui/GContainer;->remove(Lcom/hz/gui/GWidget;Z)V

    .line 1417
    const/16 v5, 0x23

    invoke-virtual {p0, v5}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v3

    .line 1418
    .local v3, "listWindow":Lcom/hz/gui/GWidget;
    invoke-virtual {v0, v3, v6}, Lcom/hz/gui/GContainer;->remove(Lcom/hz/gui/GWidget;Z)V

    .line 1421
    const/16 v5, 0x36

    invoke-virtual {p0, v5}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v1

    check-cast v1, Lcom/hz/gui/GLinePanel;

    .line 1422
    .local v1, "framePanel":Lcom/hz/gui/GLinePanel;
    invoke-virtual {v0, v1, v6}, Lcom/hz/gui/GContainer;->remove(Lcom/hz/gui/GWidget;Z)V

    .line 1425
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v4

    check-cast v4, Lcom/hz/gui/GWindow;

    .line 1426
    .local v4, "tagWindow":Lcom/hz/gui/GWindow;
    invoke-virtual {v0, v4, v6}, Lcom/hz/gui/GContainer;->remove(Lcom/hz/gui/GWidget;Z)V

    .line 1427
    return-void

    .line 1387
    .end local v1    # "framePanel":Lcom/hz/gui/GLinePanel;
    .end local v2    # "gw":Lcom/hz/gui/GWidget;
    .end local v3    # "listWindow":Lcom/hz/gui/GWidget;
    .end local v4    # "tagWindow":Lcom/hz/gui/GWindow;
    :cond_0
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    .line 1388
    .restart local v2    # "gw":Lcom/hz/gui/GWidget;
    invoke-virtual {v0, v2, v6}, Lcom/hz/gui/GContainer;->remove(Lcom/hz/gui/GWidget;Z)V

    .line 1390
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    .line 1391
    invoke-virtual {v0, v2, v6}, Lcom/hz/gui/GContainer;->remove(Lcom/hz/gui/GWidget;Z)V

    .line 1393
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    .line 1394
    invoke-virtual {v0, v2, v6}, Lcom/hz/gui/GContainer;->remove(Lcom/hz/gui/GWidget;Z)V

    .line 1401
    const/16 v5, 0xce5

    invoke-virtual {p0, v5}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    .line 1402
    invoke-virtual {v0, v2, v6}, Lcom/hz/gui/GContainer;->remove(Lcom/hz/gui/GWidget;Z)V

    goto :goto_0
.end method

.method private static final cleanRadiersPlayerInfoTabGWidget(Lcom/hz/ui/UIHandler;)V
    .locals 4
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3121
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v0

    .line 3127
    .local v0, "frame":Lcom/hz/gui/GContainer;
    const/16 v2, 0x31a4

    invoke-virtual {p0, v2}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v1

    .line 3128
    .local v1, "gw":Lcom/hz/gui/GWidget;
    invoke-virtual {v0, v1, v3}, Lcom/hz/gui/GContainer;->remove(Lcom/hz/gui/GWidget;Z)V

    .line 3134
    const/16 v2, 0x25

    invoke-virtual {p0, v2}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v1

    .line 3135
    invoke-virtual {v0, v1, v3}, Lcom/hz/gui/GContainer;->remove(Lcom/hz/gui/GWidget;Z)V

    .line 3145
    const/16 v2, 0x23

    invoke-virtual {p0, v2}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v1

    .line 3146
    invoke-virtual {v0, v1, v3}, Lcom/hz/gui/GContainer;->remove(Lcom/hz/gui/GWidget;Z)V

    .line 3152
    return-void
.end method

.method private final doChangeAttAction(Lcom/hz/ui/UIHandler;Z)Z
    .locals 7
    .param p1, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p2, "isGuide"    # Z

    .prologue
    const/4 v2, 0x1

    .line 544
    invoke-direct {p0}, Lcom/hz/ui/PlayerInfoUIAction;->isChangeAttValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 545
    const/4 v2, 0x0

    .line 563
    :cond_0
    :goto_0
    return v2

    .line 548
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 549
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-direct {p0, v0}, Lcom/hz/ui/PlayerInfoUIAction;->getNeedMoneyArray(Ljava/lang/StringBuffer;)[I

    .line 551
    const/16 v3, 0x8b

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 552
    const-string v4, "Mi \u0111\u1ed3ng \u00fd ph\u00e2n ph\u1ed1i nh\u01b0 v\u1eady kh\u00f4ng? \n%U"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/hz/ui/PlayerInfoUIAction;->getChangeAttDesc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    .line 551
    invoke-static {v3, v4, v5}, Lcom/hz/ui/UIHandler;->createTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)Lcom/hz/ui/UIHandler;

    move-result-object v1

    .line 553
    .local v1, "twiceUI":Lcom/hz/ui/UIHandler;
    invoke-virtual {v1, p0}, Lcom/hz/ui/UIHandler;->setListener(Lcom/hz/ui/UIListener;)V

    .line 554
    invoke-virtual {v1, p1}, Lcom/hz/ui/UIHandler;->setParent(Lcom/hz/ui/UIHandler;)V

    .line 557
    if-eqz p2, :cond_0

    .line 558
    const/16 v3, 0x100

    invoke-virtual {v1, v2, v3}, Lcom/hz/ui/UIHandler;->setStatusFlag(ZI)V

    .line 559
    const/16 v3, 0x17

    invoke-static {v3}, Lcom/hz/main/GameWorld;->setGuide(I)V

    goto :goto_0
.end method

.method public static doDropSkill(Lcom/hz/actor/Player;Lcom/hz/core/Skill;)V
    .locals 9
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "skill"    # Lcom/hz/core/Skill;

    .prologue
    .line 2619
    const/4 v6, 0x0

    .line 2620
    .local v6, "skillType":B
    invoke-virtual {p0}, Lcom/hz/actor/Player;->getType()B

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 2621
    const/4 v6, 0x1

    .line 2624
    :cond_0
    iget v7, p1, Lcom/hz/core/Skill;->id:I

    invoke-static {v7, v6}, Lcom/hz/main/MsgHandler;->createDropSkill(IB)Lcom/hz/net/Message;

    move-result-object v2

    .line 2625
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2652
    :cond_1
    :goto_0
    return-void

    .line 2629
    :cond_2
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 2631
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    .line 2632
    .local v5, "skillID":I
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    .line 2633
    .local v4, "newSP":I
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 2634
    .local v1, "moneyType":B
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 2636
    .local v3, "newMoney":I
    invoke-virtual {p0, v5}, Lcom/hz/actor/Player;->getSkillByID(I)Lcom/hz/core/Skill;

    move-result-object v0

    .line 2637
    .local v0, "dropSkill":Lcom/hz/core/Skill;
    if-eqz v0, :cond_1

    .line 2645
    invoke-virtual {p0, v0}, Lcom/hz/actor/Player;->removeSkill(Lcom/hz/core/Skill;)V

    .line 2646
    iput v4, p0, Lcom/hz/actor/Player;->sp:I

    .line 2650
    sget-object v7, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v7, v1, v3}, Lcom/hz/actor/Player;->setMoneyByType(II)V

    goto :goto_0
.end method

.method private final doPlayerInfoAttrChange(Lcom/hz/ui/UIHandler;I)V
    .locals 8
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "buffValue"    # I

    .prologue
    const/4 v6, 0x4

    .line 628
    iget-object v4, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    sget-object v5, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    if-eq v4, v5, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 637
    invoke-virtual {p1, v6}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v1

    .line 638
    .local v1, "attrWindow":Lcom/hz/gui/GWindow;
    if-eqz v1, :cond_0

    .line 643
    const/16 v4, 0x80

    invoke-virtual {p1, v4}, Lcom/hz/ui/UIHandler;->isStatusFlag(I)Z

    move-result v2

    .line 645
    .local v2, "isGuide":Z
    if-lez p2, :cond_2

    .line 646
    iget-object v4, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    invoke-virtual {v4, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v4

    if-lez v4, :cond_0

    .line 650
    :cond_2
    iget-object v3, v1, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    .line 651
    .local v3, "lineGwidet":Lcom/hz/gui/GWidget;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 654
    invoke-virtual {v3}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 656
    .local v0, "attrID":I
    invoke-direct {p0, v0, p2, v2}, Lcom/hz/ui/PlayerInfoUIAction;->isVaileAttBuff(IIZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 658
    :try_start_0
    iget-object v4, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p1, v4, v5, v6, v7}, Lcom/hz/ui/PlayerInfoUIAction;->updatePlayerBaseUI(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;ZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 659
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private doSureAddValue(Lcom/hz/ui/UIHandler;Z)V
    .locals 8
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "isSure"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 321
    if-eqz p2, :cond_2

    .line 331
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/hz/ui/PlayerInfoUIAction;->getNeedMoneyArray(Ljava/lang/StringBuffer;)[I

    move-result-object v0

    .line 332
    .local v0, "moneyArray":[I
    aget v3, v0, v6

    aget v4, v0, v7

    const/4 v5, 0x2

    aget v5, v0, v5

    invoke-static {v3, v4, v5, v6}, Lcom/hz/actor/Model;->checkEnoughMoney(IIIZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 376
    .end local v0    # "moneyArray":[I
    :cond_0
    :goto_0
    return-void

    .line 336
    .restart local v0    # "moneyArray":[I
    :cond_1
    invoke-direct {p0}, Lcom/hz/ui/PlayerInfoUIAction;->getChangeAttVector()Ljava/util/Vector;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/main/MsgHandler;->createAttrAddMessage(Ljava/util/Vector;)Lcom/hz/net/Message;

    move-result-object v1

    .line 337
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 338
    invoke-direct {p0}, Lcom/hz/ui/PlayerInfoUIAction;->cancelChangeAttValue()V

    goto :goto_0

    .line 344
    .end local v0    # "moneyArray":[I
    .end local v1    # "msg":Lcom/hz/net/Message;
    :cond_2
    invoke-direct {p0}, Lcom/hz/ui/PlayerInfoUIAction;->cancelChangeAttValue()V

    .line 347
    :cond_3
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v2

    .line 348
    .local v2, "parentUI":Lcom/hz/ui/UIHandler;
    if-nez v2, :cond_4

    .line 349
    iget-object v3, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    invoke-virtual {p0, v3, v7}, Lcom/hz/ui/PlayerInfoUIAction;->init(Lcom/hz/actor/Player;Z)V

    .line 350
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 370
    :goto_1
    const/16 v3, 0x100

    invoke-virtual {p1, v3}, Lcom/hz/ui/UIHandler;->isStatusFlag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 372
    const/16 v3, 0x18

    invoke-static {v3}, Lcom/hz/main/GameWorld;->setGuide(I)V

    goto :goto_0

    .line 354
    :cond_4
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->close()V

    .line 357
    iget-object v3, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    invoke-virtual {p0, v3, v7}, Lcom/hz/ui/PlayerInfoUIAction;->init(Lcom/hz/actor/Player;Z)V

    .line 360
    :try_start_0
    iget-object v3, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/hz/ui/PlayerInfoUIAction;->updatePlayerBaseUI(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;ZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 361
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static getAttributeText(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 2779
    const/16 v0, 0x27

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2c

    if-gt p0, v0, :cond_0

    .line 2780
    add-int/lit8 p0, p0, -0x7

    .line 2783
    :cond_0
    if-ltz p0, :cond_1

    sget-object v0, Lcom/hz/ui/PlayerInfoUIAction;->ATTRIBUTE_TEXT:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_2

    .line 2784
    :cond_1
    const-string v0, ""

    .line 2786
    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lcom/hz/ui/PlayerInfoUIAction;->ATTRIBUTE_TEXT:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method private getChangeAttDesc()Ljava/lang/String;
    .locals 3

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 203
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/hz/ui/PlayerInfoUIAction;->basePlayer:Lcom/hz/actor/Player;

    if-eqz v1, :cond_0

    .line 204
    const-string v1, "Thu\u1ed9c t\u00ednh thay \u0111\u1ed5i nh\u01b0 sau: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    const/16 v1, 0x1d

    const-string v2, "HP T\u1ed1i \u0110a"

    invoke-virtual {p0, v0, v1, v2}, Lcom/hz/ui/PlayerInfoUIAction;->getChangeAttDesc(Ljava/lang/StringBuffer;ILjava/lang/String;)V

    .line 206
    const/16 v1, 0x1e

    const-string v2, "MP T\u1ed1i \u0110a"

    invoke-virtual {p0, v0, v1, v2}, Lcom/hz/ui/PlayerInfoUIAction;->getChangeAttDesc(Ljava/lang/StringBuffer;ILjava/lang/String;)V

    .line 207
    const/16 v1, 0x1f

    const-string v2, "T\u1ed1c \u0111\u1ed9"

    invoke-virtual {p0, v0, v1, v2}, Lcom/hz/ui/PlayerInfoUIAction;->getChangeAttDesc(Ljava/lang/StringBuffer;ILjava/lang/String;)V

    .line 208
    const/16 v1, 0x24

    const-string v2, "L\u1ef1c Ch\u00e9m"

    invoke-virtual {p0, v0, v1, v2}, Lcom/hz/ui/PlayerInfoUIAction;->getChangeAttDesc(Ljava/lang/StringBuffer;ILjava/lang/String;)V

    .line 209
    const/16 v1, 0x25

    const-string v2, "L\u1ef1c \u0110\u00e2m"

    invoke-virtual {p0, v0, v1, v2}, Lcom/hz/ui/PlayerInfoUIAction;->getChangeAttDesc(Ljava/lang/StringBuffer;ILjava/lang/String;)V

    .line 210
    const/16 v1, 0x26

    const-string v2, "Ma C\u00f4ng"

    invoke-virtual {p0, v0, v1, v2}, Lcom/hz/ui/PlayerInfoUIAction;->getChangeAttDesc(Ljava/lang/StringBuffer;ILjava/lang/String;)V

    .line 211
    const/16 v1, 0x27

    const-string v2, "Ph\u00f2ng Ch\u00e9m"

    invoke-virtual {p0, v0, v1, v2}, Lcom/hz/ui/PlayerInfoUIAction;->getChangeAttDesc(Ljava/lang/StringBuffer;ILjava/lang/String;)V

    .line 212
    const/16 v1, 0x28

    const-string v2, "Ph\u00f2ng \u0110\u00e2m"

    invoke-virtual {p0, v0, v1, v2}, Lcom/hz/ui/PlayerInfoUIAction;->getChangeAttDesc(Ljava/lang/StringBuffer;ILjava/lang/String;)V

    .line 213
    const/16 v1, 0x29

    const-string v2, "Ma Th\u1ee7"

    invoke-virtual {p0, v0, v1, v2}, Lcom/hz/ui/PlayerInfoUIAction;->getChangeAttDesc(Ljava/lang/StringBuffer;ILjava/lang/String;)V

    .line 214
    const/16 v1, 0x2a

    const-string v2, "N\u00e9 Tr\u00e1nh"

    invoke-virtual {p0, v0, v1, v2}, Lcom/hz/ui/PlayerInfoUIAction;->getChangeAttDesc(Ljava/lang/StringBuffer;ILjava/lang/String;)V

    .line 215
    const/16 v1, 0x30

    const-string v2, "Kh\u00e1ng Tr\u1ea1ng Th\u00e1i"

    invoke-virtual {p0, v0, v1, v2}, Lcom/hz/ui/PlayerInfoUIAction;->getChangeAttDesc(Ljava/lang/StringBuffer;ILjava/lang/String;)V

    .line 216
    const/16 v1, 0x31

    const-string v2, "Mi\u1ec5n S\u00e1t Th\u01b0\u01a1ng"

    invoke-virtual {p0, v0, v1, v2}, Lcom/hz/ui/PlayerInfoUIAction;->getChangeAttDesc(Ljava/lang/StringBuffer;ILjava/lang/String;)V

    .line 217
    const/16 v1, 0x35

    const-string v2, "Th\u1ea5u R\u00f5"

    invoke-virtual {p0, v0, v1, v2}, Lcom/hz/ui/PlayerInfoUIAction;->getChangeAttDesc(Ljava/lang/StringBuffer;ILjava/lang/String;)V

    .line 220
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getChangeAttVector()Ljava/util/Vector;
    .locals 6

    .prologue
    .line 255
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 257
    .local v1, "changeAtt":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/hz/ui/PlayerInfoUIAction;->baseAtt:[S

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 269
    return-object v1

    .line 259
    :cond_0
    iget-object v3, p0, Lcom/hz/ui/PlayerInfoUIAction;->baseAtt:[S

    aget-short v3, v3, v2

    iget-object v4, p0, Lcom/hz/ui/PlayerInfoUIAction;->buffAtt:[I

    aget v4, v4, v2

    if-eq v3, v4, :cond_1

    .line 261
    const/4 v3, 0x2

    new-array v0, v3, [S

    .line 262
    .local v0, "att":[S
    const/4 v3, 0x0

    add-int/lit8 v4, v2, 0x6

    int-to-short v4, v4

    aput-short v4, v0, v3

    .line 263
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/hz/ui/PlayerInfoUIAction;->buffAtt:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/hz/ui/PlayerInfoUIAction;->baseAtt:[S

    aget-short v5, v5, v2

    sub-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v0, v3

    .line 265
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 257
    .end local v0    # "att":[S
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getNeedMoneyArray(Ljava/lang/StringBuffer;)[I
    .locals 11
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 273
    if-nez p1, :cond_0

    .line 274
    new-instance p1, Ljava/lang/StringBuffer;

    .end local p1    # "sb":Ljava/lang/StringBuffer;
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 277
    .restart local p1    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    invoke-direct {p0}, Lcom/hz/ui/PlayerInfoUIAction;->getChangeAttVector()Ljava/util/Vector;

    move-result-object v1

    .line 278
    .local v1, "dataV":Ljava/util/Vector;
    const/4 v3, 0x0

    .line 279
    .local v3, "point":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 291
    if-lez v3, :cond_1

    .line 292
    const-string v4, "/cFFFF00(C\u1ea7n kh\u1ea5u tr\u1eeb %U, t\u1ed1i \u0111a tr\u1eeb %U)/p"

    .line 293
    new-array v5, v10, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/hz/ui/PlayerInfoUIAction;->DEL_ARRTIBUTE:[I

    aget v7, v7, v9

    invoke-static {v7}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/hz/ui/PlayerInfoUIAction;->DEL_ARRTIBUTE:[I

    aget v7, v7, v8

    mul-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/hz/ui/PlayerInfoUIAction;->DEL_ARRTIBUTE:[I

    aget v7, v7, v10

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 292
    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    :cond_1
    new-array v4, v10, [I

    sget-object v5, Lcom/hz/ui/PlayerInfoUIAction;->DEL_ARRTIBUTE:[I

    aget v5, v5, v9

    aput v5, v4, v9

    sget-object v5, Lcom/hz/ui/PlayerInfoUIAction;->DEL_ARRTIBUTE:[I

    aget v5, v5, v8

    mul-int/2addr v5, v3

    aput v5, v4, v8

    sget-object v5, Lcom/hz/ui/PlayerInfoUIAction;->DEL_ARRTIBUTE:[I

    aget v5, v5, v10

    invoke-static {v4, v5}, Lcom/hz/main/GameWorld;->getMoneyArrayValue([II)[I

    move-result-object v4

    return-object v4

    .line 281
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    .line 282
    .local v0, "att":[S
    if-nez v0, :cond_4

    .line 279
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    :cond_4
    aget-short v4, v0, v8

    if-gez v4, :cond_3

    .line 287
    aget-short v4, v0, v8

    neg-int v4, v4

    add-int/2addr v3, v4

    goto :goto_1
.end method

.method private initAttributeText(Lcom/hz/actor/Player;)V
    .locals 44
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    .line 2794
    new-instance v34, Lcom/hz/actor/Player;

    invoke-direct/range {v34 .. v34}, Lcom/hz/actor/Player;-><init>()V

    .line 2795
    .local v34, "t":Lcom/hz/actor/Player;
    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getLevel()B

    move-result v39

    move-object/from16 v0, v34

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->setLevel(B)V

    .line 2797
    new-instance v11, Lcom/hz/battle/Battle;

    invoke-direct {v11}, Lcom/hz/battle/Battle;-><init>()V

    .line 2799
    .local v11, "battle":Lcom/hz/battle/Battle;
    const/16 v35, 0x0

    .line 2801
    .local v35, "tempValue":I
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getLevel()B

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 2803
    .local v24, "level":Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    const/16 v40, 0x21

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2804
    .local v7, "atkMin":Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    const/16 v40, 0x22

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2805
    .local v6, "atkMax":Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    const/16 v40, 0x23

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2806
    .local v22, "hitTime":Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    const/16 v40, 0x8

    const/16 v41, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move-object/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2807
    .local v17, "defStr":Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    const/16 v40, 0x9

    const/16 v41, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move-object/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2808
    .local v15, "defAgi":Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    const/16 v40, 0xa

    const/16 v41, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move-object/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2809
    .local v16, "defMagic":Ljava/lang/String;
    const/16 v39, 0x3

    const/16 v40, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move-object/from16 v3, v40

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v35

    .line 2810
    const/16 v39, 0x64

    move/from16 v0, v35

    move/from16 v1, v39

    if-le v0, v1, :cond_0

    const/16 v35, 0x64

    .line 2811
    :cond_0
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 2812
    .local v21, "hitMagic":Ljava/lang/String;
    const/16 v39, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v39

    const/16 v40, 0x1

    invoke-static/range {v39 .. v40}, Lcom/hz/common/Tool;->getPointValue(II)Ljava/lang/String;

    move-result-object v27

    .line 2813
    .local v27, "magicDmg":Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    const/16 v40, 0xe

    const/16 v41, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move-object/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2816
    .local v14, "criRate":Ljava/lang/String;
    const/16 v39, 0x30

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v35

    .line 2817
    const/16 v39, 0x2bc

    move/from16 v0, v35

    move/from16 v1, v39

    if-le v0, v1, :cond_1

    const/16 v35, 0x2bc

    .line 2818
    :cond_1
    const/16 v39, 0x1

    move/from16 v0, v35

    move/from16 v1, v39

    invoke-static {v0, v1}, Lcom/hz/common/Tool;->getPointValue(II)Ljava/lang/String;

    move-result-object v38

    .line 2820
    .local v38, "wil":Ljava/lang/String;
    const/16 v39, 0x31

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v39

    const/16 v40, 0x1

    invoke-static/range {v39 .. v40}, Lcom/hz/common/Tool;->getPointValue(II)Ljava/lang/String;

    move-result-object v37

    .line 2821
    .local v37, "tough":Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    const/16 v40, 0x15

    const/16 v41, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move-object/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2822
    .local v12, "block":Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    const/16 v40, 0x34

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2823
    .local v13, "brk":Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    const/16 v40, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 2824
    .local v28, "magicPen":Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    const/16 v40, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2825
    .local v18, "forceRate":Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    const/16 v40, 0x3c

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2826
    .local v8, "autoHP":Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    const/16 v40, 0x3d

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2827
    .local v9, "autoMP":Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    const/16 v40, 0x17

    const/16 v41, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move-object/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2828
    .local v10, "back":Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    const/16 v40, 0x18

    const/16 v41, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move-object/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 2829
    .local v26, "magicBack":Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    const/16 v40, 0x39

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v40

    const/16 v41, 0x1

    invoke-static/range {v40 .. v41}, Lcom/hz/common/Tool;->getPointValue(II)Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 2830
    .local v19, "getHP":Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    const/16 v40, 0x3a

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v40

    const/16 v41, 0x1

    invoke-static/range {v40 .. v41}, Lcom/hz/common/Tool;->getPointValue(II)Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2831
    .local v20, "getMP":Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    const/16 v40, 0x16

    const/16 v41, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move-object/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 2835
    .local v23, "insight":Ljava/lang/String;
    const/16 v39, 0xb1

    invoke-static/range {v39 .. v39}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getLevel2()B

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2836
    .local v25, "level2":Ljava/lang/String;
    const/16 v39, 0x1d

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v39

    const/16 v40, 0x1d

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->getOld(I)I

    move-result v40

    sub-int v4, v39, v40

    .line 2837
    .local v4, "Lv2Hp":I
    if-lez v4, :cond_4

    new-instance v39, Ljava/lang/StringBuilder;

    const-string v40, "+"

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 2839
    .local v30, "strLv2Hp":Ljava/lang/String;
    :goto_0
    const/16 v39, 0x1e

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v39

    const/16 v40, 0x1e

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->getOld(I)I

    move-result v40

    sub-int v5, v39, v40

    .line 2840
    .local v5, "Lv2Mp":I
    if-lez v5, :cond_5

    new-instance v39, Ljava/lang/StringBuilder;

    const-string v40, "+"

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 2844
    .local v31, "strLv2Mp":Ljava/lang/String;
    :goto_1
    new-instance v39, Ljava/lang/StringBuilder;

    const/16 v40, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v40, "/"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const/16 v40, 0x1d

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 2846
    .local v32, "strhp":Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    const/16 v40, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v40, "/"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const/16 v40, 0x1e

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 2849
    .local v33, "strmp":Ljava/lang/String;
    const-string v29, ""

    .line 2850
    .local v29, "petbornStatusInfo":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getType()B

    move-result v39

    const/16 v40, 0x4

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getType()B

    move-result v39

    const/16 v40, 0x7

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_3

    :cond_2
    move-object/from16 v39, p1

    .line 2851
    check-cast v39, Lcom/hz/actor/MyPet;

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x1

    invoke-virtual/range {v39 .. v42}, Lcom/hz/actor/MyPet;->getPetBornStatusInfo(ZIZ)Ljava/lang/String;

    move-result-object v29

    .line 2852
    invoke-static/range {v29 .. v29}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_6

    .line 2853
    const-string v29, "Tr\u00e2n th\u00fa n\u00e0y kh\u00f4ng c\u00f3 tr\u1ea1ng th\u00e1i b\u1ea9m sinh."

    .line 2859
    :cond_3
    :goto_2
    const/16 v39, 0x26

    move/from16 v0, v39

    new-array v0, v0, [[Ljava/lang/String;

    move-object/from16 v36, v0

    const/16 v39, 0x0

    .line 2860
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v32, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x1

    .line 2861
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v33, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x2

    .line 2862
    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v30, v40, v41

    const/16 v41, 0x1

    aput-object v31, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x3

    .line 2863
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v29, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x4

    .line 2864
    const/16 v40, 0x0

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    aput-object v40, v36, v39

    const/16 v39, 0x5

    .line 2865
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v43, "~"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    aput-object v42, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x6

    .line 2866
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v22, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x7

    .line 2867
    const/16 v40, 0x0

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    aput-object v40, v36, v39

    const/16 v39, 0x8

    .line 2868
    const/16 v40, 0x0

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    aput-object v40, v36, v39

    const/16 v39, 0x9

    .line 2869
    const/16 v40, 0x0

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    aput-object v40, v36, v39

    const/16 v39, 0xa

    .line 2870
    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v24, v40, v41

    const/16 v41, 0x1

    aput-object v17, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0xb

    .line 2871
    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v24, v40, v41

    const/16 v41, 0x1

    aput-object v15, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0xc

    .line 2872
    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v24, v40, v41

    const/16 v41, 0x1

    aput-object v16, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0xd

    .line 2873
    const/16 v40, 0x0

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    aput-object v40, v36, v39

    const/16 v39, 0xe

    .line 2874
    const/16 v40, 0x0

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    aput-object v40, v36, v39

    const/16 v39, 0xf

    .line 2875
    const/16 v40, 0x3

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v24, v40, v41

    const/16 v41, 0x1

    aput-object v21, v40, v41

    const/16 v41, 0x2

    aput-object v27, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x10

    .line 2876
    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v24, v40, v41

    const/16 v41, 0x1

    aput-object v14, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x11

    .line 2877
    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v38, v40, v41

    const/16 v41, 0x1

    aput-object v38, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x12

    .line 2878
    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v37, v40, v41

    const/16 v41, 0x1

    aput-object v37, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x13

    .line 2879
    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v24, v40, v41

    const/16 v41, 0x1

    aput-object v12, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x14

    .line 2880
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v13, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x15

    .line 2881
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v28, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x16

    .line 2882
    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v18, v40, v41

    const/16 v41, 0x1

    const-string v42, "70"

    aput-object v42, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x17

    .line 2883
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v8, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x18

    .line 2884
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v9, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x19

    .line 2885
    const/16 v40, 0x0

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    aput-object v40, v36, v39

    const/16 v39, 0x1a

    .line 2886
    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v10, v40, v41

    const/16 v41, 0x1

    aput-object v10, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x1b

    .line 2887
    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v26, v40, v41

    const/16 v41, 0x1

    aput-object v26, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x1c

    .line 2888
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v19, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x1d

    .line 2889
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v20, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x1e

    .line 2890
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v23, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x1f

    .line 2891
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    new-instance v42, Ljava/lang/StringBuilder;

    const/16 v43, 0xfa

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    aput-object v42, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x20

    .line 2892
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    new-instance v42, Ljava/lang/StringBuilder;

    const/16 v43, 0xc8

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    aput-object v42, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x21

    .line 2893
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    new-instance v42, Ljava/lang/StringBuilder;

    const/16 v43, 0xc9

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    aput-object v42, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x22

    .line 2894
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    new-instance v42, Ljava/lang/StringBuilder;

    const/16 v43, 0xca

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    aput-object v42, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x23

    .line 2895
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    new-instance v42, Ljava/lang/StringBuilder;

    const/16 v43, 0xcb

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    aput-object v42, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x24

    .line 2896
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    new-instance v42, Ljava/lang/StringBuilder;

    const/16 v43, 0xcc

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    aput-object v42, v40, v41

    aput-object v40, v36, v39

    const/16 v39, 0x25

    .line 2897
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    new-instance v42, Ljava/lang/StringBuilder;

    const/16 v43, 0xcd

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    aput-object v42, v40, v41

    aput-object v40, v36, v39

    .line 2899
    .local v36, "text":[[Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/hz/ui/PlayerInfoUIAction;->CHANGE_TEXT:[[Ljava/lang/String;

    .line 2900
    return-void

    .line 2837
    .end local v5    # "Lv2Mp":I
    .end local v29    # "petbornStatusInfo":Ljava/lang/String;
    .end local v30    # "strLv2Hp":Ljava/lang/String;
    .end local v31    # "strLv2Mp":Ljava/lang/String;
    .end local v32    # "strhp":Ljava/lang/String;
    .end local v33    # "strmp":Ljava/lang/String;
    .end local v36    # "text":[[Ljava/lang/String;
    :cond_4
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 2840
    .restart local v5    # "Lv2Mp":I
    .restart local v30    # "strLv2Hp":Ljava/lang/String;
    :cond_5
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_1

    .line 2855
    .restart local v29    # "petbornStatusInfo":Ljava/lang/String;
    .restart local v31    # "strLv2Mp":Ljava/lang/String;
    .restart local v32    # "strhp":Ljava/lang/String;
    .restart local v33    # "strmp":Ljava/lang/String;
    :cond_6
    new-instance v39, Ljava/lang/StringBuilder;

    const-string v40, "Tr\u00e2n th\u00fa c\u00f3 tr\u1ea1ng th\u00e1i b\u1ea9m sinh: \n"

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_2
.end method

.method private initSocietyText(Lcom/hz/actor/Player;)V
    .locals 19
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    .line 2940
    const-string v8, ""

    .line 2942
    .local v8, "tempStr":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 3023
    :goto_0
    return-void

    .line 2946
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v15, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/hz/actor/Player;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2947
    .local v2, "money1":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v15, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/hz/actor/Player;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2948
    .local v3, "money2":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v15, 0xd

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/hz/actor/Player;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2951
    .local v4, "money3":Ljava/lang/String;
    const-string v8, ""

    .line 2952
    move-object/from16 v0, p1

    iget-short v14, v0, Lcom/hz/actor/Player;->titlePower1:S

    if-lez v14, :cond_1

    .line 2953
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-short v15, v0, Lcom/hz/actor/Player;->titlePower1:S

    move-object/from16 v0, p1

    iget-short v0, v0, Lcom/hz/actor/Player;->titlePowerValue1:S

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2955
    :cond_1
    move-object/from16 v0, p1

    iget-short v14, v0, Lcom/hz/actor/Player;->titlePower2:S

    if-lez v14, :cond_2

    .line 2956
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-short v15, v0, Lcom/hz/actor/Player;->titlePower2:S

    move-object/from16 v0, p1

    iget-short v0, v0, Lcom/hz/actor/Player;->titlePowerValue2:S

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2958
    :cond_2
    invoke-static {v8}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 2959
    const-string v8, "D\u00f9ng danh hi\u1ec7u m\u1edbi c\u00f3 th\u1ec3 gi\u00fap nh\u00e2n v\u1eadt nh\u1eadn \u0111\u01b0\u1ee3c m\u1ecdi thu\u1ed9c t\u00ednh c\u1ee7a danh hi\u1ec7u "

    .line 2961
    :cond_3
    move-object v12, v8

    .line 2964
    .local v12, "titlePowerDesc":Ljava/lang/String;
    const-string v13, ""

    .line 2965
    .local v13, "vipInfo":Ljava/lang/String;
    const-string v6, "VIP"

    .line 2966
    .local v6, "strvip":Ljava/lang/String;
    const-string v7, "M\u1ecdi nh\u00e2n v\u1eadt t\u00e0i kho\u1ea3n n\u00e0y c\u00f3 \u0111\u1eb7c quy\u1ec1n VIP:\n1.C\u00f3/c00ff00VIPTinh Linh/p\uff0cthu\u1ed9c t\u00ednh t\u0103ng th\u00eam c\u1ee7a Tinh Linh B\u1ea3o H\u1ed9\u3002\n2.C\u00f3/c00ff00VIP \u0111\u00e1nh d\u1ea5u th\u00e2n ph\u00e2n t\u00f4n qu\u00fd/phi\u1ec3n th\u1ecb\u3002\n3.C\u00f3/c00ff00VIPshop/pquy\u1ec1n mua\u3002\n4.C\u00f3/c00ff00VIP\u0111\u1ea1o c\u1ee5 v\u00e0 trang b\u1ecb/p quy\u1ec1n s\u1eed d\u1ee5ng\u3002\n5.C\u00f3/c00ff00VIPTh\u00e0nh t\u1ee5 ri\u00eang/p\u3002\n6.Ti\u1ebfn h\u00e0nh/c00ff00VIPV\u1ea5n \u0111\u00e1p/p\uff0cM\u1ed7i ng\u00e0y nh\u1eadn ph\u1ea7n th\u01b0\u1edfng\u3002\n7.C\u00f3/c00ff00VIP kho ri\u00eang/p\u3002\n8.M\u1ed7i ng\u00e0y Login\uff0c\u0111\u1ec1u \u0111\u01b0\u1ee3c t\u1eb7ng/c00ff00VIP qu\u00e0/p\u3002\n9.S\u1eed d\u1ee5ng shop L\u00f2 Dung\uff0cc\u00f3 nhi\u1ec1u l\u01b0\u1ee3t dung luy\u1ec7n\u3002\n10.m\u1ed7i ng\u00e0y \u0111\u1ed9 n\u0103ng \u0111\u1ed9ng+100\u3002"

    .line 2978
    .local v7, "strvipInfo":Ljava/lang/String;
    const/16 v14, 0xa

    new-array v5, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "M\u1ecdi nh\u00e2n v\u1eadt t\u00e0i kho\u1ea3n n\u00e0y c\u00f3 \u0111\u1eb7c quy\u1ec1n VIP:\n1.C\u00f3/c00ff00VIPTinh Linh/p\uff0cthu\u1ed9c t\u00ednh t\u0103ng th\u00eam c\u1ee7a Tinh Linh B\u1ea3o H\u1ed9\u3002\n2.C\u00f3/c00ff00VIP \u0111\u00e1nh d\u1ea5u th\u00e2n ph\u00e2n t\u00f4n qu\u00fd/phi\u1ec3n th\u1ecb\u3002\n3.C\u00f3/c00ff00VIPshop/pquy\u1ec1n mua\u3002\n4.C\u00f3/c00ff00VIP\u0111\u1ea1o c\u1ee5 v\u00e0 trang b\u1ecb/p quy\u1ec1n s\u1eed d\u1ee5ng\u3002\n5.C\u00f3/c00ff00VIPTh\u00e0nh t\u1ee5 ri\u00eang/p\u3002\n6.Ti\u1ebfn h\u00e0nh/c00ff00VIPV\u1ea5n \u0111\u00e1p/p\uff0cM\u1ed7i ng\u00e0y nh\u1eadn ph\u1ea7n th\u01b0\u1edfng\u3002\n7.C\u00f3/c00ff00VIP kho ri\u00eang/p\u3002\n8.M\u1ed7i ng\u00e0y Login\uff0c\u0111\u1ec1u \u0111\u01b0\u1ee3c t\u1eb7ng/c00ff00VIP qu\u00e0/p\u3002\n9.S\u1eed d\u1ee5ng shop L\u00f2 Dung\uff0cc\u00f3 nhi\u1ec1u l\u01b0\u1ee3t dung luy\u1ec7n\u3002\n10.m\u1ed7i ng\u00e0y \u0111\u1ed9 n\u0103ng \u0111\u1ed9ng+100\u3002"

    aput-object v15, v5, v14

    const/4 v14, 0x1

    const-string v15, "T\u1ea5t c\u1ea3 nh\u00e2n v\u1eadt c\u1ee7a t\u00e0i kho\u1ea3n \u0111\u1ec1u c\u00f3 quy\u1ec1n VIP:\n1. C\u00f3 /c00ff00Tinh Linh VIP/p, t\u0103ng thu\u1ed9c t\u00ednh Tinh Linh Th\u1ee7 H\u1ed9.\n2. C\u00f3 hi\u1ec7n /c00ff00Bi\u1ec3u T\u01b0\u1ee3ng VIP t\u00f4n qu\u00fd/p.\n3. C\u00f3 quy\u1ec1n mua trong /c00ff00Shop VIP/p.\n4. C\u00f3 quy\u1ec1n d\u00f9ng /c00ff00\u0111\u1ea1o c\u1ee5 v\u00e0 trang b\u1ecb VIP/p.\n5. C\u00f3 /c00ff00th\u00e0nh t\u00edch VIP/p.\n6. Ti\u1ebfn h\u00e0nh /c00ff00V\u1ea5n \u0110\u00e1p VIP/p nh\u1eadn qu\u00e0.\n7. C\u00f3 /c00ff00kho c\u00e1 nh\u00e2n VIP/p.\n8. Login m\u1ed7i ng\u00e0y /c00ff00nh\u1eadn qu\u00e0 VIP/p.\n9. D\u00f9ng Shop Dung Luy\u1ec7n, th\u00eam l\u1ea7n dung luy\u1ec7n.\n10.M\u1ed7i ng\u00e0y S\u00f4i N\u1ed5i +100\u3002\n"

    aput-object v15, v5, v14

    const/4 v14, 0x2

    const-string v15, "\u0110\u1eb7c quy\u1ec1n VIP2 (ch\u1ec9 nh\u00e2n v\u1eadt n\u00e0y):\n1. C\u00f3 t\u1ea5t c\u1ea3 \u0110.Quy\u1ec1n /c00ff00VIP1/p.\n2. Tr\u00ean c\u01a1 b\u1ea3n VIP1 /c00ff00th\u00eam s\u1ed1 l\u1ea7n V\u1ea5n \u0110\u00e1p VIP/p.\n3. C\u00f3 /c00ff00Qu\u00e0 Login Ng\u00e0y VIP2/p.\n4. Tr\u00ean c\u01a1 b\u1ea3n VIP1 /c00ff00th\u00eam s\u1ed1 l\u1ea7n Dung Luy\u1ec7n VIP/p.\n5. C\u00f3 /c00ff00Shop VIP/p.\n6. Th\u00eam gi\u1edbi h\u1ea1n b\u1ea1n b\u00e8, DS \u1ea9n.\n"

    aput-object v15, v5, v14

    const/4 v14, 0x3

    .line 2979
    const-string v15, "\u0110\u1eb7c quy\u1ec1n VIP3 (ch\u1ec9 nh\u00e2n v\u1eadt n\u00e0y)\n1. C\u00f3 t\u1ea5t c\u1ea3 \u0110.Quy\u1ec1n /c00ff00VIP2/p.\n2. Tr\u00ean c\u01a1 b\u1ea3n VIP2/c00ff00th\u00eam s\u1ed1 l\u1ea7n V\u1ea5n \u0110\u00e1p VIP/p.\n3. C\u00f3 /c00ff00Qu\u00e0 Login Ng\u00e0y VIP3/p.\n4. Tr\u00ean c\u01a1 b\u1ea3n VIP2/c00ff00th\u00eam s\u1ed1 l\u1ea7n Dung Luy\u1ec7n VIP/p.\n"

    aput-object v15, v5, v14

    const/4 v14, 0x4

    const-string v15, "\u0110\u1eb7c quy\u1ec1n VIP4 (ch\u1ec9 nh\u00e2n v\u1eadt n\u00e0y)\n1. C\u00f3 t\u1ea5t c\u1ea3 \u0110.Quy\u1ec1n /c00ff00VIP3/p.\n2. C\u00f3 /c00ff00th\u00e0nh t\u00edch VIP4/p.\n"

    aput-object v15, v5, v14

    const/4 v14, 0x5

    const-string v15, "\u0110\u1eb7c quy\u1ec1n VIP5 (ch\u1ec9 nh\u00e2n v\u1eadt n\u00e0y)\n1. C\u00f3 t\u1ea5t c\u1ea3 \u0110.Quy\u1ec1n  /c00ff00VIP4/p.\n2. C\u00f3 /c00ff00th\u00e0nh t\u00edch danh hi\u1ec7u VIP5/p.\n3. C\u00f3 /c00ff00bi\u1ec3u t\u01b0\u1ee3ng m\u00e0u VIP5/p.\n4. C\u00f3 /c00ff00Shop VIP/p.\n5. Th\u00eam gi\u1edbi h\u1ea1n b\u1ea1n b\u00e8, DS \u1ea9n.\n6. M\u1edf kh\u00f3a/c00ff00vipKho VIP cao (20 \u00f4)/p\u3002\n"

    aput-object v15, v5, v14

    const/4 v14, 0x6

    const-string v15, "\u0110\u1eb7c quy\u1ec1n VIP6 (ch\u1ec9 nh\u00e2n v\u1eadt n\u00e0y)\n1. C\u00f3 t\u1ea5t c\u1ea3 \u0110.Quy\u1ec1n  /c00ff00VIP5/p.\n2. C\u00f3 /c00ff00th\u00e0nh t\u00edch danh hi\u1ec7u VIP6/p.\n3. C\u00f3 /c00ff00bi\u1ec3u t\u01b0\u1ee3ng m\u00e0u VIP6/p.\n4. /c00ff00Giao d\u1ecbch mi\u1ec5n thu\u1ebf/p.\n5./c00ff00Chat kh\u00f4ng t\u1ed1n loa nh\u1ecf/p.\n6. R\u00fat ng\u1eafn CD chat /c00ff00k\u00eanh TG/p.\n7. T\u0103ng s\u1ed1 \u00f4/c00ff00viptrong Kho Vip (20 \u00f4)/p\u3002\n"

    aput-object v15, v5, v14

    const/4 v14, 0x7

    .line 2980
    const-string v15, "\u0110\u1eb7c quy\u1ec1n VIP7 (ch\u1ec9 nh\u00e2n v\u1eadt n\u00e0y)\n1. C\u00f3 t\u1ea5t c\u1ea3 \u0110.Quy\u1ec1n /c00ff00VIP6/p.\n2. C\u00f3 /c00ff00th\u00e0nh t\u00edch danh hi\u1ec7u VIP7/p.\n3. C\u00f3 /c00ff00bi\u1ec3u t\u01b0\u1ee3ng m\u00e0u VIP7/p.\n4. /c00ff00C\u1ed9ng s\u1ed1 \u00f4 kho (12 \u00f4)/p.\n5. T\u0103ng s\u1ed1 \u00f4/c00ff00viptrong Kho Vip (20 \u00f4)/p\u3002\n"

    aput-object v15, v5, v14

    const/16 v14, 0x8

    const-string v15, "\u0110\u1eb7c quy\u1ec1n VIP8 (ch\u1ec9 nh\u00e2n v\u1eadt n\u00e0y)\n1. C\u00f3 t\u1ea5t c\u1ea3 \u0110.Quy\u1ec1n /c00ff00VIP7/p.\n2. C\u00f3 /c00ff00th\u00e0nh t\u00edch danh hi\u1ec7u VIP8/p.\n3. C\u00f3 /c00ff00bi\u1ec3u t\u01b0\u1ee3ng m\u00e0u VIP8/p.\n4. C\u00f3 /c00ff00D\u00f9ng h\u00e0ng lo\u1ea1t, h\u1ee3p th\u00e0nh (bao g\u1ed3m h\u1ee3p \u0111\u00e1, v\u00e9 EXP, Ph\u00f9 Ma), t\u00ednh n\u0103ng b\u00e1n/p.\n5. C\u00f3 /c00ff00Shop VIP/p.\n6. /c00ff00\u01afu \u0111\u00e3i \u0111\u1ea1o c\u1ee5 Shop VIP/p.\n7.Th\u00eam gi\u1edbi h\u1ea1n b\u1ea1n b\u00e8, DS \u1ea9n.\n8. T\u0103ng s\u1ed1 \u00f4/c00ff00viptrong Kho Vip (20 \u00f4)/p\u3002\n"

    aput-object v15, v5, v14

    const/16 v14, 0x9

    const-string v15, "\u0110\u1eb7c quy\u1ec1n VIP9 (ch\u1ec9 nh\u00e2n v\u1eadt n\u00e0y)\n1. C\u00f3 t\u1ea5t c\u1ea3 \u0110.Quy\u1ec1n /c00ff00VIP8/p.\n2. C\u00f3 /c00ff00th\u00e0nh t\u00edch danh hi\u1ec7u VIP9/p.\n3. C\u00f3 /c00ff00bi\u1ec3u t\u01b0\u1ee3ng m\u00e0u VIP9/p.\n4. /c00ff00\u0110\u1ed5i m\u00e0u ch\u1eef k\u00eanh chat/p.\n5. T\u0103ng s\u1ed1 \u00f4/c00ff00viptrong Kho Vip (20 \u00f4)/p\u3002\n"

    aput-object v15, v5, v14

    .line 2981
    .local v5, "strVipInfos":[Ljava/lang/String;
    sget-object v14, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v14}, Lcom/hz/actor/Player;->getVipLevel2()B

    move-result v14

    aget-object v7, v5, v14

    .line 2983
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Sau khi m\u1edf %U;"

    invoke-static {v15, v6}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2985
    sget-object v14, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_5

    .line 2986
    const-wide/16 v10, 0x0

    .line 2987
    .local v10, "time":J
    invoke-static/range {p1 .. p1}, Lcom/hz/main/GameWorld;->isVip(Lcom/hz/actor/Player;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 2988
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v14, :cond_4

    .line 2989
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/16 v15, 0x11

    invoke-virtual {v14, v15}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v1

    .line 2990
    .local v1, "item":Lcom/hz/core/Item;
    if-eqz v1, :cond_4

    .line 2991
    iget-wide v14, v1, Lcom/hz/core/Item;->expireTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v10, v14, v16

    .line 2994
    .end local v1    # "item":Lcom/hz/core/Item;
    :cond_4
    const-string v14, "K\u00ec h\u1ea1n %U c\u1ee7a b\u1ea1n c\u00f2n:  %U"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    const/16 v16, 0x1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Lcom/hz/actor/ListPlayer;->getTime(J)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3001
    .end local v10    # "time":J
    :cond_5
    const/16 v14, 0x13

    new-array v9, v14, [[Ljava/lang/String;

    const/4 v14, 0x0

    .line 3002
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v2, v15, v16

    aput-object v15, v9, v14

    const/4 v14, 0x1

    .line 3003
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v3, v15, v16

    aput-object v15, v9, v14

    const/4 v14, 0x2

    .line 3004
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    aput-object v15, v9, v14

    const/4 v14, 0x3

    .line 3005
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    aput-object v15, v9, v14

    const/4 v14, 0x4

    .line 3006
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    aput-object v15, v9, v14

    const/4 v14, 0x5

    .line 3007
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    aput-object v15, v9, v14

    const/4 v14, 0x6

    .line 3008
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/hz/actor/Player;->combatPoint:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    aput-object v15, v9, v14

    const/4 v14, 0x7

    .line 3009
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getEnchantValue()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    aput-object v15, v9, v14

    const/16 v14, 0x8

    .line 3010
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/hz/actor/Player;->exp2:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/hz/actor/Player;->expMax2:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    aput-object v15, v9, v14

    const/16 v14, 0x9

    .line 3011
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v13, v15, v16

    aput-object v15, v9, v14

    const/16 v14, 0xa

    .line 3012
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    aput-object v15, v9, v14

    const/16 v14, 0xb

    .line 3013
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    aput-object v15, v9, v14

    const/16 v14, 0xc

    .line 3014
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    aput-object v15, v9, v14

    const/16 v14, 0xd

    .line 3015
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    aput-object v15, v9, v14

    const/16 v14, 0xe

    .line 3016
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    aput-object v15, v9, v14

    const/16 v14, 0xf

    .line 3017
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    aput-object v15, v9, v14

    const/16 v14, 0x10

    .line 3018
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    aput-object v15, v9, v14

    const/16 v14, 0x11

    .line 3019
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    aput-object v15, v9, v14

    const/16 v14, 0x12

    .line 3020
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    aput-object v15, v9, v14

    .line 3022
    .local v9, "text":[[Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/hz/ui/PlayerInfoUIAction;->SOCIETY_CHANGE_TEXT:[[Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private isChangeAttValue()Z
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/hz/ui/PlayerInfoUIAction;->buffAtt:[I

    iget-object v1, p0, Lcom/hz/ui/PlayerInfoUIAction;->baseAtt:[S

    invoke-static {v0, v1}, Lcom/hz/ui/PlayerInfoUIAction;->isChangeAttValue([I[S)Z

    move-result v0

    return v0
.end method

.method private static isChangeAttValue([I[S)Z
    .locals 4
    .param p0, "_buffAtt"    # [I
    .param p1, "_baseAtt"    # [S

    .prologue
    const/4 v1, 0x0

    .line 183
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v1

    .line 187
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 188
    aget v2, p0, v0

    aget-short v3, p1, v0

    if-eq v2, v3, :cond_2

    .line 189
    const/4 v1, 0x1

    goto :goto_0

    .line 187
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isVaileAttBuff(IIZ)Z
    .locals 5
    .param p1, "attID"    # I
    .param p2, "buffValue"    # I
    .param p3, "isGuide"    # Z

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 122
    add-int/lit8 v0, p1, -0x6

    .line 123
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->buffAtt:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v1

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->buffAtt:[I

    aget v2, v2, v0

    add-int/2addr v2, p2

    if-ltz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    invoke-virtual {v2, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v2

    sub-int/2addr v2, p2

    if-ltz v2, :cond_0

    .line 137
    if-eqz p3, :cond_3

    .line 138
    iget-object v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->baseAtt:[S

    invoke-static {v0, v2}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->buffAtt:[I

    aget v2, v2, v0

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/hz/ui/PlayerInfoUIAction;->baseAtt:[S

    aget-short v3, v3, v0

    if-ge v2, v3, :cond_2

    .line 140
    invoke-static {}, Lcom/hz/main/WorldMessage;->isPromptEmtry()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    const-string v2, "Nh\u1ea5n v\u00e0o /c00ff00\u201c+\u201d/p ti\u1ebfn h\u00e0nh /c00ff00c\u1ed9ng \u0111i\u1ec3m/p"

    invoke-static {v2}, Lcom/hz/main/WorldMessage;->addPromptMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/hz/ui/PlayerInfoUIAction;->basePlayer:Lcom/hz/actor/Player;

    if-nez v1, :cond_3

    .line 154
    const/16 v1, 0x16

    invoke-static {v1}, Lcom/hz/main/GameWorld;->setGuide(I)V

    .line 159
    :cond_3
    iget-object v1, p0, Lcom/hz/ui/PlayerInfoUIAction;->buffAtt:[I

    aget v2, v1, v0

    add-int/2addr v2, p2

    aput v2, v1, v0

    .line 162
    iget-object v1, p0, Lcom/hz/ui/PlayerInfoUIAction;->basePlayer:Lcom/hz/actor/Player;

    if-nez v1, :cond_4

    .line 163
    iget-object v1, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    invoke-virtual {v1}, Lcom/hz/actor/Player;->clonePlayer()Lcom/hz/actor/Player;

    move-result-object v1

    iput-object v1, p0, Lcom/hz/ui/PlayerInfoUIAction;->basePlayer:Lcom/hz/actor/Player;

    .line 167
    :cond_4
    iget-object v1, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    invoke-virtual {v1, p1, p2}, Lcom/hz/actor/Player;->addValue(II)V

    .line 168
    iget-object v1, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    neg-int v2, p2

    invoke-virtual {v1, v4, v2}, Lcom/hz/actor/Player;->addValue(II)V

    .line 170
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private final processAttributeAction(Lcom/hz/ui/UIHandler;I)V
    .locals 10
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 723
    const/16 v7, 0x23

    invoke-virtual {p1, v7}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v4

    .line 724
    .local v4, "gwindow":Lcom/hz/gui/GWindow;
    if-nez v4, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    iget-object v3, v4, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    .line 728
    .local v3, "focusWidget":Lcom/hz/gui/GWidget;
    if-eqz v3, :cond_0

    .line 731
    invoke-virtual {v3}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v6

    .line 741
    .local v6, "object":Ljava/lang/Object;
    if-nez p2, :cond_2

    .line 742
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getActionGWidget()Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 743
    .local v0, "actionGWidget":Lcom/hz/gui/GWidget;
    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v2

    .line 747
    .local v2, "eventType":I
    const/16 v7, 0xc20

    if-ne v2, v7, :cond_0

    .line 752
    .end local v0    # "actionGWidget":Lcom/hz/gui/GWidget;
    .end local v2    # "eventType":I
    :cond_2
    check-cast v6, Ljava/lang/Integer;

    .end local v6    # "object":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 753
    .local v5, "infoID":I
    invoke-virtual {p0, v5}, Lcom/hz/ui/PlayerInfoUIAction;->getPlayerAttributeText(I)Ljava/lang/String;

    move-result-object v1

    .line 760
    .local v1, "attrMsg":Ljava/lang/String;
    const-string v7, "Mi\u00eau t\u1ea3 thu\u1ed9c t\u00ednh"

    const/16 v8, 0x14

    const/4 v9, 0x1

    invoke-static {v7, v1, v8, v9}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method private final processBaseAction(Lcom/hz/ui/UIHandler;I)V
    .locals 3
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 694
    if-nez p2, :cond_0

    .line 696
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getActionGWidget()Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 697
    .local v0, "actionGWidget":Lcom/hz/gui/GWidget;
    if-nez v0, :cond_1

    .line 714
    .end local v0    # "actionGWidget":Lcom/hz/gui/GWidget;
    :cond_0
    :goto_0
    return-void

    .line 701
    .restart local v0    # "actionGWidget":Lcom/hz/gui/GWidget;
    :cond_1
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v1

    .line 702
    .local v1, "eventType":I
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 704
    :sswitch_0
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/hz/ui/PlayerInfoUIAction;->doPlayerInfoAttrChange(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 707
    :sswitch_1
    const/4 v2, -0x1

    invoke-direct {p0, p1, v2}, Lcom/hz/ui/PlayerInfoUIAction;->doPlayerInfoAttrChange(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 710
    :sswitch_2
    const/16 v2, 0x80

    invoke-virtual {p1, v2}, Lcom/hz/ui/UIHandler;->isStatusFlag(I)Z

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/hz/ui/PlayerInfoUIAction;->doChangeAttAction(Lcom/hz/ui/UIHandler;Z)Z

    goto :goto_0

    .line 702
    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x13 -> :sswitch_1
        0x2c -> :sswitch_2
    .end sparse-switch
.end method

.method public static processMerIconAction(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Model;)V
    .locals 3
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "model"    # Lcom/hz/actor/Model;

    .prologue
    const/4 v2, 0x1

    .line 536
    if-nez p1, :cond_0

    .line 541
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 539
    check-cast v0, Lcom/hz/actor/Player;

    const/4 v1, 0x0

    invoke-static {p0, v0, v2, v2, v1}, Lcom/hz/ui/PlayerInfoUIAction;->updatePlayerBaseUI(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;ZZZ)V

    .line 540
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hz/gui/GContainer;->setObj(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private processMerPetAction(Lcom/hz/ui/UIHandler;I)V
    .locals 5
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    const/16 v3, 0x70

    const/4 v4, 0x1

    .line 455
    const/16 v2, 0x6b

    if-eq p2, v2, :cond_0

    .line 456
    const/16 v2, 0x32

    if-ne p2, v2, :cond_3

    .line 457
    :cond_0
    iget-object v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    const/4 v3, 0x0

    invoke-static {p1, v2, v4, v4, v3}, Lcom/hz/ui/PlayerInfoUIAction;->updatePlayerBaseUI(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;ZZZ)V

    .line 459
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_2

    .line 460
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getObj()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/actor/Mercenary;

    invoke-static {p1, v2}, Lcom/hz/ui/PlayerInfoUIAction;->updateMerOpeMenu(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Mercenary;)V

    .line 528
    :cond_1
    :goto_0
    return-void

    .line 462
    :cond_2
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getObj()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/actor/MyPet;

    invoke-static {p1, v2}, Lcom/hz/ui/PlayerInfoUIAction;->updatePetOpeMenuNew(Lcom/hz/ui/UIHandler;Lcom/hz/actor/MyPet;)V

    goto :goto_0

    .line 468
    :cond_3
    if-ne p2, v3, :cond_5

    .line 469
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 470
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 472
    :cond_4
    invoke-virtual {p1, v4}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    goto :goto_0

    .line 505
    :cond_5
    if-nez p2, :cond_1

    .line 507
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getActionGWidget()Lcom/hz/gui/GWidget;

    move-result-object v1

    .line 508
    .local v1, "actionGWidget":Lcom/hz/gui/GWidget;
    if-eqz v1, :cond_1

    .line 512
    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v0

    .line 513
    .local v0, "actionEvent":I
    sparse-switch v0, :sswitch_data_0

    .line 523
    :goto_1
    instance-of v2, v1, Lcom/hz/gui/GLabel;

    if-eqz v2, :cond_1

    .line 526
    iget-object v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    invoke-static {v2, p1, v0}, Lcom/hz/ui/UIAction;->doMerPetMenuButton(Ljava/lang/Object;Lcom/hz/ui/UIHandler;I)Z

    goto :goto_0

    .line 515
    :sswitch_0
    iget-object v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    invoke-static {p1, v2}, Lcom/hz/ui/PlayerInfoUIAction;->processMerIconAction(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Model;)V

    goto :goto_1

    .line 518
    :sswitch_1
    iget-object v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    invoke-virtual {v2}, Lcom/hz/actor/Player;->getPet()Lcom/hz/actor/Model;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/hz/ui/PlayerInfoUIAction;->processMerIconAction(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Model;)V

    goto :goto_1

    .line 513
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x49 -> :sswitch_1
    .end sparse-switch
.end method

.method private processPetMerInfoAction(Lcom/hz/ui/UIHandler;I)V
    .locals 4
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 420
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 421
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 422
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v2

    const/16 v3, 0x6b

    invoke-virtual {v2, v3}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 424
    :cond_0
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->close()V

    .line 445
    :cond_1
    :goto_0
    return-void

    .line 428
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v1

    check-cast v1, Lcom/hz/gui/GWindow;

    .line 429
    .local v1, "tabWindow":Lcom/hz/gui/GWindow;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-eqz v2, :cond_1

    .line 433
    iget-object v2, v1, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v0

    .line 434
    .local v0, "tabEvent":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 436
    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/hz/ui/PlayerInfoUIAction;->processAttributeAction(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 439
    :sswitch_1
    invoke-direct {p0, p1, p2}, Lcom/hz/ui/PlayerInfoUIAction;->processSkillListAction(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 442
    :sswitch_2
    invoke-direct {p0, p1, p2}, Lcom/hz/ui/PlayerInfoUIAction;->processMerPetAction(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 434
    nop

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_0
        0x1f -> :sswitch_1
        0x3c -> :sswitch_2
    .end sparse-switch
.end method

.method private final processPhotoAction(Lcom/hz/ui/UIHandler;I)V
    .locals 10
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    const/4 v9, 0x0

    .line 815
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v6

    .line 816
    .local v6, "uiObj":Lcom/hz/ui/UIObject;
    if-nez v6, :cond_1

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 822
    :cond_1
    invoke-virtual {v6}, Lcom/hz/ui/UIObject;->getPlayerCard()Lcom/hz/core/PlayerCard;

    move-result-object v2

    .line 825
    .local v2, "card":Lcom/hz/core/PlayerCard;
    const/16 v7, 0x32

    if-ne p2, v7, :cond_2

    .line 826
    iget-object v7, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    invoke-static {p1, v7, v9}, Lcom/hz/ui/PlayerInfoUIAction;->updatePlayerPhotoUI(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Z)V

    goto :goto_0

    .line 835
    :cond_2
    if-nez p2, :cond_0

    .line 838
    const/16 v7, 0xce6

    invoke-virtual {p1, v7}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v4

    .line 839
    .local v4, "gwindow":Lcom/hz/gui/GWindow;
    if-eqz v4, :cond_0

    .line 842
    const/4 v3, 0x0

    .line 843
    .local v3, "choicePhoto":Lcom/hz/core/Photo;
    iget-object v7, v4, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-eqz v7, :cond_3

    .line 844
    iget-object v7, v4, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    invoke-virtual {v7}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "choicePhoto":Lcom/hz/core/Photo;
    check-cast v3, Lcom/hz/core/Photo;

    .line 847
    .restart local v3    # "choicePhoto":Lcom/hz/core/Photo;
    :cond_3
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getActionGWidget()Lcom/hz/gui/GWidget;

    move-result-object v1

    .line 848
    .local v1, "actionGWidget":Lcom/hz/gui/GWidget;
    if-eqz v1, :cond_0

    .line 854
    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->getParentWindow()Lcom/hz/gui/GWindow;

    move-result-object v5

    .line 855
    .local v5, "parentWindow":Lcom/hz/gui/GWindow;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/hz/gui/GWindow;->getEventType()I

    move-result v7

    const/16 v8, 0xcef

    if-ne v7, v8, :cond_4

    .line 856
    iget v7, v5, Lcom/hz/gui/GWindow;->focusIndex:I

    add-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    iput-byte v7, v2, Lcom/hz/core/PlayerCard;->style:B

    goto :goto_0

    .line 861
    :cond_4
    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v0

    .line 862
    .local v0, "actionEventType":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 864
    :sswitch_0
    if-nez v3, :cond_0

    .line 865
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 866
    invoke-static {v9}, Lcom/hz/core/Photo;->enterCamera(B)Z

    goto :goto_0

    .line 872
    :sswitch_1
    iget-object v7, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    invoke-static {p1, v0, v3, v7}, Lcom/hz/core/Photo;->doMenuButton(Lcom/hz/ui/UIHandler;ILcom/hz/core/Photo;Lcom/hz/actor/Model;)Z

    goto :goto_0

    .line 881
    :sswitch_2
    iget-object v7, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    invoke-static {v7, v2, p1}, Lcom/hz/core/PlayerCard;->doPlayerCardSeeOrCreate(Lcom/hz/actor/Model;Lcom/hz/core/PlayerCard;Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 886
    :sswitch_3
    iget-object v7, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    invoke-static {p1, v0, v7}, Lcom/hz/ui/UIAction;->doMenuButton(Lcom/hz/ui/UIHandler;ILcom/hz/actor/Model;)V

    goto :goto_0

    .line 890
    :sswitch_4
    invoke-virtual {v2, p1}, Lcom/hz/core/PlayerCard;->doEnterSignModify(Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 894
    :sswitch_5
    invoke-virtual {v2, p1}, Lcom/hz/core/PlayerCard;->doChangeBG(Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 898
    :sswitch_6
    invoke-virtual {v2, p1}, Lcom/hz/core/PlayerCard;->doChangeTitle(Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 862
    :sswitch_data_0
    .sparse-switch
        0xce7 -> :sswitch_0
        0xceb -> :sswitch_6
        0xced -> :sswitch_5
        0xcee -> :sswitch_4
        0x2b15 -> :sswitch_1
        0x2b16 -> :sswitch_1
        0x2b1d -> :sswitch_2
        0x2bd5 -> :sswitch_3
        0x2bd6 -> :sswitch_3
    .end sparse-switch
.end method

.method private processPlayerInfoAction(Lcom/hz/ui/UIHandler;I)V
    .locals 5
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 574
    const/16 v3, 0xe

    if-ne p2, v3, :cond_1

    .line 575
    invoke-direct {p0}, Lcom/hz/ui/PlayerInfoUIAction;->cancelChangeAttValue()V

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 581
    const/4 v3, 0x0

    const/16 v4, 0x80

    invoke-virtual {p1, v4}, Lcom/hz/ui/UIHandler;->isStatusFlag(I)Z

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/hz/ui/PlayerInfoUIAction;->doChangeAttAction(Lcom/hz/ui/UIHandler;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 582
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeTopUI()V

    goto :goto_0

    .line 588
    :cond_2
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    check-cast v2, Lcom/hz/gui/GWindow;

    .line 589
    .local v2, "tabWindow":Lcom/hz/gui/GWindow;
    if-eqz v2, :cond_0

    .line 593
    const/16 v0, 0x1d

    .line 594
    .local v0, "tabEvent":I
    iget-object v1, v2, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    .line 595
    .local v1, "tabWidget":Lcom/hz/gui/GWidget;
    if-eqz v1, :cond_3

    .line 596
    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v0

    .line 599
    :cond_3
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 601
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/hz/ui/PlayerInfoUIAction;->processBaseAction(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 604
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/hz/ui/PlayerInfoUIAction;->processAttributeAction(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 607
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/hz/ui/PlayerInfoUIAction;->processSkillListAction(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 610
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/hz/ui/PlayerInfoUIAction;->processSocietyAction(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 616
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/hz/ui/PlayerInfoUIAction;->processPhotoAction(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 599
    nop

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private final processRaidersBaseAction(Lcom/hz/ui/UIHandler;I)V
    .locals 10
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    const/16 v9, 0x1e

    const/4 v8, 0x0

    const/16 v7, 0x2000

    .line 3457
    invoke-virtual {p1, v9}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v2

    .line 3458
    .local v2, "equipWindow":Lcom/hz/gui/GWindow;
    if-eqz v2, :cond_0

    iget-object v5, v2, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-nez v5, :cond_1

    .line 3547
    :cond_0
    :goto_0
    return-void

    .line 3461
    :cond_1
    iget-object v5, v2, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    invoke-virtual {v5}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hz/core/Item;

    .line 3463
    .local v3, "item":Lcom/hz/core/Item;
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hz/gui/GContainer;->getObj()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hz/actor/Player;

    .line 3464
    .local v4, "player":Lcom/hz/actor/Player;
    if-eqz v4, :cond_0

    .line 3509
    if-nez p2, :cond_0

    .line 3511
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getActionGWidget()Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 3512
    .local v0, "actionGWidget":Lcom/hz/gui/GWidget;
    if-eqz v0, :cond_0

    .line 3517
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v5

    const/16 v6, 0x2c34

    if-ne v5, v6, :cond_2

    .line 3519
    invoke-virtual {p1, v7}, Lcom/hz/ui/UIHandler;->isStatusFlag(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3520
    invoke-virtual {p1, v8, v7}, Lcom/hz/ui/UIHandler;->setStatusFlag(ZI)V

    .line 3524
    :goto_1
    invoke-static {p1}, Lcom/hz/ui/UIHandler;->updateDataToSeePlayerEquipItemUI(Lcom/hz/ui/UIHandler;)V

    .line 3528
    :cond_2
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v5

    if-ltz v5, :cond_5

    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v5

    if-ge v5, v9, :cond_5

    .line 3529
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/hz/core/Item;->isPetType()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3530
    iget-object v5, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    invoke-static {v5, p1}, Lcom/hz/core/PlayerRaiders;->doSeePlayerRaidersPet(Lcom/hz/actor/Player;Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 3522
    :cond_3
    const/4 v5, 0x1

    invoke-virtual {p1, v5, v7}, Lcom/hz/ui/UIHandler;->setStatusFlag(ZI)V

    goto :goto_1

    .line 3532
    :cond_4
    iget-object v5, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    const/4 v6, -0x1

    invoke-static {p1, v5, v6, v8}, Lcom/hz/ui/PlayerInfoUIAction;->updateDataToRadiersPlayerInfoUI(Lcom/hz/ui/UIHandler;Ljava/lang/Object;IZ)V

    goto :goto_0

    .line 3538
    :cond_5
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getParentWindow()Lcom/hz/gui/GWindow;

    move-result-object v1

    .line 3539
    .local v1, "actionGWindow":Lcom/hz/gui/GWindow;
    if-eqz v1, :cond_0

    .line 3542
    invoke-virtual {v1}, Lcom/hz/gui/GWindow;->getEventType()I

    move-result v5

    const/16 v6, 0x1c2a

    if-ne v5, v6, :cond_0

    .line 3544
    iget-object v5, v1, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    invoke-virtual {v5}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    .line 3543
    invoke-static {p1, v5, v6}, Lcom/hz/ui/UIAction;->doMenuButton(Lcom/hz/ui/UIHandler;ILcom/hz/actor/Model;)V

    goto :goto_0
.end method

.method private processRaidersPlayerInfoAction(Lcom/hz/ui/UIHandler;I)V
    .locals 7
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 3395
    const/16 v5, 0x319d

    invoke-virtual {p1, v5}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v4

    check-cast v4, Lcom/hz/gui/GWindow;

    .line 3396
    .local v4, "tabWindow":Lcom/hz/gui/GWindow;
    if-nez v4, :cond_1

    .line 3448
    :cond_0
    :goto_0
    return-void

    .line 3400
    :cond_1
    iget-object v5, v4, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-nez v5, :cond_2

    .line 3401
    invoke-virtual {v4}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    .line 3404
    :cond_2
    const/16 v2, 0x319e

    .line 3405
    .local v2, "tabEvent":I
    iget-object v3, v4, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    .line 3406
    .local v3, "tabWidget":Lcom/hz/gui/GWidget;
    if-eqz v3, :cond_3

    .line 3407
    invoke-virtual {v3}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v2

    .line 3410
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 3429
    :goto_1
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getActionGWidget()Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 3430
    .local v0, "actionGWidget":Lcom/hz/gui/GWidget;
    if-eqz v0, :cond_0

    .line 3433
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v1

    .line 3434
    .local v1, "eventType":I
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 3439
    :pswitch_0
    iget-object v5, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    const/4 v6, 0x1

    invoke-static {p1, v5, v2, v6}, Lcom/hz/ui/PlayerInfoUIAction;->updateDataToRadiersPlayerInfoUI(Lcom/hz/ui/UIHandler;Ljava/lang/Object;IZ)V

    .line 3443
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/core/MessageFrame;->clearUIMsgFrame(Lcom/hz/gui/GContainer;)V

    goto :goto_0

    .line 3413
    .end local v0    # "actionGWidget":Lcom/hz/gui/GWidget;
    .end local v1    # "eventType":I
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/hz/ui/PlayerInfoUIAction;->processRaidersBaseAction(Lcom/hz/ui/UIHandler;I)V

    goto :goto_1

    .line 3417
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/hz/ui/PlayerInfoUIAction;->processAttributeAction(Lcom/hz/ui/UIHandler;I)V

    goto :goto_1

    .line 3421
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/hz/ui/PlayerInfoUIAction;->processSkillListAction(Lcom/hz/ui/UIHandler;I)V

    goto :goto_1

    .line 3425
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/hz/ui/PlayerInfoUIAction;->processSocietyAction(Lcom/hz/ui/UIHandler;I)V

    goto :goto_1

    .line 3410
    nop

    :pswitch_data_0
    .packed-switch 0x319e
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 3434
    :pswitch_data_1
    .packed-switch 0x319e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final processSkillListAction(Lcom/hz/ui/UIHandler;I)V
    .locals 7
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 913
    const/16 v5, 0x6d

    if-ne p2, v5, :cond_1

    .line 914
    iget-object v5, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/hz/ui/PlayerInfoUIAction;->updatePlayerSkillUI(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Z)V

    .line 954
    :cond_0
    :goto_0
    return-void

    .line 918
    :cond_1
    const/16 v5, 0x26

    invoke-virtual {p1, v5}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v2

    .line 919
    .local v2, "gwindow":Lcom/hz/gui/GWindow;
    if-eqz v2, :cond_0

    .line 923
    iget-object v4, v2, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    .line 924
    .local v4, "widget":Lcom/hz/gui/GWidget;
    if-eqz v4, :cond_0

    .line 928
    invoke-virtual {v4}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hz/core/Skill;

    .line 929
    .local v3, "skill":Lcom/hz/core/Skill;
    if-eqz v3, :cond_0

    .line 944
    if-nez p2, :cond_0

    .line 946
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getActionGWidget()Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 947
    .local v0, "actionGWidget":Lcom/hz/gui/GWidget;
    if-eqz v0, :cond_0

    .line 951
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v1

    .line 952
    .local v1, "eventType":I
    iget-object v5, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    invoke-static {p1, v5, v3, v1}, Lcom/hz/core/Skill;->doMenuButton(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Lcom/hz/core/Skill;I)Z

    goto :goto_0
.end method

.method private final processSocietyAction(Lcom/hz/ui/UIHandler;I)V
    .locals 7
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 770
    const/16 v3, 0x23

    invoke-virtual {p1, v3}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    check-cast v2, Lcom/hz/gui/GWindow;

    .line 771
    .local v2, "listWindow":Lcom/hz/gui/GWindow;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-nez v3, :cond_1

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 774
    :cond_1
    invoke-virtual {v2}, Lcom/hz/gui/GWindow;->getFocusIndex()I

    move-result v1

    .line 782
    .local v1, "index":I
    if-nez p2, :cond_2

    .line 783
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getActionGWidget()Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 784
    .local v0, "actionGWidget":Lcom/hz/gui/GWidget;
    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v3

    const/16 v4, 0xc20

    if-ne v3, v4, :cond_0

    .line 796
    .end local v0    # "actionGWidget":Lcom/hz/gui/GWidget;
    :cond_2
    const/16 v3, 0x7f

    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 800
    add-int/lit8 v1, v1, 0x3

    .line 803
    :cond_3
    const/16 v3, 0xf

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 804
    invoke-virtual {p0, v1}, Lcom/hz/ui/PlayerInfoUIAction;->getSocietyExplain(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    const/4 v6, 0x1

    .line 803
    invoke-static {v3, v4, v5, v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method private processTwiceSureAction(Lcom/hz/ui/UIHandler;I)V
    .locals 5
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 384
    if-nez p2, :cond_3

    .line 392
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getActionGWidget()Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 393
    .local v0, "actionGWidget":Lcom/hz/gui/GWidget;
    if-nez v0, :cond_1

    .line 410
    .end local v0    # "actionGWidget":Lcom/hz/gui/GWidget;
    :cond_0
    :goto_0
    return-void

    .line 397
    .restart local v0    # "actionGWidget":Lcom/hz/gui/GWidget;
    :cond_1
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v1

    .line 399
    .local v1, "eventType":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 400
    invoke-direct {p0, p1, v4}, Lcom/hz/ui/PlayerInfoUIAction;->doSureAddValue(Lcom/hz/ui/UIHandler;Z)V

    goto :goto_0

    .line 403
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 404
    invoke-direct {p0, p1, v3}, Lcom/hz/ui/PlayerInfoUIAction;->doSureAddValue(Lcom/hz/ui/UIHandler;Z)V

    goto :goto_0

    .line 407
    .end local v0    # "actionGWidget":Lcom/hz/gui/GWidget;
    .end local v1    # "eventType":I
    :cond_3
    if-ne p2, v4, :cond_0

    .line 408
    invoke-direct {p0, p1, v3}, Lcom/hz/ui/PlayerInfoUIAction;->doSureAddValue(Lcom/hz/ui/UIHandler;Z)V

    goto :goto_0
.end method

.method private static setText(Lcom/hz/gui/GLabel;III)V
    .locals 1
    .param p0, "gLabel"    # Lcom/hz/gui/GLabel;
    .param p1, "buffValue"    # I
    .param p2, "baseValue"    # I
    .param p3, "_defaultColor"    # I

    .prologue
    .line 238
    if-le p1, p2, :cond_0

    .line 239
    const v0, 0xff00

    invoke-virtual {p0, v0}, Lcom/hz/gui/GLabel;->setLabelColor(I)V

    .line 246
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 247
    return-void

    .line 241
    :cond_0
    if-ge p1, p2, :cond_1

    .line 242
    const/high16 v0, 0xff0000

    invoke-virtual {p0, v0}, Lcom/hz/gui/GLabel;->setLabelColor(I)V

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {p0, p3}, Lcom/hz/gui/GLabel;->setLabelColor(I)V

    goto :goto_0
.end method

.method public static updateDataToPetMerInfoUI(Lcom/hz/ui/UIHandler;Ljava/lang/Object;IZ)V
    .locals 1
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "objPlayer"    # Ljava/lang/Object;
    .param p2, "tabIndex"    # I
    .param p3, "isInit"    # Z

    .prologue
    .line 1221
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/hz/ui/PlayerInfoUIAction;->updateDataToPlayerPetMerInfoUI(Lcom/hz/ui/UIHandler;Ljava/lang/Object;IZZ)V

    .line 1222
    return-void
.end method

.method public static updateDataToPlayerInfoUI(Lcom/hz/ui/UIHandler;Ljava/lang/Object;IZ)V
    .locals 1
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "objPlayer"    # Ljava/lang/Object;
    .param p2, "tabIndex"    # I
    .param p3, "isInit"    # Z

    .prologue
    .line 1214
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/hz/ui/PlayerInfoUIAction;->updateDataToPlayerPetMerInfoUI(Lcom/hz/ui/UIHandler;Ljava/lang/Object;IZZ)V

    .line 1215
    return-void
.end method

.method private static final updateDataToPlayerPetMerInfoUI(Lcom/hz/ui/UIHandler;Ljava/lang/Object;IZZ)V
    .locals 8
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "objPlayer"    # Ljava/lang/Object;
    .param p2, "tabIndex"    # I
    .param p3, "isInit"    # Z
    .param p4, "isPetMer"    # Z

    .prologue
    .line 1234
    if-nez p0, :cond_1

    .line 1357
    :cond_0
    :goto_0
    return-void

    .line 1238
    :cond_1
    if-eqz p1, :cond_0

    .line 1242
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/hz/actor/Player;

    move-object v3, v0

    .line 1245
    .local v3, "player":Lcom/hz/actor/Player;
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/hz/gui/GContainer;->setObj(Ljava/lang/Object;)V

    .line 1248
    const/4 v6, -0x1

    if-ne p2, v6, :cond_2

    .line 1251
    if-eqz p4, :cond_5

    .line 1252
    const/16 p2, 0x3c

    .line 1262
    :cond_2
    :goto_1
    const/16 v6, 0x22

    if-ne p2, v6, :cond_3

    .line 1263
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getObj()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hz/ui/UIObject;

    .line 1271
    .local v4, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz p3, :cond_3

    invoke-virtual {v4}, Lcom/hz/ui/UIObject;->getPlayerCard()Lcom/hz/core/PlayerCard;

    move-result-object v6

    if-nez v6, :cond_3

    .line 1274
    invoke-static {v3}, Lcom/hz/core/PlayerCard;->doGetPlayerCard(Lcom/hz/actor/Model;)Lcom/hz/core/PlayerCard;

    move-result-object v1

    .line 1275
    .local v1, "card":Lcom/hz/core/PlayerCard;
    invoke-virtual {v4, v1}, Lcom/hz/ui/UIObject;->setPlayerCard(Lcom/hz/core/PlayerCard;)V

    .line 1278
    invoke-static {}, Lcom/hz/core/Photo;->doViewMyPhotoList()Ljava/util/Vector;

    move-result-object v6

    iput-object v6, v4, Lcom/hz/ui/UIObject;->object:Ljava/lang/Object;

    .line 1285
    .end local v1    # "card":Lcom/hz/core/PlayerCard;
    .end local v4    # "uiObj":Lcom/hz/ui/UIObject;
    :cond_3
    if-eqz p3, :cond_4

    .line 1286
    invoke-static {p0, p4}, Lcom/hz/ui/PlayerInfoUIAction;->cleanPlayerInfoTabGWidget(Lcom/hz/ui/UIHandler;Z)V

    .line 1289
    :cond_4
    sparse-switch p2, :sswitch_data_0

    .line 1335
    :goto_2
    :sswitch_0
    if-eqz p3, :cond_0

    .line 1336
    invoke-static {p0, p2}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerInfoTabGWidget(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 1351
    .end local v3    # "player":Lcom/hz/actor/Player;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 1255
    .restart local v3    # "player":Lcom/hz/actor/Player;
    :cond_5
    const/16 p2, 0x1d

    goto :goto_1

    .line 1291
    :sswitch_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {p0, v3, p3, v6, v7}, Lcom/hz/ui/PlayerInfoUIAction;->updatePlayerBaseUI(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;ZZZ)V

    goto :goto_2

    .line 1295
    :sswitch_2
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {p0, v3, p3, v6, v7}, Lcom/hz/ui/PlayerInfoUIAction;->updatePlayerBaseUI(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;ZZZ)V

    goto :goto_2

    .line 1299
    :sswitch_3
    invoke-static {p0, v3, p3}, Lcom/hz/ui/PlayerInfoUIAction;->updatePlayerAttributeUI(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Z)V

    goto :goto_2

    .line 1303
    :sswitch_4
    invoke-static {p0}, Lcom/hz/ui/PlayerInfoUIAction;->addSkillPanelTab(Lcom/hz/ui/UIHandler;)V

    .line 1304
    const/4 v6, 0x1

    invoke-static {p0, v3, v6}, Lcom/hz/ui/PlayerInfoUIAction;->updatePlayerSkillUI(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Z)V

    goto :goto_2

    .line 1308
    :sswitch_5
    invoke-static {p0, v3, p3}, Lcom/hz/ui/PlayerInfoUIAction;->updatePlayerSocietyUI(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Z)V

    goto :goto_2

    .line 1316
    :sswitch_6
    if-eqz p3, :cond_7

    .line 1317
    const/16 v6, 0xce5

    invoke-virtual {p0, v6}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    check-cast v2, Lcom/hz/gui/GContainer;

    .line 1318
    .local v2, "con":Lcom/hz/gui/GContainer;
    if-nez v2, :cond_6

    .line 1319
    const/16 v6, 0x21

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v5

    .line 1320
    .local v5, "xmlUI":Lcom/hz/ui/UIHandler;
    invoke-virtual {p0, v5}, Lcom/hz/ui/UIHandler;->addEventGWidget(Lcom/hz/ui/UIHandler;)V

    .line 1321
    const/16 v6, 0xce5

    invoke-virtual {p0, v6}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    .end local v2    # "con":Lcom/hz/gui/GContainer;
    check-cast v2, Lcom/hz/gui/GContainer;

    .line 1323
    .end local v5    # "xmlUI":Lcom/hz/ui/UIHandler;
    .restart local v2    # "con":Lcom/hz/gui/GContainer;
    :cond_6
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/hz/gui/GContainer;->add(Lcom/hz/gui/GWidget;)V

    .line 1324
    invoke-virtual {v2}, Lcom/hz/gui/GContainer;->show()V

    .line 1326
    .end local v2    # "con":Lcom/hz/gui/GContainer;
    :cond_7
    invoke-static {p0, v3, p3}, Lcom/hz/ui/PlayerInfoUIAction;->updatePlayerPhotoUI(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1289
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_1
        0x1e -> :sswitch_3
        0x1f -> :sswitch_4
        0x20 -> :sswitch_5
        0x21 -> :sswitch_0
        0x22 -> :sswitch_6
        0x3c -> :sswitch_2
    .end sparse-switch
.end method

.method public static final updateDataToRadiersPlayerInfoUI(Lcom/hz/ui/UIHandler;Ljava/lang/Object;IZ)V
    .locals 4
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "objPlayer"    # Ljava/lang/Object;
    .param p2, "tabIndex"    # I
    .param p3, "isInit"    # Z

    .prologue
    .line 3048
    if-nez p0, :cond_1

    .line 3110
    :cond_0
    :goto_0
    return-void

    .line 3052
    :cond_1
    if-eqz p1, :cond_0

    .line 3056
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/hz/actor/Player;

    move-object v1, v0

    .line 3059
    .local v1, "player":Lcom/hz/actor/Player;
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/hz/gui/GContainer;->setObj(Ljava/lang/Object;)V

    .line 3062
    const/4 v3, -0x1

    if-ne p2, v3, :cond_2

    .line 3063
    const/16 p2, 0x319e

    .line 3067
    :cond_2
    if-eqz p3, :cond_3

    .line 3068
    invoke-static {p0}, Lcom/hz/ui/PlayerInfoUIAction;->cleanRadiersPlayerInfoTabGWidget(Lcom/hz/ui/UIHandler;)V

    .line 3071
    :cond_3
    packed-switch p2, :pswitch_data_0

    .line 3102
    :goto_1
    invoke-static {p0, p2}, Lcom/hz/ui/PlayerInfoUIAction;->addRaidersPlayerInfoTabGWidget(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 3104
    .end local v1    # "player":Lcom/hz/actor/Player;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 3074
    .restart local v1    # "player":Lcom/hz/actor/Player;
    :pswitch_0
    const/16 v3, 0x21

    invoke-virtual {p0, v3}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    check-cast v2, Lcom/hz/gui/GGameIcon;

    .line 3075
    .local v2, "sprieIcon":Lcom/hz/gui/GGameIcon;
    if-eqz v2, :cond_4

    .line 3076
    invoke-virtual {v1}, Lcom/hz/actor/Player;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hz/gui/GGameIcon;->setSprite(Lcom/hz/sprite/GameSprite;)V

    .line 3080
    :cond_4
    iget-object v3, v1, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    invoke-static {p0, v3}, Lcom/hz/ui/UIHandler;->updateBagEquipItemToGIcon(Lcom/hz/ui/UIHandler;Lcom/hz/core/PlayerBag;)V

    .line 3082
    const/4 v3, 0x1

    invoke-static {p0, v1, p3, v3}, Lcom/hz/ui/PlayerInfoUIAction;->updateRaidersPlayerBaseUI(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;ZZ)V

    goto :goto_1

    .line 3086
    .end local v2    # "sprieIcon":Lcom/hz/gui/GGameIcon;
    :pswitch_1
    invoke-static {p0, v1, p3}, Lcom/hz/ui/PlayerInfoUIAction;->updatePlayerAttributeUI(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Z)V

    goto :goto_1

    .line 3090
    :pswitch_2
    invoke-static {p0}, Lcom/hz/ui/PlayerInfoUIAction;->addSkillPanelTab(Lcom/hz/ui/UIHandler;)V

    .line 3091
    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Lcom/hz/ui/PlayerInfoUIAction;->updatePlayerSkillUI(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Z)V

    goto :goto_1

    .line 3095
    :pswitch_3
    invoke-static {p0, v1, p3}, Lcom/hz/ui/PlayerInfoUIAction;->updatePlayerSocietyUI(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3071
    :pswitch_data_0
    .packed-switch 0x319e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static updateMerOpeMenu(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Mercenary;)V
    .locals 9
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "mercenary"    # Lcom/hz/actor/Mercenary;

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 997
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1044
    :cond_0
    :goto_0
    return-void

    .line 1001
    :cond_1
    const/16 v8, 0x3b

    invoke-virtual {p0, v8}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v1

    check-cast v1, Lcom/hz/gui/GWindow;

    .line 1002
    .local v1, "gwindow":Lcom/hz/gui/GWindow;
    if-eqz v1, :cond_0

    .line 1006
    invoke-virtual {v1}, Lcom/hz/gui/GWindow;->clear()V

    .line 1008
    invoke-virtual {p0, v2}, Lcom/hz/ui/UIHandler;->getLibGWidget(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 1009
    .local v0, "buttonWidget":Lcom/hz/gui/GWidget;
    if-eqz v0, :cond_0

    .line 1012
    const/4 v4, 0x0

    .line 1014
    .local v4, "label":Lcom/hz/gui/GLabel;
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getSubType()S

    move-result v6

    .line 1015
    .local v6, "subType":S
    const/4 v8, 0x3

    if-eq v6, v8, :cond_2

    .line 1017
    if-nez v6, :cond_3

    move v3, v2

    .line 1018
    .local v3, "isShop":Z
    :goto_1
    if-eqz v3, :cond_4

    .line 1020
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getClone()Lcom/hz/gui/GWidget;

    move-result-object v4

    .end local v4    # "label":Lcom/hz/gui/GLabel;
    check-cast v4, Lcom/hz/gui/GLabel;

    .line 1021
    .restart local v4    # "label":Lcom/hz/gui/GLabel;
    const-string v7, "Thu\u00ea"

    invoke-virtual {v4, v7}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 1022
    const/16 v7, 0x2b80

    invoke-virtual {v4, v7}, Lcom/hz/gui/GLabel;->setEventType(I)V

    .line 1023
    invoke-virtual {v1, v4}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 1043
    .end local v3    # "isShop":Z
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->show()V

    goto :goto_0

    :cond_3
    move v3, v7

    .line 1017
    goto :goto_1

    .line 1027
    .restart local v3    # "isShop":Z
    :cond_4
    sget-object v5, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 1028
    .local v5, "player":Lcom/hz/actor/Player;
    if-eqz v5, :cond_5

    .line 1029
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getClone()Lcom/hz/gui/GWidget;

    move-result-object v4

    .end local v4    # "label":Lcom/hz/gui/GLabel;
    check-cast v4, Lcom/hz/gui/GLabel;

    .line 1030
    .restart local v4    # "label":Lcom/hz/gui/GLabel;
    iget-short v8, p1, Lcom/hz/actor/Mercenary;->groupId:S

    invoke-virtual {v5, v8}, Lcom/hz/actor/Player;->getMercenaryById(I)Lcom/hz/actor/Model;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 1031
    .local v2, "isFight":Z
    :goto_3
    if-eqz v2, :cond_7

    const-string v7, "Ngh\u1ec9"

    :goto_4
    invoke-virtual {v4, v7}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 1032
    if-eqz v2, :cond_8

    const/16 v7, 0x2b7c

    :goto_5
    invoke-virtual {v4, v7}, Lcom/hz/gui/GLabel;->setEventType(I)V

    .line 1033
    invoke-virtual {v1, v4}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 1036
    .end local v2    # "isFight":Z
    :cond_5
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getClone()Lcom/hz/gui/GWidget;

    move-result-object v4

    .end local v4    # "label":Lcom/hz/gui/GLabel;
    check-cast v4, Lcom/hz/gui/GLabel;

    .line 1037
    .restart local v4    # "label":Lcom/hz/gui/GLabel;
    const-string v7, "Kh\u00f4ng thu\u00ea"

    invoke-virtual {v4, v7}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 1038
    const/16 v7, 0x2b7e

    invoke-virtual {v4, v7}, Lcom/hz/gui/GLabel;->setEventType(I)V

    .line 1039
    invoke-virtual {v1, v4}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    goto :goto_2

    :cond_6
    move v2, v7

    .line 1030
    goto :goto_3

    .line 1031
    .restart local v2    # "isFight":Z
    :cond_7
    const-string v7, "Chi\u1ebfn"

    goto :goto_4

    .line 1032
    :cond_8
    const/16 v7, 0x2b7b

    goto :goto_5
.end method

.method public static updatePetOpeMenuNew(Lcom/hz/ui/UIHandler;Lcom/hz/actor/MyPet;)V
    .locals 10
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "pet"    # Lcom/hz/actor/MyPet;

    .prologue
    .line 1056
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getSubType()S

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    const/4 v3, 0x1

    .line 1059
    .local v3, "isPetComposite":Z
    :goto_0
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getSubType()S

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    const/4 v4, 0x1

    .line 1062
    .local v4, "isPetRaiders":Z
    :goto_1
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getSubType()S

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_3

    const/4 v5, 0x1

    .line 1065
    .local v5, "isPlayerRaidersPet":Z
    :goto_2
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getSubType()S

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_4

    const/4 v2, 0x1

    .line 1067
    .local v2, "isCountryStoragePet":Z
    :goto_3
    if-eqz p0, :cond_0

    if-nez p1, :cond_5

    .line 1207
    :cond_0
    :goto_4
    return-void

    .line 1056
    .end local v2    # "isCountryStoragePet":Z
    .end local v3    # "isPetComposite":Z
    .end local v4    # "isPetRaiders":Z
    .end local v5    # "isPlayerRaidersPet":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1059
    .restart local v3    # "isPetComposite":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 1062
    .restart local v4    # "isPetRaiders":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 1065
    .restart local v5    # "isPlayerRaidersPet":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 1071
    .restart local v2    # "isCountryStoragePet":Z
    :cond_5
    iget-object v8, p1, Lcom/hz/actor/MyPet;->petItem:Lcom/hz/core/Item;

    if-nez v8, :cond_6

    .line 1073
    if-nez v3, :cond_6

    .line 1077
    if-nez v4, :cond_6

    .line 1081
    if-nez v5, :cond_6

    .line 1086
    if-eqz v2, :cond_0

    .line 1096
    :cond_6
    const/16 v8, 0x3b

    invoke-virtual {p0, v8}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v1

    check-cast v1, Lcom/hz/gui/GWindow;

    .line 1097
    .local v1, "gwindow":Lcom/hz/gui/GWindow;
    if-eqz v1, :cond_0

    .line 1100
    invoke-virtual {v1}, Lcom/hz/gui/GWindow;->clear()V

    .line 1102
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/hz/ui/UIHandler;->getLibGWidget(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    check-cast v0, Lcom/hz/gui/GLabel;

    .line 1103
    .local v0, "buttonGWidget":Lcom/hz/gui/GWidget;
    if-eqz v0, :cond_0

    .line 1106
    const/4 v6, 0x0

    .line 1108
    .local v6, "label":Lcom/hz/gui/GLabel;
    const/4 v7, -0x1

    .line 1109
    .local v7, "parentType":I
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 1110
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v8

    invoke-virtual {v8}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v7

    .line 1118
    :cond_7
    iget-object v8, p1, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    if-eqz v8, :cond_8

    iget-object v8, p1, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    sget-object v9, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    if-eq v8, v9, :cond_c

    .line 1121
    :cond_8
    const/16 v8, 0x2b7a

    invoke-virtual {p0, v8}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v6

    .end local v6    # "label":Lcom/hz/gui/GLabel;
    check-cast v6, Lcom/hz/gui/GLabel;

    .line 1122
    .restart local v6    # "label":Lcom/hz/gui/GLabel;
    if-eqz v6, :cond_9

    .line 1123
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setShow(Z)V

    .line 1126
    :cond_9
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getClone()Lcom/hz/gui/GWidget;

    move-result-object v6

    .end local v6    # "label":Lcom/hz/gui/GLabel;
    check-cast v6, Lcom/hz/gui/GLabel;

    .line 1127
    .restart local v6    # "label":Lcom/hz/gui/GLabel;
    const/4 v8, 0x4

    invoke-static {v8}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 1128
    const/16 v8, 0x3e6

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setEventType(I)V

    .line 1129
    invoke-virtual {v1, v6}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 1132
    if-eqz v3, :cond_a

    .line 1133
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getClone()Lcom/hz/gui/GWidget;

    move-result-object v6

    .end local v6    # "label":Lcom/hz/gui/GLabel;
    check-cast v6, Lcom/hz/gui/GLabel;

    .line 1134
    .restart local v6    # "label":Lcom/hz/gui/GLabel;
    const-string v8, "H\u1ee3p th\u00e0nh ngay"

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 1135
    const/16 v8, 0x2c3f

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setEventType(I)V

    .line 1136
    invoke-virtual {v1, v6}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 1138
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getClone()Lcom/hz/gui/GWidget;

    move-result-object v6

    .end local v6    # "label":Lcom/hz/gui/GLabel;
    check-cast v6, Lcom/hz/gui/GLabel;

    .line 1139
    .restart local v6    # "label":Lcom/hz/gui/GLabel;
    const-string v8, "Ch\u1ecdn t\u00e0i li\u1ec7u"

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 1140
    const/16 v8, 0x2c40

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setEventType(I)V

    .line 1141
    invoke-virtual {v1, v6}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 1145
    :cond_a
    if-eqz v4, :cond_b

    .line 1146
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getClone()Lcom/hz/gui/GWidget;

    move-result-object v6

    .end local v6    # "label":Lcom/hz/gui/GLabel;
    check-cast v6, Lcom/hz/gui/GLabel;

    .line 1147
    .restart local v6    # "label":Lcom/hz/gui/GLabel;
    const-string v8, "C\u00f4ng l\u01b0\u1ee3c"

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 1148
    const/16 v8, 0x2c41

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setEventType(I)V

    .line 1149
    invoke-virtual {v1, v6}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 1206
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->show()V

    goto/16 :goto_4

    .line 1154
    :cond_c
    if-eqz v3, :cond_e

    .line 1156
    const/16 v8, 0x2b7a

    invoke-virtual {p0, v8}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v6

    .end local v6    # "label":Lcom/hz/gui/GLabel;
    check-cast v6, Lcom/hz/gui/GLabel;

    .line 1157
    .restart local v6    # "label":Lcom/hz/gui/GLabel;
    if-eqz v6, :cond_d

    .line 1158
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setShow(Z)V

    .line 1161
    :cond_d
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getClone()Lcom/hz/gui/GWidget;

    move-result-object v6

    .end local v6    # "label":Lcom/hz/gui/GLabel;
    check-cast v6, Lcom/hz/gui/GLabel;

    .line 1162
    .restart local v6    # "label":Lcom/hz/gui/GLabel;
    const/4 v8, 0x4

    invoke-static {v8}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 1163
    const/16 v8, 0x3e6

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setEventType(I)V

    .line 1164
    invoke-virtual {v1, v6}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 1165
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->show()V

    goto/16 :goto_4

    .line 1169
    :cond_e
    sget-object v8, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v8}, Lcom/hz/actor/Player;->getPet()Lcom/hz/actor/Model;

    move-result-object v8

    if-ne p1, v8, :cond_f

    .line 1170
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getClone()Lcom/hz/gui/GWidget;

    move-result-object v6

    .end local v6    # "label":Lcom/hz/gui/GLabel;
    check-cast v6, Lcom/hz/gui/GLabel;

    .line 1171
    .restart local v6    # "label":Lcom/hz/gui/GLabel;
    const-string v8, "Ngh\u1ec9"

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 1172
    const/16 v8, 0x2b7c

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setEventType(I)V

    .line 1173
    invoke-virtual {v1, v6}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 1180
    :goto_6
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getClone()Lcom/hz/gui/GWidget;

    move-result-object v6

    .end local v6    # "label":Lcom/hz/gui/GLabel;
    check-cast v6, Lcom/hz/gui/GLabel;

    .line 1181
    .restart local v6    # "label":Lcom/hz/gui/GLabel;
    const-string v8, "P.sinh"

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 1182
    const/16 v8, 0x2b7e

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setEventType(I)V

    .line 1183
    invoke-virtual {v1, v6}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 1185
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getClone()Lcom/hz/gui/GWidget;

    move-result-object v6

    .end local v6    # "label":Lcom/hz/gui/GLabel;
    check-cast v6, Lcom/hz/gui/GLabel;

    .line 1186
    .restart local v6    # "label":Lcom/hz/gui/GLabel;
    const-string v8, "\u0110\u1ea1o c\u1ee5"

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 1187
    const/16 v8, 0x2b7f

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setEventType(I)V

    .line 1188
    invoke-virtual {v1, v6}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 1190
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getClone()Lcom/hz/gui/GWidget;

    move-result-object v6

    .end local v6    # "label":Lcom/hz/gui/GLabel;
    check-cast v6, Lcom/hz/gui/GLabel;

    .line 1191
    .restart local v6    # "label":Lcom/hz/gui/GLabel;
    const-string v8, "T.Sinh"

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 1192
    const/16 v8, 0x2b81

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setEventType(I)V

    .line 1193
    invoke-virtual {v1, v6}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 1195
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getClone()Lcom/hz/gui/GWidget;

    move-result-object v6

    .end local v6    # "label":Lcom/hz/gui/GLabel;
    check-cast v6, Lcom/hz/gui/GLabel;

    .line 1196
    .restart local v6    # "label":Lcom/hz/gui/GLabel;
    const-string v8, "T.T\u1ee7y"

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 1197
    const/16 v8, 0x2b82

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setEventType(I)V

    .line 1198
    invoke-virtual {v1, v6}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 1200
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getClone()Lcom/hz/gui/GWidget;

    move-result-object v6

    .end local v6    # "label":Lcom/hz/gui/GLabel;
    check-cast v6, Lcom/hz/gui/GLabel;

    .line 1201
    .restart local v6    # "label":Lcom/hz/gui/GLabel;
    const-string v8, "T.n\u0103ng"

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 1202
    const/16 v8, 0x2b83

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setEventType(I)V

    .line 1203
    invoke-virtual {v1, v6}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    goto/16 :goto_5

    .line 1175
    :cond_f
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getClone()Lcom/hz/gui/GWidget;

    move-result-object v6

    .end local v6    # "label":Lcom/hz/gui/GLabel;
    check-cast v6, Lcom/hz/gui/GLabel;

    .line 1176
    .restart local v6    # "label":Lcom/hz/gui/GLabel;
    const-string v8, "Chi\u1ebfn"

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 1177
    const/16 v8, 0x2b7b

    invoke-virtual {v6, v8}, Lcom/hz/gui/GLabel;->setEventType(I)V

    .line 1178
    invoke-virtual {v1, v6}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    goto :goto_6
.end method

.method private static final updatePlayerAttributeUI(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Z)V
    .locals 11
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "isInit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1962
    const/16 v6, 0x23

    invoke-virtual {p0, v6}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v1

    check-cast v1, Lcom/hz/gui/GWindow;

    .line 1965
    .local v1, "attrWindow":Lcom/hz/gui/GWindow;
    if-nez v1, :cond_0

    .line 1966
    const/16 v6, 0x1f

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v0

    .line 1967
    .local v0, "attrUIHandler":Lcom/hz/ui/UIHandler;
    if-eqz v0, :cond_0

    .line 1968
    const/16 v6, 0x23

    invoke-virtual {v0, v6}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v1

    .end local v1    # "attrWindow":Lcom/hz/gui/GWindow;
    check-cast v1, Lcom/hz/gui/GWindow;

    .line 1971
    .restart local v1    # "attrWindow":Lcom/hz/gui/GWindow;
    invoke-virtual {p0, v1}, Lcom/hz/ui/UIHandler;->addEventGWidget(Lcom/hz/gui/GWidget;)V

    .line 1972
    const/16 v6, 0x24

    invoke-virtual {v0, v6}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/hz/ui/UIHandler;->addEventGWidget(Lcom/hz/gui/GWidget;)V

    .line 1975
    .end local v0    # "attrUIHandler":Lcom/hz/ui/UIHandler;
    :cond_0
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/hz/gui/GContainer;->add(Lcom/hz/gui/GWidget;)V

    .line 1979
    invoke-virtual {v1}, Lcom/hz/gui/GWindow;->clear()V

    .line 1982
    const/16 v6, 0x24

    invoke-virtual {p0, v6}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    check-cast v2, Lcom/hz/gui/GContainer;

    .line 1986
    .local v2, "choicePanel":Lcom/hz/gui/GContainer;
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v6

    const/16 v7, 0x7f

    if-ne v6, v7, :cond_1

    .line 1989
    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "HP T\u1ed1i \u0110a"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x1d

    invoke-virtual {p1, v9}, Lcom/hz/actor/Player;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "MP T\u1ed1i \u0110a"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x1e

    invoke-virtual {p1, v9}, Lcom/hz/actor/Player;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    :cond_1
    const/4 v3, 0x0

    .line 1996
    .local v3, "getValue":I
    invoke-virtual {p1}, Lcom/hz/actor/Player;->getType()B

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 1997
    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "C\u1ea5p Th\u1ea7n K\u00ec "

    const/16 v8, 0xb1

    invoke-static {v8}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x76

    invoke-virtual {p1, v10}, Lcom/hz/actor/Player;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    :cond_2
    invoke-virtual {p1}, Lcom/hz/actor/Player;->getType()B

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_3

    invoke-virtual {p1}, Lcom/hz/actor/Player;->getType()B

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_5

    :cond_3
    move-object v6, p1

    .line 2001
    check-cast v6, Lcom/hz/actor/MyPet;

    const/4 v7, 0x1

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/hz/actor/MyPet;->getPetBornStatusInfo(ZIZ)Ljava/lang/String;

    move-result-object v5

    .line 2002
    .local v5, "strbornstatus":Ljava/lang/String;
    invoke-static {v5}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2003
    const-string v5, "Kh\u00f4ng"

    .line 2005
    :cond_4
    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "Tr\u1ea1ng th\u00e1i b\u1ea9m sinh"

    invoke-static {v1, v2, v6, v7, v5}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    .end local v5    # "strbornstatus":Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "T\u1ed1c \u0110\u1ed9 Ra \u0110\u00f2n"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x1f

    invoke-virtual {p1, v9}, Lcom/hz/actor/Player;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    new-instance v7, Ljava/lang/Integer;

    const/4 v6, 0x5

    invoke-direct {v7, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 2009
    invoke-virtual {p1}, Lcom/hz/actor/Player;->isPlayerType()Z

    move-result v6

    if-eqz v6, :cond_2e

    const-string v6, "S.Th\u01b0\u01a1ng V\u0169 Kh\u00ed"

    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x21

    invoke-virtual {p1, v9}, Lcom/hz/actor/Player;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "~"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x22

    invoke-virtual {p1, v9}, Lcom/hz/actor/Player;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2008
    invoke-static {v1, v2, v7, v6, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x6

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "L\u1ea7n T\u1ea5n C\u00f4ng"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x23

    invoke-virtual {p1, v9}, Lcom/hz/actor/Player;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "L\u1ef1c Ch\u00e9m"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x24

    invoke-virtual {p1, v9}, Lcom/hz/actor/Player;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x8

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "L\u1ef1c \u0110\u00e2m"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x25

    invoke-virtual {p1, v9}, Lcom/hz/actor/Player;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x9

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "Ma C\u00f4ng"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x26

    invoke-virtual {p1, v9}, Lcom/hz/actor/Player;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "Ph\u00f2ng Ch\u00e9m"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x27

    invoke-virtual {p1, v9}, Lcom/hz/actor/Player;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0xb

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "Ph\u00f2ng \u0110\u00e2m"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x28

    invoke-virtual {p1, v9}, Lcom/hz/actor/Player;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0xc

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "Ma Th\u1ee7"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x29

    invoke-virtual {p1, v9}, Lcom/hz/actor/Player;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0xd

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "N\u00e9 Tr\u00e1nh"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x2a

    invoke-virtual {p1, v9}, Lcom/hz/actor/Player;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0xe

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "Chu\u1ea9n V\u1eadt L\u00fd"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x2b

    invoke-virtual {p1, v9}, Lcom/hz/actor/Player;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0xf

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "Chu\u1ea9n Ma Ph\u00e1p"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x2c

    invoke-virtual {p1, v9}, Lcom/hz/actor/Player;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x10

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "\u0110i\u1ec3m Ch\u00ed M\u1ea1ng"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x2d

    invoke-virtual {p1, v9}, Lcom/hz/actor/Player;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2022
    const/16 v6, 0x6a

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_2f

    const/4 v4, 0x1

    .line 2025
    .local v4, "isPlayerLevelSHow":Z
    :goto_1
    const/16 v6, 0x30

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    .line 2026
    if-nez v4, :cond_6

    if-lez v3, :cond_7

    .line 2027
    :cond_6
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x11

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "Kh\u00e1ng Tr\u1ea1ng Th\u00e1i"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    :cond_7
    const/16 v6, 0x31

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    .line 2030
    if-nez v4, :cond_8

    if-lez v3, :cond_9

    .line 2031
    :cond_8
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x12

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "Mi\u1ec5n S\u00e1t Th\u01b0\u01a1ng"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    :cond_9
    const/16 v6, 0x33

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    .line 2034
    if-nez v4, :cond_a

    if-lez v3, :cond_b

    .line 2035
    :cond_a
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x13

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "\u0110\u1ee1 \u0110\u00f2n"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    :cond_b
    const/16 v6, 0x34

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    .line 2038
    if-nez v4, :cond_c

    if-lez v3, :cond_d

    .line 2039
    :cond_c
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x14

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "Ph\u00e1 Gi\u00e1p"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    :cond_d
    const/16 v6, 0x35

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    .line 2042
    if-nez v4, :cond_e

    if-lez v3, :cond_f

    .line 2043
    :cond_e
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x1e

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "Th\u1ea5u R\u00f5"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    :cond_f
    const/16 v6, 0x36

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    .line 2046
    if-nez v4, :cond_10

    if-lez v3, :cond_11

    .line 2047
    :cond_10
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x19

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "Thu\u1eabn Ph\u00e1p L\u1ef1c"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    :cond_11
    const/16 v6, 0x37

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    .line 2050
    if-nez v4, :cond_12

    if-lez v3, :cond_13

    .line 2051
    :cond_12
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x1a

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "Ph\u1ea3n K\u00edch"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    :cond_13
    const/16 v6, 0x38

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    .line 2054
    if-nez v4, :cond_14

    if-lez v3, :cond_15

    .line 2055
    :cond_14
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x1b

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "Ph\u1ea3n Ma"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    :cond_15
    const/16 v6, 0x39

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    .line 2058
    if-nez v4, :cond_16

    if-lez v3, :cond_17

    .line 2059
    :cond_16
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x1c

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "H\u00fat HP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    :cond_17
    const/16 v6, 0x3a

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    .line 2062
    if-nez v4, :cond_18

    if-lez v3, :cond_19

    .line 2063
    :cond_18
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x1d

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "H\u00fat MP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    :cond_19
    const/16 v6, 0x3b

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    .line 2066
    if-nez v4, :cond_1a

    if-lez v3, :cond_1b

    .line 2067
    :cond_1a
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x15

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "Xuy\u00ean Ma Ph\u00e1p"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    :cond_1b
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    .line 2070
    if-nez v4, :cond_1c

    if-lez v3, :cond_1d

    .line 2071
    :cond_1c
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x16

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "\u00c9p Chu\u1ea9n X\u00e1c"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    :cond_1d
    const/16 v6, 0x3c

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    .line 2074
    if-nez v4, :cond_1e

    if-lez v3, :cond_1f

    .line 2075
    :cond_1e
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x17

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "T\u1ef1 H\u1ed3i HP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    :cond_1f
    const/16 v6, 0x3d

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    .line 2078
    if-nez v4, :cond_20

    if-lez v3, :cond_21

    .line 2079
    :cond_20
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x18

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "T\u1ef1 H\u1ed3i MP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    :cond_21
    const/16 v6, 0xfa

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    .line 2083
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x1f

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "H\u1ed9 thu\u1eabn mi\u1ec5n th\u01b0\u01a1ng"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    const/16 v6, 0xc8

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    .line 2086
    if-nez v4, :cond_22

    if-lez v3, :cond_23

    .line 2087
    :cond_22
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x27

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "B\u1ecf qua ph\u1ea3n k\u00edch"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    :cond_23
    const/16 v6, 0xc9

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    .line 2091
    if-nez v4, :cond_24

    if-lez v3, :cond_25

    .line 2092
    :cond_24
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x28

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "B\u1ecf qua h\u1ed3i ma ph\u00e1p"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    :cond_25
    const/16 v6, 0xca

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    .line 2096
    if-nez v4, :cond_26

    if-lez v3, :cond_27

    .line 2097
    :cond_26
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x29

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "B\u1ecf qua \u0111\u1ee1"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2100
    :cond_27
    const/16 v6, 0xcb

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    .line 2101
    if-nez v4, :cond_28

    if-lez v3, :cond_29

    .line 2102
    :cond_28
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x2a

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "B\u1ecf qua \u0111\u1ed9ng s\u00e1t"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    :cond_29
    const/16 v6, 0xcc

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    .line 2106
    if-nez v4, :cond_2a

    if-lez v3, :cond_2b

    .line 2107
    :cond_2a
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x2b

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "B\u1ecf qua kh\u00e1ng tr\u1ea1ng th\u00e1i"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    :cond_2b
    const/16 v6, 0xcd

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    .line 2111
    if-nez v4, :cond_2c

    if-lez v3, :cond_2d

    .line 2112
    :cond_2c
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x2c

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "B\u1ecf qua mi\u1ec5n s\u00e1t th\u01b0\u01a1ng"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    :cond_2d
    invoke-virtual {v1}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    .line 2116
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->show()V

    .line 2117
    return-void

    .line 2009
    .end local v4    # "isPlayerLevelSHow":Z
    :cond_2e
    const-string v6, "L\u1ef1c T\u1ea5n C\u00f4ng"

    goto/16 :goto_0

    .line 2022
    :cond_2f
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method public static final updatePlayerBaseUI(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;ZZZ)V
    .locals 33
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "isInit"    # Z
    .param p3, "isPetMer"    # Z
    .param p4, "isTabChange"    # Z

    .prologue
    .line 2178
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->getListener()Lcom/hz/ui/UIListener;

    move-result-object v23

    .line 2180
    .local v23, "listener":Lcom/hz/ui/UIListener;
    const/4 v12, 0x0

    .line 2181
    .local v12, "buffAtt":[I
    const/4 v9, 0x0

    .line 2182
    .local v9, "baseAtt":[S
    if-eqz v23, :cond_0

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/hz/ui/PlayerInfoUIAction;

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 2183
    move-object/from16 v0, v23

    check-cast v0, Lcom/hz/ui/PlayerInfoUIAction;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v12, v0, Lcom/hz/ui/PlayerInfoUIAction;->buffAtt:[I

    .line 2184
    check-cast v23, Lcom/hz/ui/PlayerInfoUIAction;

    .end local v23    # "listener":Lcom/hz/ui/UIListener;
    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/hz/ui/PlayerInfoUIAction;->baseAtt:[S

    .line 2187
    :cond_0
    const/16 v26, 0x0

    .line 2188
    .local v26, "pet":Lcom/hz/actor/MyPet;
    const/16 v25, 0x0

    .line 2189
    .local v25, "mercenary":Lcom/hz/actor/Mercenary;
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/hz/actor/MyPet;

    move/from16 v29, v0

    if-eqz v29, :cond_27

    .line 2190
    move-object/from16 v0, p1

    check-cast v0, Lcom/hz/actor/MyPet;

    move-object/from16 v26, v0

    .line 2196
    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 2197
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v15

    .line 2199
    .local v15, "frame":Lcom/hz/gui/GContainer;
    if-eqz p3, :cond_28

    .line 2201
    const/16 v29, 0x37

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v18

    .line 2202
    .local v18, "gw":Lcom/hz/gui/GWidget;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/hz/gui/GContainer;->add(Lcom/hz/gui/GWidget;)V

    .line 2204
    const/16 v29, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v18

    .line 2205
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/hz/gui/GContainer;->add(Lcom/hz/gui/GWidget;)V

    .line 2207
    const/16 v29, 0x3b

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v18

    .line 2208
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/hz/gui/GContainer;->add(Lcom/hz/gui/GWidget;)V

    .line 2221
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->show()V

    .line 2224
    .end local v15    # "frame":Lcom/hz/gui/GContainer;
    .end local v18    # "gw":Lcom/hz/gui/GWidget;
    :cond_2
    const/16 v22, 0x0

    .line 2225
    .local v22, "label":Lcom/hz/gui/GLabel;
    const/16 v16, 0x0

    .line 2226
    .local v16, "gameBar":Lcom/hz/gui/GGameBar;
    const/16 v28, 0x0

    .line 2227
    .local v28, "textArea":Lcom/hz/gui/GTextArea;
    const/16 v17, 0x0

    .line 2230
    .local v17, "gameIcon":Lcom/hz/gui/GGameIcon;
    if-eqz p2, :cond_7

    .line 2233
    const/16 v29, 0x32

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2234
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_3

    .line 2235
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getLevel()B

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2239
    :cond_3
    const/16 v29, 0x33

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2240
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_4

    .line 2241
    const/16 v29, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->getClientUid(Z)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2244
    :cond_4
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2245
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_5

    .line 2246
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getName()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0xb1

    invoke-static/range {v30 .. v30}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getLevel()B

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "(ID:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->getClientUid(Z)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2250
    :cond_5
    const/16 v29, 0x5b

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2251
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_6

    .line 2252
    new-instance v29, Ljava/lang/StringBuilder;

    const/16 v30, 0xb1

    invoke-static/range {v30 .. v30}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getLevel()B

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getJob()B

    move-result v30

    invoke-static/range {v30 .. v30}, Lcom/hz/core/Define;->getJobString(B)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2256
    :cond_6
    const/16 v29, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2257
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_7

    .line 2258
    const/16 v29, 0xb1

    invoke-static/range {v29 .. v29}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v29

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getLevel2()B

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2263
    :cond_7
    const/16 v29, 0x34

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2264
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_8

    .line 2265
    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2269
    :cond_8
    const/16 v29, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2270
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_9

    .line 2271
    new-instance v29, Ljava/lang/StringBuilder;

    const/16 v30, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0x1d

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2275
    :cond_9
    const/16 v29, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v16

    .end local v16    # "gameBar":Lcom/hz/gui/GGameBar;
    check-cast v16, Lcom/hz/gui/GGameBar;

    .line 2276
    .restart local v16    # "gameBar":Lcom/hz/gui/GGameBar;
    if-eqz v16, :cond_a

    .line 2277
    const/16 v29, 0x1d

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v29

    const/16 v30, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v30

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/hz/gui/GGameBar;->setValue(II)V

    .line 2281
    :cond_a
    const/16 v29, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2282
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_b

    .line 2283
    new-instance v29, Ljava/lang/StringBuilder;

    const/16 v30, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0x1e

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2287
    :cond_b
    const/16 v29, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v16

    .end local v16    # "gameBar":Lcom/hz/gui/GGameBar;
    check-cast v16, Lcom/hz/gui/GGameBar;

    .line 2288
    .restart local v16    # "gameBar":Lcom/hz/gui/GGameBar;
    if-eqz v16, :cond_c

    .line 2289
    const/16 v29, 0x1e

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v29

    const/16 v30, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v30

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/hz/gui/GGameBar;->setValue(II)V

    .line 2292
    :cond_c
    if-eqz p2, :cond_e

    .line 2294
    const/16 v29, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2295
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_d

    .line 2296
    new-instance v29, Ljava/lang/StringBuilder;

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2300
    :cond_d
    const/16 v29, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v16

    .end local v16    # "gameBar":Lcom/hz/gui/GGameBar;
    check-cast v16, Lcom/hz/gui/GGameBar;

    .line 2301
    .restart local v16    # "gameBar":Lcom/hz/gui/GGameBar;
    if-eqz v16, :cond_e

    .line 2302
    const/16 v29, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v29

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v30

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/hz/gui/GGameBar;->setValue(II)V

    .line 2306
    :cond_e
    if-eqz p2, :cond_21

    .line 2309
    const/16 v29, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2310
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_f

    .line 2311
    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getJob()B

    move-result v29

    invoke-static/range {v29 .. v29}, Lcom/hz/core/Define;->getJobString(B)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2314
    :cond_f
    if-eqz p3, :cond_30

    .line 2317
    if-eqz v26, :cond_19

    .line 2319
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->getSubType()S

    move-result v29

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_29

    const/16 v21, 0x1

    .line 2325
    .local v21, "ispetcompositeshop":Z
    :goto_2
    const/16 v29, 0x3e

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2326
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_10

    .line 2327
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v30, 0x53

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/hz/actor/MyPet;->get(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2331
    :cond_10
    const/16 v29, 0x40

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2332
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_11

    .line 2333
    const/16 v29, 0x52

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/actor/MyPet;->get(I)I

    move-result v29

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    invoke-static/range {v29 .. v30}, Lcom/hz/core/Define;->getGradeString(BZ)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2337
    :cond_11
    const/16 v29, 0x42

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2338
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_13

    .line 2339
    if-eqz v21, :cond_2a

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    move-object/from16 v29, v0

    if-eqz v29, :cond_12

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    move-object/from16 v29, v0

    sget-object v30, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_2a

    .line 2340
    :cond_12
    new-instance v29, Ljava/lang/StringBuilder;

    move-object/from16 v0, v26

    iget-byte v0, v0, Lcom/hz/actor/MyPet;->petmaxage:B

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2347
    :cond_13
    :goto_3
    const/16 v29, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v16

    .end local v16    # "gameBar":Lcom/hz/gui/GGameBar;
    check-cast v16, Lcom/hz/gui/GGameBar;

    .line 2348
    .restart local v16    # "gameBar":Lcom/hz/gui/GGameBar;
    if-eqz v16, :cond_14

    .line 2349
    const/16 v29, 0xa

    move-object/from16 v0, v26

    iget-short v0, v0, Lcom/hz/actor/MyPet;->cp:S

    move/from16 v30, v0

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/hz/gui/GGameBar;->setValue(II)V

    .line 2353
    :cond_14
    const/16 v29, 0x50

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v16

    .end local v16    # "gameBar":Lcom/hz/gui/GGameBar;
    check-cast v16, Lcom/hz/gui/GGameBar;

    .line 2354
    .restart local v16    # "gameBar":Lcom/hz/gui/GGameBar;
    if-eqz v16, :cond_15

    .line 2355
    const/16 v29, 0x64

    move-object/from16 v0, v26

    iget-byte v0, v0, Lcom/hz/actor/MyPet;->grow:B

    move/from16 v30, v0

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/hz/gui/GGameBar;->setValue(II)V

    .line 2359
    :cond_15
    const/16 v29, 0x51

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v16

    .end local v16    # "gameBar":Lcom/hz/gui/GGameBar;
    check-cast v16, Lcom/hz/gui/GGameBar;

    .line 2360
    .restart local v16    # "gameBar":Lcom/hz/gui/GGameBar;
    if-eqz v16, :cond_16

    .line 2361
    const/16 v29, 0x64

    move-object/from16 v0, v26

    iget-byte v0, v0, Lcom/hz/actor/MyPet;->compre:B

    move/from16 v30, v0

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/hz/gui/GGameBar;->setValue(II)V

    .line 2365
    :cond_16
    const/16 v29, 0x53

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2366
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_17

    .line 2367
    move-object/from16 v0, v26

    iget-byte v0, v0, Lcom/hz/actor/MyPet;->grow:B

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2b

    if-eqz v21, :cond_2b

    .line 2368
    const/16 v29, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setShow(Z)V

    .line 2369
    const-string v29, "Ng\u1eabu nhi\u00ean"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2376
    :cond_17
    :goto_4
    const/16 v29, 0x54

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2377
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_18

    .line 2378
    move-object/from16 v0, v26

    iget-byte v0, v0, Lcom/hz/actor/MyPet;->compre:B

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2c

    if-eqz v21, :cond_2c

    .line 2379
    const/16 v29, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setShow(Z)V

    .line 2380
    const-string v29, "Ng\u1eabu nhi\u00ean"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2387
    :cond_18
    :goto_5
    const/16 v29, 0x52

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2388
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_19

    .line 2389
    invoke-virtual/range {v26 .. v26}, Lcom/hz/actor/MyPet;->getVipLevel()B

    move-result v29

    if-lez v29, :cond_2d

    .line 2390
    invoke-virtual/range {v26 .. v26}, Lcom/hz/actor/MyPet;->getVipLevel2()B

    move-result v29

    const/16 v30, 0x4000

    move-object/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/hz/gui/GLabel;->setIconValue(BI)V

    .line 2399
    .end local v21    # "ispetcompositeshop":Z
    :cond_19
    :goto_6
    if-eqz v25, :cond_21

    .line 2401
    const/16 v29, 0x47

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v28

    .end local v28    # "textArea":Lcom/hz/gui/GTextArea;
    check-cast v28, Lcom/hz/gui/GTextArea;

    .line 2402
    .restart local v28    # "textArea":Lcom/hz/gui/GTextArea;
    if-eqz v28, :cond_1a

    .line 2403
    invoke-virtual/range {v25 .. v25}, Lcom/hz/actor/Mercenary;->getInfo()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/hz/gui/GTextArea;->setText(Ljava/lang/String;)V

    .line 2407
    :cond_1a
    const/16 v29, 0x4a

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v16

    .end local v16    # "gameBar":Lcom/hz/gui/GGameBar;
    check-cast v16, Lcom/hz/gui/GGameBar;

    .line 2408
    .restart local v16    # "gameBar":Lcom/hz/gui/GGameBar;
    if-eqz v16, :cond_1b

    .line 2409
    const/16 v29, 0x64

    move-object/from16 v0, v25

    iget-byte v0, v0, Lcom/hz/actor/Mercenary;->strength:B

    move/from16 v30, v0

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/hz/gui/GGameBar;->setValue(II)V

    .line 2413
    :cond_1b
    const/16 v29, 0x46

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2414
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_1c

    .line 2415
    move-object/from16 v0, v25

    iget-byte v0, v0, Lcom/hz/actor/Mercenary;->monstertype:B

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/hz/core/Define;->getMercenaryFightString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2419
    :cond_1c
    const/16 v29, 0x41

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2420
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_1d

    .line 2421
    move-object/from16 v0, v25

    iget-byte v0, v0, Lcom/hz/actor/Mercenary;->atkType:B

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/hz/core/Define;->getAtkTypeString(B)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2425
    :cond_1d
    const/16 v29, 0x42

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2426
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_1f

    invoke-virtual/range {v25 .. v25}, Lcom/hz/actor/Mercenary;->isFollower()Z

    move-result v29

    if-nez v29, :cond_1f

    .line 2427
    const/16 v27, -0x1

    .line 2428
    .local v27, "subType":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v29

    if-eqz v29, :cond_1e

    .line 2429
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/hz/ui/UIHandler;->getSubType()S

    move-result v27

    .line 2431
    :cond_1e
    if-nez v27, :cond_2e

    const/16 v29, 0x1

    :goto_7
    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/actor/Mercenary;->getCoolDownTime(Z)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2435
    .end local v27    # "subType":I
    :cond_1f
    const/16 v29, 0x49

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v17

    .end local v17    # "gameIcon":Lcom/hz/gui/GGameIcon;
    check-cast v17, Lcom/hz/gui/GGameIcon;

    .line 2436
    .restart local v17    # "gameIcon":Lcom/hz/gui/GGameIcon;
    if-eqz v17, :cond_20

    invoke-virtual/range {v25 .. v25}, Lcom/hz/actor/Mercenary;->isFollower()Z

    move-result v29

    if-nez v29, :cond_20

    .line 2437
    invoke-virtual/range {v25 .. v25}, Lcom/hz/actor/Mercenary;->getPet()Lcom/hz/actor/Model;

    move-result-object v24

    .line 2438
    .local v24, "merPet":Lcom/hz/actor/Model;
    if-eqz v24, :cond_2f

    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/actor/Model;->createSprite(Z)Lcom/hz/sprite/GameSprite;

    move-result-object v29

    :goto_8
    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GGameIcon;->setSprite(Lcom/hz/sprite/GameSprite;)V

    .line 2442
    .end local v24    # "merPet":Lcom/hz/actor/Model;
    :cond_20
    if-eqz v17, :cond_21

    .line 2443
    invoke-virtual/range {v17 .. v17}, Lcom/hz/gui/GGameIcon;->getParentWindow()Lcom/hz/gui/GWindow;

    move-result-object v20

    .line 2444
    .local v20, "iconWindow":Lcom/hz/gui/GWindow;
    if-eqz v20, :cond_21

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    move-object/from16 v29, v0

    if-nez v29, :cond_21

    .line 2445
    invoke-virtual/range {v20 .. v20}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    .line 2470
    .end local v20    # "iconWindow":Lcom/hz/gui/GWindow;
    :cond_21
    :goto_9
    if-nez p3, :cond_22

    .line 2472
    const/16 v29, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2473
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_22

    .line 2474
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v30, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2481
    :cond_22
    if-nez p3, :cond_3a

    .line 2483
    const/16 v29, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v4

    check-cast v4, Lcom/hz/gui/GLabel;

    .line 2484
    .local v4, "attrConfirmButton":Lcom/hz/gui/GLabel;
    if-eqz v4, :cond_23

    .line 2485
    invoke-static {v12, v9}, Lcom/hz/ui/PlayerInfoUIAction;->isChangeAttValue([I[S)Z

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/hz/gui/GLabel;->setShow(Z)V

    .line 2488
    :cond_23
    const/16 v29, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v8

    check-cast v8, Lcom/hz/gui/GWindow;

    .line 2489
    .local v8, "attrWindow":Lcom/hz/gui/GWindow;
    const-string v6, ""

    .line 2490
    .local v6, "attrName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 2491
    .local v11, "baseValue":I
    const/4 v5, 0x0

    .line 2492
    .local v5, "attrID":I
    const/4 v10, 0x0

    .line 2493
    .local v10, "baseBuffValue":I
    const/4 v3, 0x0

    .line 2494
    .local v3, "addBuffValue":I
    const/4 v14, -0x1

    .line 2495
    .local v14, "defaultColor":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_a
    invoke-virtual {v8}, Lcom/hz/gui/GWindow;->getChildNum()I

    move-result v29

    move/from16 v0, v19

    move/from16 v1, v29

    if-lt v0, v1, :cond_33

    .line 2597
    .end local v3    # "addBuffValue":I
    .end local v4    # "attrConfirmButton":Lcom/hz/gui/GLabel;
    .end local v5    # "attrID":I
    .end local v6    # "attrName":Ljava/lang/String;
    .end local v8    # "attrWindow":Lcom/hz/gui/GWindow;
    .end local v10    # "baseBuffValue":I
    .end local v11    # "baseValue":I
    .end local v14    # "defaultColor":I
    .end local v19    # "i":I
    :cond_24
    :goto_b
    if-eqz p2, :cond_26

    .line 2599
    const/16 v29, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v17

    .end local v17    # "gameIcon":Lcom/hz/gui/GGameIcon;
    check-cast v17, Lcom/hz/gui/GGameIcon;

    .line 2600
    .restart local v17    # "gameIcon":Lcom/hz/gui/GGameIcon;
    if-eqz v17, :cond_26

    .line 2601
    if-eqz v25, :cond_25

    invoke-virtual/range {v25 .. v25}, Lcom/hz/actor/Mercenary;->isFollower()Z

    move-result v29

    if-nez v29, :cond_26

    .line 2604
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GGameIcon;->setSprite(Lcom/hz/sprite/GameSprite;)V

    .line 2614
    .end local v9    # "baseAtt":[S
    .end local v12    # "buffAtt":[I
    .end local v16    # "gameBar":Lcom/hz/gui/GGameBar;
    .end local v17    # "gameIcon":Lcom/hz/gui/GGameIcon;
    .end local v22    # "label":Lcom/hz/gui/GLabel;
    .end local v25    # "mercenary":Lcom/hz/actor/Mercenary;
    .end local v26    # "pet":Lcom/hz/actor/MyPet;
    .end local v28    # "textArea":Lcom/hz/gui/GTextArea;
    :cond_26
    :goto_c
    return-void

    .line 2191
    .restart local v9    # "baseAtt":[S
    .restart local v12    # "buffAtt":[I
    .restart local v25    # "mercenary":Lcom/hz/actor/Mercenary;
    .restart local v26    # "pet":Lcom/hz/actor/MyPet;
    :cond_27
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/hz/actor/Mercenary;

    move/from16 v29, v0

    if-eqz v29, :cond_1

    .line 2192
    move-object/from16 v0, p1

    check-cast v0, Lcom/hz/actor/Mercenary;

    move-object/from16 v25, v0

    goto/16 :goto_0

    .line 2212
    .restart local v15    # "frame":Lcom/hz/gui/GContainer;
    :cond_28
    const/16 v29, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v18

    .line 2213
    .restart local v18    # "gw":Lcom/hz/gui/GWidget;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/hz/gui/GContainer;->add(Lcom/hz/gui/GWidget;)V

    .line 2215
    const/16 v29, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v18

    .line 2216
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/hz/gui/GContainer;->add(Lcom/hz/gui/GWidget;)V

    .line 2218
    const/16 v29, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v18

    .line 2219
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/hz/gui/GContainer;->add(Lcom/hz/gui/GWidget;)V

    goto/16 :goto_1

    .line 2609
    .end local v9    # "baseAtt":[S
    .end local v12    # "buffAtt":[I
    .end local v15    # "frame":Lcom/hz/gui/GContainer;
    .end local v18    # "gw":Lcom/hz/gui/GWidget;
    .end local v25    # "mercenary":Lcom/hz/actor/Mercenary;
    .end local v26    # "pet":Lcom/hz/actor/MyPet;
    :catch_0
    move-exception v29

    goto :goto_c

    .line 2319
    .restart local v9    # "baseAtt":[S
    .restart local v12    # "buffAtt":[I
    .restart local v16    # "gameBar":Lcom/hz/gui/GGameBar;
    .restart local v17    # "gameIcon":Lcom/hz/gui/GGameIcon;
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    .restart local v25    # "mercenary":Lcom/hz/actor/Mercenary;
    .restart local v26    # "pet":Lcom/hz/actor/MyPet;
    .restart local v28    # "textArea":Lcom/hz/gui/GTextArea;
    :cond_29
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 2342
    .restart local v21    # "ispetcompositeshop":Z
    :cond_2a
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-virtual/range {v26 .. v26}, Lcom/hz/actor/MyPet;->getPetAge()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2371
    :cond_2b
    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setShow(Z)V

    goto/16 :goto_4

    .line 2382
    :cond_2c
    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setShow(Z)V

    goto/16 :goto_5

    .line 2392
    :cond_2d
    const/16 v29, 0x4000

    const/16 v30, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/hz/gui/GLabel;->setSetting(IZ)V

    goto/16 :goto_6

    .line 2431
    .end local v21    # "ispetcompositeshop":Z
    .restart local v27    # "subType":I
    :cond_2e
    const/16 v29, 0x0

    goto/16 :goto_7

    .line 2438
    .end local v27    # "subType":I
    .restart local v24    # "merPet":Lcom/hz/actor/Model;
    :cond_2f
    const/16 v29, 0x0

    goto/16 :goto_8

    .line 2452
    .end local v24    # "merPet":Lcom/hz/actor/Model;
    :cond_30
    const/16 v29, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2453
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_31

    .line 2454
    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getRace()B

    move-result v29

    invoke-static/range {v29 .. v29}, Lcom/hz/core/Define;->getRaceString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2458
    :cond_31
    const/16 v29, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2459
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_32

    .line 2460
    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getCountryRankStr()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2464
    :cond_32
    const/16 v29, 0x11

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2465
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_21

    .line 2466
    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getCountryName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2496
    .restart local v3    # "addBuffValue":I
    .restart local v4    # "attrConfirmButton":Lcom/hz/gui/GLabel;
    .restart local v5    # "attrID":I
    .restart local v6    # "attrName":Ljava/lang/String;
    .restart local v8    # "attrWindow":Lcom/hz/gui/GWindow;
    .restart local v10    # "baseBuffValue":I
    .restart local v11    # "baseValue":I
    .restart local v14    # "defaultColor":I
    .restart local v19    # "i":I
    :cond_33
    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/hz/gui/GWindow;->getJavaChild(I)Lcom/hz/gui/GWidget;

    move-result-object v13

    .line 2497
    .local v13, "childGW":Lcom/hz/gui/GWidget;
    if-nez v13, :cond_35

    .line 2495
    :cond_34
    :goto_d
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_a

    .line 2500
    :cond_35
    instance-of v0, v13, Lcom/hz/gui/GLinePanel;

    move/from16 v29, v0

    if-eqz v29, :cond_34

    .line 2503
    move-object v0, v13

    check-cast v0, Lcom/hz/gui/GLinePanel;

    move-object v7, v0

    .line 2504
    .local v7, "attrPanel":Lcom/hz/gui/GLinePanel;
    invoke-virtual {v13}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v29

    packed-switch v29, :pswitch_data_0

    goto :goto_d

    .line 2506
    :pswitch_0
    const-string v6, "S\u1ee9c"

    .line 2507
    move-object/from16 v0, p1

    iget-short v11, v0, Lcom/hz/actor/Player;->str:S

    .line 2508
    const/4 v5, 0x6

    .line 2509
    const/16 v29, 0x0

    aget-short v10, v9, v29

    .line 2510
    const/16 v29, 0x0

    aget v3, v12, v29

    .line 2544
    :goto_e
    if-eqz p2, :cond_38

    .line 2545
    const/16 v29, 0x2b

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/hz/gui/GLinePanel;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2546
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_36

    .line 2547
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2549
    :cond_36
    const/16 v29, 0x29

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/hz/gui/GLinePanel;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2550
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_37

    .line 2551
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/hz/actor/Player;->get(I)I

    move-result v29

    move/from16 v0, v29

    invoke-static {v11, v0}, Lcom/hz/actor/Player;->getAttDesc(II)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2553
    :cond_37
    new-instance v29, Ljava/lang/Integer;

    move-object/from16 v0, v29

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/hz/gui/GLinePanel;->setObj(Ljava/lang/Object;)V

    .line 2556
    :cond_38
    if-nez v19, :cond_39

    .line 2557
    const/16 v29, 0x29

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/hz/gui/GLinePanel;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2558
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_39

    .line 2559
    invoke-virtual/range {v22 .. v22}, Lcom/hz/gui/GLabel;->getLabelColor()I

    move-result v14

    .line 2562
    :cond_39
    const/16 v29, 0x2a

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/hz/gui/GLinePanel;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2563
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    move-object/from16 v0, v22

    invoke-static {v0, v3, v10, v14}, Lcom/hz/ui/PlayerInfoUIAction;->setText(Lcom/hz/gui/GLabel;III)V

    goto/16 :goto_d

    .line 2513
    :pswitch_1
    const-string v6, "Th\u1ec3"

    .line 2514
    move-object/from16 v0, p1

    iget-short v11, v0, Lcom/hz/actor/Player;->con:S

    .line 2515
    const/4 v5, 0x7

    .line 2516
    const/16 v29, 0x1

    aget-short v10, v9, v29

    .line 2517
    const/16 v29, 0x1

    aget v3, v12, v29

    .line 2518
    goto :goto_e

    .line 2520
    :pswitch_2
    const-string v6, "Nhanh"

    .line 2521
    move-object/from16 v0, p1

    iget-short v11, v0, Lcom/hz/actor/Player;->agi:S

    .line 2522
    const/16 v5, 0x8

    .line 2523
    const/16 v29, 0x2

    aget-short v10, v9, v29

    .line 2524
    const/16 v29, 0x2

    aget v3, v12, v29

    .line 2525
    goto/16 :goto_e

    .line 2527
    :pswitch_3
    const-string v6, "Tr\u00ed"

    .line 2528
    move-object/from16 v0, p1

    iget-short v11, v0, Lcom/hz/actor/Player;->ilt:S

    .line 2529
    const/16 v5, 0x9

    .line 2530
    const/16 v29, 0x3

    aget-short v10, v9, v29

    .line 2531
    const/16 v29, 0x3

    aget v3, v12, v29

    .line 2532
    goto/16 :goto_e

    .line 2534
    :pswitch_4
    const-string v6, "C\u1ea3m"

    .line 2535
    move-object/from16 v0, p1

    iget-short v11, v0, Lcom/hz/actor/Player;->wis:S

    .line 2536
    const/16 v5, 0xa

    .line 2537
    const/16 v29, 0x4

    aget-short v10, v9, v29

    .line 2538
    const/16 v29, 0x4

    aget v3, v12, v29

    .line 2539
    goto/16 :goto_e

    .line 2570
    .end local v3    # "addBuffValue":I
    .end local v4    # "attrConfirmButton":Lcom/hz/gui/GLabel;
    .end local v5    # "attrID":I
    .end local v6    # "attrName":Ljava/lang/String;
    .end local v7    # "attrPanel":Lcom/hz/gui/GLinePanel;
    .end local v8    # "attrWindow":Lcom/hz/gui/GWindow;
    .end local v10    # "baseBuffValue":I
    .end local v11    # "baseValue":I
    .end local v13    # "childGW":Lcom/hz/gui/GWidget;
    .end local v14    # "defaultColor":I
    .end local v19    # "i":I
    :cond_3a
    const/16 v29, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2571
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_3b

    .line 2572
    move-object/from16 v0, p1

    iget-short v0, v0, Lcom/hz/actor/Player;->str:S

    move/from16 v29, v0

    const/16 v30, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v30

    invoke-static/range {v29 .. v30}, Lcom/hz/actor/Player;->getAttDesc(II)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2575
    :cond_3b
    const/16 v29, 0x19

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2576
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_3c

    .line 2577
    move-object/from16 v0, p1

    iget-short v0, v0, Lcom/hz/actor/Player;->con:S

    move/from16 v29, v0

    const/16 v30, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v30

    invoke-static/range {v29 .. v30}, Lcom/hz/actor/Player;->getAttDesc(II)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2580
    :cond_3c
    const/16 v29, 0x1a

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2581
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_3d

    .line 2582
    move-object/from16 v0, p1

    iget-short v0, v0, Lcom/hz/actor/Player;->agi:S

    move/from16 v29, v0

    const/16 v30, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v30

    invoke-static/range {v29 .. v30}, Lcom/hz/actor/Player;->getAttDesc(II)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2585
    :cond_3d
    const/16 v29, 0x1b

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2586
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_3e

    .line 2587
    move-object/from16 v0, p1

    iget-short v0, v0, Lcom/hz/actor/Player;->ilt:S

    move/from16 v29, v0

    const/16 v30, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v30

    invoke-static/range {v29 .. v30}, Lcom/hz/actor/Player;->getAttDesc(II)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 2590
    :cond_3e
    const/16 v29, 0x1c

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v22

    .end local v22    # "label":Lcom/hz/gui/GLabel;
    check-cast v22, Lcom/hz/gui/GLabel;

    .line 2591
    .restart local v22    # "label":Lcom/hz/gui/GLabel;
    if-eqz v22, :cond_24

    .line 2592
    move-object/from16 v0, p1

    iget-short v0, v0, Lcom/hz/actor/Player;->wis:S

    move/from16 v29, v0

    const/16 v30, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v30

    invoke-static/range {v29 .. v30}, Lcom/hz/actor/Player;->getAttDesc(II)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_b

    .line 2504
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static final updatePlayerPhotoUI(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Z)V
    .locals 20
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "isInit"    # Z

    .prologue
    .line 1458
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->getObj()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/hz/ui/UIObject;

    .line 1466
    .local v16, "uiObj":Lcom/hz/ui/UIObject;
    invoke-virtual/range {v16 .. v16}, Lcom/hz/ui/UIObject;->getPlayerCard()Lcom/hz/core/PlayerCard;

    move-result-object v3

    .line 1467
    .local v3, "card":Lcom/hz/core/PlayerCard;
    move-object/from16 v0, v16

    iget-object v11, v0, Lcom/hz/ui/UIObject;->object:Ljava/lang/Object;

    check-cast v11, Ljava/util/Vector;

    .line 1469
    .local v11, "photoList":Ljava/util/Vector;
    const/16 v18, 0xce6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v12

    check-cast v12, Lcom/hz/gui/GWindow;

    .line 1470
    .local v12, "photoWindow":Lcom/hz/gui/GWindow;
    if-eqz v12, :cond_0

    .line 1472
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v12}, Lcom/hz/gui/GWindow;->getChildNum()I

    move-result v18

    move/from16 v0, v18

    if-lt v7, v0, :cond_5

    .line 1537
    iget-object v0, v12, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 1538
    invoke-virtual {v12}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    .line 1543
    .end local v7    # "i":I
    :cond_0
    const/16 v18, 0xcee

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v4

    check-cast v4, Lcom/hz/gui/GTextArea;

    .line 1544
    .local v4, "cardArea":Lcom/hz/gui/GTextArea;
    if-eqz v4, :cond_1

    iget-object v0, v3, Lcom/hz/core/PlayerCard;->signature:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 1545
    iget-object v0, v3, Lcom/hz/core/PlayerCard;->signature:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/hz/gui/GTextArea;->setText(Ljava/lang/String;)V

    .line 1549
    :cond_1
    const/16 v18, 0xcef

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v13

    check-cast v13, Lcom/hz/gui/GWindow;

    .line 1550
    .local v13, "styleWindow":Lcom/hz/gui/GWindow;
    if-eqz v13, :cond_2

    .line 1551
    iget-byte v0, v3, Lcom/hz/core/PlayerCard;->style:B

    move/from16 v18, v0

    if-lez v18, :cond_12

    .line 1552
    iget-byte v0, v3, Lcom/hz/core/PlayerCard;->style:B

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/hz/gui/GWindow;->setFocus(I)V

    .line 1559
    :cond_2
    :goto_1
    const/16 v18, 0xcea

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v15

    check-cast v15, Lcom/hz/gui/GLabel;

    .line 1560
    .local v15, "titleName":Lcom/hz/gui/GLabel;
    if-eqz v15, :cond_3

    .line 1561
    iget-object v0, v3, Lcom/hz/core/PlayerCard;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 1565
    :cond_3
    const/16 v18, 0xcec

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    check-cast v2, Lcom/hz/gui/GLabel;

    .line 1566
    .local v2, "bgLabel":Lcom/hz/gui/GLabel;
    if-eqz v2, :cond_4

    .line 1567
    iget-byte v0, v3, Lcom/hz/core/PlayerCard;->background:B

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/hz/core/PlayerCard;->getBgText(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 1575
    .end local v2    # "bgLabel":Lcom/hz/gui/GLabel;
    .end local v3    # "card":Lcom/hz/core/PlayerCard;
    .end local v4    # "cardArea":Lcom/hz/gui/GTextArea;
    .end local v11    # "photoList":Ljava/util/Vector;
    .end local v12    # "photoWindow":Lcom/hz/gui/GWindow;
    .end local v13    # "styleWindow":Lcom/hz/gui/GWindow;
    .end local v15    # "titleName":Lcom/hz/gui/GLabel;
    .end local v16    # "uiObj":Lcom/hz/ui/UIObject;
    :cond_4
    :goto_2
    return-void

    .line 1473
    .restart local v3    # "card":Lcom/hz/core/PlayerCard;
    .restart local v7    # "i":I
    .restart local v11    # "photoList":Ljava/util/Vector;
    .restart local v12    # "photoWindow":Lcom/hz/gui/GWindow;
    .restart local v16    # "uiObj":Lcom/hz/ui/UIObject;
    :cond_5
    invoke-virtual {v12, v7}, Lcom/hz/gui/GWindow;->getJavaChild(I)Lcom/hz/gui/GWidget;

    move-result-object v5

    check-cast v5, Lcom/hz/gui/GContainer;

    .line 1474
    .local v5, "child":Lcom/hz/gui/GContainer;
    if-nez v5, :cond_7

    .line 1472
    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1478
    :cond_7
    const/4 v10, 0x0

    .line 1479
    .local v10, "photo":Lcom/hz/core/Photo;
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_8

    .line 1480
    invoke-virtual {v11, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "photo":Lcom/hz/core/Photo;
    check-cast v10, Lcom/hz/core/Photo;

    .line 1482
    .restart local v10    # "photo":Lcom/hz/core/Photo;
    :cond_8
    invoke-virtual {v5, v10}, Lcom/hz/gui/GContainer;->setObj(Ljava/lang/Object;)V

    .line 1485
    const/16 v18, 0xce9

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/hz/gui/GContainer;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v9

    check-cast v9, Lcom/hz/gui/GLabel;

    .line 1488
    .local v9, "nameLabel":Lcom/hz/gui/GLabel;
    const/16 v18, 0xce8

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/hz/gui/GContainer;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v14

    check-cast v14, Lcom/hz/gui/GLabel;

    .line 1491
    .local v14, "takePhotoLabel":Lcom/hz/gui/GLabel;
    const/16 v18, 0x2b16

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/hz/gui/GContainer;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v17

    check-cast v17, Lcom/hz/gui/GLabel;

    .line 1493
    .local v17, "viewButtonLabel":Lcom/hz/gui/GLabel;
    const/16 v18, 0x2b15

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/hz/gui/GContainer;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v6

    check-cast v6, Lcom/hz/gui/GLabel;

    .line 1495
    .local v6, "deleteButtonLabel":Lcom/hz/gui/GLabel;
    if-eqz v10, :cond_e

    .line 1497
    if-eqz v14, :cond_9

    .line 1498
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/hz/gui/GLabel;->setShow(Z)V

    .line 1501
    :cond_9
    if-eqz v9, :cond_a

    .line 1502
    new-instance v18, Ljava/lang/StringBuilder;

    add-int/lit8 v19, v7, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v10}, Lcom/hz/core/Photo;->getListInfo(Lcom/hz/core/Photo;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 1503
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/hz/gui/GLabel;->setShow(Z)V

    .line 1506
    :cond_a
    invoke-virtual {v10}, Lcom/hz/core/Photo;->isUnCheck()Z

    move-result v8

    .line 1508
    .local v8, "isUnCheck":Z
    if-eqz v17, :cond_b

    .line 1509
    if-eqz v8, :cond_c

    const/16 v18, 0x0

    :goto_4
    invoke-virtual/range {v17 .. v18}, Lcom/hz/gui/GLabel;->setShow(Z)V

    .line 1512
    :cond_b
    if-eqz v6, :cond_6

    .line 1513
    if-eqz v8, :cond_d

    const/16 v18, 0x0

    :goto_5
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/hz/gui/GLabel;->setShow(Z)V

    goto/16 :goto_3

    .line 1570
    .end local v3    # "card":Lcom/hz/core/PlayerCard;
    .end local v5    # "child":Lcom/hz/gui/GContainer;
    .end local v6    # "deleteButtonLabel":Lcom/hz/gui/GLabel;
    .end local v7    # "i":I
    .end local v8    # "isUnCheck":Z
    .end local v9    # "nameLabel":Lcom/hz/gui/GLabel;
    .end local v10    # "photo":Lcom/hz/core/Photo;
    .end local v11    # "photoList":Ljava/util/Vector;
    .end local v12    # "photoWindow":Lcom/hz/gui/GWindow;
    .end local v14    # "takePhotoLabel":Lcom/hz/gui/GLabel;
    .end local v16    # "uiObj":Lcom/hz/ui/UIObject;
    .end local v17    # "viewButtonLabel":Lcom/hz/gui/GLabel;
    :catch_0
    move-exception v18

    goto/16 :goto_2

    .line 1509
    .restart local v3    # "card":Lcom/hz/core/PlayerCard;
    .restart local v5    # "child":Lcom/hz/gui/GContainer;
    .restart local v6    # "deleteButtonLabel":Lcom/hz/gui/GLabel;
    .restart local v7    # "i":I
    .restart local v8    # "isUnCheck":Z
    .restart local v9    # "nameLabel":Lcom/hz/gui/GLabel;
    .restart local v10    # "photo":Lcom/hz/core/Photo;
    .restart local v11    # "photoList":Ljava/util/Vector;
    .restart local v12    # "photoWindow":Lcom/hz/gui/GWindow;
    .restart local v14    # "takePhotoLabel":Lcom/hz/gui/GLabel;
    .restart local v16    # "uiObj":Lcom/hz/ui/UIObject;
    .restart local v17    # "viewButtonLabel":Lcom/hz/gui/GLabel;
    :cond_c
    const/16 v18, 0x1

    goto :goto_4

    .line 1513
    :cond_d
    const/16 v18, 0x1

    goto :goto_5

    .line 1518
    .end local v8    # "isUnCheck":Z
    :cond_e
    if-eqz v14, :cond_f

    .line 1519
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/hz/gui/GLabel;->setShow(Z)V

    .line 1522
    :cond_f
    if-eqz v9, :cond_10

    .line 1523
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/hz/gui/GLabel;->setShow(Z)V

    .line 1526
    :cond_10
    if-eqz v17, :cond_11

    .line 1527
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/hz/gui/GLabel;->setShow(Z)V

    .line 1530
    :cond_11
    if-eqz v6, :cond_6

    .line 1531
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/hz/gui/GLabel;->setShow(Z)V

    goto/16 :goto_3

    .line 1554
    .end local v5    # "child":Lcom/hz/gui/GContainer;
    .end local v6    # "deleteButtonLabel":Lcom/hz/gui/GLabel;
    .end local v7    # "i":I
    .end local v9    # "nameLabel":Lcom/hz/gui/GLabel;
    .end local v10    # "photo":Lcom/hz/core/Photo;
    .end local v14    # "takePhotoLabel":Lcom/hz/gui/GLabel;
    .end local v17    # "viewButtonLabel":Lcom/hz/gui/GLabel;
    .restart local v4    # "cardArea":Lcom/hz/gui/GTextArea;
    .restart local v13    # "styleWindow":Lcom/hz/gui/GWindow;
    :cond_12
    invoke-virtual {v13}, Lcom/hz/gui/GWindow;->setFirstFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method

.method public static updatePlayerSkillUI(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Z)V
    .locals 12
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "isInit"    # Z

    .prologue
    const/4 v5, 0x5

    const/4 v3, 0x0

    const/4 v11, 0x1

    .line 1730
    if-nez p0, :cond_1

    .line 1808
    :cond_0
    :goto_0
    return-void

    .line 1734
    :cond_1
    const/16 v4, 0x26

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    check-cast v2, Lcom/hz/gui/GWindow;

    .line 1736
    .local v2, "attrWindow":Lcom/hz/gui/GWindow;
    iget v8, v2, Lcom/hz/gui/GWindow;->focusIndex:I

    .line 1738
    .local v8, "oldFocusIndex":I
    const/4 v9, 0x0

    .line 1739
    .local v9, "oldScrollPos":I
    invoke-virtual {v2}, Lcom/hz/gui/GWindow;->getScrollBar()Lcom/hz/gui/GScrollBar;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1740
    invoke-virtual {v2}, Lcom/hz/gui/GWindow;->getScrollBar()Lcom/hz/gui/GScrollBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hz/gui/GScrollBar;->getScrollPos()I

    move-result v9

    .line 1744
    :cond_2
    invoke-virtual {v2}, Lcom/hz/gui/GWindow;->clear()V

    .line 1746
    if-eqz p1, :cond_0

    .line 1751
    instance-of v4, p1, Lcom/hz/actor/MyPet;

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getSubType()S

    move-result v4

    if-ne v4, v5, :cond_7

    move v7, v11

    .line 1757
    .local v7, "ispetcompositeshop":Z
    :goto_1
    const/16 v4, 0xc81

    invoke-virtual {p0, v4}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v6

    check-cast v6, Lcom/hz/gui/GLabel;

    .line 1758
    .local v6, "glabel":Lcom/hz/gui/GLabel;
    if-eqz v6, :cond_3

    .line 1759
    if-eqz v7, :cond_8

    move v4, v3

    :goto_2
    invoke-virtual {v6, v4}, Lcom/hz/gui/GLabel;->setShow(Z)V

    .line 1763
    :cond_3
    const/16 v4, 0x15

    invoke-virtual {p0, v4}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v6

    .end local v6    # "glabel":Lcom/hz/gui/GLabel;
    check-cast v6, Lcom/hz/gui/GLabel;

    .line 1764
    .restart local v6    # "glabel":Lcom/hz/gui/GLabel;
    if-eqz v6, :cond_4

    .line 1765
    if-eqz v7, :cond_9

    :goto_3
    invoke-virtual {v6, v3}, Lcom/hz/gui/GLabel;->setShow(Z)V

    .line 1769
    :cond_4
    const/16 v3, 0xc82

    invoke-virtual {p0, v3}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v6

    .end local v6    # "glabel":Lcom/hz/gui/GLabel;
    check-cast v6, Lcom/hz/gui/GLabel;

    .line 1770
    .restart local v6    # "glabel":Lcom/hz/gui/GLabel;
    if-eqz v6, :cond_5

    .line 1771
    if-eqz v7, :cond_a

    .line 1772
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Lcom/hz/gui/GLabel;->setShow(Z)V

    .line 1773
    const-string v3, "Skill c\u00f3 th\u1ec3 l\u0129nh ng\u1ed9"

    invoke-virtual {v6, v3}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 1780
    :cond_5
    :goto_4
    const/16 v3, 0x28

    invoke-virtual {p0, v3}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    check-cast v0, Lcom/hz/gui/GLabel;

    .line 1782
    .local v0, "title":Lcom/hz/gui/GLabel;
    const/16 v3, 0x27

    invoke-virtual {p0, v3}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v1

    check-cast v1, Lcom/hz/gui/GContainer;

    .line 1785
    .local v1, "choicePanel":Lcom/hz/gui/GContainer;
    const-string v4, "B\u1ecb \u0111\u1ed9ng"

    const/4 v5, 0x1

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/hz/ui/PlayerInfoUIAction;->updateSkillList(Lcom/hz/gui/GLabel;Lcom/hz/gui/GContainer;Lcom/hz/gui/GWindow;Lcom/hz/actor/Player;Ljava/lang/String;B)V

    .line 1786
    const-string v4, "Ch\u1ee7 \u0111\u1ed9ng"

    const/4 v5, 0x3

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/hz/ui/PlayerInfoUIAction;->updateSkillList(Lcom/hz/gui/GLabel;Lcom/hz/gui/GContainer;Lcom/hz/gui/GWindow;Lcom/hz/actor/Player;Ljava/lang/String;B)V

    .line 1787
    const-string v4, "T\u1eeb \u0111\u1ed9ng ph\u00f3ng"

    const/4 v5, 0x2

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/hz/ui/PlayerInfoUIAction;->updateSkillList(Lcom/hz/gui/GLabel;Lcom/hz/gui/GContainer;Lcom/hz/gui/GWindow;Lcom/hz/actor/Player;Ljava/lang/String;B)V

    .line 1788
    const-string v4, "Tr\u1eadn"

    const/4 v5, 0x4

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/hz/ui/PlayerInfoUIAction;->updateSkillList(Lcom/hz/gui/GLabel;Lcom/hz/gui/GContainer;Lcom/hz/gui/GWindow;Lcom/hz/actor/Player;Ljava/lang/String;B)V

    .line 1790
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->show()V

    .line 1792
    if-nez p2, :cond_6

    iget-object v3, p1, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ne v3, v11, :cond_b

    .line 1793
    :cond_6
    invoke-virtual {v2}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    .line 1800
    :goto_5
    const/16 v3, 0x15

    invoke-virtual {p0, v3}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v10

    check-cast v10, Lcom/hz/gui/GLabel;

    .line 1801
    .local v10, "spGWidget":Lcom/hz/gui/GLabel;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1803
    .end local v0    # "title":Lcom/hz/gui/GLabel;
    .end local v1    # "choicePanel":Lcom/hz/gui/GContainer;
    .end local v2    # "attrWindow":Lcom/hz/gui/GWindow;
    .end local v6    # "glabel":Lcom/hz/gui/GLabel;
    .end local v7    # "ispetcompositeshop":Z
    .end local v8    # "oldFocusIndex":I
    .end local v9    # "oldScrollPos":I
    .end local v10    # "spGWidget":Lcom/hz/gui/GLabel;
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .restart local v2    # "attrWindow":Lcom/hz/gui/GWindow;
    .restart local v8    # "oldFocusIndex":I
    .restart local v9    # "oldScrollPos":I
    :cond_7
    move v7, v3

    .line 1751
    goto/16 :goto_1

    .restart local v6    # "glabel":Lcom/hz/gui/GLabel;
    .restart local v7    # "ispetcompositeshop":Z
    :cond_8
    move v4, v11

    .line 1759
    goto/16 :goto_2

    :cond_9
    move v3, v11

    .line 1765
    goto :goto_3

    .line 1775
    :cond_a
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Lcom/hz/gui/GLabel;->setShow(Z)V

    goto :goto_4

    .line 1795
    .restart local v0    # "title":Lcom/hz/gui/GLabel;
    .restart local v1    # "choicePanel":Lcom/hz/gui/GContainer;
    :cond_b
    invoke-virtual {v2, v8}, Lcom/hz/gui/GWindow;->setPrevFocus(I)V

    .line 1796
    const/4 v3, 0x0

    neg-int v4, v9

    invoke-virtual {v2, v3, v4}, Lcom/hz/gui/GWindow;->setChildrenOffset(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5
.end method

.method private static final updatePlayerSocietyUI(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Z)V
    .locals 11
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "isInit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1589
    const/16 v7, 0x23

    invoke-virtual {p0, v7}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v1

    check-cast v1, Lcom/hz/gui/GWindow;

    .line 1592
    .local v1, "attrWindow":Lcom/hz/gui/GWindow;
    if-nez v1, :cond_0

    .line 1593
    const/16 v7, 0x1f

    invoke-static {v7}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v0

    .line 1594
    .local v0, "attrUIHandler":Lcom/hz/ui/UIHandler;
    if-eqz v0, :cond_0

    .line 1595
    const/16 v7, 0x23

    invoke-virtual {v0, v7}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v1

    .end local v1    # "attrWindow":Lcom/hz/gui/GWindow;
    check-cast v1, Lcom/hz/gui/GWindow;

    .line 1598
    .restart local v1    # "attrWindow":Lcom/hz/gui/GWindow;
    invoke-virtual {p0, v1}, Lcom/hz/ui/UIHandler;->addEventGWidget(Lcom/hz/gui/GWidget;)V

    .line 1599
    const/16 v7, 0x24

    invoke-virtual {v0, v7}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/hz/ui/UIHandler;->addEventGWidget(Lcom/hz/gui/GWidget;)V

    .line 1602
    .end local v0    # "attrUIHandler":Lcom/hz/ui/UIHandler;
    :cond_0
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/hz/gui/GContainer;->add(Lcom/hz/gui/GWidget;)V

    .line 1606
    invoke-virtual {v1}, Lcom/hz/gui/GWindow;->clear()V

    .line 1608
    const/16 v7, 0x7f

    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v8

    if-ne v7, v8, :cond_5

    const/4 v3, 0x1

    .line 1612
    .local v3, "isShowmoney":Z
    :goto_0
    const/16 v7, 0x24

    invoke-virtual {p0, v7}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    check-cast v2, Lcom/hz/gui/GContainer;

    .line 1615
    .local v2, "choicePanel":Lcom/hz/gui/GContainer;
    if-nez v3, :cond_1

    .line 1616
    new-instance v7, Ljava/lang/Integer;

    const/16 v8, 0x20

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 1617
    const/16 v8, 0xb

    invoke-static {v8}, Lcom/hz/actor/Player;->getMoneyText(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0xb

    invoke-virtual {p1, v10}, Lcom/hz/actor/Player;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1616
    invoke-static {v1, v2, v7, v8, v9}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    new-instance v7, Ljava/lang/Integer;

    const/16 v8, 0x21

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 1619
    const/16 v8, 0xc

    invoke-static {v8}, Lcom/hz/actor/Player;->getMoneyText(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0xc

    invoke-virtual {p1, v10}, Lcom/hz/actor/Player;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1618
    invoke-static {v1, v2, v7, v8, v9}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    new-instance v7, Ljava/lang/Integer;

    const/16 v8, 0x22

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 1621
    const/16 v8, 0xd

    invoke-static {v8}, Lcom/hz/actor/Player;->getMoneyText(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0xd

    invoke-virtual {p1, v10}, Lcom/hz/actor/Player;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1620
    invoke-static {v1, v2, v7, v8, v9}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    :cond_1
    new-instance v7, Ljava/lang/Integer;

    const/16 v8, 0x23

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 1625
    const-string v8, "Vinh d\u1ef1"

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0x44

    invoke-virtual {p1, v10}, Lcom/hz/actor/Player;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1624
    invoke-static {v1, v2, v7, v8, v9}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    new-instance v7, Ljava/lang/Integer;

    const/16 v8, 0x24

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 1627
    const-string v8, "Thi \u0111\u1ea5u"

    new-instance v9, Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/hz/actor/Player;->arenaPoint:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1626
    invoke-static {v1, v2, v7, v8, v9}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    new-instance v7, Ljava/lang/Integer;

    const/16 v8, 0x25

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 1629
    const-string v8, "Khi\u00eau chi\u1ebfn"

    new-instance v9, Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/hz/actor/Player;->skyarenaPoint:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1628
    invoke-static {v1, v2, v7, v8, v9}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    new-instance v7, Ljava/lang/Integer;

    const/16 v8, 0x26

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 1632
    const-string v8, "L\u1ef1c Chi\u1ebfn"

    new-instance v9, Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/hz/actor/Player;->combatPoint:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1631
    invoke-static {v1, v2, v7, v8, v9}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    const-string v7, "\u0110i\u1ec3m Ph\u1ee5 Ma"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hz/actor/Player;->getEnchantValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/10000"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    const-string v7, "EXP Th\u1ea7n K\u00ec"

    .line 1638
    new-instance v8, Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/hz/actor/Player;->exp2:I

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/hz/common/Tool;->getMoneyText(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/hz/actor/Player;->expMax2:I

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/hz/common/Tool;->getMoneyText(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1637
    invoke-static {v1, v2, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    const-string v4, "Th\u01b0\u1eddng"

    .line 1641
    .local v4, "strVip":Ljava/lang/String;
    invoke-static {p1}, Lcom/hz/main/GameWorld;->isVip(Lcom/hz/actor/Player;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1642
    const-string v5, ""

    .line 1643
    .local v5, "strVipLevel":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/hz/actor/Player;->getVipLevel()B

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    .line 1644
    const/16 v7, 0xb1

    invoke-static {v7}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hz/actor/Player;->getVipLevel()B

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1646
    :cond_2
    const-string v6, "VIP"

    .line 1650
    .local v6, "strvipname":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1661
    .end local v5    # "strVipLevel":Ljava/lang/String;
    .end local v6    # "strvipname":Ljava/lang/String;
    :cond_3
    sget-object v7, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v7}, Lcom/hz/actor/Player;->getVipLevel2()B

    move-result v7

    if-lez v7, :cond_4

    sget-object v7, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-static {v7}, Lcom/hz/main/GameWorld;->isVip(Lcom/hz/actor/Player;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1663
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "VIP"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v8}, Lcom/hz/actor/Player;->getVipLevel2()B

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1666
    :cond_4
    const-string v7, "\u0110\u1ecba v\u1ecb"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    const-string v7, "S\u1ed1 \u00f4 kho"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0xf

    invoke-virtual {p1, v9}, Lcom/hz/actor/Player;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x3c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    const-string v7, "S\u1ed1 qu\u00e1i gi\u1ebft"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x12

    invoke-virtual {p1, v9}, Lcom/hz/actor/Player;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    const-string v7, "PK th\u1eafng"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x13

    invoke-virtual {p1, v9}, Lcom/hz/actor/Player;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    const-string v7, "T\u1ec9 l\u1ec7 PK th\u1eafng"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/hz/actor/Player;->getPKWin()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    const-string v8, "B\u1ea1n \u0111\u1eddi"

    iget-object v7, p1, Lcom/hz/actor/Player;->partnerName:Ljava/lang/String;

    invoke-static {v7}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "Kh\u00f4ng"

    :goto_1
    invoke-static {v1, v2, v8, v7}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    const-string v7, "S\u01b0 \u0111\u1ed3"

    invoke-virtual {p1}, Lcom/hz/actor/Player;->getMasterFlag()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v7, v8}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    const-string v8, "Danh hi\u1ec7u"

    invoke-virtual {p1}, Lcom/hz/actor/Player;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "Kh\u00f4ng"

    :goto_2
    invoke-static {v1, v2, v8, v7}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    const-string v8, "Vi\u1ec7n qu\u00e2n"

    iget-object v7, p1, Lcom/hz/actor/Player;->helpCountry:Ljava/lang/String;

    invoke-static {v7}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "Kh\u00f4ng"

    :goto_3
    invoke-static {v1, v2, v8, v7}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    const-string v8, "Y\u00eau th\u1ea7m"

    iget-object v7, p1, Lcom/hz/actor/Player;->lovePlayer:Ljava/lang/String;

    invoke-static {v7}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "Kh\u00f4ng"

    :goto_4
    invoke-static {v1, v2, v8, v7}, Lcom/hz/ui/PlayerInfoUIAction;->addPlayerAttributeToWindow(Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    invoke-virtual {v1}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    .line 1679
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->show()V

    .line 1680
    return-void

    .line 1608
    .end local v2    # "choicePanel":Lcom/hz/gui/GContainer;
    .end local v3    # "isShowmoney":Z
    .end local v4    # "strVip":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1672
    .restart local v2    # "choicePanel":Lcom/hz/gui/GContainer;
    .restart local v3    # "isShowmoney":Z
    .restart local v4    # "strVip":Ljava/lang/String;
    :cond_6
    iget-object v7, p1, Lcom/hz/actor/Player;->partnerName:Ljava/lang/String;

    goto :goto_1

    .line 1674
    :cond_7
    invoke-virtual {p1}, Lcom/hz/actor/Player;->getTitle()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 1675
    :cond_8
    iget-object v7, p1, Lcom/hz/actor/Player;->helpCountry:Ljava/lang/String;

    goto :goto_3

    .line 1676
    :cond_9
    iget-object v7, p1, Lcom/hz/actor/Player;->lovePlayer:Ljava/lang/String;

    goto :goto_4
.end method

.method public static final updateRaidersPlayerBaseUI(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;ZZ)V
    .locals 33
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "isInit"    # Z
    .param p3, "isTabChange"    # Z

    .prologue
    .line 3166
    const/16 v31, 0x31a3

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v21

    check-cast v21, Lcom/hz/gui/GLabel;

    .line 3167
    .local v21, "glabel":Lcom/hz/gui/GLabel;
    if-eqz v21, :cond_0

    .line 3168
    if-eqz p1, :cond_4

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getName()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->getClientUid(Z)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    :goto_0
    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 3171
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->getListener()Lcom/hz/ui/UIListener;

    move-result-object v27

    .line 3173
    .local v27, "listener":Lcom/hz/ui/UIListener;
    const/4 v14, 0x0

    .line 3174
    .local v14, "buffAtt":[I
    const/4 v11, 0x0

    .line 3175
    .local v11, "baseAtt":[S
    if-eqz v27, :cond_1

    move-object/from16 v0, v27

    instance-of v0, v0, Lcom/hz/ui/PlayerInfoUIAction;

    move/from16 v31, v0

    if-eqz v31, :cond_1

    .line 3176
    move-object/from16 v0, v27

    check-cast v0, Lcom/hz/ui/PlayerInfoUIAction;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v14, v0, Lcom/hz/ui/PlayerInfoUIAction;->buffAtt:[I

    .line 3177
    check-cast v27, Lcom/hz/ui/PlayerInfoUIAction;

    .end local v27    # "listener":Lcom/hz/ui/UIListener;
    move-object/from16 v0, v27

    iget-object v11, v0, Lcom/hz/ui/PlayerInfoUIAction;->baseAtt:[S

    .line 3180
    :cond_1
    const/16 v26, 0x0

    .line 3181
    .local v26, "label":Lcom/hz/gui/GLabel;
    const/16 v19, 0x0

    .line 3182
    .local v19, "gameBar":Lcom/hz/gui/GGameBar;
    const/16 v30, 0x0

    .line 3183
    .local v30, "textArea":Lcom/hz/gui/GTextArea;
    const/16 v20, 0x0

    .line 3186
    .local v20, "gameIcon":Lcom/hz/gui/GGameIcon;
    const/16 v31, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v6

    check-cast v6, Lcom/hz/gui/GLabel;

    .line 3187
    .local v6, "attrConfirmButton":Lcom/hz/gui/GLabel;
    if-eqz v6, :cond_2

    .line 3188
    invoke-static {v14, v11}, Lcom/hz/ui/PlayerInfoUIAction;->isChangeAttValue([I[S)Z

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/hz/gui/GLabel;->setShow(Z)V

    .line 3191
    :cond_2
    const/16 v31, 0x31a2

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v10

    check-cast v10, Lcom/hz/gui/GWindow;

    .line 3192
    .local v10, "attrWindow":Lcom/hz/gui/GWindow;
    const-string v8, ""

    .line 3193
    .local v8, "attrName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 3194
    .local v13, "baseValue":I
    const/4 v7, 0x0

    .line 3195
    .local v7, "attrID":I
    const/4 v12, 0x0

    .line 3196
    .local v12, "baseBuffValue":I
    const/4 v5, 0x0

    .line 3197
    .local v5, "addBuffValue":I
    const/16 v16, -0x1

    .line 3198
    .local v16, "defaultColor":I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    invoke-virtual {v10}, Lcom/hz/gui/GWindow;->getChildNum()I

    move-result v31

    move/from16 v0, v22

    move/from16 v1, v31

    if-lt v0, v1, :cond_5

    .line 3269
    const/16 v31, 0x1e

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v17

    .line 3270
    .local v17, "equipWindow":Lcom/hz/gui/GWindow;
    if-nez v17, :cond_c

    .line 3326
    .end local v5    # "addBuffValue":I
    .end local v6    # "attrConfirmButton":Lcom/hz/gui/GLabel;
    .end local v7    # "attrID":I
    .end local v8    # "attrName":Ljava/lang/String;
    .end local v10    # "attrWindow":Lcom/hz/gui/GWindow;
    .end local v11    # "baseAtt":[S
    .end local v12    # "baseBuffValue":I
    .end local v13    # "baseValue":I
    .end local v14    # "buffAtt":[I
    .end local v16    # "defaultColor":I
    .end local v17    # "equipWindow":Lcom/hz/gui/GWindow;
    .end local v19    # "gameBar":Lcom/hz/gui/GGameBar;
    .end local v20    # "gameIcon":Lcom/hz/gui/GGameIcon;
    .end local v21    # "glabel":Lcom/hz/gui/GLabel;
    .end local v22    # "i":I
    .end local v26    # "label":Lcom/hz/gui/GLabel;
    .end local v30    # "textArea":Lcom/hz/gui/GTextArea;
    :cond_3
    :goto_2
    return-void

    .line 3168
    .restart local v21    # "glabel":Lcom/hz/gui/GLabel;
    :cond_4
    const-string v31, ""

    goto :goto_0

    .line 3199
    .restart local v5    # "addBuffValue":I
    .restart local v6    # "attrConfirmButton":Lcom/hz/gui/GLabel;
    .restart local v7    # "attrID":I
    .restart local v8    # "attrName":Ljava/lang/String;
    .restart local v10    # "attrWindow":Lcom/hz/gui/GWindow;
    .restart local v11    # "baseAtt":[S
    .restart local v12    # "baseBuffValue":I
    .restart local v13    # "baseValue":I
    .restart local v14    # "buffAtt":[I
    .restart local v16    # "defaultColor":I
    .restart local v19    # "gameBar":Lcom/hz/gui/GGameBar;
    .restart local v20    # "gameIcon":Lcom/hz/gui/GGameIcon;
    .restart local v22    # "i":I
    .restart local v26    # "label":Lcom/hz/gui/GLabel;
    .restart local v30    # "textArea":Lcom/hz/gui/GTextArea;
    :cond_5
    move/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/hz/gui/GWindow;->getJavaChild(I)Lcom/hz/gui/GWidget;

    move-result-object v15

    .line 3200
    .local v15, "childGW":Lcom/hz/gui/GWidget;
    if-nez v15, :cond_7

    .line 3198
    :cond_6
    :goto_3
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 3203
    :cond_7
    instance-of v0, v15, Lcom/hz/gui/GLinePanel;

    move/from16 v31, v0

    if-eqz v31, :cond_6

    .line 3206
    move-object v0, v15

    check-cast v0, Lcom/hz/gui/GLinePanel;

    move-object v9, v0

    .line 3207
    .local v9, "attrPanel":Lcom/hz/gui/GLinePanel;
    invoke-virtual {v15}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v31

    packed-switch v31, :pswitch_data_0

    goto :goto_3

    .line 3209
    :pswitch_0
    const-string v8, "S\u1ee9c"

    .line 3210
    move-object/from16 v0, p1

    iget-short v13, v0, Lcom/hz/actor/Player;->str:S

    .line 3211
    const/4 v7, 0x6

    .line 3212
    const/16 v31, 0x0

    aget-short v12, v11, v31

    .line 3213
    const/16 v31, 0x0

    aget v5, v14, v31

    .line 3247
    :goto_4
    if-eqz p2, :cond_a

    .line 3248
    const/16 v31, 0x2b

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/hz/gui/GLinePanel;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v26

    .end local v26    # "label":Lcom/hz/gui/GLabel;
    check-cast v26, Lcom/hz/gui/GLabel;

    .line 3249
    .restart local v26    # "label":Lcom/hz/gui/GLabel;
    if-eqz v26, :cond_8

    .line 3250
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 3252
    :cond_8
    const/16 v31, 0x29

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/hz/gui/GLinePanel;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v26

    .end local v26    # "label":Lcom/hz/gui/GLabel;
    check-cast v26, Lcom/hz/gui/GLabel;

    .line 3253
    .restart local v26    # "label":Lcom/hz/gui/GLabel;
    if-eqz v26, :cond_9

    .line 3254
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/hz/actor/Player;->get(I)I

    move-result v31

    move/from16 v0, v31

    invoke-static {v13, v0}, Lcom/hz/actor/Player;->getAttDesc(II)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 3256
    :cond_9
    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v0, v31

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/hz/gui/GLinePanel;->setObj(Ljava/lang/Object;)V

    .line 3259
    :cond_a
    if-nez v22, :cond_b

    .line 3260
    const/16 v31, 0x29

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/hz/gui/GLinePanel;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v26

    .end local v26    # "label":Lcom/hz/gui/GLabel;
    check-cast v26, Lcom/hz/gui/GLabel;

    .line 3261
    .restart local v26    # "label":Lcom/hz/gui/GLabel;
    if-eqz v26, :cond_b

    .line 3262
    invoke-virtual/range {v26 .. v26}, Lcom/hz/gui/GLabel;->getLabelColor()I

    move-result v16

    .line 3265
    :cond_b
    const/16 v31, 0x2a

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/hz/gui/GLinePanel;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v26

    .end local v26    # "label":Lcom/hz/gui/GLabel;
    check-cast v26, Lcom/hz/gui/GLabel;

    .line 3266
    .restart local v26    # "label":Lcom/hz/gui/GLabel;
    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-static {v0, v5, v12, v1}, Lcom/hz/ui/PlayerInfoUIAction;->setText(Lcom/hz/gui/GLabel;III)V

    goto/16 :goto_3

    .line 3321
    .end local v5    # "addBuffValue":I
    .end local v6    # "attrConfirmButton":Lcom/hz/gui/GLabel;
    .end local v7    # "attrID":I
    .end local v8    # "attrName":Ljava/lang/String;
    .end local v9    # "attrPanel":Lcom/hz/gui/GLinePanel;
    .end local v10    # "attrWindow":Lcom/hz/gui/GWindow;
    .end local v11    # "baseAtt":[S
    .end local v12    # "baseBuffValue":I
    .end local v13    # "baseValue":I
    .end local v14    # "buffAtt":[I
    .end local v15    # "childGW":Lcom/hz/gui/GWidget;
    .end local v16    # "defaultColor":I
    .end local v19    # "gameBar":Lcom/hz/gui/GGameBar;
    .end local v20    # "gameIcon":Lcom/hz/gui/GGameIcon;
    .end local v21    # "glabel":Lcom/hz/gui/GLabel;
    .end local v22    # "i":I
    .end local v26    # "label":Lcom/hz/gui/GLabel;
    .end local v30    # "textArea":Lcom/hz/gui/GTextArea;
    :catch_0
    move-exception v31

    goto/16 :goto_2

    .line 3216
    .restart local v5    # "addBuffValue":I
    .restart local v6    # "attrConfirmButton":Lcom/hz/gui/GLabel;
    .restart local v7    # "attrID":I
    .restart local v8    # "attrName":Ljava/lang/String;
    .restart local v9    # "attrPanel":Lcom/hz/gui/GLinePanel;
    .restart local v10    # "attrWindow":Lcom/hz/gui/GWindow;
    .restart local v11    # "baseAtt":[S
    .restart local v12    # "baseBuffValue":I
    .restart local v13    # "baseValue":I
    .restart local v14    # "buffAtt":[I
    .restart local v15    # "childGW":Lcom/hz/gui/GWidget;
    .restart local v16    # "defaultColor":I
    .restart local v19    # "gameBar":Lcom/hz/gui/GGameBar;
    .restart local v20    # "gameIcon":Lcom/hz/gui/GGameIcon;
    .restart local v21    # "glabel":Lcom/hz/gui/GLabel;
    .restart local v22    # "i":I
    .restart local v26    # "label":Lcom/hz/gui/GLabel;
    .restart local v30    # "textArea":Lcom/hz/gui/GTextArea;
    :pswitch_1
    const-string v8, "Th\u1ec3"

    .line 3217
    move-object/from16 v0, p1

    iget-short v13, v0, Lcom/hz/actor/Player;->con:S

    .line 3218
    const/4 v7, 0x7

    .line 3219
    const/16 v31, 0x1

    aget-short v12, v11, v31

    .line 3220
    const/16 v31, 0x1

    aget v5, v14, v31

    .line 3221
    goto :goto_4

    .line 3223
    :pswitch_2
    const-string v8, "Nhanh"

    .line 3224
    move-object/from16 v0, p1

    iget-short v13, v0, Lcom/hz/actor/Player;->agi:S

    .line 3225
    const/16 v7, 0x8

    .line 3226
    const/16 v31, 0x2

    aget-short v12, v11, v31

    .line 3227
    const/16 v31, 0x2

    aget v5, v14, v31

    .line 3228
    goto/16 :goto_4

    .line 3230
    :pswitch_3
    const-string v8, "Tr\u00ed"

    .line 3231
    move-object/from16 v0, p1

    iget-short v13, v0, Lcom/hz/actor/Player;->ilt:S

    .line 3232
    const/16 v7, 0x9

    .line 3233
    const/16 v31, 0x3

    aget-short v12, v11, v31

    .line 3234
    const/16 v31, 0x3

    aget v5, v14, v31

    .line 3235
    goto/16 :goto_4

    .line 3237
    :pswitch_4
    const-string v8, "C\u1ea3m"

    .line 3238
    move-object/from16 v0, p1

    iget-short v13, v0, Lcom/hz/actor/Player;->wis:S

    .line 3239
    const/16 v7, 0xa

    .line 3240
    const/16 v31, 0x4

    aget-short v12, v11, v31

    .line 3241
    const/16 v31, 0x4

    aget v5, v14, v31

    .line 3242
    goto/16 :goto_4

    .line 3279
    .end local v9    # "attrPanel":Lcom/hz/gui/GLinePanel;
    .end local v15    # "childGW":Lcom/hz/gui/GWidget;
    .restart local v17    # "equipWindow":Lcom/hz/gui/GWindow;
    :cond_c
    if-nez p2, :cond_3

    .line 3280
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/hz/gui/GContainer;->getJavaTopDraw(I)Ljava/lang/Object;

    move-result-object v29

    .line 3281
    .local v29, "object":Ljava/lang/Object;
    move-object/from16 v0, v29

    instance-of v0, v0, Lcom/hz/core/MessageFrame;

    move/from16 v31, v0

    if-eqz v31, :cond_3

    .line 3284
    move-object/from16 v0, v29

    check-cast v0, Lcom/hz/core/MessageFrame;

    move-object/from16 v28, v0

    .line 3286
    .local v28, "msgFrame":Lcom/hz/core/MessageFrame;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    move-object/from16 v18, v0

    .line 3287
    .local v18, "focusWidget":Lcom/hz/gui/GWidget;
    if-eqz v18, :cond_3

    .line 3290
    invoke-virtual/range {v18 .. v18}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/hz/core/Item;

    .line 3292
    .local v25, "item":Lcom/hz/core/Item;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/hz/gui/GWindow;->focusIndex:I

    move/from16 v23, v0

    .line 3293
    .local v23, "index":I
    const/16 v31, 0x3

    move/from16 v0, v23

    move/from16 v1, v31

    if-eq v0, v1, :cond_d

    const/16 v31, 0x8

    move/from16 v0, v23

    move/from16 v1, v31

    if-eq v0, v1, :cond_d

    const/16 v31, 0x9

    move/from16 v0, v23

    move/from16 v1, v31

    if-eq v0, v1, :cond_d

    const/16 v31, 0xa

    move/from16 v0, v23

    move/from16 v1, v31

    if-eq v0, v1, :cond_d

    const/16 v31, 0x11

    move/from16 v0, v23

    move/from16 v1, v31

    if-eq v0, v1, :cond_d

    const/16 v24, 0x1

    .line 3294
    .local v24, "isDown":Z
    :goto_5
    if-nez v25, :cond_e

    const/4 v4, 0x0

    .line 3297
    .local v4, "_message":Ljava/lang/String;
    :goto_6
    const/16 v31, 0x2

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    move/from16 v2, v24

    move/from16 v3, v31

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/hz/core/MessageFrame;->doUpdate(Ljava/lang/String;Lcom/hz/gui/GWidget;ZI)V

    .line 3298
    invoke-static {v4}, Lcom/hz/core/MessageFrame;->getTimeByStr(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/hz/core/MessageFrame;->setDrawCount(I)V

    goto/16 :goto_2

    .line 3293
    .end local v4    # "_message":Ljava/lang/String;
    .end local v24    # "isDown":Z
    :cond_d
    const/16 v24, 0x0

    goto :goto_5

    .line 3295
    .restart local v24    # "isDown":Z
    :cond_e
    const/16 v31, 0x8

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/hz/core/MessageFrame;->getAttribute(I)I

    move-result v31

    const/16 v32, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/hz/core/Item;->getDesc(Lcom/hz/actor/Player;IZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_6

    .line 3207
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static final updateSkillList(Lcom/hz/gui/GLabel;Lcom/hz/gui/GContainer;Lcom/hz/gui/GWindow;Lcom/hz/actor/Player;Ljava/lang/String;B)V
    .locals 16
    .param p0, "title"    # Lcom/hz/gui/GLabel;
    .param p1, "choicePanel"    # Lcom/hz/gui/GContainer;
    .param p2, "attrWindow"    # Lcom/hz/gui/GWindow;
    .param p3, "player"    # Lcom/hz/actor/Player;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "skillType"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1822
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1950
    :cond_0
    return-void

    .line 1826
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/hz/actor/Player;->getType()B

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_3

    sget-object v14, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v14}, Lcom/hz/actor/Player;->getPet()Lcom/hz/actor/Model;

    move-result-object v14

    move-object/from16 v0, p3

    if-eq v0, v14, :cond_3

    const/4 v6, 0x1

    .line 1828
    .local v6, "isOtherPet":Z
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/hz/actor/Player;->getType()B

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_4

    sget-object v14, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    move-object/from16 v0, p3

    if-eq v0, v14, :cond_4

    const/4 v7, 0x1

    .line 1830
    .local v7, "isOtherPlayer":Z
    :goto_1
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    move/from16 v0, p5

    invoke-static {v14, v0}, Lcom/hz/actor/Player;->getSkillListByType(Ljava/util/Vector;B)Ljava/util/Vector;

    move-result-object v10

    .line 1832
    .local v10, "skillList":Ljava/util/Vector;
    const/4 v14, 0x4

    move/from16 v0, p5

    if-ne v14, v0, :cond_5

    const/4 v5, 0x1

    .line 1834
    .local v5, "isFormation":Z
    :goto_2
    if-eqz v5, :cond_2

    .line 1836
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/hz/actor/Player;->formationList:Ljava/util/Vector;

    .line 1839
    :cond_2
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v14

    if-lez v14, :cond_0

    .line 1842
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLabel;->getClone()Lcom/hz/gui/GWidget;

    move-result-object v8

    check-cast v8, Lcom/hz/gui/GLabel;

    .line 1843
    .local v8, "label":Lcom/hz/gui/GLabel;
    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 1844
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 1847
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v14

    if-ge v2, v14, :cond_0

    .line 1848
    invoke-virtual {v10, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/hz/core/Skill;

    .line 1849
    .local v9, "skill":Lcom/hz/core/Skill;
    if-nez v9, :cond_6

    .line 1847
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1826
    .end local v2    # "i":I
    .end local v5    # "isFormation":Z
    .end local v6    # "isOtherPet":Z
    .end local v7    # "isOtherPlayer":Z
    .end local v8    # "label":Lcom/hz/gui/GLabel;
    .end local v9    # "skill":Lcom/hz/core/Skill;
    .end local v10    # "skillList":Ljava/util/Vector;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 1828
    .restart local v6    # "isOtherPet":Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 1832
    .restart local v7    # "isOtherPlayer":Z
    .restart local v10    # "skillList":Ljava/util/Vector;
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 1853
    .restart local v2    # "i":I
    .restart local v5    # "isFormation":Z
    .restart local v8    # "label":Lcom/hz/gui/GLabel;
    .restart local v9    # "skill":Lcom/hz/core/Skill;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/hz/gui/GContainer;->getClone()Lcom/hz/gui/GWidget;

    move-result-object v12

    check-cast v12, Lcom/hz/gui/GContainer;

    .line 1854
    .local v12, "skillPanel":Lcom/hz/gui/GContainer;
    invoke-virtual {v12, v9}, Lcom/hz/gui/GContainer;->setObj(Ljava/lang/Object;)V

    .line 1856
    iget v14, v9, Lcom/hz/core/Skill;->id:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/hz/actor/Player;->isAutoSkill(I)I

    move-result v1

    .line 1859
    .local v1, "autoSkillID":I
    const/16 v14, 0xc1e

    invoke-virtual {v12, v14}, Lcom/hz/gui/GContainer;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v8

    .end local v8    # "label":Lcom/hz/gui/GLabel;
    check-cast v8, Lcom/hz/gui/GLabel;

    .line 1860
    .restart local v8    # "label":Lcom/hz/gui/GLabel;
    if-eqz v8, :cond_9

    .line 1861
    const-string v11, ""

    .line 1862
    .local v11, "skillName":Ljava/lang/String;
    const-string v13, ""

    .line 1863
    .local v13, "strInitiativeskill":Ljava/lang/String;
    move-object/from16 v0, p3

    iget v14, v0, Lcom/hz/actor/Player;->autoSkillID_Initiative:I

    iget v15, v9, Lcom/hz/core/Skill;->id:I

    if-ne v14, v15, :cond_7

    .line 1864
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "("

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v15, 0x9e

    invoke-static {v15}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1869
    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    iget-object v15, v9, Lcom/hz/core/Skill;->name:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Lcom/hz/core/Skill;->getRealLevelInfo()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1879
    iget-boolean v14, v9, Lcom/hz/core/Skill;->isLearnByBook:Z

    if-eqz v14, :cond_8

    .line 1881
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "\u2605"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1884
    :cond_8
    invoke-virtual {v8, v11}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 1888
    .end local v11    # "skillName":Ljava/lang/String;
    .end local v13    # "strInitiativeskill":Ljava/lang/String;
    :cond_9
    const/16 v14, 0xc1f

    invoke-virtual {v12, v14}, Lcom/hz/gui/GContainer;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v8

    .end local v8    # "label":Lcom/hz/gui/GLabel;
    check-cast v8, Lcom/hz/gui/GLabel;

    .line 1894
    .restart local v8    # "label":Lcom/hz/gui/GLabel;
    const/16 v14, 0x2b0e

    invoke-virtual {v12, v14}, Lcom/hz/gui/GContainer;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v3

    check-cast v3, Lcom/hz/gui/GIcon;

    .line 1895
    .local v3, "icon":Lcom/hz/gui/GIcon;
    if-eqz v3, :cond_a

    .line 1896
    if-nez v6, :cond_e

    const/4 v14, 0x2

    move/from16 v0, p5

    if-ne v0, v14, :cond_e

    const/4 v14, 0x1

    :goto_5
    invoke-virtual {v3, v14}, Lcom/hz/gui/GIcon;->setShow(Z)V

    .line 1897
    if-ltz v1, :cond_f

    const/4 v14, 0x1

    :goto_6
    invoke-virtual {v3, v14}, Lcom/hz/gui/GIcon;->setFocus(Z)V

    .line 1898
    add-int/lit8 v14, v1, 0x1

    invoke-virtual {v3, v14}, Lcom/hz/gui/GIcon;->setNumber(I)V

    .line 1903
    if-eqz v7, :cond_a

    .line 1904
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lcom/hz/gui/GIcon;->setShow(Z)V

    .line 1909
    :cond_a
    const/16 v14, 0x2b1f

    invoke-virtual {v12, v14}, Lcom/hz/gui/GContainer;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v4

    check-cast v4, Lcom/hz/gui/GIcon;

    .line 1910
    .local v4, "icon2":Lcom/hz/gui/GIcon;
    if-eqz v4, :cond_b

    .line 1911
    const/4 v14, 0x4

    move/from16 v0, p5

    if-ne v0, v14, :cond_10

    .line 1913
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lcom/hz/gui/GIcon;->setShow(Z)V

    .line 1914
    iget-boolean v14, v9, Lcom/hz/core/Skill;->isDefault:Z

    invoke-virtual {v4, v14}, Lcom/hz/gui/GIcon;->setFocus(Z)V

    .line 1926
    :goto_7
    if-eqz v7, :cond_b

    .line 1927
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lcom/hz/gui/GIcon;->setShow(Z)V

    .line 1932
    :cond_b
    const/16 v14, 0x2b0c

    invoke-virtual {v12, v14}, Lcom/hz/gui/GContainer;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v8

    .end local v8    # "label":Lcom/hz/gui/GLabel;
    check-cast v8, Lcom/hz/gui/GLabel;

    .line 1933
    .restart local v8    # "label":Lcom/hz/gui/GLabel;
    if-eqz v8, :cond_d

    .line 1934
    if-eqz v6, :cond_13

    const/4 v14, 0x0

    :goto_8
    invoke-virtual {v8, v14}, Lcom/hz/gui/GLabel;->setShow(Z)V

    .line 1937
    if-eqz v7, :cond_c

    .line 1938
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Lcom/hz/gui/GLabel;->setShow(Z)V

    .line 1941
    :cond_c
    const/4 v14, 0x4

    move/from16 v0, p5

    if-ne v0, v14, :cond_d

    .line 1943
    const-string v14, "Qu\u00ean"

    invoke-virtual {v8, v14}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 1947
    :cond_d
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    goto/16 :goto_4

    .line 1896
    .end local v4    # "icon2":Lcom/hz/gui/GIcon;
    :cond_e
    const/4 v14, 0x0

    goto :goto_5

    .line 1897
    :cond_f
    const/4 v14, 0x0

    goto :goto_6

    .line 1917
    .restart local v4    # "icon2":Lcom/hz/gui/GIcon;
    :cond_10
    if-nez v6, :cond_11

    const/4 v14, 0x3

    move/from16 v0, p5

    if-ne v0, v14, :cond_11

    const/4 v14, 0x1

    :goto_9
    invoke-virtual {v4, v14}, Lcom/hz/gui/GIcon;->setShow(Z)V

    .line 1918
    move-object/from16 v0, p3

    iget v14, v0, Lcom/hz/actor/Player;->autoSkillID_Initiative:I

    iget v15, v9, Lcom/hz/core/Skill;->id:I

    if-ne v14, v15, :cond_12

    const/4 v14, 0x1

    :goto_a
    invoke-virtual {v4, v14}, Lcom/hz/gui/GIcon;->setFocus(Z)V

    goto :goto_7

    .line 1917
    :cond_11
    const/4 v14, 0x0

    goto :goto_9

    .line 1918
    :cond_12
    const/4 v14, 0x0

    goto :goto_a

    .line 1934
    :cond_13
    const/4 v14, 0x1

    goto :goto_8
.end method


# virtual methods
.method public getChangeAttDesc(Ljava/lang/StringBuffer;ILjava/lang/String;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "attribute"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->basePlayer:Lcom/hz/actor/Player;

    invoke-virtual {v2, p2}, Lcom/hz/actor/Player;->get(I)I

    move-result v0

    .line 224
    .local v0, "value1":I
    iget-object v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    invoke-virtual {v2, p2}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    .line 225
    .local v1, "value2":I
    if-eq v0, v1, :cond_0

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->compareColorText(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    :cond_0
    return-void
.end method

.method public getPlayerAttributeText(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2904
    iget-object v0, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    invoke-direct {p0, v0}, Lcom/hz/ui/PlayerInfoUIAction;->initAttributeText(Lcom/hz/actor/Player;)V

    .line 2905
    const/16 v0, 0x27

    if-lt p1, v0, :cond_0

    const/16 v0, 0x2c

    if-gt p1, v0, :cond_0

    .line 2906
    add-int/lit8 p1, p1, -0x7

    .line 2908
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/hz/ui/PlayerInfoUIAction;->CHANGE_TEXT:[[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 2909
    :cond_1
    const-string v0, "Ch\u01b0a mi\u00eau t\u1ea3!"

    .line 2911
    :goto_0
    return-object v0

    :cond_2
    invoke-static {p1}, Lcom/hz/ui/PlayerInfoUIAction;->getAttributeText(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hz/ui/PlayerInfoUIAction;->CHANGE_TEXT:[[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSocietyExplain(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 3025
    iget-object v0, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    invoke-direct {p0, v0}, Lcom/hz/ui/PlayerInfoUIAction;->initSocietyText(Lcom/hz/actor/Player;)V

    .line 3027
    if-ltz p1, :cond_0

    sget-object v0, Lcom/hz/ui/PlayerInfoUIAction;->SOCIETY_EXPLAIN:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 3028
    :cond_0
    const-string v0, "Ch\u01b0a mi\u00eau t\u1ea3!"

    .line 3030
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/hz/ui/PlayerInfoUIAction;->SOCIETY_EXPLAIN:[Ljava/lang/String;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/hz/ui/PlayerInfoUIAction;->SOCIETY_CHANGE_TEXT:[[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method init(Lcom/hz/actor/Player;Z)V
    .locals 6
    .param p1, "p"    # Lcom/hz/actor/Player;
    .param p2, "isClonePlayer"    # Z

    .prologue
    const/4 v5, 0x4

    .line 84
    iput-object p1, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    .line 86
    const/4 v0, 0x5

    .line 87
    .local v0, "attSize":I
    new-array v2, v0, [S

    iput-object v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->baseAtt:[S

    .line 88
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->buffAtt:[I

    .line 90
    iget-object v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    if-nez v2, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->baseAtt:[S

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    iget-short v4, v4, Lcom/hz/actor/Player;->str:S

    aput-short v4, v2, v3

    .line 95
    iget-object v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->baseAtt:[S

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    iget-short v4, v4, Lcom/hz/actor/Player;->con:S

    aput-short v4, v2, v3

    .line 96
    iget-object v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->baseAtt:[S

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    iget-short v4, v4, Lcom/hz/actor/Player;->agi:S

    aput-short v4, v2, v3

    .line 97
    iget-object v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->baseAtt:[S

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    iget-short v4, v4, Lcom/hz/actor/Player;->ilt:S

    aput-short v4, v2, v3

    .line 98
    iget-object v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->baseAtt:[S

    iget-object v3, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    iget-short v3, v3, Lcom/hz/actor/Player;->wis:S

    aput-short v3, v2, v5

    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_2

    .line 104
    iget-object v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    invoke-virtual {v2, v5}, Lcom/hz/actor/Player;->get(I)I

    move-result v2

    iput v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->baseCP:I

    .line 105
    iget-object v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    iget v2, v2, Lcom/hz/actor/Player;->hp:I

    iput v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->baseHP:I

    .line 106
    iget-object v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    iget v2, v2, Lcom/hz/actor/Player;->mp:I

    iput v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->baseMP:I

    .line 108
    if-eqz p2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    invoke-virtual {v2}, Lcom/hz/actor/Player;->clonePlayer()Lcom/hz/actor/Player;

    move-result-object v2

    iput-object v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->basePlayer:Lcom/hz/actor/Player;

    goto :goto_0

    .line 101
    :cond_2
    iget-object v2, p0, Lcom/hz/ui/PlayerInfoUIAction;->buffAtt:[I

    iget-object v3, p0, Lcom/hz/ui/PlayerInfoUIAction;->baseAtt:[S

    aget-short v3, v3, v1

    aput v3, v2, v1

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public processLayerAction(Lcom/hz/ui/UIHandler;I)V
    .locals 1
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 958
    iget-object v0, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    if-nez v0, :cond_0

    .line 982
    :goto_0
    return-void

    .line 962
    :cond_0
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 981
    :goto_1
    invoke-static {p1}, Lcom/hz/core/SpriteGuide;->clearSriteGuide(Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 964
    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/hz/ui/PlayerInfoUIAction;->processPlayerInfoAction(Lcom/hz/ui/UIHandler;I)V

    goto :goto_1

    .line 969
    :sswitch_1
    invoke-direct {p0, p1, p2}, Lcom/hz/ui/PlayerInfoUIAction;->processPetMerInfoAction(Lcom/hz/ui/UIHandler;I)V

    goto :goto_1

    .line 973
    :sswitch_2
    invoke-direct {p0, p1, p2}, Lcom/hz/ui/PlayerInfoUIAction;->processTwiceSureAction(Lcom/hz/ui/UIHandler;I)V

    goto :goto_1

    .line 977
    :sswitch_3
    invoke-direct {p0, p1, p2}, Lcom/hz/ui/PlayerInfoUIAction;->processRaidersPlayerInfoAction(Lcom/hz/ui/UIHandler;I)V

    goto :goto_1

    .line 962
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xe -> :sswitch_2
        0x34 -> :sswitch_1
        0x3e -> :sswitch_1
        0x7f -> :sswitch_3
    .end sparse-switch
.end method

.method public processLayerClose(Lcom/hz/ui/UIHandler;)V
    .locals 0
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 985
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->close()V

    .line 986
    return-void
.end method

.method setPlayer(Lcom/hz/actor/Player;)V
    .locals 0
    .param p1, "_player"    # Lcom/hz/actor/Player;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/hz/ui/PlayerInfoUIAction;->opePlayer:Lcom/hz/actor/Player;

    .line 69
    return-void
.end method
