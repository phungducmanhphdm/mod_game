.class public Ljavax/microedition/lcdui/Form;
.super Ljavax/microedition/lcdui/Screen;
.source "Form.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/microedition/lcdui/Form$_cls1;
    }
.end annotation


# instance fields
.field private final WC:I

.field private buttonArea:Landroid/widget/TableLayout;

.field private items:Ljava/util/List;

.field private linearView:Landroid/widget/LinearLayout;

.field private midlet:Ljavax/microedition/midlet/MIDlet;

.field private title:Ljava/lang/String;

.field private titleView:Landroid/widget/TextView;

.field private view:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-direct {p0}, Ljavax/microedition/lcdui/Screen;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Ljavax/microedition/lcdui/Form;->WC:I

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    .line 18
    iput-object p1, p0, Ljavax/microedition/lcdui/Form;->title:Ljava/lang/String;

    .line 19
    new-instance v0, Landroid/widget/TextView;

    sget-object v1, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljavax/microedition/lcdui/Form;->titleView:Landroid/widget/TextView;

    .line 20
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->titleView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 22
    sget-object v0, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lcom/lori/android/lcdui/Toolkit;

    iget-object v1, p0, Ljavax/microedition/lcdui/Form;->titleView:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Lcom/lori/android/lcdui/Toolkit;->setDefualTypeface(Landroid/widget/TextView;)V

    .line 23
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->titleView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljavax/microedition/lcdui/Item;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "aitem"    # [Ljavax/microedition/lcdui/Item;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Form;-><init>(Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    .line 32
    .local v0, "i":I
    :goto_0
    array-length v2, p2

    .line 33
    .local v2, "j":I
    if-ge v0, v2, :cond_0

    .line 35
    aget-object v1, p2, v0

    .line 36
    .local v1, "item":Ljavax/microedition/lcdui/Item;
    invoke-virtual {p0, v1}, Ljavax/microedition/lcdui/Form;->append(Ljavax/microedition/lcdui/Item;)I

    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    goto :goto_0

    .line 40
    .end local v1    # "item":Ljavax/microedition/lcdui/Item;
    :cond_0
    return-void
.end method

.method static synthetic access$0(Ljavax/microedition/lcdui/Form;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Ljavax/microedition/lcdui/Form;)Ljava/util/List;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Ljavax/microedition/lcdui/Form;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->linearView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private addButtonArea()V
    .locals 33

    .prologue
    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/Form;->midlet:Ljavax/microedition/midlet/MIDlet;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljavax/microedition/midlet/MIDlet;->getToolkit()Lcom/lori/android/lcdui/Toolkit;

    move-result-object v28

    .line 56
    .local v28, "toolkit":Lcom/lori/android/lcdui/Toolkit;
    const-string v29, "layout.commandarea"

    invoke-interface/range {v28 .. v29}, Lcom/lori/android/lcdui/Toolkit;->getResourceId(Ljava/lang/String;)I

    move-result v13

    .line 57
    .local v13, "i":I
    move-object/from16 v0, v28

    invoke-interface {v0, v13}, Lcom/lori/android/lcdui/Toolkit;->inflate(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TableLayout;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/microedition/lcdui/Form;->buttonArea:Landroid/widget/TableLayout;

    .line 58
    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v15

    .line 59
    .local v15, "j":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/Form;->buttonArea:Landroid/widget/TableLayout;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/widget/TableLayout;->setPadding(IIII)V

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/Form;->buttonArea:Landroid/widget/TableLayout;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TableLayout;->setStretchAllColumns(Z)V

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/Form;->linearView:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/Form;->buttonArea:Landroid/widget/TableLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/Form;->commands:Ljava/util/Vector;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/Vector;->size()I

    move-result v17

    .line 64
    .local v17, "k":I
    const/4 v11, 0x3

    .line 65
    .local v11, "byte1":B
    div-int v18, v17, v11

    .line 66
    .local v18, "l":I
    rem-int v29, v17, v11

    if-lez v29, :cond_0

    .line 67
    add-int/lit8 v18, v18, 0x1

    .line 68
    :cond_0
    move/from16 v0, v18

    new-array v9, v0, [Landroid/widget/TableRow;

    .line 69
    .local v9, "atablerow":[Landroid/widget/TableRow;
    const/4 v14, 0x0

    .line 70
    .local v14, "i1":I
    const/16 v24, 0x0

    .line 71
    .local v24, "tablerow":Landroid/widget/TableRow;
    const/16 v16, 0x0

    .line 76
    .local v16, "j1":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_1

    .line 77
    return-void

    .line 82
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/Form;->commands:Ljava/util/Vector;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavax/microedition/lcdui/Command;

    .line 83
    .local v12, "command":Ljavax/microedition/lcdui/Command;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/Form;->midlet:Ljavax/microedition/midlet/MIDlet;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 84
    .local v5, "activity":Landroid/app/Activity;
    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 85
    .local v10, "button":Landroid/widget/Button;
    invoke-virtual {v12}, Ljavax/microedition/lcdui/Command;->getLabel()Ljava/lang/String;

    move-result-object v20

    .line 86
    .local v20, "s":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 87
    sget-object v29, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lcom/lori/android/lcdui/Toolkit;

    move-object/from16 v0, v29

    invoke-interface {v0, v10}, Lcom/lori/android/lcdui/Toolkit;->setDefualTypeface(Landroid/widget/TextView;)V

    .line 88
    new-instance v4, Ljavax/microedition/lcdui/Form$_cls1;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v4, v0, v1, v12}, Ljavax/microedition/lcdui/Form$_cls1;-><init>(Ljavax/microedition/lcdui/Form;Ljavax/microedition/lcdui/Form;Ljavax/microedition/lcdui/Command;)V

    .line 89
    .local v4, "_lcls1":Ljavax/microedition/lcdui/Form$_cls1;
    invoke-virtual {v10, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    rem-int v29, v16, v11

    if-nez v29, :cond_2

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/Form;->midlet:Ljavax/microedition/midlet/MIDlet;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 93
    .local v6, "activity1":Landroid/app/Activity;
    new-instance v25, Landroid/widget/TableRow;

    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 94
    .local v25, "tablerow1":Landroid/widget/TableRow;
    aput-object v25, v9, v14

    .line 95
    aget-object v24, v9, v14

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/Form;->buttonArea:Landroid/widget/TableLayout;

    move-object/from16 v23, v0

    .line 98
    .local v23, "tablelayout3":Landroid/widget/TableLayout;
    new-instance v19, Landroid/widget/TableLayout$LayoutParams;

    .line 99
    const/16 v29, -0x1

    .line 100
    const/16 v30, -0x1

    .line 98
    move-object/from16 v0, v19

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    .line 102
    .local v19, "layoutparams":Landroid/widget/TableLayout$LayoutParams;
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    .end local v6    # "activity1":Landroid/app/Activity;
    .end local v19    # "layoutparams":Landroid/widget/TableLayout$LayoutParams;
    .end local v23    # "tablelayout3":Landroid/widget/TableLayout;
    .end local v25    # "tablerow1":Landroid/widget/TableRow;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/Form;->title:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 105
    .local v21, "s1":Ljava/lang/String;
    const-string v29, "\u9359\u6226"

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3

    .line 107
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 108
    add-int/lit8 v16, v16, 0x1

    .line 109
    goto/16 :goto_0

    .line 112
    :cond_3
    invoke-virtual {v12}, Ljavax/microedition/lcdui/Command;->getLabel()Ljava/lang/String;

    move-result-object v22

    .line 113
    .local v22, "s2":Ljava/lang/String;
    const-string v29, "\u6769"

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4

    .line 115
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 116
    add-int/lit8 v16, v16, 0x1

    .line 117
    goto/16 :goto_0

    .line 120
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/Form;->midlet:Ljavax/microedition/midlet/MIDlet;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 121
    .local v7, "activity2":Landroid/app/Activity;
    new-instance v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 122
    .local v26, "textview":Landroid/widget/TextView;
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/Form;->midlet:Ljavax/microedition/midlet/MIDlet;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 124
    .local v8, "activity3":Landroid/app/Activity;
    new-instance v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 125
    .local v27, "textview1":Landroid/widget/TextView;
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 126
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 127
    add-int/lit8 v16, v16, 0x1

    .line 74
    goto/16 :goto_0
.end method


# virtual methods
.method public append(Ljava/lang/String;)I
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->midlet:Ljavax/microedition/midlet/MIDlet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->linearView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDlet;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ljavax/microedition/lcdui/Form$2;

    invoke-direct {v1, p0, p1}, Ljavax/microedition/lcdui/Form$2;-><init>(Ljavax/microedition/lcdui/Form;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public append(Ljavax/microedition/lcdui/Image;)I
    .locals 2
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 184
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->midlet:Ljavax/microedition/midlet/MIDlet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->linearView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDlet;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ljavax/microedition/lcdui/Form$1;

    invoke-direct {v1, p0, p1}, Ljavax/microedition/lcdui/Form$1;-><init>(Ljavax/microedition/lcdui/Form;Ljavax/microedition/lcdui/Image;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public append(Ljavax/microedition/lcdui/Item;)I
    .locals 2
    .param p1, "item"    # Ljavax/microedition/lcdui/Item;

    .prologue
    .line 212
    if-eqz p1, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->midlet:Ljavax/microedition/midlet/MIDlet;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->midlet:Ljavax/microedition/midlet/MIDlet;

    iget-object v1, p0, Ljavax/microedition/lcdui/Form;->view:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0, v1}, Ljavax/microedition/lcdui/Item;->init(Ljavax/microedition/midlet/MIDlet;Landroid/view/ViewGroup;)V

    .line 218
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->midlet:Ljavax/microedition/midlet/MIDlet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->linearView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDlet;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ljavax/microedition/lcdui/Form$3;

    invoke-direct {v1, p0, p1}, Ljavax/microedition/lcdui/Form$3;-><init>(Ljavax/microedition/lcdui/Form;Ljavax/microedition/lcdui/Item;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 226
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public deleteAll()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->midlet:Ljavax/microedition/midlet/MIDlet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->linearView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDlet;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ljavax/microedition/lcdui/Form$4;

    invoke-direct {v1, p0}, Ljavax/microedition/lcdui/Form$4;-><init>(Ljavax/microedition/lcdui/Form;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 371
    :cond_0
    return-void
.end method

.method public disposeDisplayable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 236
    const/4 v0, 0x0

    .line 239
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 240
    .local v1, "j":I
    if-ge v0, v1, :cond_0

    .line 242
    iget-object v2, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/microedition/lcdui/Item;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Item;->dispose()V

    .line 243
    add-int/lit8 v0, v0, 0x1

    .line 244
    goto :goto_0

    .line 246
    :cond_0
    iput-object v3, p0, Ljavax/microedition/lcdui/Form;->midlet:Ljavax/microedition/midlet/MIDlet;

    .line 247
    iput-object v3, p0, Ljavax/microedition/lcdui/Form;->view:Landroid/widget/ScrollView;

    .line 248
    return-void
.end method

.method public get(I)Ljavax/microedition/lcdui/Item;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 255
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Item;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->view:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public initDisplayable(Ljavax/microedition/midlet/MIDlet;)V
    .locals 10
    .param p1, "midlet1"    # Ljavax/microedition/midlet/MIDlet;

    .prologue
    const/4 v9, 0x1

    .line 271
    iget-object v7, p0, Ljavax/microedition/lcdui/Form;->view:Landroid/widget/ScrollView;

    if-eqz v7, :cond_0

    .line 274
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Form.initDisplayable() view != null,only requestFocus()"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 275
    iget-object v7, p0, Ljavax/microedition/lcdui/Form;->view:Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->requestFocus()Z

    .line 310
    :goto_0
    return-void

    .line 278
    :cond_0
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Form.initDisplayable() New Form View!!!!!!!!!!!!!!!!!!!"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1}, Ljavax/microedition/midlet/MIDlet;->getToolkit()Lcom/lori/android/lcdui/Toolkit;

    move-result-object v6

    .line 280
    .local v6, "toolkit":Lcom/lori/android/lcdui/Toolkit;
    const-string v7, "layout.scrollview"

    invoke-interface {v6, v7}, Lcom/lori/android/lcdui/Toolkit;->getResourceId(Ljava/lang/String;)I

    move-result v0

    .line 283
    .local v0, "i":I
    invoke-interface {v6, v0}, Lcom/lori/android/lcdui/Toolkit;->inflate(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    .line 284
    .local v5, "scrollview":Landroid/widget/ScrollView;
    iput-object v5, p0, Ljavax/microedition/lcdui/Form;->view:Landroid/widget/ScrollView;

    .line 287
    const-string v7, "layout.linearlayout"

    invoke-interface {v6, v7}, Lcom/lori/android/lcdui/Toolkit;->getResourceId(Ljava/lang/String;)I

    move-result v2

    .line 288
    .local v2, "j":I
    invoke-interface {v6, v2}, Lcom/lori/android/lcdui/Toolkit;->inflate(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 289
    .local v4, "linearlayout":Landroid/widget/LinearLayout;
    iput-object v4, p0, Ljavax/microedition/lcdui/Form;->linearView:Landroid/widget/LinearLayout;

    .line 291
    iget-object v7, p0, Ljavax/microedition/lcdui/Form;->view:Landroid/widget/ScrollView;

    invoke-virtual {v7, v9}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 292
    iget-object v7, p0, Ljavax/microedition/lcdui/Form;->view:Landroid/widget/ScrollView;

    invoke-virtual {v7, v9}, Landroid/widget/ScrollView;->setFocusableInTouchMode(Z)V

    .line 293
    iget-object v7, p0, Ljavax/microedition/lcdui/Form;->view:Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->requestFocus()Z

    .line 295
    iput-object p1, p0, Ljavax/microedition/lcdui/Form;->midlet:Ljavax/microedition/midlet/MIDlet;

    .line 297
    iget-object v7, p0, Ljavax/microedition/lcdui/Form;->titleView:Landroid/widget/TextView;

    iget-object v8, p0, Ljavax/microedition/lcdui/Form;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v7, p0, Ljavax/microedition/lcdui/Form;->view:Landroid/widget/ScrollView;

    iget-object v8, p0, Ljavax/microedition/lcdui/Form;->linearView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 299
    iget-object v7, p0, Ljavax/microedition/lcdui/Form;->linearView:Landroid/widget/LinearLayout;

    iget-object v8, p0, Ljavax/microedition/lcdui/Form;->titleView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 302
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    iget-object v7, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v3, v7, :cond_1

    .line 308
    invoke-direct {p0}, Ljavax/microedition/lcdui/Form;->addButtonArea()V

    goto :goto_0

    .line 304
    :cond_1
    iget-object v7, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/microedition/lcdui/Item;

    .line 305
    .local v1, "item":Ljavax/microedition/lcdui/Item;
    iget-object v7, p0, Ljavax/microedition/lcdui/Form;->linearView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v7}, Ljavax/microedition/lcdui/Item;->init(Ljavax/microedition/midlet/MIDlet;Landroid/view/ViewGroup;)V

    .line 306
    iget-object v7, p0, Ljavax/microedition/lcdui/Form;->linearView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Item;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 302
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public insert(ILjavax/microedition/lcdui/Item;)V
    .locals 11
    .param p1, "i"    # I
    .param p2, "item"    # Ljavax/microedition/lcdui/Item;

    .prologue
    .line 314
    iget-object v9, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    .line 315
    .local v1, "j":I
    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    .line 316
    :cond_0
    new-instance v9, Ljava/lang/IndexOutOfBoundsException;

    const-string v10, "item number is outside range of Form"

    invoke-direct {v9, v10}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 317
    :cond_1
    if-eqz p2, :cond_2

    iget-object v9, p0, Ljavax/microedition/lcdui/Form;->midlet:Ljavax/microedition/midlet/MIDlet;

    if-eqz v9, :cond_2

    .line 319
    iget-object v9, p0, Ljavax/microedition/lcdui/Form;->linearView:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v0, "arraylist":Ljava/util/ArrayList;
    iget-object v9, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 322
    .local v5, "list":Ljava/util/List;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 323
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v7, p0, Ljavax/microedition/lcdui/Form;->midlet:Ljavax/microedition/midlet/MIDlet;

    .line 325
    .local v7, "midlet1":Ljavax/microedition/midlet/MIDlet;
    iget-object v3, p0, Ljavax/microedition/lcdui/Form;->linearView:Landroid/widget/LinearLayout;

    .line 326
    .local v3, "linearlayout":Landroid/widget/LinearLayout;
    invoke-virtual {p2, v7, v3}, Ljavax/microedition/lcdui/Item;->init(Ljavax/microedition/midlet/MIDlet;Landroid/view/ViewGroup;)V

    .line 327
    iget-object v9, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    invoke-interface {v9, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    .line 328
    .local v6, "list1":Ljava/util/List;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 329
    iput-object v0, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    .line 330
    iget-object v9, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    .line 331
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-lt v2, v1, :cond_3

    .line 338
    invoke-direct {p0}, Ljavax/microedition/lcdui/Form;->addButtonArea()V

    .line 340
    .end local v0    # "arraylist":Ljava/util/ArrayList;
    .end local v2    # "k":I
    .end local v3    # "linearlayout":Landroid/widget/LinearLayout;
    .end local v5    # "list":Ljava/util/List;
    .end local v6    # "list1":Ljava/util/List;
    .end local v7    # "midlet1":Ljavax/microedition/midlet/MIDlet;
    :cond_2
    return-void

    .line 333
    .restart local v0    # "arraylist":Ljava/util/ArrayList;
    .restart local v2    # "k":I
    .restart local v3    # "linearlayout":Landroid/widget/LinearLayout;
    .restart local v5    # "list":Ljava/util/List;
    .restart local v6    # "list1":Ljava/util/List;
    .restart local v7    # "midlet1":Ljavax/microedition/midlet/MIDlet;
    :cond_3
    iget-object v4, p0, Ljavax/microedition/lcdui/Form;->linearView:Landroid/widget/LinearLayout;

    .line 334
    .local v4, "linearlayout1":Landroid/widget/LinearLayout;
    iget-object v9, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/microedition/lcdui/Item;

    invoke-virtual {v9}, Ljavax/microedition/lcdui/Item;->getView()Landroid/view/View;

    move-result-object v8

    .line 335
    .local v8, "view1":Landroid/view/View;
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 331
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Ljavax/microedition/lcdui/Form;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 349
    iput-object p1, p0, Ljavax/microedition/lcdui/Form;->title:Ljava/lang/String;

    .line 355
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->midlet:Ljavax/microedition/midlet/MIDlet;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDlet;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
