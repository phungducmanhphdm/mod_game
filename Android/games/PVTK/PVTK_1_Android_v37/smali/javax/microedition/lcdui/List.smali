.class public Ljavax/microedition/lcdui/List;
.super Ljavax/microedition/lcdui/Screen;
.source "List.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final EXCLUSIVE:I = 0x0

.field public static final IMPLICIT:I = 0x1

.field private static final KEY_IMAGE:Ljava/lang/String; = "image"

.field private static final KEY_TEXT:Ljava/lang/String; = "text"

.field public static final MULTIPLE:I = 0x2

.field public static final POPUP:I = 0x3


# instance fields
.field private data:Ljava/util/ArrayList;

.field private listType:I

.field private midlet:Ljavax/microedition/midlet/MIDlet;

.field private selectCommand:Ljavax/microedition/lcdui/Command;

.field private selectedIndex:I

.field private title:Ljava/lang/String;

.field private view:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljavax/microedition/lcdui/Screen;-><init>()V

    .line 17
    iput-object p1, p0, Ljavax/microedition/lcdui/List;->title:Ljava/lang/String;

    .line 18
    iput p2, p0, Ljavax/microedition/lcdui/List;->listType:I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .local v0, "arraylist":Ljava/util/ArrayList;
    iput-object v0, p0, Ljavax/microedition/lcdui/List;->data:Ljava/util/ArrayList;

    .line 21
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "image"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 25
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 26
    .local v1, "hashmap":Ljava/util/HashMap;
    if-eqz p2, :cond_0

    .line 28
    invoke-virtual {p2}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 29
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const-string v2, "image"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    const-string v2, "text"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v2, p0, Ljavax/microedition/lcdui/List;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v2, p0, Ljavax/microedition/lcdui/List;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    return v2
.end method

.method public disposeDisplayable()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Ljavax/microedition/lcdui/List;->view:Landroid/widget/ListView;

    .line 39
    iput-object v0, p0, Ljavax/microedition/lcdui/List;->data:Ljava/util/ArrayList;

    .line 40
    return-void
.end method

.method public getSelectCommand()Ljavax/microedition/lcdui/Command;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->selectCommand:Ljavax/microedition/lcdui/Command;

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 3

    .prologue
    .line 49
    iget-object v1, p0, Ljavax/microedition/lcdui/List;->view:Landroid/widget/ListView;

    .line 51
    .local v1, "listview":Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 52
    iget-object v2, p0, Ljavax/microedition/lcdui/List;->view:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 55
    .local v0, "i":I
    :goto_0
    return v0

    .line 54
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Ljavax/microedition/lcdui/List;->selectedIndex:I

    .restart local v0    # "i":I
    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 60
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "text"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->view:Landroid/widget/ListView;

    return-object v0
.end method

.method public initDisplayable(Ljavax/microedition/midlet/MIDlet;)V
    .locals 17
    .param p1, "midlet1"    # Ljavax/microedition/midlet/MIDlet;

    .prologue
    .line 70
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/microedition/lcdui/List;->midlet:Ljavax/microedition/midlet/MIDlet;

    .line 71
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/midlet/MIDlet;->getToolkit()Lcom/lori/android/lcdui/Toolkit;

    move-result-object v14

    .line 72
    .local v14, "toolkit":Lcom/lori/android/lcdui/Toolkit;
    const-string v15, "layout.midplist"

    invoke-interface {v14, v15}, Lcom/lori/android/lcdui/Toolkit;->getResourceId(Ljava/lang/String;)I

    move-result v8

    .line 73
    .local v8, "i":I
    invoke-interface {v14, v8}, Lcom/lori/android/lcdui/Toolkit;->inflate(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ListView;

    .line 74
    .local v12, "listview":Landroid/widget/ListView;
    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/microedition/lcdui/List;->view:Landroid/widget/ListView;

    .line 75
    move-object/from16 v0, p0

    iget-object v15, v0, Ljavax/microedition/lcdui/List;->view:Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 76
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 77
    .local v3, "activity":Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v4, v0, Ljavax/microedition/lcdui/List;->data:Ljava/util/ArrayList;

    .line 78
    .local v4, "arraylist":Ljava/util/ArrayList;
    const-string v15, "layout.midplistitem"

    invoke-interface {v14, v15}, Lcom/lori/android/lcdui/Toolkit;->getResourceId(Ljava/lang/String;)I

    move-result v5

    .line 79
    .local v5, "j":I
    const/4 v15, 0x2

    new-array v6, v15, [Ljava/lang/String;

    .line 80
    .local v6, "as":[Ljava/lang/String;
    const/4 v15, 0x0

    const-string v16, "image"

    aput-object v16, v6, v15

    .line 81
    const/4 v15, 0x1

    const-string v16, "text"

    aput-object v16, v6, v15

    .line 82
    const/4 v15, 0x2

    new-array v7, v15, [I

    .line 83
    .local v7, "ai":[I
    const-string v15, "id.midplistitem_image"

    invoke-interface {v14, v15}, Lcom/lori/android/lcdui/Toolkit;->getResourceId(Ljava/lang/String;)I

    move-result v10

    .line 84
    .local v10, "k":I
    const/4 v15, 0x0

    aput v10, v7, v15

    .line 85
    const-string v15, "id.midplistitem_text"

    invoke-interface {v14, v15}, Lcom/lori/android/lcdui/Toolkit;->getResourceId(Ljava/lang/String;)I

    move-result v11

    .line 86
    .local v11, "l":I
    const/4 v15, 0x1

    aput v11, v7, v15

    .line 87
    new-instance v2, Landroid/widget/SimpleAdapter;

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 88
    .local v2, "simpleadapter":Landroid/widget/SimpleAdapter;
    move-object/from16 v0, p0

    iget-object v15, v0, Ljavax/microedition/lcdui/List;->view:Landroid/widget/ListView;

    invoke-virtual {v15, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/microedition/lcdui/List;->view:Landroid/widget/ListView;

    .line 90
    .local v13, "listview1":Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget v9, v0, Ljavax/microedition/lcdui/List;->selectedIndex:I

    .line 91
    .local v9, "i1":I
    invoke-virtual {v13, v9}, Landroid/widget/ListView;->setSelection(I)V

    .line 92
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "view1"    # Landroid/view/View;
    .param p2, "i"    # I
    .param p3, "keyevent"    # Landroid/view/KeyEvent;

    .prologue
    .line 97
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Ljavax/microedition/lcdui/List;->commandListener:Ljavax/microedition/lcdui/CommandListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljavax/microedition/lcdui/List;->selectCommand:Ljavax/microedition/lcdui/Command;

    if-eqz v3, :cond_0

    .line 99
    const/4 v2, 0x1

    .line 100
    .local v2, "flag":Z
    iget-object v1, p0, Ljavax/microedition/lcdui/List;->commandListener:Ljavax/microedition/lcdui/CommandListener;

    .line 101
    .local v1, "commandlistener":Ljavax/microedition/lcdui/CommandListener;
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->selectCommand:Ljavax/microedition/lcdui/Command;

    .line 102
    .local v0, "command":Ljavax/microedition/lcdui/Command;
    invoke-interface {v1, v0, p0}, Ljavax/microedition/lcdui/CommandListener;->commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V

    .line 107
    .end local v0    # "command":Ljavax/microedition/lcdui/Command;
    .end local v1    # "commandlistener":Ljavax/microedition/lcdui/CommandListener;
    :goto_0
    return v2

    .line 105
    .end local v2    # "flag":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "flag":Z
    goto :goto_0
.end method

.method public setSelectCommand(Ljavax/microedition/lcdui/Command;)V
    .locals 0
    .param p1, "command"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 112
    iput-object p1, p0, Ljavax/microedition/lcdui/List;->selectCommand:Ljavax/microedition/lcdui/Command;

    .line 113
    return-void
.end method

.method public setSelectedIndex(IZ)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "flag"    # Z

    .prologue
    .line 117
    iput p1, p0, Ljavax/microedition/lcdui/List;->selectedIndex:I

    .line 118
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->view:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->view:Landroid/widget/ListView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 120
    :cond_0
    return-void
.end method
