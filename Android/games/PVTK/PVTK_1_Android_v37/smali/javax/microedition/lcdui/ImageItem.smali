.class public Ljavax/microedition/lcdui/ImageItem;
.super Ljavax/microedition/lcdui/Item;
.source "ImageItem.java"


# static fields
.field public static final LAYOUT_CENTER:I = 0x3

.field public static final LAYOUT_DEFAULT:I = 0x0

.field public static final LAYOUT_LEFT:I = 0x1

.field public static final LAYOUT_NEWLINE_AFTER:I = 0x200

.field public static final LAYOUT_NEWLINE_BEFORE:I = 0x100

.field public static final LAYOUT_RIGHT:I = 0x2


# instance fields
.field altText:Ljava/lang/String;

.field private appearanceMode:I

.field img:Ljavax/microedition/lcdui/Image;

.field private labelView:Landroid/widget/TextView;

.field private midlet:Ljavax/microedition/midlet/MIDlet;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/microedition/lcdui/Image;ILjava/lang/String;)V
    .locals 6
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "img"    # Ljavax/microedition/lcdui/Image;
    .param p3, "layout"    # I
    .param p4, "altText"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljavax/microedition/lcdui/ImageItem;-><init>(Ljava/lang/String;Ljavax/microedition/lcdui/Image;ILjava/lang/String;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/microedition/lcdui/Image;ILjava/lang/String;I)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "img"    # Ljavax/microedition/lcdui/Image;
    .param p3, "layout"    # I
    .param p4, "altText"    # Ljava/lang/String;
    .param p5, "appearanceMode"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Item;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p3}, Ljavax/microedition/lcdui/ImageItem;->setLayout(I)V

    .line 44
    if-eqz p5, :cond_0

    const/4 v0, 0x2

    if-eq p5, v0, :cond_0

    .line 45
    const/4 v0, 0x1

    if-eq p5, v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 49
    :cond_0
    invoke-virtual {p0, p2}, Ljavax/microedition/lcdui/ImageItem;->setImage(Ljavax/microedition/lcdui/Image;)V

    .line 50
    iput-object p4, p0, Ljavax/microedition/lcdui/ImageItem;->altText:Ljava/lang/String;

    .line 51
    iput p5, p0, Ljavax/microedition/lcdui/ImageItem;->appearanceMode:I

    .line 52
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/microedition/lcdui/ImageItem;->view:Landroid/view/View;

    .line 106
    return-void
.end method

.method public getAltText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Ljavax/microedition/lcdui/ImageItem;->altText:Ljava/lang/String;

    return-object v0
.end method

.method public getAppearanceMode()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Ljavax/microedition/lcdui/ImageItem;->appearanceMode:I

    return v0
.end method

.method getHeight()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getImage()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ljavax/microedition/lcdui/ImageItem;->img:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getLayout()I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Ljavax/microedition/lcdui/ImageItem;->view:Landroid/view/View;

    return-object v0
.end method

.method public init(Ljavax/microedition/midlet/MIDlet;Landroid/view/ViewGroup;)V
    .locals 9
    .param p1, "midlet1"    # Ljavax/microedition/midlet/MIDlet;
    .param p2, "viewgroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 115
    iput-object p1, p0, Ljavax/microedition/lcdui/ImageItem;->midlet:Ljavax/microedition/midlet/MIDlet;

    .line 116
    invoke-virtual {p1}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 117
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Ljavax/microedition/midlet/MIDlet;->getToolkit()Lcom/lori/android/lcdui/Toolkit;

    move-result-object v6

    .line 118
    .local v6, "toolkit":Lcom/lori/android/lcdui/Toolkit;
    const-string v7, "layout.midpform"

    invoke-interface {v6, v7}, Lcom/lori/android/lcdui/Toolkit;->getResourceId(Ljava/lang/String;)I

    move-result v1

    .line 119
    .local v1, "i":I
    invoke-interface {v6, v1}, Lcom/lori/android/lcdui/Toolkit;->inflate(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 120
    .local v3, "linearlayout":Landroid/widget/LinearLayout;
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 121
    .local v5, "textview":Landroid/widget/TextView;
    iput-object v5, p0, Ljavax/microedition/lcdui/ImageItem;->labelView:Landroid/widget/TextView;

    .line 122
    invoke-virtual {p0}, Ljavax/microedition/lcdui/ImageItem;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "s":Ljava/lang/String;
    iget-object v7, p0, Ljavax/microedition/lcdui/ImageItem;->labelView:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v7, p0, Ljavax/microedition/lcdui/ImageItem;->labelView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 126
    .local v2, "imageview":Landroid/widget/ImageView;
    iget-object v7, p0, Ljavax/microedition/lcdui/ImageItem;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 127
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    iput-object v3, p0, Ljavax/microedition/lcdui/ImageItem;->view:Landroid/view/View;

    .line 129
    const/16 v7, 0xa

    invoke-virtual {v3, v8, v8, v8, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 130
    return-void
.end method

.method paint(Ljavax/microedition/lcdui/Graphics;)I
    .locals 1
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public setAltText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Ljavax/microedition/lcdui/ImageItem;->altText:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setImage(Ljavax/microedition/lcdui/Image;)V
    .locals 0
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 75
    iput-object p1, p0, Ljavax/microedition/lcdui/ImageItem;->img:Ljavax/microedition/lcdui/Image;

    .line 76
    return-void
.end method

.method public setLayout(I)V
    .locals 0
    .param p1, "layout"    # I

    .prologue
    .line 79
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Item;->setLayout(I)V

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "ImageItem"

    return-object v0
.end method

.method traverse(IIIZ)I
    .locals 1
    .param p1, "gameKeyCode"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "action"    # Z

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method
