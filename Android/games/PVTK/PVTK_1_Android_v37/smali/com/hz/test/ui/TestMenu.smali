.class public Lcom/hz/test/ui/TestMenu;
.super Ljava/lang/Object;
.source "TestMenu.java"


# static fields
.field public static frameIdxs:[I

.field public static hotKey:[Ljava/lang/String;

.field public static imageSet:Lcom/hz/image/ImageSet;

.field public static maxHeight:I

.field public static maxWidth:I

.field public static menu:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 22
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    mul-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/hz/test/ui/TestMenu;->maxWidth:I

    .line 23
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    mul-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/hz/test/ui/TestMenu;->maxHeight:I

    .line 24
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 25
    const-string v2, "1"

    aput-object v2, v0, v1

    .line 26
    const-string v1, "3"

    aput-object v1, v0, v3

    .line 27
    const-string v1, "7"

    aput-object v1, v0, v4

    .line 28
    const-string v1, "9"

    aput-object v1, v0, v5

    .line 29
    const-string v1, "*"

    aput-object v1, v0, v6

    .line 30
    const-string v1, "0"

    aput-object v1, v0, v7

    .line 24
    sput-object v0, Lcom/hz/test/ui/TestMenu;->hotKey:[Ljava/lang/String;

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v3, v0, v3

    aput v4, v0, v4

    aput v5, v0, v5

    aput v6, v0, v6

    aput v7, v0, v7

    sput-object v0, Lcom/hz/test/ui/TestMenu;->frameIdxs:[I

    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 35
    const-string v2, "\u5145\u503c\u83dc\u5355"

    aput-object v2, v0, v1

    .line 36
    const-string v1, "\u4eba\u7269\u88c5\u5907"

    aput-object v1, v0, v3

    .line 37
    const-string v1, "\u6280\u80fd\u770b\u6d6a"

    aput-object v1, v0, v4

    .line 38
    const-string v1, "\u56fd\u5bb6\u5217\u8868"

    aput-object v1, v0, v5

    .line 39
    const-string v1, "\u4efb\u52a1\u4fe1\u606f"

    aput-object v1, v0, v6

    .line 40
    const-string v1, "\u7cfb\u7edf\u4fe1\u606f"

    aput-object v1, v0, v7

    .line 34
    sput-object v0, Lcom/hz/test/ui/TestMenu;->menu:[Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWindow()Lcom/hz/gui/GWindow;
    .locals 21

    .prologue
    .line 146
    const/16 v6, 0x8

    .line 147
    .local v6, "borderWindow":I
    const/4 v5, 0x2

    .line 149
    .local v5, "borderLinePanel":I
    const/4 v7, 0x2

    .line 151
    .local v7, "borderWindowToPanel":I
    const/4 v4, 0x3

    .line 153
    .local v4, "borderHotKey":I
    sget-object v17, Lcom/hz/test/ui/TestMenu;->menu:[Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v12

    .line 154
    .local v12, "maxMenuWidth":I
    sget v17, Lcom/hz/test/ui/TestMenu;->maxWidth:I

    add-int/lit8 v17, v17, -0x4

    add-int/lit8 v17, v17, -0x10

    move/from16 v0, v17

    if-le v12, v0, :cond_0

    .line 155
    sget v17, Lcom/hz/test/ui/TestMenu;->maxWidth:I

    add-int/lit8 v17, v17, -0x4

    add-int/lit8 v12, v17, -0x10

    .line 157
    :cond_0
    sget-object v17, Lcom/hz/test/ui/TestMenu;->hotKey:[Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v17

    add-int/lit8 v8, v17, 0x6

    .line 163
    .local v8, "hotkeyMenuWidth":I
    const/16 v17, 0x28

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 166
    .local v16, "windowData":[I
    new-instance v13, Lcom/hz/gui/GWindow;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 167
    .local v13, "menuw":Lcom/hz/gui/GWindow;
    const/16 v17, 0x1

    const/16 v18, 0x200

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lcom/hz/gui/GWindow;->setVLayout(II)V

    .line 168
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const v19, 0xf8ebc4

    aput v19, v17, v18

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v13, v0, v1, v2}, Lcom/hz/gui/GWindow;->setData([ILcom/hz/image/ImageSet;I)V

    .line 169
    const/16 v17, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1, v7, v7}, Lcom/hz/gui/GWindow;->setBorder(IIII)V

    .line 170
    sget v17, Lcom/hz/test/ui/TestMenu;->maxWidth:I

    sget v18, Lcom/hz/test/ui/TestMenu;->maxHeight:I

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lcom/hz/gui/GWindow;->setMaxSize(II)V

    .line 172
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    sget-object v17, Lcom/hz/test/ui/TestMenu;->menu:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v9, v0, :cond_1

    .line 202
    invoke-virtual {v13}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    .line 203
    return-object v13

    .line 173
    :cond_1
    const/16 v17, 0x28

    move/from16 v0, v17

    new-array v15, v0, [I

    .line 177
    .local v15, "panelData":[I
    new-instance v14, Lcom/hz/gui/GLinePanel;

    invoke-direct {v14, v15}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 178
    .local v14, "panel":Lcom/hz/gui/GLinePanel;
    const/16 v17, 0x2

    const/16 v18, 0x400

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/hz/gui/GLinePanel;->setHLayout(II)V

    .line 179
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v14, v0, v1, v2}, Lcom/hz/gui/GLinePanel;->setData([ILcom/hz/image/ImageSet;I)V

    .line 180
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, -0x1

    aput v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/hz/gui/GLinePanel;->setFocusColorTable([I)V

    .line 181
    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x3

    const/16 v20, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/hz/gui/GLinePanel;->setBorder(IIII)V

    .line 182
    sget v17, Lcom/hz/test/ui/TestMenu;->maxWidth:I

    sget v18, Lcom/hz/test/ui/TestMenu;->maxHeight:I

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/hz/gui/GLinePanel;->setMinSize(II)V

    .line 184
    new-instance v10, Lcom/hz/gui/GLabel;

    const/16 v17, 0x28

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lcom/hz/gui/GLabel;-><init>([I)V

    .line 185
    .local v10, "label1":Lcom/hz/gui/GLabel;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x2

    const/16 v20, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/hz/gui/GLabel;->setBorder(IIII)V

    .line 186
    sget-object v17, Lcom/hz/test/ui/TestMenu;->hotKey:[Ljava/lang/String;

    aget-object v17, v17, v9

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/hz/gui/GLabel;->setData(Ljava/lang/String;III)V

    .line 187
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Lcom/hz/gui/GLabel;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 189
    new-instance v11, Lcom/hz/gui/GLabel;

    const/16 v17, 0x28

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lcom/hz/gui/GLabel;-><init>([I)V

    .line 191
    .local v11, "label2":Lcom/hz/gui/GLabel;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/hz/gui/GLabel;->setNeedExecuteCycle(Z)V

    .line 193
    sget v17, Lcom/hz/test/ui/TestMenu;->maxWidth:I

    add-int/lit8 v17, v17, -0x4

    add-int/lit8 v17, v17, -0x10

    sget v18, Lcom/hz/test/ui/TestMenu;->maxHeight:I

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lcom/hz/gui/GLabel;->setMaxSize(II)V

    .line 194
    sget-object v17, Lcom/hz/test/ui/TestMenu;->menu:[Ljava/lang/String;

    aget-object v17, v17, v9

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/hz/gui/GLabel;->setData(Ljava/lang/String;III)V

    .line 195
    invoke-virtual {v11}, Lcom/hz/gui/GLabel;->getMinH()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v12, v0}, Lcom/hz/gui/GLabel;->setMinSize(II)V

    .line 197
    invoke-virtual {v14, v10}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 198
    invoke-virtual {v14, v11}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 200
    invoke-virtual {v13, v14}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 172
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 179
    nop

    :array_0
    .array-data 4
        0xe8d195
        0xf6f5e0
    .end array-data

    .line 187
    :array_1
    .array-data 4
        0xfff072
        0xfff9a1
        0xc49e43
    .end array-data
.end method

.method public static getWindow2()Lcom/hz/gui/GWindow;
    .locals 21

    .prologue
    .line 247
    const/16 v6, 0x8

    .line 248
    .local v6, "borderWindow":I
    const/4 v5, 0x2

    .line 250
    .local v5, "borderLinePanel":I
    const/4 v7, 0x2

    .line 252
    .local v7, "borderWindowToPanel":I
    const/4 v4, 0x3

    .line 254
    .local v4, "borderHotKey":I
    sget-object v17, Lcom/hz/test/ui/TestMenu;->menu:[Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v12

    .line 255
    .local v12, "maxMenuWidth":I
    sget v17, Lcom/hz/test/ui/TestMenu;->maxWidth:I

    add-int/lit8 v17, v17, -0x4

    add-int/lit8 v17, v17, -0x10

    move/from16 v0, v17

    if-le v12, v0, :cond_0

    .line 256
    sget v17, Lcom/hz/test/ui/TestMenu;->maxWidth:I

    add-int/lit8 v17, v17, -0x4

    add-int/lit8 v12, v17, -0x10

    .line 258
    :cond_0
    sget-object v17, Lcom/hz/test/ui/TestMenu;->hotKey:[Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v17

    add-int/lit8 v8, v17, 0x6

    .line 264
    .local v8, "hotkeyMenuWidth":I
    const/16 v17, 0x28

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 267
    .local v16, "windowData":[I
    new-instance v13, Lcom/hz/gui/GWindow;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 268
    .local v13, "menuw":Lcom/hz/gui/GWindow;
    const/16 v17, 0x1

    const/16 v18, 0x200

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lcom/hz/gui/GWindow;->setVLayout(II)V

    .line 269
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const v19, 0xf8ebc4

    aput v19, v17, v18

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v13, v0, v1, v2}, Lcom/hz/gui/GWindow;->setData([ILcom/hz/image/ImageSet;I)V

    .line 270
    const/16 v17, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1, v7, v7}, Lcom/hz/gui/GWindow;->setBorder(IIII)V

    .line 271
    sget v17, Lcom/hz/test/ui/TestMenu;->maxWidth:I

    sget v18, Lcom/hz/test/ui/TestMenu;->maxHeight:I

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lcom/hz/gui/GWindow;->setMaxSize(II)V

    .line 273
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    sget-object v17, Lcom/hz/test/ui/TestMenu;->menu:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v9, v0, :cond_1

    .line 302
    invoke-virtual {v13}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    .line 303
    return-object v13

    .line 274
    :cond_1
    const/16 v17, 0x28

    move/from16 v0, v17

    new-array v15, v0, [I

    .line 278
    .local v15, "panelData":[I
    new-instance v14, Lcom/hz/gui/GLinePanel;

    invoke-direct {v14, v15}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 279
    .local v14, "panel":Lcom/hz/gui/GLinePanel;
    const/16 v17, 0x2

    const/16 v18, 0x400

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/hz/gui/GLinePanel;->setHLayout(II)V

    .line 280
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v14, v0, v1, v2}, Lcom/hz/gui/GLinePanel;->setData([ILcom/hz/image/ImageSet;I)V

    .line 281
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, -0x1

    aput v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/hz/gui/GLinePanel;->setFocusColorTable([I)V

    .line 282
    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x3

    const/16 v20, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/hz/gui/GLinePanel;->setBorder(IIII)V

    .line 283
    sget v17, Lcom/hz/test/ui/TestMenu;->maxWidth:I

    sget v18, Lcom/hz/test/ui/TestMenu;->maxHeight:I

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/hz/gui/GLinePanel;->setMinSize(II)V

    .line 285
    new-instance v10, Lcom/hz/gui/GIcon;

    const/16 v17, 0x28

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lcom/hz/gui/GIcon;-><init>([I)V

    .line 286
    .local v10, "icon":Lcom/hz/gui/GIcon;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const v19, 0xf33993e

    aput v19, v17, v18

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Lcom/hz/gui/GIcon;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 287
    sget-object v17, Lcom/hz/test/ui/TestMenu;->imageSet:Lcom/hz/image/ImageSet;

    sget-object v18, Lcom/hz/test/ui/TestMenu;->frameIdxs:[I

    aget v18, v18, v9

    const/16 v19, 0x0

    const/16 v20, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V

    .line 289
    new-instance v11, Lcom/hz/gui/GLabel;

    const/16 v17, 0x28

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lcom/hz/gui/GLabel;-><init>([I)V

    .line 291
    .local v11, "label2":Lcom/hz/gui/GLabel;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/hz/gui/GLabel;->setNeedExecuteCycle(Z)V

    .line 293
    sget v17, Lcom/hz/test/ui/TestMenu;->maxWidth:I

    add-int/lit8 v17, v17, -0x4

    add-int/lit8 v17, v17, -0x10

    sget v18, Lcom/hz/test/ui/TestMenu;->maxHeight:I

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lcom/hz/gui/GLabel;->setMaxSize(II)V

    .line 294
    sget-object v17, Lcom/hz/test/ui/TestMenu;->menu:[Ljava/lang/String;

    aget-object v17, v17, v9

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/hz/gui/GLabel;->setData(Ljava/lang/String;III)V

    .line 295
    invoke-virtual {v11}, Lcom/hz/gui/GLabel;->getMinH()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v12, v0}, Lcom/hz/gui/GLabel;->setMinSize(II)V

    .line 297
    invoke-virtual {v14, v10}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 298
    invoke-virtual {v14, v11}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 300
    invoke-virtual {v13, v14}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 273
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 280
    :array_0
    .array-data 4
        0xe8d195
        0xf6f5e0
    .end array-data
.end method

.method public static testCase1()V
    .locals 11

    .prologue
    const/16 v10, 0x28

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 118
    new-instance v1, Lcom/hz/gui/GLinePanel;

    new-array v3, v10, [I

    invoke-direct {v1, v3}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 119
    .local v1, "linePanel":Lcom/hz/gui/GLinePanel;
    new-array v3, v6, [I

    const v4, 0xffcd64

    aput v4, v3, v7

    const v4, 0xf5b036

    aput v4, v3, v8

    const v4, 0xd66f1b

    aput v4, v3, v9

    const/4 v4, 0x4

    .line 120
    const v5, 0xfffb85

    aput v5, v3, v4

    const/4 v4, 0x5

    const v5, 0xd66f1b

    aput v5, v3, v4

    const/4 v4, 0x6

    const v5, 0xf2ab1c

    aput v5, v3, v4

    const/4 v4, 0x7

    const v5, 0xf2ab1c

    aput v5, v3, v4

    const/4 v4, 0x0

    .line 119
    invoke-virtual {v1, v3, v4, v7}, Lcom/hz/gui/GLinePanel;->setData([ILcom/hz/image/ImageSet;I)V

    .line 121
    const/16 v3, 0x200

    invoke-virtual {v1, v8, v3}, Lcom/hz/gui/GLinePanel;->setVLayout(II)V

    .line 122
    invoke-virtual {v1, v6, v6, v6, v6}, Lcom/hz/gui/GLinePanel;->setBorder(IIII)V

    .line 125
    new-instance v0, Lcom/hz/gui/GLabel;

    new-array v3, v10, [I

    invoke-direct {v0, v3}, Lcom/hz/gui/GLabel;-><init>([I)V

    .line 126
    .local v0, "label":Lcom/hz/gui/GLabel;
    const-string v3, "\u8bf7\u9009\u62e9:"

    invoke-virtual {v0, v3, v7, v7, v9}, Lcom/hz/gui/GLabel;->setData(Ljava/lang/String;III)V

    .line 128
    invoke-static {}, Lcom/hz/test/ui/TestMenu;->getWindow()Lcom/hz/gui/GWindow;

    move-result-object v2

    .line 130
    .local v2, "window":Lcom/hz/gui/GWindow;
    invoke-virtual {v1, v0}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 131
    invoke-virtual {v1, v2}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 132
    invoke-virtual {v1}, Lcom/hz/gui/GLinePanel;->layout()V

    .line 133
    invoke-virtual {v1}, Lcom/hz/gui/GLinePanel;->setAbs()V

    .line 134
    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    invoke-virtual {v1}, Lcom/hz/gui/GLinePanel;->getW()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 135
    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {v1}, Lcom/hz/gui/GLinePanel;->getH()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 134
    invoke-virtual {v1, v3, v4}, Lcom/hz/gui/GLinePanel;->setPos(II)V

    .line 136
    invoke-static {v1}, Lcom/hz/ui/UIHandler;->createUI(Lcom/hz/gui/GContainer;)Lcom/hz/ui/UIHandler;

    .line 138
    return-void
.end method

.method public static testCase1_2()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x3

    .line 45
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    .line 47
    const-string v8, "\u88c5\u5907"

    aput-object v8, v7, v9

    .line 48
    const-string v8, "\u4e0e\u8eab\u4e0a\u88c5\u5907\u6bd4\u8f83"

    aput-object v8, v7, v12

    .line 49
    const-string v8, "\u5b9d\u77f3\u9576\u5d4c"

    aput-object v8, v7, v11

    .line 50
    const-string v8, "\u79fb\u52a8"

    aput-object v8, v7, v10

    .line 52
    const-string v8, "\u4e22\u5f03"

    aput-object v8, v7, v13

    .line 45
    sput-object v7, Lcom/hz/test/ui/TestMenu;->menu:[Ljava/lang/String;

    .line 54
    sget-object v7, Lcom/hz/test/ui/TestMenu;->menu:[Ljava/lang/String;

    invoke-static {v7}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v3, v7, 0x4

    .line 56
    .local v3, "menuMaxWidth":I
    const/16 v7, 0x15

    new-array v6, v7, [I

    .line 61
    .local v6, "windowData":[I
    new-instance v5, Lcom/hz/gui/GWindow;

    invoke-direct {v5, v6}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 62
    .local v5, "window":Lcom/hz/gui/GWindow;
    new-array v7, v13, [I

    fill-array-data v7, :array_0

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v9}, Lcom/hz/gui/GWindow;->setData([ILcom/hz/image/ImageSet;I)V

    .line 63
    invoke-virtual {v5, v10, v10, v10, v10}, Lcom/hz/gui/GWindow;->setBorder(IIII)V

    .line 66
    const/16 v7, 0x78

    invoke-virtual {v5, v7}, Lcom/hz/gui/GWindow;->setMaxHeight(I)V

    .line 68
    const/4 v7, -0x2

    invoke-static {v9, v11, v7, v10}, Lcom/hz/gui/GScrollBar;->getScrollBar(IIII)Lcom/hz/gui/GScrollBar;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/hz/gui/GWindow;->addScrollBar(Lcom/hz/gui/GScrollBar;)V

    .line 70
    const/16 v7, 0x200

    invoke-virtual {v5, v12, v7}, Lcom/hz/gui/GWindow;->setVLayout(II)V

    .line 72
    new-array v4, v11, [I

    fill-array-data v4, :array_1

    .line 74
    .local v4, "selectColorTable":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v7, Lcom/hz/test/ui/TestMenu;->menu:[Ljava/lang/String;

    array-length v7, v7

    if-lt v0, v7, :cond_1

    .line 94
    invoke-virtual {v5}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    .line 95
    invoke-virtual {v5}, Lcom/hz/gui/GWindow;->layout()V

    .line 96
    invoke-virtual {v5}, Lcom/hz/gui/GWindow;->setAbs()V

    .line 97
    sget v7, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    invoke-virtual {v5}, Lcom/hz/gui/GWindow;->getW()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    .line 98
    sget v8, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {v5}, Lcom/hz/gui/GWindow;->getH()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    .line 97
    invoke-virtual {v5, v7, v8}, Lcom/hz/gui/GWindow;->setPos(II)V

    .line 101
    iget-boolean v7, v5, Lcom/hz/gui/GWindow;->needScrollBar:Z

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Lcom/hz/gui/GWindow;->getScrollBar()Lcom/hz/gui/GScrollBar;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 103
    invoke-virtual {v5}, Lcom/hz/gui/GWindow;->getW()I

    move-result v7

    invoke-virtual {v5}, Lcom/hz/gui/GWindow;->getScrollBar()Lcom/hz/gui/GScrollBar;

    move-result-object v8

    invoke-virtual {v8}, Lcom/hz/gui/GScrollBar;->getMinW()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v5, v7}, Lcom/hz/gui/GWindow;->setW(I)V

    .line 104
    invoke-virtual {v5}, Lcom/hz/gui/GWindow;->refreshScrollBar()V

    .line 107
    :cond_0
    invoke-static {v5}, Lcom/hz/ui/UIHandler;->createUI(Lcom/hz/gui/GContainer;)Lcom/hz/ui/UIHandler;

    .line 108
    return-void

    .line 76
    :cond_1
    const/16 v7, 0x15

    new-array v2, v7, [I

    .line 80
    .local v2, "labelData":[I
    new-instance v1, Lcom/hz/gui/GLabel;

    invoke-direct {v1, v2}, Lcom/hz/gui/GLabel;-><init>([I)V

    .line 81
    .local v1, "label":Lcom/hz/gui/GLabel;
    sget-object v7, Lcom/hz/test/ui/TestMenu;->menu:[Ljava/lang/String;

    aget-object v7, v7, v0

    const v8, 0xfbf0c2

    const v9, 0xffffff

    invoke-virtual {v1, v7, v8, v9, v10}, Lcom/hz/gui/GLabel;->setData(Ljava/lang/String;III)V

    .line 82
    new-array v7, v11, [I

    fill-array-data v7, :array_2

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-virtual {v1, v7, v8, v9}, Lcom/hz/gui/GLabel;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 83
    invoke-virtual {v1, v12}, Lcom/hz/gui/GLabel;->setLeftRightBgColorDisable(Z)V

    .line 84
    invoke-virtual {v1, v4}, Lcom/hz/gui/GLabel;->setFocusColorTable([I)V

    .line 85
    new-array v7, v11, [I

    fill-array-data v7, :array_3

    invoke-virtual {v1, v7, v12}, Lcom/hz/gui/GLabel;->setLineColorTable([IZ)V

    .line 87
    invoke-virtual {v1, v3}, Lcom/hz/gui/GLabel;->setMinWidth(I)V

    .line 89
    invoke-virtual {v5, v1}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :array_0
    .array-data 4
        0x183b69
        0x2734
        0xc1e6f2
        0x183b69
    .end array-data

    .line 72
    :array_1
    .array-data 4
        0x85b912
        0xceefa8
    .end array-data

    .line 82
    :array_2
    .array-data 4
        0x48cb0
        0xaaf4d1
    .end array-data

    .line 85
    :array_3
    .array-data 4
        0x7088
        0x4f9000
    .end array-data
.end method

.method public static testCase2([Ljava/lang/String;[Ljava/lang/String;IIII)V
    .locals 0
    .param p0, "menu"    # [Ljava/lang/String;
    .param p1, "hotKeyMenu"    # [Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "maxWidth"    # I
    .param p5, "maxHeight"    # I

    .prologue
    .line 213
    return-void
.end method

.method public static testCase3()V
    .locals 11

    .prologue
    const/16 v10, 0x28

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 219
    const-string v3, "/common/"

    const/16 v4, 0x63

    invoke-static {v3, v4}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v3

    sput-object v3, Lcom/hz/test/ui/TestMenu;->imageSet:Lcom/hz/image/ImageSet;

    .line 220
    new-instance v1, Lcom/hz/gui/GLinePanel;

    new-array v3, v10, [I

    invoke-direct {v1, v3}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 221
    .local v1, "linePanel":Lcom/hz/gui/GLinePanel;
    new-array v3, v6, [I

    const v4, 0xffcd64

    aput v4, v3, v7

    const v4, 0xf5b036

    aput v4, v3, v8

    const v4, 0xd66f1b

    aput v4, v3, v9

    const/4 v4, 0x4

    .line 222
    const v5, 0xfffb85

    aput v5, v3, v4

    const/4 v4, 0x5

    const v5, 0xd66f1b

    aput v5, v3, v4

    const/4 v4, 0x6

    const v5, 0xf2ab1c

    aput v5, v3, v4

    const/4 v4, 0x7

    const v5, 0xf2ab1c

    aput v5, v3, v4

    const/4 v4, 0x0

    .line 221
    invoke-virtual {v1, v3, v4, v7}, Lcom/hz/gui/GLinePanel;->setData([ILcom/hz/image/ImageSet;I)V

    .line 223
    const/16 v3, 0x200

    invoke-virtual {v1, v8, v3}, Lcom/hz/gui/GLinePanel;->setVLayout(II)V

    .line 224
    invoke-virtual {v1, v6, v6, v6, v6}, Lcom/hz/gui/GLinePanel;->setBorder(IIII)V

    .line 227
    new-instance v0, Lcom/hz/gui/GLabel;

    new-array v3, v10, [I

    invoke-direct {v0, v3}, Lcom/hz/gui/GLabel;-><init>([I)V

    .line 228
    .local v0, "label":Lcom/hz/gui/GLabel;
    const-string v3, "\u8bf7\u9009\u62e9:"

    invoke-virtual {v0, v3, v7, v7, v9}, Lcom/hz/gui/GLabel;->setData(Ljava/lang/String;III)V

    .line 230
    invoke-static {}, Lcom/hz/test/ui/TestMenu;->getWindow2()Lcom/hz/gui/GWindow;

    move-result-object v2

    .line 232
    .local v2, "window":Lcom/hz/gui/GWindow;
    invoke-virtual {v1, v0}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 233
    invoke-virtual {v1, v2}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 234
    invoke-virtual {v1}, Lcom/hz/gui/GLinePanel;->layout()V

    .line 235
    invoke-virtual {v1}, Lcom/hz/gui/GLinePanel;->setAbs()V

    .line 236
    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    invoke-virtual {v1}, Lcom/hz/gui/GLinePanel;->getW()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 237
    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {v1}, Lcom/hz/gui/GLinePanel;->getH()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 236
    invoke-virtual {v1, v3, v4}, Lcom/hz/gui/GLinePanel;->setPos(II)V

    .line 238
    invoke-static {v1}, Lcom/hz/ui/UIHandler;->createUI(Lcom/hz/gui/GContainer;)Lcom/hz/ui/UIHandler;

    .line 239
    return-void
.end method
