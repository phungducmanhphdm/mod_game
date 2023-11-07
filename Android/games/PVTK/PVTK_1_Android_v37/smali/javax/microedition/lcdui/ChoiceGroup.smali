.class public Ljavax/microedition/lcdui/ChoiceGroup;
.super Ljavax/microedition/lcdui/Item;
.source "ChoiceGroup.java"

# interfaces
.implements Ljavax/microedition/lcdui/Choice;


# instance fields
.field choiceType:I

.field private gi:Lcom/lori/android/lcdui/GroupItem;

.field private midlet:Ljavax/microedition/midlet/MIDlet;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 14
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;IZ)V

    .line 15
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "flag"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Item;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p2, p3}, Ljavax/microedition/lcdui/ChoiceGroup;->init(IZ)V

    .line 21
    packed-switch p2, :pswitch_data_0

    .line 31
    :goto_0
    return-void

    .line 23
    :pswitch_0
    new-instance v1, Lcom/lori/android/lcdui/RadioBoxGroup;

    invoke-direct {v1, p1}, Lcom/lori/android/lcdui/RadioBoxGroup;-><init>(Ljava/lang/String;)V

    .line 24
    .local v1, "radioboxgroup":Lcom/lori/android/lcdui/RadioBoxGroup;
    iput-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lcom/lori/android/lcdui/GroupItem;

    goto :goto_0

    .line 27
    .end local v1    # "radioboxgroup":Lcom/lori/android/lcdui/RadioBoxGroup;
    :pswitch_1
    new-instance v0, Lcom/lori/android/lcdui/CheckBoxGroup;

    invoke-direct {v0, p1}, Lcom/lori/android/lcdui/CheckBoxGroup;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, "checkboxgroup":Lcom/lori/android/lcdui/CheckBoxGroup;
    iput-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lcom/lori/android/lcdui/GroupItem;

    goto :goto_0

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "as"    # [Ljava/lang/String;
    .param p4, "aimage"    # [Ljavax/microedition/lcdui/Image;

    .prologue
    .line 60
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;Z)V

    .line 61
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;Z)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "as"    # [Ljava/lang/String;
    .param p4, "aimage"    # [Ljavax/microedition/lcdui/Image;
    .param p5, "flag"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Item;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p2, p5}, Ljavax/microedition/lcdui/ChoiceGroup;->init(IZ)V

    .line 67
    packed-switch p2, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 69
    :pswitch_0
    new-instance v1, Lcom/lori/android/lcdui/RadioBoxGroup;

    invoke-direct {v1, p1, p3, p4}, Lcom/lori/android/lcdui/RadioBoxGroup;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V

    .line 70
    .local v1, "radioboxgroup":Lcom/lori/android/lcdui/RadioBoxGroup;
    iput-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lcom/lori/android/lcdui/GroupItem;

    goto :goto_0

    .line 73
    .end local v1    # "radioboxgroup":Lcom/lori/android/lcdui/RadioBoxGroup;
    :pswitch_1
    new-instance v0, Lcom/lori/android/lcdui/CheckBoxGroup;

    invoke-direct {v0, p1, p3, p4}, Lcom/lori/android/lcdui/CheckBoxGroup;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V

    .line 74
    .local v0, "checkboxgroup":Lcom/lori/android/lcdui/CheckBoxGroup;
    iput-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lcom/lori/android/lcdui/GroupItem;

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "image"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 101
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lcom/lori/android/lcdui/GroupItem;

    invoke-virtual {v0, p1, p2}, Lcom/lori/android/lcdui/GroupItem;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    move-result v0

    return v0
.end method

.method public delete(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 106
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lcom/lori/android/lcdui/GroupItem;

    invoke-virtual {v0, p1}, Lcom/lori/android/lcdui/GroupItem;->delete(I)V

    .line 107
    return-void
.end method

.method public deleteAll()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lcom/lori/android/lcdui/GroupItem;

    invoke-virtual {v0}, Lcom/lori/android/lcdui/GroupItem;->deleteAll()V

    .line 112
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lcom/lori/android/lcdui/GroupItem;

    invoke-virtual {v0}, Lcom/lori/android/lcdui/GroupItem;->dispose()V

    .line 117
    return-void
.end method

.method public getFitPolicy()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lcom/lori/android/lcdui/GroupItem;

    invoke-virtual {v0}, Lcom/lori/android/lcdui/GroupItem;->getFitPolicy()I

    move-result v0

    return v0
.end method

.method public getFont(I)Ljavax/microedition/lcdui/Font;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 126
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lcom/lori/android/lcdui/GroupItem;

    invoke-virtual {v0, p1}, Lcom/lori/android/lcdui/GroupItem;->getFont(I)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    return-object v0
.end method

.method public getImage(I)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 131
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lcom/lori/android/lcdui/GroupItem;

    invoke-virtual {v0, p1}, Lcom/lori/android/lcdui/GroupItem;->getImage(I)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedFlags([Z)I
    .locals 1
    .param p1, "aflag"    # [Z

    .prologue
    .line 136
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lcom/lori/android/lcdui/GroupItem;

    invoke-virtual {v0, p1}, Lcom/lori/android/lcdui/GroupItem;->getSelectedFlags([Z)I

    move-result v0

    return v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lcom/lori/android/lcdui/GroupItem;

    invoke-virtual {v0}, Lcom/lori/android/lcdui/GroupItem;->getSelectedIndex()I

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 146
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lcom/lori/android/lcdui/GroupItem;

    invoke-virtual {v0, p1}, Lcom/lori/android/lcdui/GroupItem;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lcom/lori/android/lcdui/GroupItem;

    invoke-virtual {v0}, Lcom/lori/android/lcdui/GroupItem;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method init(IZ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "flag"    # Z

    .prologue
    .line 156
    if-eqz p2, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal choice type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iput p1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    .line 162
    return-void
.end method

.method public init(Ljavax/microedition/midlet/MIDlet;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "midlet1"    # Ljavax/microedition/midlet/MIDlet;
    .param p2, "viewgroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 168
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lcom/lori/android/lcdui/GroupItem;

    invoke-virtual {v0, p1, p2}, Lcom/lori/android/lcdui/GroupItem;->init(Ljavax/microedition/midlet/MIDlet;Landroid/view/ViewGroup;)V

    .line 169
    return-void
.end method

.method public insert(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "image"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 173
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lcom/lori/android/lcdui/GroupItem;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lori/android/lcdui/GroupItem;->insert(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V

    .line 174
    return-void
.end method

.method public isSelected(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 178
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lcom/lori/android/lcdui/GroupItem;

    invoke-virtual {v0, p1}, Lcom/lori/android/lcdui/GroupItem;->isSelected(I)Z

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "image"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 183
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lcom/lori/android/lcdui/GroupItem;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lori/android/lcdui/GroupItem;->set(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V

    .line 184
    return-void
.end method

.method public setFitPolicy(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 188
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lcom/lori/android/lcdui/GroupItem;

    invoke-virtual {v0, p1}, Lcom/lori/android/lcdui/GroupItem;->setFitPolicy(I)V

    .line 189
    return-void
.end method

.method public setFont(ILjavax/microedition/lcdui/Font;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "font"    # Ljavax/microedition/lcdui/Font;

    .prologue
    .line 193
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lcom/lori/android/lcdui/GroupItem;

    invoke-virtual {v0, p1, p2}, Lcom/lori/android/lcdui/GroupItem;->setFont(ILjavax/microedition/lcdui/Font;)V

    .line 194
    return-void
.end method

.method public setSelectedFlags([Z)V
    .locals 1
    .param p1, "aflag"    # [Z

    .prologue
    .line 198
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lcom/lori/android/lcdui/GroupItem;

    invoke-virtual {v0, p1}, Lcom/lori/android/lcdui/GroupItem;->setSelectedFlags([Z)V

    .line 199
    return-void
.end method

.method public setSelectedIndex(IZ)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "flag"    # Z

    .prologue
    .line 203
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lcom/lori/android/lcdui/GroupItem;

    invoke-virtual {v0, p1, p2}, Lcom/lori/android/lcdui/GroupItem;->setSelectedIndex(IZ)V

    .line 204
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lcom/lori/android/lcdui/GroupItem;

    invoke-virtual {v0}, Lcom/lori/android/lcdui/GroupItem;->size()I

    move-result v0

    return v0
.end method
