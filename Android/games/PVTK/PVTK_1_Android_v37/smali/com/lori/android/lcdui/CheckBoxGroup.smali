.class public Lcom/lori/android/lcdui/CheckBoxGroup;
.super Lcom/lori/android/lcdui/GroupItem;
.source "CheckBoxGroup.java"


# instance fields
.field private checkBoxAdpt:Landroid/widget/ArrayAdapter;

.field private fitPolicy:I

.field private highlightedItemIndex:I

.field private listView:Landroid/widget/ListView;

.field private midlet:Ljavax/microedition/midlet/MIDlet;

.field private numOfItems:I

.field private titleView:Landroid/widget/TextView;

.field private view:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 21
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct/range {p0 .. p1}, Lcom/lori/android/lcdui/GroupItem;-><init>(Ljava/lang/String;)V

    .line 16
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lori/android/lcdui/CheckBoxGroup;->numOfItems:I

    .line 17
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lori/android/lcdui/CheckBoxGroup;->highlightedItemIndex:I

    .line 18
    sget-object v3, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    .line 19
    .local v3, "activity":Landroid/app/Activity;
    new-instance v11, Landroid/widget/ListView;

    invoke-direct {v11, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 20
    .local v11, "listview":Landroid/widget/ListView;
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/lori/android/lcdui/CheckBoxGroup;->listView:Landroid/widget/ListView;

    .line 21
    sget-object v4, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    .line 24
    .local v4, "activity1":Landroid/app/Activity;
    new-instance v2, Lcom/lori/android/lcdui/CheckBoxGroup$1;

    .line 25
    const v19, 0x7f03000b

    .line 24
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v2, v0, v3, v1}, Lcom/lori/android/lcdui/CheckBoxGroup$1;-><init>(Lcom/lori/android/lcdui/CheckBoxGroup;Landroid/content/Context;I)V

    .line 33
    .local v2, "ArrayAdapter":Landroid/widget/ArrayAdapter;
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lori/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    .line 34
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lori/android/lcdui/CheckBoxGroup;->listView:Landroid/widget/ListView;

    .line 35
    .local v12, "listview1":Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lori/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    .line 36
    .local v6, "arrayadapter":Landroid/widget/ArrayAdapter;
    invoke-virtual {v12, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    sget-object v5, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    .line 38
    .local v5, "activity2":Landroid/app/Activity;
    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 39
    .local v14, "textview":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/lori/android/lcdui/CheckBoxGroup;->titleView:Landroid/widget/TextView;

    .line 40
    sget-object v17, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lcom/lori/android/lcdui/Toolkit;

    .line 41
    .local v17, "toolkit":Lcom/lori/android/lcdui/Toolkit;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lori/android/lcdui/CheckBoxGroup;->titleView:Landroid/widget/TextView;

    .line 42
    .local v15, "textview1":Landroid/widget/TextView;
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Lcom/lori/android/lcdui/Toolkit;->setDefualTypeface(Landroid/widget/TextView;)V

    .line 43
    sget-object v18, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lcom/lori/android/lcdui/Toolkit;

    .line 44
    .local v18, "toolkit1":Lcom/lori/android/lcdui/Toolkit;
    sget-object v19, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lcom/lori/android/lcdui/Toolkit;

    const-string v20, "layout.linearlayout"

    invoke-interface/range {v19 .. v20}, Lcom/lori/android/lcdui/Toolkit;->getResourceId(Ljava/lang/String;)I

    move-result v7

    .line 45
    .local v7, "i":I
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Lcom/lori/android/lcdui/Toolkit;->inflate(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 46
    .local v8, "linearlayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/lori/android/lcdui/CheckBoxGroup;->view:Landroid/widget/LinearLayout;

    .line 47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lori/android/lcdui/CheckBoxGroup;->titleView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lori/android/lcdui/CheckBoxGroup;->view:Landroid/widget/LinearLayout;

    .line 49
    .local v9, "linearlayout1":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lori/android/lcdui/CheckBoxGroup;->titleView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    .line 50
    .local v16, "textview2":Landroid/widget/TextView;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lori/android/lcdui/CheckBoxGroup;->view:Landroid/widget/LinearLayout;

    .line 52
    .local v10, "linearlayout2":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lori/android/lcdui/CheckBoxGroup;->listView:Landroid/widget/ListView;

    .line 53
    .local v13, "listview2":Landroid/widget/ListView;
    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "as"    # [Ljava/lang/String;
    .param p3, "aimage"    # [Ljavax/microedition/lcdui/Image;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/lori/android/lcdui/CheckBoxGroup;-><init>(Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x0

    .line 62
    .local v0, "i":I
    :goto_0
    array-length v2, p2

    .line 63
    .local v2, "j":I
    if-ge v0, v2, :cond_1

    .line 65
    if-nez p3, :cond_0

    .line 67
    aget-object v3, p2, v0

    .line 68
    .local v3, "s1":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/lori/android/lcdui/CheckBoxGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    .line 75
    .end local v3    # "s1":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 76
    goto :goto_0

    .line 71
    :cond_0
    aget-object v4, p2, v0

    .line 72
    .local v4, "s2":Ljava/lang/String;
    aget-object v1, p3, v0

    .line 73
    .local v1, "image":Ljavax/microedition/lcdui/Image;
    invoke-virtual {p0, v4, v1}, Lcom/lori/android/lcdui/CheckBoxGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    goto :goto_1

    .line 78
    .end local v1    # "image":Ljavax/microedition/lcdui/Image;
    .end local v4    # "s2":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "image"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 85
    iget v0, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->numOfItems:I

    .line 86
    .local v0, "i":I
    invoke-virtual {p0, v0, p1, p2}, Lcom/lori/android/lcdui/CheckBoxGroup;->insert(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V

    .line 87
    iget v1, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->numOfItems:I

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public delete(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    .line 93
    .local v0, "arrayadapter":Landroid/widget/ArrayAdapter;
    iget-object v3, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 94
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 95
    iget v3, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->numOfItems:I

    add-int/lit8 v1, v3, -0x1

    .line 96
    .local v1, "j":I
    iput v1, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->numOfItems:I

    .line 97
    iget-object v3, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 98
    return-void
.end method

.method public deleteAll()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->numOfItems:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->highlightedItemIndex:I

    .line 104
    iget-object v0, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 105
    iget-object v0, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 106
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public getFitPolicy()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->fitPolicy:I

    return v0
.end method

.method public getFont(I)Ljavax/microedition/lcdui/Font;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImage(I)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedFlags([Z)I
    .locals 7
    .param p1, "aflag"    # [Z

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 131
    :cond_0
    array-length v0, p1

    .line 132
    .local v0, "i":I
    iget v5, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->numOfItems:I

    .line 133
    .local v5, "l":I
    if-ge v0, v5, :cond_1

    .line 134
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 135
    :cond_1
    const/4 v1, 0x0

    .line 136
    .local v1, "i1":I
    const/4 v3, 0x0

    .line 139
    .local v3, "j1":I
    :goto_0
    array-length v2, p1

    .line 140
    .local v2, "j":I
    if-ge v3, v2, :cond_4

    .line 143
    iget v6, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->numOfItems:I

    if-ge v3, v6, :cond_3

    .line 144
    iget-object v6, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isSelected()Z

    move-result v4

    .line 148
    .local v4, "k":Z
    :goto_1
    aput-boolean v4, p1, v3

    .line 149
    aget-boolean v6, p1, v3

    if-eqz v6, :cond_2

    .line 150
    add-int/lit8 v1, v1, 0x1

    .line 151
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 152
    goto :goto_0

    .line 146
    .end local v4    # "k":Z
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "k":Z
    goto :goto_1

    .line 154
    .end local v4    # "k":Z
    :cond_4
    return v1
.end method

.method public getSelectedIndex()I
    .locals 4

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 165
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->numOfItems:I

    .line 167
    .local v1, "j":I
    if-lt v0, v1, :cond_1

    .line 168
    const/4 v0, -0x1

    .line 176
    .end local v0    # "i":I
    :cond_0
    return v0

    .line 171
    .restart local v0    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isSelected()Z

    move-result v2

    .line 172
    .local v2, "select":Z
    if-nez v2, :cond_0

    .line 173
    add-int/lit8 v0, v0, 0x1

    .line 174
    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->view:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public init(Ljavax/microedition/midlet/MIDlet;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "midlet1"    # Ljavax/microedition/midlet/MIDlet;
    .param p2, "viewgroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->midlet:Ljavax/microedition/midlet/MIDlet;

    .line 213
    invoke-virtual {p1}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 214
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Ljavax/microedition/midlet/MIDlet;->getToolkit()Lcom/lori/android/lcdui/Toolkit;

    move-result-object v3

    .line 215
    .local v3, "toolkit":Lcom/lori/android/lcdui/Toolkit;
    const-string v4, "layout.midpform"

    invoke-interface {v3, v4}, Lcom/lori/android/lcdui/Toolkit;->getResourceId(Ljava/lang/String;)I

    move-result v1

    .line 216
    .local v1, "i":I
    invoke-interface {v3, v1}, Lcom/lori/android/lcdui/Toolkit;->inflate(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 217
    .local v2, "linearlayout":Landroid/widget/LinearLayout;
    return-void
.end method

.method public insert(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V
    .locals 6
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "image"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 223
    if-ltz p1, :cond_0

    .line 225
    iget v2, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->numOfItems:I

    .line 226
    .local v2, "j":I
    if-gt p1, v2, :cond_0

    .line 231
    if-nez p2, :cond_1

    .line 233
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 229
    .end local v2    # "j":I
    :cond_0
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 236
    .restart local v2    # "j":I
    :cond_1
    sget-object v0, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    .line 237
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/widget/CheckBox;

    invoke-direct {v1, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 238
    .local v1, "checkbox":Landroid/widget/CheckBox;
    invoke-virtual {v1, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v5, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v1, p1}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 240
    iget v3, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->numOfItems:I

    .line 241
    .local v3, "k":I
    const/4 v4, 0x0

    .line 242
    .local v4, "l":I
    add-int/lit8 v4, v4, 0x1

    .line 243
    iput v3, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->numOfItems:I

    .line 244
    iget-object v5, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 245
    return-void
.end method

.method public isSelected(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isSelected()Z

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "image"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 257
    return-void
.end method

.method public setFitPolicy(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 261
    iput p1, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->fitPolicy:I

    .line 262
    return-void
.end method

.method public setFont(ILjavax/microedition/lcdui/Font;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "font"    # Ljavax/microedition/lcdui/Font;

    .prologue
    .line 266
    return-void
.end method

.method public setSelectedFlags([Z)V
    .locals 7
    .param p1, "aflag"    # [Z

    .prologue
    .line 270
    const/4 v0, 0x1

    .line 272
    .local v0, "flag":Z
    if-nez p1, :cond_0

    .line 273
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 275
    :cond_0
    array-length v1, p1

    .line 276
    .local v1, "i":I
    iget v3, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->numOfItems:I

    .line 277
    .local v3, "j":I
    if-ge v1, v3, :cond_1

    .line 278
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 281
    :cond_1
    iget v6, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->numOfItems:I

    if-nez v6, :cond_3

    .line 303
    :cond_2
    :goto_0
    return-void

    .line 285
    :cond_3
    const/4 v4, -0x1

    .line 286
    .local v4, "k":I
    const/4 v5, 0x0

    .line 291
    .local v5, "l":I
    :goto_1
    iget v2, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->numOfItems:I

    .line 292
    .local v2, "i1":I
    if-ge v5, v2, :cond_5

    .line 294
    aget-boolean v6, p1, v5

    if-nez v6, :cond_4

    .line 306
    add-int/lit8 v5, v5, 0x1

    .line 308
    goto :goto_1

    .line 296
    :cond_4
    invoke-virtual {p0, v5, v0}, Lcom/lori/android/lcdui/CheckBoxGroup;->setSelectedIndex(IZ)V

    .line 297
    move v4, v5

    .line 299
    :cond_5
    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    .line 300
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v0}, Lcom/lori/android/lcdui/CheckBoxGroup;->setSelectedIndex(IZ)V

    goto :goto_0
.end method

.method public setSelectedIndex(IZ)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "flag"    # Z

    .prologue
    .line 313
    iget-object v0, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 314
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/lori/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    return v0
.end method
