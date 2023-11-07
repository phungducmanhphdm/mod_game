.class public Ljavax/microedition/lcdui/StringItem;
.super Ljavax/microedition/lcdui/Item;
.source "StringItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private appearanceMode:I

.field private labelView:Landroid/widget/TextView;

.field private midlet:Ljavax/microedition/midlet/MIDlet;

.field private text:Ljava/lang/String;

.field private textView:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "i"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljavax/microedition/lcdui/Item;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Ljavax/microedition/lcdui/StringItem;->setLabel(Ljava/lang/String;)V

    .line 30
    iput-object p2, p0, Ljavax/microedition/lcdui/StringItem;->text:Ljava/lang/String;

    .line 31
    iput p3, p0, Ljavax/microedition/lcdui/StringItem;->appearanceMode:I

    .line 32
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Ljavax/microedition/lcdui/StringItem;->view:Landroid/view/View;

    .line 37
    iput-object v0, p0, Ljavax/microedition/lcdui/StringItem;->textView:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Ljavax/microedition/lcdui/StringItem;->labelView:Landroid/widget/TextView;

    .line 39
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->view:Landroid/view/View;

    return-object v0
.end method

.method public init(Ljavax/microedition/midlet/MIDlet;Landroid/view/ViewGroup;)V
    .locals 20
    .param p1, "midlet1"    # Ljavax/microedition/midlet/MIDlet;
    .param p2, "viewgroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 53
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/microedition/lcdui/StringItem;->midlet:Ljavax/microedition/midlet/MIDlet;

    .line 54
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/midlet/MIDlet;->getToolkit()Lcom/lori/android/lcdui/Toolkit;

    move-result-object v13

    .line 55
    .local v13, "toolkit":Lcom/lori/android/lcdui/Toolkit;
    const-string v19, "layout.midpstringitem"

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Lcom/lori/android/lcdui/Toolkit;->getResourceId(Ljava/lang/String;)I

    move-result v2

    .line 56
    .local v2, "i":I
    invoke-interface {v13, v2}, Lcom/lori/android/lcdui/Toolkit;->inflate(I)Landroid/view/View;

    move-result-object v16

    .line 57
    .local v16, "view1":Landroid/view/View;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/microedition/lcdui/StringItem;->view:Landroid/view/View;

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/StringItem;->view:Landroid/view/View;

    move-object/from16 v17, v0

    .line 59
    .local v17, "view2":Landroid/view/View;
    const-string v19, "id.midpstringitem_value"

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Lcom/lori/android/lcdui/Toolkit;->getResourceId(Ljava/lang/String;)I

    move-result v3

    .line 60
    .local v3, "j":I
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 61
    .local v7, "textview":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iput-object v7, v0, Ljavax/microedition/lcdui/StringItem;->textView:Landroid/widget/TextView;

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/StringItem;->view:Landroid/view/View;

    move-object/from16 v18, v0

    .line 63
    .local v18, "view3":Landroid/view/View;
    const-string v19, "id.midpstringitem_label"

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Lcom/lori/android/lcdui/Toolkit;->getResourceId(Ljava/lang/String;)I

    move-result v4

    .line 64
    .local v4, "k":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 65
    .local v8, "textview1":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iput-object v8, v0, Ljavax/microedition/lcdui/StringItem;->labelView:Landroid/widget/TextView;

    .line 66
    move-object/from16 v0, p0

    iget-object v9, v0, Ljavax/microedition/lcdui/StringItem;->textView:Landroid/widget/TextView;

    .line 67
    .local v9, "textview2":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v5, v0, Ljavax/microedition/lcdui/StringItem;->text:Ljava/lang/String;

    .line 68
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    move-object/from16 v0, p0

    iget-object v10, v0, Ljavax/microedition/lcdui/StringItem;->labelView:Landroid/widget/TextView;

    .line 70
    .local v10, "textview3":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/StringItem;->getLabel()Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, "s1":Ljava/lang/String;
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    sget-object v14, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lcom/lori/android/lcdui/Toolkit;

    .line 73
    .local v14, "toolkit1":Lcom/lori/android/lcdui/Toolkit;
    move-object/from16 v0, p0

    iget-object v11, v0, Ljavax/microedition/lcdui/StringItem;->textView:Landroid/widget/TextView;

    .line 74
    .local v11, "textview4":Landroid/widget/TextView;
    invoke-interface {v14, v11}, Lcom/lori/android/lcdui/Toolkit;->setDefualTypeface(Landroid/widget/TextView;)V

    .line 75
    sget-object v15, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lcom/lori/android/lcdui/Toolkit;

    .line 76
    .local v15, "toolkit2":Lcom/lori/android/lcdui/Toolkit;
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/lcdui/StringItem;->labelView:Landroid/widget/TextView;

    .line 77
    .local v12, "textview5":Landroid/widget/TextView;
    invoke-interface {v15, v12}, Lcom/lori/android/lcdui/Toolkit;->setDefualTypeface(Landroid/widget/TextView;)V

    .line 78
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 82
    iget-object v4, p0, Ljavax/microedition/lcdui/StringItem;->textView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 84
    iget-object v2, p0, Ljavax/microedition/lcdui/StringItem;->textView:Landroid/widget/TextView;

    .line 85
    .local v2, "textview":Landroid/widget/TextView;
    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->text:Ljava/lang/String;

    .line 86
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .end local v0    # "s":Ljava/lang/String;
    .end local v2    # "textview":Landroid/widget/TextView;
    :cond_0
    iget-object v4, p0, Ljavax/microedition/lcdui/StringItem;->labelView:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 90
    iget-object v3, p0, Ljavax/microedition/lcdui/StringItem;->labelView:Landroid/widget/TextView;

    .line 91
    .local v3, "textview1":Landroid/widget/TextView;
    invoke-virtual {p0}, Ljavax/microedition/lcdui/StringItem;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "s1":Ljava/lang/String;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .end local v1    # "s1":Ljava/lang/String;
    .end local v3    # "textview1":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Item;->setLabel(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->labelView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDlet;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Ljavax/microedition/lcdui/StringItem;->text:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDlet;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    :cond_0
    return-void
.end method
