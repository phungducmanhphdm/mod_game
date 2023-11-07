.class public Ljavax/microedition/lcdui/TextField;
.super Ljavax/microedition/lcdui/Item;
.source "TextField.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/lori/android/lcdui/Focusable;


# static fields
.field public static final ANY:I = 0x0

.field public static final DECIMAL:I = 0x5

.field public static final EMAILADDR:I = 0x1

.field public static final INITIAL_CAPS_SENTENCE:I = 0x200000

.field public static final INITIAL_CAPS_WORD:I = 0x100000

.field public static final NON_PREDICTIVE:I = 0x80000

.field public static final NUMERIC:I = 0x2

.field public static final PASSWORD:I = 0x10000

.field public static final PHONENUMBER:I = 0x3

.field public static final SENSITIVE:I = 0x40000

.field public static final UNEDITABLE:I = 0x20000

.field public static final URL:I = 0x4

.field private static tempText:Ljava/lang/StringBuffer;


# instance fields
.field private constraints:I

.field private label:Ljava/lang/String;

.field private labelView:Landroid/widget/TextView;

.field private maxSize:I

.field private midlet:Ljavax/microedition/midlet/MIDlet;

.field private text:Ljava/lang/String;

.field private textView:Landroid/widget/EditText;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Ljavax/microedition/lcdui/TextField;->tempText:Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "i"    # I
    .param p4, "j"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljavax/microedition/lcdui/Item;-><init>()V

    .line 21
    iput-object p1, p0, Ljavax/microedition/lcdui/TextField;->label:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Ljavax/microedition/lcdui/TextField;->text:Ljava/lang/String;

    .line 23
    iput p3, p0, Ljavax/microedition/lcdui/TextField;->maxSize:I

    .line 24
    iput p4, p0, Ljavax/microedition/lcdui/TextField;->constraints:I

    .line 25
    return-void
.end method

.method static synthetic access$0(Ljavax/microedition/lcdui/TextField;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Ljavax/microedition/lcdui/TextField;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->text:Ljava/lang/String;

    return-object v0
.end method

.method public static createTextView(ILandroid/content/Context;)Landroid/widget/EditText;
    .locals 4
    .param p0, "i"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    new-instance v0, Landroid/text/method/ArrowKeyMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    .line 32
    .local v0, "arrowkeymovementmethod":Landroid/text/method/ArrowKeyMovementMethod;
    const/high16 v3, 0x10000

    if-ne p0, v3, :cond_0

    .line 33
    new-instance v2, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    .line 36
    :goto_0
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 37
    .local v1, "edittext":Landroid/widget/EditText;
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 38
    check-cast v2, Landroid/text/method/TransformationMethod;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 39
    return-object v1

    .line 35
    .end local v1    # "edittext":Landroid/widget/EditText;
    :cond_0
    new-instance v2, Landroid/text/method/SingleLineTransformationMethod;

    invoke-direct {v2}, Landroid/text/method/SingleLineTransformationMethod;-><init>()V

    .local v2, "obj":Landroid/text/method/SingleLineTransformationMethod;
    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v1, p0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "s":Ljava/lang/String;
    iput-object v0, p0, Ljavax/microedition/lcdui/TextField;->text:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Ljavax/microedition/lcdui/TextField;->view:Landroid/view/View;

    .line 47
    iput-object v2, p0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/EditText;

    .line 48
    iput-object v2, p0, Ljavax/microedition/lcdui/TextField;->labelView:Landroid/widget/TextView;

    .line 49
    return-void
.end method

.method public getCaretPosition()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public getConstraints()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Ljavax/microedition/lcdui/TextField;->constraints:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxSize()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Ljavax/microedition/lcdui/TextField;->maxSize:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    iget-object v1, p0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "s":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 77
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->text:Ljava/lang/String;

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->view:Landroid/view/View;

    return-object v0
.end method

.method public init(Ljavax/microedition/midlet/MIDlet;Landroid/view/ViewGroup;)V
    .locals 26
    .param p1, "midlet1"    # Ljavax/microedition/midlet/MIDlet;
    .param p2, "viewgroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 91
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/microedition/lcdui/TextField;->midlet:Ljavax/microedition/midlet/MIDlet;

    .line 92
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 93
    .local v4, "activity":Landroid/app/Activity;
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/midlet/MIDlet;->getToolkit()Lcom/lori/android/lcdui/Toolkit;

    move-result-object v19

    .line 94
    .local v19, "toolkit":Lcom/lori/android/lcdui/Toolkit;
    const-string v22, "layout.midpform"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/lori/android/lcdui/Toolkit;->getResourceId(Ljava/lang/String;)I

    move-result v10

    .line 95
    .local v10, "i":I
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Lcom/lori/android/lcdui/Toolkit;->inflate(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 96
    .local v11, "linearlayout":Landroid/widget/LinearLayout;
    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 97
    .local v14, "textview":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iput-object v14, v0, Ljavax/microedition/lcdui/TextField;->labelView:Landroid/widget/TextView;

    .line 98
    sget-object v20, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lcom/lori/android/lcdui/Toolkit;

    .line 99
    .local v20, "toolkit1":Lcom/lori/android/lcdui/Toolkit;
    move-object/from16 v0, p0

    iget-object v15, v0, Ljavax/microedition/lcdui/TextField;->labelView:Landroid/widget/TextView;

    .line 100
    .local v15, "textview1":Landroid/widget/TextView;
    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Lcom/lori/android/lcdui/Toolkit;->setDefualTypeface(Landroid/widget/TextView;)V

    .line 101
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/microedition/lcdui/TextField;->constraints:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v0, v4}, Ljavax/microedition/lcdui/TextField;->createTextView(ILandroid/content/Context;)Landroid/widget/EditText;

    move-result-object v5

    .line 103
    .local v5, "edittext":Landroid/widget/EditText;
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, p0

    iget v0, v0, Ljavax/microedition/lcdui/TextField;->maxSize:I

    move/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 105
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/microedition/lcdui/TextField;->constraints:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_0

    .line 137
    :goto_0
    move-object/from16 v0, p0

    iput-object v5, v0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/EditText;

    .line 138
    sget-object v21, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lcom/lori/android/lcdui/Toolkit;

    .line 139
    .local v21, "toolkit2":Lcom/lori/android/lcdui/Toolkit;
    move-object/from16 v0, p0

    iget-object v6, v0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/EditText;

    .line 140
    .local v6, "edittext1":Landroid/widget/EditText;
    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Lcom/lori/android/lcdui/Toolkit;->setDefualTypeface(Landroid/widget/TextView;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/EditText;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/TextField;->labelView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    .line 143
    .local v16, "textview2":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/lcdui/TextField;->label:Ljava/lang/String;

    .line 144
    .local v12, "s":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v7, v0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/EditText;

    .line 146
    .local v7, "edittext2":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/microedition/lcdui/TextField;->text:Ljava/lang/String;

    .line 147
    .local v13, "s1":Ljava/lang/String;
    invoke-virtual {v7, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/TextField;->labelView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .line 149
    .local v17, "textview3":Landroid/widget/TextView;
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/EditText;

    .line 151
    .local v8, "edittext3":Landroid/widget/EditText;
    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    move-object/from16 v0, p0

    iput-object v11, v0, Ljavax/microedition/lcdui/TextField;->view:Landroid/view/View;

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/TextField;->labelView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    .line 154
    .local v18, "textview4":Landroid/widget/TextView;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/microedition/lcdui/TextField;->labelView:Landroid/widget/TextView;

    .line 155
    move-object/from16 v0, p0

    iget-object v9, v0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/EditText;

    .line 156
    .local v9, "edittext4":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iput-object v9, v0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/EditText;

    .line 157
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 158
    return-void

    .line 107
    .end local v6    # "edittext1":Landroid/widget/EditText;
    .end local v7    # "edittext2":Landroid/widget/EditText;
    .end local v8    # "edittext3":Landroid/widget/EditText;
    .end local v9    # "edittext4":Landroid/widget/EditText;
    .end local v12    # "s":Ljava/lang/String;
    .end local v13    # "s1":Ljava/lang/String;
    .end local v16    # "textview2":Landroid/widget/TextView;
    .end local v17    # "textview3":Landroid/widget/TextView;
    .end local v18    # "textview4":Landroid/widget/TextView;
    .end local v21    # "toolkit2":Lcom/lori/android/lcdui/Toolkit;
    :sswitch_0
    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 110
    :sswitch_1
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_0

    .line 113
    :sswitch_2
    const/high16 v22, 0x200000

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_0

    .line 116
    :sswitch_3
    const/high16 v22, 0x100000

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_0

    .line 119
    :sswitch_4
    const/high16 v22, 0x80000

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_0

    .line 122
    :sswitch_5
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_0

    .line 125
    :sswitch_6
    const/high16 v22, 0x40000

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_0

    .line 128
    :sswitch_7
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_0

    .line 131
    :sswitch_8
    const/high16 v22, 0x20000

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_0

    .line 134
    :sswitch_9
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_0

    .line 105
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_7
        0x3 -> :sswitch_5
        0x4 -> :sswitch_9
        0x5 -> :sswitch_0
        0x20000 -> :sswitch_8
        0x40000 -> :sswitch_6
        0x80000 -> :sswitch_4
        0x100000 -> :sswitch_3
        0x200000 -> :sswitch_2
    .end sparse-switch
.end method

.method public insert(Ljava/lang/String;I)V
    .locals 3
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 237
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Ljavax/microedition/lcdui/TextField;->insert([CIII)V

    .line 238
    return-void
.end method

.method public insert([CIII)V
    .locals 3
    .param p1, "data"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "position"    # I

    .prologue
    .line 242
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 245
    :cond_0
    if-nez p1, :cond_1

    .line 246
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_1
    sget-object v0, Ljavax/microedition/lcdui/TextField;->tempText:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    sget-object v2, Ljavax/microedition/lcdui/TextField;->tempText:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 249
    sget-object v0, Ljavax/microedition/lcdui/TextField;->tempText:Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    if-ltz p2, :cond_2

    array-length v0, p1

    if-gt p2, v0, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-ltz p4, :cond_2

    sget-object v0, Ljavax/microedition/lcdui/TextField;->tempText:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-le p4, v0, :cond_3

    .line 252
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal arguments!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_3
    const-string v0, ""

    sget-object v1, Ljavax/microedition/lcdui/TextField;->tempText:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 255
    invoke-static {p1, p2, p3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_4
    sget-object v0, Ljavax/microedition/lcdui/TextField;->tempText:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4, p1, p2, p3}, Ljava/lang/StringBuffer;->insert(I[CII)Ljava/lang/StringBuffer;

    .line 258
    sget-object v0, Ljavax/microedition/lcdui/TextField;->tempText:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestFocus()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 163
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v1, p0, Ljavax/microedition/lcdui/TextField;->labelView:Landroid/widget/TextView;

    .line 168
    .local v1, "textview":Landroid/widget/TextView;
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->label:Ljava/lang/String;

    .line 169
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method

.method public setConstraints(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 175
    iput p1, p0, Ljavax/microedition/lcdui/TextField;->constraints:I

    .line 176
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Ljavax/microedition/lcdui/TextField;->label:Ljava/lang/String;

    .line 181
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->labelView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDlet;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    :cond_0
    return-void
.end method

.method public setMaxSize(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 187
    iput p1, p0, Ljavax/microedition/lcdui/TextField;->maxSize:I

    .line 188
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Ljavax/microedition/lcdui/TextField;->text:Ljava/lang/String;

    .line 193
    iget-object v1, p0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TextField.setString("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "s1":Ljava/lang/String;
    const-string v1, ""

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method public setThreadString(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Ljavax/microedition/lcdui/TextField;->text:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->midlet:Ljavax/microedition/midlet/MIDlet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDlet;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ljavax/microedition/lcdui/TextField$1;

    invoke-direct {v1, p0}, Ljavax/microedition/lcdui/TextField$1;-><init>(Ljavax/microedition/lcdui/TextField;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    :cond_0
    return-void
.end method
