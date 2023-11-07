.class public Lcom/lori/android/lcdui/RadioBoxGroup;
.super Lcom/lori/android/lcdui/GroupItem;
.source "RadioBoxGroup.java"


# instance fields
.field private RadioBoxList:Landroid/widget/RadioGroup;

.field private fitPolicy:I

.field private midlet:Ljavax/microedition/midlet/MIDlet;

.field private titleView:Landroid/widget/TextView;

.field private view:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 16
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct/range {p0 .. p1}, Lcom/lori/android/lcdui/GroupItem;-><init>(Ljava/lang/String;)V

    .line 20
    sget-object v1, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    .line 21
    .local v1, "activity":Landroid/app/Activity;
    new-instance v7, Landroid/widget/RadioGroup;

    invoke-direct {v7, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 22
    .local v7, "radiogroup":Landroid/widget/RadioGroup;
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/lori/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    .line 23
    sget-object v2, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    .line 24
    .local v2, "activity1":Landroid/app/Activity;
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 25
    .local v9, "textview":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/lori/android/lcdui/RadioBoxGroup;->titleView:Landroid/widget/TextView;

    .line 26
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lori/android/lcdui/RadioBoxGroup;->titleView:Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    sget-object v12, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lcom/lori/android/lcdui/Toolkit;

    .line 28
    .local v12, "toolkit":Lcom/lori/android/lcdui/Toolkit;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lori/android/lcdui/RadioBoxGroup;->titleView:Landroid/widget/TextView;

    .line 29
    .local v10, "textview1":Landroid/widget/TextView;
    invoke-interface {v12, v10}, Lcom/lori/android/lcdui/Toolkit;->setDefualTypeface(Landroid/widget/TextView;)V

    .line 30
    sget-object v13, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lcom/lori/android/lcdui/Toolkit;

    .line 31
    .local v13, "toolkit1":Lcom/lori/android/lcdui/Toolkit;
    sget-object v14, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lcom/lori/android/lcdui/Toolkit;

    const-string v15, "layout.linearlayout"

    invoke-interface {v14, v15}, Lcom/lori/android/lcdui/Toolkit;->getResourceId(Ljava/lang/String;)I

    move-result v3

    .line 32
    .local v3, "i":I
    invoke-interface {v13, v3}, Lcom/lori/android/lcdui/Toolkit;->inflate(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 33
    .local v4, "linearlayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lori/android/lcdui/RadioBoxGroup;->view:Landroid/widget/LinearLayout;

    .line 34
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lori/android/lcdui/RadioBoxGroup;->view:Landroid/widget/LinearLayout;

    .line 35
    .local v5, "linearlayout1":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lori/android/lcdui/RadioBoxGroup;->titleView:Landroid/widget/TextView;

    .line 36
    .local v11, "textview2":Landroid/widget/TextView;
    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 37
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lori/android/lcdui/RadioBoxGroup;->view:Landroid/widget/LinearLayout;

    .line 38
    .local v6, "linearlayout2":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lori/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    .line 39
    .local v8, "radiogroup1":Landroid/widget/RadioGroup;
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/lori/android/lcdui/RadioBoxGroup;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "as"    # [Ljava/lang/String;
    .param p3, "aimage"    # [Ljavax/microedition/lcdui/Image;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/lori/android/lcdui/RadioBoxGroup;-><init>(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x0

    .line 53
    .local v0, "i":I
    :goto_0
    array-length v2, p2

    .line 54
    .local v2, "j":I
    if-ge v0, v2, :cond_1

    .line 56
    if-nez p3, :cond_0

    .line 58
    aget-object v3, p2, v0

    .line 59
    .local v3, "s1":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/lori/android/lcdui/RadioBoxGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    .line 66
    .end local v3    # "s1":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 67
    goto :goto_0

    .line 62
    :cond_0
    aget-object v4, p2, v0

    .line 63
    .local v4, "s2":Ljava/lang/String;
    aget-object v1, p3, v0

    .line 64
    .local v1, "image":Ljavax/microedition/lcdui/Image;
    invoke-virtual {p0, v4, v1}, Lcom/lori/android/lcdui/RadioBoxGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    goto :goto_1

    .line 69
    .end local v1    # "image":Ljavax/microedition/lcdui/Image;
    .end local v4    # "s2":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private getRadioBox(I)Landroid/widget/RadioButton;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lori/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "image"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/lori/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    .line 82
    .local v0, "i":I
    invoke-virtual {p0, v0, p1, p2}, Lcom/lori/android/lcdui/RadioBoxGroup;->insert(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V

    .line 83
    iget-object v1, p0, Lcom/lori/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public delete(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lori/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->removeViewAt(I)V

    .line 89
    return-void
.end method

.method public deleteAll()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lori/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 94
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public getFitPolicy()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/lori/android/lcdui/RadioBoxGroup;->fitPolicy:I

    return v0
.end method

.method public getFont(I)Ljavax/microedition/lcdui/Font;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImage(I)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedFlags([Z)I
    .locals 2
    .param p1, "aflag"    # [Z

    .prologue
    .line 117
    iget-object v1, p0, Lcom/lori/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 118
    .local v0, "i":I
    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    .line 119
    iget-object v1, p0, Lcom/lori/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    return v1
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lori/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/lori/android/lcdui/RadioBoxGroup;->getRadioBox(I)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lori/android/lcdui/RadioBoxGroup;->view:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public init(Ljavax/microedition/midlet/MIDlet;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "midlet1"    # Ljavax/microedition/midlet/MIDlet;
    .param p2, "viewgroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/lori/android/lcdui/RadioBoxGroup;->midlet:Ljavax/microedition/midlet/MIDlet;

    .line 140
    invoke-virtual {p1}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 141
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Ljavax/microedition/midlet/MIDlet;->getToolkit()Lcom/lori/android/lcdui/Toolkit;

    move-result-object v3

    .line 142
    .local v3, "toolkit":Lcom/lori/android/lcdui/Toolkit;
    const-string v4, "layout.midpform"

    invoke-interface {v3, v4}, Lcom/lori/android/lcdui/Toolkit;->getResourceId(Ljava/lang/String;)I

    move-result v1

    .line 143
    .local v1, "i":I
    invoke-interface {v3, v1}, Lcom/lori/android/lcdui/Toolkit;->inflate(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 144
    .local v2, "linearlayout":Landroid/widget/LinearLayout;
    return-void
.end method

.method public insert(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V
    .locals 10
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "image"    # Ljavax/microedition/lcdui/Image;

    .prologue
    const/4 v9, -0x1

    .line 152
    const/4 v2, 0x1

    .line 153
    .local v2, "flag":Z
    const/4 v1, -0x1

    .line 154
    .local v1, "byte0":B
    if-ltz p1, :cond_0

    .line 156
    iget-object v8, p0, Lcom/lori/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v8}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v3

    .line 157
    .local v3, "j":I
    if-gt p1, v3, :cond_0

    .line 164
    if-nez p2, :cond_1

    .line 165
    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    throw v8

    .line 160
    .end local v3    # "j":I
    :cond_0
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v8}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v8

    .line 168
    .restart local v3    # "j":I
    :cond_1
    sget-object v0, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    .line 169
    .local v0, "activity":Landroid/app/Activity;
    new-instance v6, Landroid/widget/RadioButton;

    invoke-direct {v6, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 170
    .local v6, "radiobutton":Landroid/widget/RadioButton;
    iget-object v8, p0, Lcom/lori/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v8}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v4

    .line 171
    .local v4, "k":I
    invoke-virtual {v6, v4}, Landroid/widget/RadioButton;->setId(I)V

    .line 172
    invoke-virtual {v6, p2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v7, p0, Lcom/lori/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    .line 175
    .local v7, "radiogroup":Landroid/widget/RadioGroup;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 178
    .local v5, "layoutparams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v7, v6, p1, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 179
    sget-object v8, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lcom/lori/android/lcdui/Toolkit;

    invoke-interface {v8, v6}, Lcom/lori/android/lcdui/Toolkit;->setDefualTypeface(Landroid/widget/TextView;)V

    .line 180
    iget-object v8, p0, Lcom/lori/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v8}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 181
    const/4 v8, 0x0

    invoke-virtual {p0, v8, v2}, Lcom/lori/android/lcdui/RadioBoxGroup;->setSelectedIndex(IZ)V

    .line 182
    :cond_2
    return-void
.end method

.method public isSelected(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/lori/android/lcdui/RadioBoxGroup;->getRadioBox(I)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isSelected()Z

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "image"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/lori/android/lcdui/RadioBoxGroup;->getRadioBox(I)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 192
    return-void
.end method

.method public setFitPolicy(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 196
    iput p1, p0, Lcom/lori/android/lcdui/RadioBoxGroup;->fitPolicy:I

    .line 197
    return-void
.end method

.method public setFont(ILjavax/microedition/lcdui/Font;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "font"    # Ljavax/microedition/lcdui/Font;

    .prologue
    .line 201
    return-void
.end method

.method public setSelectedFlags([Z)V
    .locals 4
    .param p1, "aflag"    # [Z

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "i":I
    const/4 v1, 0x0

    .line 211
    .local v1, "j":I
    :goto_0
    array-length v2, p1

    .line 212
    .local v2, "k":I
    if-ge v1, v2, :cond_1

    .line 214
    aget-boolean v3, p1, v1

    if-nez v3, :cond_0

    .line 221
    add-int/lit8 v1, v1, 0x1

    .line 222
    goto :goto_0

    .line 216
    :cond_0
    move v0, v1

    .line 218
    :cond_1
    iget-object v3, p0, Lcom/lori/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 219
    return-void
.end method

.method public setSelectedIndex(IZ)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "flag"    # Z

    .prologue
    .line 227
    if-eqz p2, :cond_0

    .line 229
    iget-object v1, p0, Lcom/lori/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    .line 230
    .local v1, "radiogroup":Landroid/widget/RadioGroup;
    invoke-direct {p0, p1}, Lcom/lori/android/lcdui/RadioBoxGroup;->getRadioBox(I)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    .line 231
    .local v0, "j":I
    sget-object v2, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    invoke-virtual {v2}, Lcom/lori/app/PipActivity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/lori/android/lcdui/RadioBoxGroup$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/lori/android/lcdui/RadioBoxGroup$1;-><init>(Lcom/lori/android/lcdui/RadioBoxGroup;Landroid/widget/RadioGroup;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    .end local v0    # "j":I
    .end local v1    # "radiogroup":Landroid/widget/RadioGroup;
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/lori/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    return v0
.end method
