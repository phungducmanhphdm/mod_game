.class public Lcom/lori/app/PipActivity;
.super Landroid/app/Activity;
.source "PipActivity.java"

# interfaces
.implements Lcom/lori/android/lcdui/Toolkit;
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field public static DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity; = null

.field private static final DEFAULT_FONT:Ljavax/microedition/lcdui/Font;

.field private static HAS_START:Ljava/lang/String; = null

.field private static IsDebug:Z = false

.field private static final JAD_PROPERTIES:Ljava/lang/String; = "jad.properties"

.field private static final MIDLET_PROPERTY:Ljava/lang/String; = "MIDlet-Class"

.field static final RC_REQUEST:I = 0x2711

.field public static final REQUEST_PHONE_STATE:I = 0x1

.field private static SCREEN_CHANGED:Ljava/lang/String; = null

.field public static SKU:Ljava/lang/String; = null

.field private static final SYSTEM_ERR:Ljava/lang/String; = "System.err"

.field private static final SYSTEM_OUT:Ljava/lang/String; = "System.out"

.field private static TAG:Ljava/lang/String;

.field public static baseDir:Ljava/io/File;

.field private static context:Landroid/app/Activity;

.field public static defaultView:Landroid/view/View;

.field public static displayHeight:I

.field public static displayWidth:I

.field public static isActive:Z

.field public static mBindedService:Z

.field public static maxVolume:I

.field public static orientation:I

.field public static permissionsREAD:[Ljava/lang/String;

.field public static phoneModel:Ljava/lang/String;

.field public static screen:Ljava/lang/String;

.field public static splash_text:Landroid/widget/TextView;


# instance fields
.field public audioMgr:Landroid/media/AudioManager;

.field public curDisplay:Ljavax/microedition/lcdui/Displayable;

.field private eventThread:Ljava/lang/Thread;

.field private handler:Landroid/os/Handler;

.field private iap_is_ok:Z

.field private isFirst:Z

.field private lock:Ljava/lang/Object;

.field mConsumeFinishedListener:Lcom/android/googleplay/IabHelper$OnConsumeFinishedListener;

.field mGotInventoryListener:Lcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;

.field mHelper:Lcom/android/googleplay/IabHelper;

.field mIsPremium:Z

.field mPurchaseFinishedListener:Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;

.field private menu:Landroid/view/Menu;

.field private midlet:Ljavax/microedition/midlet/MIDlet;

.field private scicle:Landroid/os/Bundle;

.field screenChanged:Z

.field private txManager:Lcom/lori/common/TxNetGameManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 68
    const-string v0, ""

    sput-object v0, Lcom/lori/app/PipActivity;->SKU:Ljava/lang/String;

    .line 70
    sput-boolean v3, Lcom/lori/app/PipActivity;->mBindedService:Z

    .line 72
    const-string v0, ""

    sput-object v0, Lcom/lori/app/PipActivity;->phoneModel:Ljava/lang/String;

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lori/app/PipActivity;->permissionsREAD:[Ljava/lang/String;

    .line 77
    const-string v0, "PipActivity"

    sput-object v0, Lcom/lori/app/PipActivity;->TAG:Ljava/lang/String;

    .line 78
    sput-boolean v3, Lcom/lori/app/PipActivity;->IsDebug:Z

    .line 608
    sput-object v4, Lcom/lori/app/PipActivity;->splash_text:Landroid/widget/TextView;

    .line 1050
    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    sput-object v0, Lcom/lori/app/PipActivity;->DEFAULT_FONT:Ljavax/microedition/lcdui/Font;

    .line 1053
    const-string v0, "screenChanged"

    sput-object v0, Lcom/lori/app/PipActivity;->SCREEN_CHANGED:Ljava/lang/String;

    .line 1054
    const-string v0, "HasStart"

    sput-object v0, Lcom/lori/app/PipActivity;->HAS_START:Ljava/lang/String;

    .line 1095
    sput-object v4, Lcom/lori/app/PipActivity;->screen:Ljava/lang/String;

    .line 1251
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/lori/app/PipActivity;->mIsPremium:Z

    .line 67
    iput-boolean v0, p0, Lcom/lori/app/PipActivity;->iap_is_ok:Z

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lori/app/PipActivity;->txManager:Lcom/lori/common/TxNetGameManager;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lori/app/PipActivity;->isFirst:Z

    .line 1167
    new-instance v0, Lcom/lori/app/PipActivity$1;

    invoke-direct {v0, p0}, Lcom/lori/app/PipActivity$1;-><init>(Lcom/lori/app/PipActivity;)V

    iput-object v0, p0, Lcom/lori/app/PipActivity;->mPurchaseFinishedListener:Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    .line 1192
    new-instance v0, Lcom/lori/app/PipActivity$2;

    invoke-direct {v0, p0}, Lcom/lori/app/PipActivity$2;-><init>(Lcom/lori/app/PipActivity;)V

    iput-object v0, p0, Lcom/lori/app/PipActivity;->mConsumeFinishedListener:Lcom/android/googleplay/IabHelper$OnConsumeFinishedListener;

    .line 1219
    new-instance v0, Lcom/lori/app/PipActivity$3;

    invoke-direct {v0, p0}, Lcom/lori/app/PipActivity$3;-><init>(Lcom/lori/app/PipActivity;)V

    iput-object v0, p0, Lcom/lori/app/PipActivity;->mGotInventoryListener:Lcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lori/app/PipActivity;->lock:Ljava/lang/Object;

    .line 95
    sput-object p0, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    .line 96
    return-void
.end method

.method private CheakPermissions(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permissionsREAD"    # [Ljava/lang/String;

    .prologue
    const/16 v1, 0x17

    .line 1241
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 1242
    invoke-static {p1}, Lcom/lori/common/Tool;->gettargetSdkVersion(Landroid/content/Context;)I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 1243
    invoke-static {p1}, Lcom/lori/app/PipActivity;->CheckPermissions(Landroid/content/Context;)V

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1245
    :cond_1
    invoke-static {p1, p2}, Lcom/lori/common/Tool;->lacksPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static CheckPermissions(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1253
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "permissionsREAD.length="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/lori/app/PipActivity;->permissionsREAD:[Ljava/lang/String;

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lori/app/PipActivity;->DLog(Ljava/lang/String;)V

    .line 1254
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1255
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v5, Lcom/lori/app/PipActivity;->permissionsREAD:[Ljava/lang/String;

    array-length v5, v5

    if-lt v1, v5, :cond_0

    .line 1262
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 1263
    .local v4, "strings":[Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1265
    :try_start_0
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1269
    :goto_1
    return-void

    .end local v4    # "strings":[Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    move-object v5, p0

    .line 1257
    check-cast v5, Landroid/app/Activity;

    sget-object v6, Lcom/lori/app/PipActivity;->permissionsREAD:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 1258
    .local v3, "permissionCheck":I
    if-eqz v3, :cond_1

    .line 1259
    sget-object v5, Lcom/lori/app/PipActivity;->permissionsREAD:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1266
    .end local v3    # "permissionCheck":I
    .end local p0    # "context":Landroid/content/Context;
    .restart local v4    # "strings":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1267
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static DLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 87
    sget-boolean v0, Lcom/lori/app/PipActivity;->IsDebug:Z

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/lori/app/PipActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/lori/app/PipActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lori/app/PipActivity;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/lori/app/PipActivity;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lori/app/PipActivity;Z)V
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/lori/app/PipActivity;->iap_is_ok:Z

    return-void
.end method

.method static synthetic access$3(Lcom/lori/app/PipActivity;)Ljavax/microedition/midlet/MIDlet;
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/lori/app/PipActivity;->createMIDlet()Ljavax/microedition/midlet/MIDlet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/lori/app/PipActivity;Ljavax/microedition/midlet/MIDlet;)V
    .locals 0

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/lori/app/PipActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    return-void
.end method

.method private checkQQLogin()V
    .locals 0

    .prologue
    .line 635
    return-void
.end method

.method private createMIDlet()Ljavax/microedition/midlet/MIDlet;
    .locals 28

    .prologue
    .line 100
    const-string v26, "createMIDlet()"

    const-string v27, "-----------------------------------"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v17, "microedition.platform"

    .line 102
    .local v17, "s":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/lori/app/PipActivity;->initScreen()V

    .line 103
    new-instance v15, Ljava/util/Properties;

    invoke-direct {v15}, Ljava/util/Properties;-><init>()V

    .line 108
    .local v15, "properties":Ljava/util/Properties;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 109
    .local v2, "class1":Ljava/lang/Class;
    const-string v26, "/jad.properties"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 110
    .local v9, "inputstream":Ljava/io/InputStream;
    invoke-virtual {v15, v9}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v16

    .line 118
    .local v16, "properties1":Ljava/util/Properties;
    invoke-virtual {v15}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 121
    .local v4, "enumeration":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    .line 122
    .local v7, "flag":Z
    if-nez v7, :cond_1

    .line 129
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Android."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 130
    .local v12, "obj":Ljava/lang/StringBuilder;
    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 131
    .local v18, "s1":Ljava/lang/String;
    check-cast v12, Ljava/lang/StringBuilder;

    .end local v12    # "obj":Ljava/lang/StringBuilder;
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "-"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 132
    .restart local v12    # "obj":Ljava/lang/StringBuilder;
    sget-object v19, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 133
    .local v19, "s2":Ljava/lang/String;
    check-cast v12, Ljava/lang/StringBuilder;

    .end local v12    # "obj":Ljava/lang/StringBuilder;
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 136
    .local v12, "obj":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 140
    .local v12, "obj":Ljava/io/PrintStream;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "microedition.platform="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 141
    .local v25, "stringbuilder":Ljava/lang/StringBuilder;
    invoke-virtual/range {v16 .. v17}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 142
    .local v20, "s3":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 143
    .local v21, "s4":Ljava/lang/String;
    check-cast v12, Ljava/io/PrintStream;

    .end local v12    # "obj":Ljava/io/PrintStream;
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    const-string v26, "MIDlet-Class"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 147
    .local v22, "s5":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/lori/app/PipActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 148
    .local v3, "classloader":Ljava/lang/ClassLoader;
    sput-object p0, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    .line 149
    sput-object p0, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lcom/lori/android/lcdui/Toolkit;

    .line 150
    sput-object v15, Ljavax/microedition/midlet/MIDlet;->DEFAULT_APPLICATION_PROPERTIES:Ljava/util/Properties;

    .line 151
    const/4 v8, 0x1

    .line 157
    .local v8, "flag1":Z
    :try_start_1
    move-object/from16 v0, v22

    invoke-static {v0, v8, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/microedition/midlet/MIDlet;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    .local v11, "midlet1":Ljavax/microedition/midlet/MIDlet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lori/app/PipActivity;->menu:Landroid/view/Menu;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 166
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lori/app/PipActivity;->menu:Landroid/view/Menu;

    .line 167
    .local v10, "menu1":Landroid/view/Menu;
    invoke-virtual {v11, v10}, Ljavax/microedition/midlet/MIDlet;->setMenu(Landroid/view/Menu;)V

    .line 168
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lori/app/PipActivity;->menu:Landroid/view/Menu;

    .line 170
    .end local v10    # "menu1":Landroid/view/Menu;
    :cond_0
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "midletClassName="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 171
    .local v23, "s6":Ljava/lang/String;
    const-string v26, "createMIDlet()"

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-object v11

    .line 112
    .end local v2    # "class1":Ljava/lang/Class;
    .end local v3    # "classloader":Ljava/lang/ClassLoader;
    .end local v4    # "enumeration":Ljava/util/Enumeration;
    .end local v7    # "flag":Z
    .end local v8    # "flag1":Z
    .end local v9    # "inputstream":Ljava/io/InputStream;
    .end local v11    # "midlet1":Ljavax/microedition/midlet/MIDlet;
    .end local v16    # "properties1":Ljava/util/Properties;
    .end local v18    # "s1":Ljava/lang/String;
    .end local v19    # "s2":Ljava/lang/String;
    .end local v20    # "s3":Ljava/lang/String;
    .end local v21    # "s4":Ljava/lang/String;
    .end local v22    # "s5":Ljava/lang/String;
    .end local v23    # "s6":Ljava/lang/String;
    .end local v25    # "stringbuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v5

    .line 114
    .local v5, "exception":Ljava/lang/Exception;
    new-instance v26, Ljava/lang/RuntimeException;

    const-string v27, "error loading jad.properties"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v26

    .line 124
    .end local v5    # "exception":Ljava/lang/Exception;
    .restart local v2    # "class1":Ljava/lang/Class;
    .restart local v4    # "enumeration":Ljava/util/Enumeration;
    .restart local v7    # "flag":Z
    .restart local v9    # "inputstream":Ljava/io/InputStream;
    .restart local v16    # "properties1":Ljava/util/Properties;
    :cond_1
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    .line 125
    .local v13, "obj1":Ljava/lang/Object;
    invoke-virtual {v15, v13}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 126
    .local v14, "obj2":Ljava/lang/Object;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v14}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 159
    .end local v13    # "obj1":Ljava/lang/Object;
    .end local v14    # "obj2":Ljava/lang/Object;
    .restart local v3    # "classloader":Ljava/lang/ClassLoader;
    .restart local v8    # "flag1":Z
    .restart local v18    # "s1":Ljava/lang/String;
    .restart local v19    # "s2":Ljava/lang/String;
    .restart local v20    # "s3":Ljava/lang/String;
    .restart local v21    # "s4":Ljava/lang/String;
    .restart local v22    # "s5":Ljava/lang/String;
    .restart local v25    # "stringbuilder":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v6

    .line 161
    .local v6, "exception1":Ljava/lang/Exception;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "unable to load class "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 162
    .local v24, "s7":Ljava/lang/String;
    new-instance v26, Ljava/lang/RuntimeException;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v26
.end method

.method public static getTxManager()Lcom/lori/common/TxNetGameManager;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    iget-object v0, v0, Lcom/lori/app/PipActivity;->txManager:Lcom/lori/common/TxNetGameManager;

    goto :goto_0
.end method

.method private initScreen()V
    .locals 2

    .prologue
    .line 178
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/lori/app/PipActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 179
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    sput v1, Lcom/lori/app/PipActivity;->displayWidth:I

    .line 180
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    sput v1, Lcom/lori/app/PipActivity;->displayHeight:I

    .line 181
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v1

    sput v1, Lcom/lori/app/PipActivity;->orientation:I

    .line 182
    return-void
.end method

.method private list(Ljava/lang/String;Landroid/content/res/AssetManager;)V
    .locals 13
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "assetmanager"    # Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "as":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "s1":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "found "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 190
    .local v10, "stringbuilder":Ljava/lang/StringBuilder;
    array-length v1, v0

    .line 191
    .local v1, "i":I
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " assets for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 192
    .local v5, "s2":Ljava/lang/String;
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v2, 0x0

    .line 196
    .local v2, "j":I
    :goto_0
    array-length v3, v0

    .line 197
    .local v3, "k":I
    if-ge v2, v3, :cond_0

    .line 199
    aget-object v6, v0, v2

    .line 200
    .local v6, "s3":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 201
    .local v7, "s4":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "asset "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, "s5":Ljava/lang/String;
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 204
    .local v9, "s6":Ljava/lang/String;
    invoke-direct {p0, v9, p2}, Lcom/lori/app/PipActivity;->list(Ljava/lang/String;Landroid/content/res/AssetManager;)V

    .line 205
    add-int/lit8 v2, v2, 0x1

    .line 206
    goto :goto_0

    .line 208
    .end local v6    # "s3":Ljava/lang/String;
    .end local v7    # "s4":Ljava/lang/String;
    .end local v8    # "s5":Ljava/lang/String;
    .end local v9    # "s6":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getClientIP()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1080
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/lori/app/PipActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 1081
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 1082
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    .line 1083
    .local v1, "ipAddress":I
    new-instance v4, Ljava/lang/StringBuilder;

    and-int/lit16 v5, v1, 0xff

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1084
    shr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1085
    shr-int/lit8 v5, v1, 0x10

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1086
    shr-int/lit8 v5, v1, 0x18

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1083
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1088
    .local v0, "ip":Ljava/lang/String;
    return-object v0
.end method

.method public getDefaultView()Landroid/view/View;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/lori/app/PipActivity;->defaultView:Landroid/view/View;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lori/app/PipActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getMIDlet()Ljavax/microedition/midlet/MIDlet;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lori/app/PipActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1098
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1099
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/lori/app/PipActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1100
    iget v6, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v6

    .line 1101
    .local v0, "density":I
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1102
    .local v4, "nowWidth":I
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1103
    .local v3, "nowHeigth":I
    mul-int v5, v4, v0

    .line 1104
    .local v5, "width":I
    mul-int v2, v3, v0

    .line 1105
    .local v2, "height":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/lori/app/PipActivity;->screen:Ljava/lang/String;

    .line 1106
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public getResourceId(Ljava/lang/String;)I
    .locals 13
    .param p1, "resourceName"    # Ljava/lang/String;

    .prologue
    .line 299
    const-string v10, "PipActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "getResourceId(): "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v10, "\\."

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 302
    .local v9, "splits":[Ljava/lang/String;
    const-class v0, Lcmn/phongvan/truyenky/R;

    .line 303
    .local v0, "c":Ljava/lang/Class;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v10, v9

    if-lt v6, v10, :cond_0

    .line 331
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "no resource "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 304
    :cond_0
    aget-object v8, v9, v6

    .line 305
    .local v8, "name":Ljava/lang/String;
    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    if-ge v6, v10, :cond_4

    .line 306
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v2

    .line 307
    .local v2, "childClasses":[Ljava/lang/Class;
    const/4 v5, 0x0

    .line 308
    .local v5, "found":Ljava/lang/Class;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    array-length v10, v2

    if-lt v7, v10, :cond_1

    .line 317
    :goto_2
    if-nez v5, :cond_3

    .line 318
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "no class "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 309
    :cond_1
    aget-object v1, v2, v7

    .line 312
    .local v1, "childClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "$"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 313
    move-object v5, v1

    .line 314
    goto :goto_2

    .line 308
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 320
    .end local v1    # "childClass":Ljava/lang/Class;
    :cond_3
    move-object v0, v5

    .line 303
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 324
    .end local v2    # "childClasses":[Ljava/lang/Class;
    .end local v5    # "found":Ljava/lang/Class;
    .end local v7    # "j":I
    :cond_4
    :try_start_0
    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 325
    .local v4, "field":Ljava/lang/reflect/Field;
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    return v10

    .line 326
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v3

    .line 327
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "no field "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 336
    sget-object v0, Lcom/lori/app/PipActivity;->defaultView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 341
    sget-object v0, Lcom/lori/app/PipActivity;->defaultView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public googlePlay(Ljava/lang/String;)V
    .locals 8
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 1153
    invoke-static {}, Lcom/android/googleplay/Security;->generateNonce()J

    move-result-wide v6

    .line 1154
    .local v6, "mNonce":J
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 1155
    .local v5, "payload":Ljava/lang/String;
    sput-object p1, Lcom/lori/app/PipActivity;->SKU:Ljava/lang/String;

    .line 1157
    iget-boolean v0, p0, Lcom/lori/app/PipActivity;->iap_is_ok:Z

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/lori/app/PipActivity;->mHelper:Lcom/android/googleplay/IabHelper;

    sget-object v1, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    sget-object v2, Lcom/lori/app/PipActivity;->SKU:Ljava/lang/String;

    const/16 v3, 0x2711

    iget-object v4, p0, Lcom/lori/app/PipActivity;->mPurchaseFinishedListener:Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    invoke-virtual/range {v0 .. v5}, Lcom/android/googleplay/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 1162
    :goto_0
    return-void

    .line 1160
    :cond_0
    sget-object v0, Lcom/lori/app/PipActivity;->TAG:Ljava/lang/String;

    const-string v1, "Google Play\u521d\u59cb\u5316\u5931\u8d25,\u5f53\u524d\u65e0\u6cd5\u8fdb\u884c\u652f\u4ed8\uff0c\u8bf7\u786e\u5b9a\u60a8\u6240\u5728\u5730\u533a\u652f\u6301Google Play\u652f\u4ed8\u6216\u91cd\u542f\u6e38\u620f\u518d\u8bd5\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public inflate(I)Landroid/view/View;
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/lori/app/PipActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public invokeAndWait(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 352
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/lori/app/PipActivity;->eventThread:Ljava/lang/Thread;

    if-ne v2, v3, :cond_0

    .line 354
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 382
    :goto_0
    return-void

    .line 358
    :cond_0
    new-instance v1, Lcom/lori/app/PipActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/lori/app/PipActivity$4;-><init>(Lcom/lori/app/PipActivity;Ljava/lang/Runnable;)V

    .line 369
    .local v1, "r":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/lori/app/PipActivity;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 371
    :try_start_0
    iget-object v2, p0, Lcom/lori/app/PipActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    :try_start_1
    iget-object v2, p0, Lcom/lori/app/PipActivity;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 376
    :catch_0
    move-exception v0

    .line 378
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v9, -0x1

    .line 894
    const-string v6, "CallBack"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onActivityResult: requestCode = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resultCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v6, p0, Lcom/lori/app/PipActivity;->mHelper:Lcom/android/googleplay/IabHelper;

    if-nez v6, :cond_1

    .line 1019
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    iget-object v6, p0, Lcom/lori/app/PipActivity;->mHelper:Lcom/android/googleplay/IabHelper;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/googleplay/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 903
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 917
    :goto_1
    const/16 v6, 0x320

    if-ne p1, v6, :cond_3

    .line 918
    invoke-static {p1, p2, p3}, Lcom/lori/common/JiFengGameManager;->doDealPay(IILandroid/content/Intent;)V

    goto :goto_0

    .line 906
    :cond_2
    sget-object v6, Lcom/lori/app/PipActivity;->TAG:Ljava/lang/String;

    const-string v7, "onActivityResult handled by IABUtil."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 922
    :cond_3
    const/16 v6, 0x321

    if-ne p1, v6, :cond_4

    .line 923
    invoke-static {p1, p2, p3}, Lcom/lori/common/JiFengGameManager;->doDealCharge(IILandroid/content/Intent;)V

    goto :goto_0

    .line 944
    :cond_4
    if-ne p2, v9, :cond_0

    .line 947
    const/16 v6, 0x258

    if-ne p1, v6, :cond_7

    .line 949
    const/4 v4, 0x0

    .line 953
    .local v4, "photoData":[B
    :try_start_0
    sget-object v6, Lcom/lori/common/Tool;->cameraPhotoFileName:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 954
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/lori/common/Tool;->cameraPhotoFileName:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 956
    .local v5, "uri":Landroid/net/Uri;
    sget-object v6, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    invoke-virtual {v6}, Lcom/lori/app/PipActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/lori/common/Tool;->compressImage(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v4

    .line 969
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_5
    :goto_2
    sget-object v6, Lcom/lori/common/Tool;->cameraLister:Lcom/lori/common/CameraListener;

    if-eqz v6, :cond_0

    .line 970
    sget-object v6, Lcom/lori/common/Tool;->cameraLister:Lcom/lori/common/CameraListener;

    invoke-interface {v6, v4}, Lcom/lori/common/CameraListener;->onPhotoBack([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1016
    .end local v4    # "photoData":[B
    :catch_0
    move-exception v2

    .line 1017
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 959
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "photoData":[B
    :cond_6
    :try_start_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 961
    .local v3, "extras":Landroid/os/Bundle;
    const-string v6, "data"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 962
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 963
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onActivityResult: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 964
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 965
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v0, v6, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 966
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_2

    .line 975
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "photoData":[B
    :cond_7
    const/16 v6, 0x25d

    if-eq p1, v6, :cond_0

    .line 979
    const/16 v6, 0x2bc

    if-ne p1, v6, :cond_8

    .line 980
    const-string v6, "pay_state"

    const/4 v7, -0x1

    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 990
    :cond_8
    const/16 v6, 0x2bd

    if-eq p1, v6, :cond_0

    .line 995
    const/16 v6, 0x2be

    if-eq p1, v6, :cond_0

    .line 1000
    const/16 v6, 0x2bf

    if-eq p1, v6, :cond_0

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x1

    .line 387
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 388
    const-string v0, "PipActivity"

    const-string v1, "============ onConfigurationChanged() =================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {p0}, Lcom/lori/app/PipActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_1

    .line 391
    invoke-virtual {p0}, Lcom/lori/app/PipActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 392
    const-string v0, "PipActivity"

    const-string v1, "this is a landscape *************"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/lori/app/PipActivity;->screenChanged:Z

    .line 398
    invoke-direct {p0}, Lcom/lori/app/PipActivity;->initScreen()V

    .line 399
    return-void

    .line 395
    :cond_1
    const-string v0, "PipActivity"

    const-string v1, "********this is a portrait"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 405
    sput-object p0, Lcom/lori/app/PipActivity;->context:Landroid/app/Activity;

    .line 406
    const-string v14, ""

    const-string v15, "&&&&&&&&&&&&&&&&&&==== onCreate() =====&&&&&&&&&&&&&&&&&&&&&&"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lori/app/PipActivity;->isFirst:Z

    if-eqz v14, :cond_0

    .line 409
    sget-object v14, Lcom/lori/app/PipActivity;->context:Landroid/app/Activity;

    sget-object v15, Lcom/lori/app/PipActivity;->permissionsREAD:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/lori/app/PipActivity;->CheakPermissions(Landroid/content/Context;[Ljava/lang/String;)V

    .line 411
    :cond_0
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/lori/app/PipActivity;->isFirst:Z

    .line 412
    const/4 v5, 0x3

    .line 413
    .local v5, "byte0":B
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lori/app/PipActivity;->scicle:Landroid/os/Bundle;

    .line 415
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lori/app/PipActivity;->scicle:Landroid/os/Bundle;

    if-eqz v14, :cond_2

    .line 417
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onCreate(), icicle="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 418
    .local v11, "stringbuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lori/app/PipActivity;->scicle:Landroid/os/Bundle;

    sget-object v15, Lcom/lori/app/PipActivity;->HAS_START:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 419
    .local v6, "flag1":Z
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 420
    .local v9, "s1":Ljava/lang/String;
    const-string v14, "onCreate()"

    invoke-static {v14, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lori/app/PipActivity;->scicle:Landroid/os/Bundle;

    sget-object v15, Lcom/lori/app/PipActivity;->HAS_START:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 424
    const-string v14, "onCreate()"

    const-string v15, " back form View Pause!!!!!!!!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lori/app/PipActivity;->scicle:Landroid/os/Bundle;

    .line 427
    .local v3, "bundle1":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-super {v0, v3}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 534
    .end local v3    # "bundle1":Landroid/os/Bundle;
    .end local v6    # "flag1":Z
    .end local v9    # "s1":Ljava/lang/String;
    .end local v11    # "stringbuilder":Ljava/lang/StringBuilder;
    :goto_0
    return-void

    .line 431
    .restart local v6    # "flag1":Z
    .restart local v9    # "s1":Ljava/lang/String;
    .restart local v11    # "stringbuilder":Ljava/lang/StringBuilder;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lori/app/PipActivity;->scicle:Landroid/os/Bundle;

    sget-object v15, Lcom/lori/app/PipActivity;->SCREEN_CHANGED:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/lori/app/PipActivity;->screenChanged:Z

    .line 433
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "icicle: screenChanged="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 434
    .local v12, "stringbuilder1":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lori/app/PipActivity;->screenChanged:Z

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 435
    .local v10, "s3":Ljava/lang/String;
    const-string v14, "onCreate()"

    invoke-static {v14, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lori/app/PipActivity;->screenChanged:Z

    if-eqz v14, :cond_2

    .line 439
    const-string v14, "onCreate()"

    const-string v15, "screenChanged have change!!!!!!!!!!!!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-direct/range {p0 .. p0}, Lcom/lori/app/PipActivity;->initScreen()V

    .line 442
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/lori/app/PipActivity;->screenChanged:Z

    goto :goto_0

    .line 447
    .end local v6    # "flag1":Z
    .end local v9    # "s1":Ljava/lang/String;
    .end local v10    # "s3":Ljava/lang/String;
    .end local v11    # "stringbuilder":Ljava/lang/StringBuilder;
    .end local v12    # "stringbuilder1":Ljava/lang/StringBuilder;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lori/app/PipActivity;->scicle:Landroid/os/Bundle;

    .line 448
    .local v4, "bundle3":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-super {v0, v4}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 449
    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/lori/app/PipActivity;->handler:Landroid/os/Handler;

    .line 451
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/lori/app/PipActivity;->eventThread:Ljava/lang/Thread;

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/lori/app/PipActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    sput-object v14, Lcom/lori/app/PipActivity;->baseDir:Ljava/io/File;

    .line 463
    new-instance v7, Lcom/lori/android/io/LogOutputStream;

    const-string v14, "System.err"

    invoke-direct {v7, v14}, Lcom/lori/android/io/LogOutputStream;-><init>(Ljava/lang/String;)V

    .line 464
    .local v7, "logoutputstream":Lcom/lori/android/io/LogOutputStream;
    new-instance v14, Ljava/io/PrintStream;

    invoke-direct {v14, v7}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v14}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 467
    new-instance v8, Lcom/lori/android/io/LogOutputStream;

    const-string v14, "System.out"

    invoke-direct {v8, v14}, Lcom/lori/android/io/LogOutputStream;-><init>(Ljava/lang/String;)V

    .line 468
    .local v8, "logoutputstream1":Lcom/lori/android/io/LogOutputStream;
    new-instance v14, Ljava/io/PrintStream;

    invoke-direct {v14, v8}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v14}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/lori/app/PipActivity;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x400

    const/16 v16, 0x400

    invoke-virtual/range {v14 .. v16}, Landroid/view/Window;->setFlags(II)V

    .line 472
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lori/app/PipActivity;->requestWindowFeature(I)Z

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/lori/app/PipActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x7f03000f

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 476
    .local v13, "view":Landroid/view/View;
    sput-object v13, Lcom/lori/app/PipActivity;->defaultView:Landroid/view/View;

    .line 477
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lori/app/PipActivity;->setContentView(Landroid/view/View;)V

    .line 478
    const v14, 0x7f09002f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lori/app/PipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    sput-object v14, Lcom/lori/app/PipActivity;->splash_text:Landroid/widget/TextView;

    .line 482
    invoke-direct/range {p0 .. p0}, Lcom/lori/app/PipActivity;->checkQQLogin()V

    .line 486
    invoke-static/range {p0 .. p0}, Lcom/lori/common/QQGameManager;->checkQQLogin(Landroid/app/Activity;)V

    .line 489
    invoke-static/range {p0 .. p0}, Lcom/lori/common/NineOneGameManager;->check91Login(Landroid/app/Activity;)V

    .line 492
    invoke-static/range {p0 .. p0}, Lcom/lori/common/UCGameManager;->checkUCLogin(Landroid/app/Activity;)V

    .line 495
    invoke-static/range {p0 .. p0}, Lcom/lori/common/JiFengGameManager;->init(Landroid/app/Activity;)V

    .line 498
    invoke-static/range {p0 .. p0}, Lcom/lori/common/QiHooGameManager;->check360(Landroid/app/Activity;)V

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/lori/app/PipActivity;->getResolution()Ljava/lang/String;

    .line 507
    invoke-static {}, Lcom/lori/common/Tool;->getPhoneModel()Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/lori/app/PipActivity;->phoneModel:Ljava/lang/String;

    .line 510
    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAh9G81TffLbKWpQFOv/2p5AHsNchOSQ9NUj6AYztpXIjvnOC71YQL9vMUwFVqJYXjAzNN3R7lPJZnLDoBoOIf28Jv8ryyKKQoZfvV6Kwyf715ToNnGoljxYUaCkjw4zaLQk4NQNXUQRHYgxIeFpDh78/r0TULdlYoZwvkxmeJVTGgcRDwaBDVTrb9q0dRhJMZQ0pYZVnlraumUf4QsCzHl2joWE3Y1auhCU/AfrVC+bbL+KYIb5Ii9PnZ9YMwBM9Pv84/C9IUqomJNdiV8E5xB0BGqgF9nEi/8gRS+cT9r2LHDYWYElLR5tDh0fvZckJeokv6aby04aLjjRf35FI6wwIDAQAB"

    .line 511
    .local v2, "base64EncodedPublicKey":Ljava/lang/String;
    new-instance v14, Lcom/android/googleplay/IabHelper;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2}, Lcom/android/googleplay/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/lori/app/PipActivity;->mHelper:Lcom/android/googleplay/IabHelper;

    .line 513
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lori/app/PipActivity;->mHelper:Lcom/android/googleplay/IabHelper;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/googleplay/IabHelper;->enableDebugLogging(Z)V

    .line 516
    sget-object v14, Lcom/lori/app/PipActivity;->TAG:Ljava/lang/String;

    const-string v15, "Starting setup."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lori/app/PipActivity;->mHelper:Lcom/android/googleplay/IabHelper;

    new-instance v15, Lcom/lori/app/PipActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/lori/app/PipActivity$5;-><init>(Lcom/lori/app/PipActivity;)V

    invoke-virtual {v14, v15}, Lcom/android/googleplay/IabHelper;->startSetup(Lcom/android/googleplay/IabHelper$OnIabSetupFinishedListener;)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu1"    # Landroid/view/Menu;

    .prologue
    .line 612
    iget-object v0, p0, Lcom/lori/app/PipActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/lori/app/PipActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0, p1}, Ljavax/microedition/midlet/MIDlet;->setMenu(Landroid/view/Menu;)V

    .line 616
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 615
    :cond_0
    iput-object p1, p0, Lcom/lori/app/PipActivity;->menu:Landroid/view/Menu;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 639
    const-string v3, ""

    const-string v4, "&&&&&&&&&&&&&&&&&&==== onDestroy() =====&&&&&&&&&&&&&&&&&&&&&&"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :try_start_0
    invoke-static {}, Lcom/lori/common/QQGameManager;->onDestroy()V

    .line 644
    iget-object v3, p0, Lcom/lori/app/PipActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/lori/app/PipActivity;->screenChanged:Z

    if-nez v3, :cond_0

    .line 646
    iget-object v3, p0, Lcom/lori/app/PipActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/microedition/midlet/MIDlet;->doDestroyApp(Z)V

    .line 647
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lori/app/PipActivity;->midlet:Ljavax/microedition/midlet/MIDlet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 656
    iget-object v3, p0, Lcom/lori/app/PipActivity;->mHelper:Lcom/android/googleplay/IabHelper;

    if-eqz v3, :cond_1

    .line 657
    iget-object v3, p0, Lcom/lori/app/PipActivity;->mHelper:Lcom/android/googleplay/IabHelper;

    invoke-virtual {v3}, Lcom/android/googleplay/IabHelper;->dispose()V

    .line 658
    iput-object v5, p0, Lcom/lori/app/PipActivity;->mHelper:Lcom/android/googleplay/IabHelper;

    .line 662
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDestroy(), screenChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 663
    .local v2, "stringbuilder":Ljava/lang/StringBuilder;
    iget-boolean v3, p0, Lcom/lori/app/PipActivity;->screenChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, "s":Ljava/lang/String;
    const-string v3, "onDestroy()"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 667
    return-void

    .line 650
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "stringbuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 652
    .local v0, "exception":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "unable to destroy"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p1, "i"    # I
    .param p2, "keyevent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v8, 0x1

    .line 682
    const/4 v7, 0x4

    if-eq p1, v7, :cond_0

    .line 683
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    .line 744
    :goto_0
    return v7

    .line 686
    :cond_0
    iget-object v7, p0, Lcom/lori/app/PipActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    if-nez v7, :cond_1

    .line 687
    invoke-virtual {p0}, Lcom/lori/app/PipActivity;->finish()V

    move v7, v8

    .line 688
    goto :goto_0

    .line 691
    :cond_1
    iget-object v7, p0, Lcom/lori/app/PipActivity;->curDisplay:Ljavax/microedition/lcdui/Displayable;

    instance-of v7, v7, Ljavax/microedition/lcdui/Form;

    if-eqz v7, :cond_5

    .line 693
    iget-object v2, p0, Lcom/lori/app/PipActivity;->curDisplay:Ljavax/microedition/lcdui/Displayable;

    check-cast v2, Ljavax/microedition/lcdui/Form;

    .line 703
    .local v2, "form":Ljavax/microedition/lcdui/Form;
    invoke-virtual {v2}, Ljavax/microedition/lcdui/Form;->getCommands()Ljava/util/Vector;

    move-result-object v6

    .line 705
    .local v6, "vector":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "l":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v3, v7, :cond_2

    .line 715
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    goto :goto_0

    .line 707
    :cond_2
    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/microedition/lcdui/Command;

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Command;->getLabel()Ljava/lang/String;

    move-result-object v5

    .line 708
    .local v5, "s1":Ljava/lang/String;
    const-string v7, "Tr\u1edf v\u1ec1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "H\u1ee7y"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 709
    :cond_3
    invoke-virtual {v2}, Ljavax/microedition/lcdui/Form;->getCommandListener()Ljavax/microedition/lcdui/CommandListener;

    move-result-object v4

    .line 710
    .local v4, "obj":Ljavax/microedition/lcdui/CommandListener;
    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/microedition/lcdui/Command;

    .line 711
    .local v1, "command":Ljavax/microedition/lcdui/Command;
    check-cast v4, Ljavax/microedition/lcdui/CommandListener;

    .end local v4    # "obj":Ljavax/microedition/lcdui/CommandListener;
    invoke-interface {v4, v1, v2}, Ljavax/microedition/lcdui/CommandListener;->commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V

    move v7, v8

    .line 712
    goto :goto_0

    .line 705
    .end local v1    # "command":Ljavax/microedition/lcdui/Command;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 719
    .end local v2    # "form":Ljavax/microedition/lcdui/Form;
    .end local v3    # "l":I
    .end local v5    # "s1":Ljava/lang/String;
    .end local v6    # "vector":Ljava/util/Vector;
    :cond_5
    sget-object v7, Lcom/lori/common/Tool;->gameListener:Lcom/lori/common/GameListener;

    if-eqz v7, :cond_6

    .line 720
    sget-object v7, Lcom/lori/common/Tool;->gameListener:Lcom/lori/common/GameListener;

    invoke-interface {v7}, Lcom/lori/common/GameListener;->isHasUI()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 721
    sget-object v7, Lcom/lori/common/Tool;->gameListener:Lcom/lori/common/GameListener;

    invoke-interface {v7}, Lcom/lori/common/GameListener;->setAndroidBackListener()V

    move v7, v8

    .line 722
    goto :goto_0

    .line 729
    :cond_6
    new-instance v0, Ljavax/microedition/lcdui/Alert;

    const-string v7, "nh\u1eafc"

    const-string v9, "B\u1ea1n c\u00f3 ch\u1eafc b\u1ea1n mu\u1ed1n tho\u00e1t kh\u1ecfi tr\u00f2 ch\u01a1i\uff1f"

    const/4 v10, 0x0

    sget-object v11, Ljavax/microedition/lcdui/AlertType;->INFO:Ljavax/microedition/lcdui/AlertType;

    invoke-direct {v0, v7, v9, v10, v11}, Ljavax/microedition/lcdui/Alert;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/AlertType;)V

    .line 732
    .local v0, "alert":Ljavax/microedition/lcdui/Alert;
    new-instance v7, Lcom/lori/app/PipActivity$6;

    invoke-direct {v7, p0}, Lcom/lori/app/PipActivity$6;-><init>(Lcom/lori/app/PipActivity;)V

    .line 730
    invoke-virtual {v0, v7}, Ljavax/microedition/lcdui/Alert;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    .line 741
    new-instance v7, Ljavax/microedition/lcdui/Command;

    const-string v9, "x\u00e1c nh\u1eadn"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v12}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v7}, Ljavax/microedition/lcdui/Alert;->addCommand(Ljavax/microedition/lcdui/Command;)V

    .line 742
    new-instance v7, Ljavax/microedition/lcdui/Command;

    const-string v9, "hu\u0309y bo\u0309"

    const/4 v10, 0x2

    invoke-direct {v7, v9, v10, v12}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v7}, Ljavax/microedition/lcdui/Alert;->addCommand(Ljavax/microedition/lcdui/Command;)V

    .line 743
    iget-object v7, p0, Lcom/lori/app/PipActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-static {v7}, Ljavax/microedition/lcdui/Display;->getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    move v7, v8

    .line 744
    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 753
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&&&&&&&&&&&=== onPause(), screenChanged = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/lori/app/PipActivity;->screenChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :try_start_0
    iget-object v1, p0, Lcom/lori/app/PipActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    if-eqz v1, :cond_0

    .line 757
    iget-object v1, p0, Lcom/lori/app/PipActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v1}, Ljavax/microedition/midlet/MIDlet;->doPauseApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 765
    return-void

    .line 759
    :catch_0
    move-exception v0

    .line 761
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 762
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unable to freeze app"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1273
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1274
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_1

    .line 1280
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 1275
    .restart local v0    # "i":I
    :cond_1
    aget v1, p3, v0

    .line 1274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 5

    .prologue
    .line 769
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 770
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&&&&&&&&&======= onRestart(), screenChanged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 771
    .local v1, "stringbuilder":Ljava/lang/StringBuilder;
    iget-boolean v2, p0, Lcom/lori/app/PipActivity;->screenChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, "s":Ljava/lang/String;
    const-string v2, "onRestart()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v2, p0, Lcom/lori/app/PipActivity;->scicle:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 774
    iget-object v2, p0, Lcom/lori/app/PipActivity;->scicle:Landroid/os/Bundle;

    sget-object v3, Lcom/lori/app/PipActivity;->HAS_START:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 776
    :cond_0
    const-string v2, "onRestart()"

    const-string v3, "===== onRestart() set has_start = false!!!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 781
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 797
    const/4 v3, 0x1

    sput-boolean v3, Lcom/lori/app/PipActivity;->isActive:Z

    .line 799
    const-string v3, "onResume()"

    const-string v4, "---------------- onResume(), -------------------------------"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v3, p0, Lcom/lori/app/PipActivity;->scicle:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lori/app/PipActivity;->scicle:Landroid/os/Bundle;

    sget-object v4, Lcom/lori/app/PipActivity;->HAS_START:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 802
    const-string v3, "onResume()"

    const-string v4, "---------------- Back form View Pause!!!!!!!!!-----------------"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v0, p0, Lcom/lori/app/PipActivity;->scicle:Landroid/os/Bundle;

    .line 804
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-super {p0, v0}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 850
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/lori/app/PipActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v3}, Ljavax/microedition/midlet/MIDlet;->doStartApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    :goto_0
    return-void

    .line 819
    :cond_1
    iget-object v3, p0, Lcom/lori/app/PipActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/lori/app/PipActivity;->screenChanged:Z

    if-nez v3, :cond_0

    .line 823
    new-instance v2, Lcom/lori/app/PipActivity$7;

    invoke-direct {v2, p0}, Lcom/lori/app/PipActivity$7;-><init>(Lcom/lori/app/PipActivity;)V

    .line 844
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 851
    .end local v2    # "thread":Ljava/lang/Thread;
    :catch_0
    move-exception v1

    .line 852
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 853
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "couldn\'t start MIDlet"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 859
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 860
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&&&& ============== onSaveInstanceState(), screenChanged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 861
    .local v1, "stringbuilder":Ljava/lang/StringBuilder;
    iget-boolean v2, p0, Lcom/lori/app/PipActivity;->screenChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 862
    .local v0, "s":Ljava/lang/String;
    const-string v2, "PipActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    sget-object v2, Lcom/lori/app/PipActivity;->SCREEN_CHANGED:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/lori/app/PipActivity;->screenChanged:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 865
    sget-object v2, Lcom/lori/app/PipActivity;->HAS_START:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 866
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 870
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 871
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&&&&&&&&&============ onStart(), screenChanged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 872
    .local v1, "stringbuilder":Ljava/lang/StringBuilder;
    iget-boolean v2, p0, Lcom/lori/app/PipActivity;->screenChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, "s":Ljava/lang/String;
    const-string v2, "onStart()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    return-void
.end method

.method protected onStop()V
    .locals 5

    .prologue
    .line 883
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 884
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&&&&&&&&&&=========== onStop(), screenChanged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 885
    .local v1, "stringbuilder":Ljava/lang/StringBuilder;
    iget-boolean v2, p0, Lcom/lori/app/PipActivity;->screenChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 886
    .local v0, "s":Ljava/lang/String;
    const-string v2, "onStop()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ",set isActive=false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const/4 v2, 0x0

    sput-boolean v2, Lcom/lori/app/PipActivity;->isActive:Z

    .line 890
    return-void
.end method

.method public sendBackKeyDown()V
    .locals 1

    .prologue
    .line 1024
    new-instance v0, Lcom/lori/app/PipActivity$8;

    invoke-direct {v0, p0}, Lcom/lori/app/PipActivity$8;-><init>(Lcom/lori/app/PipActivity;)V

    .line 1032
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/lori/app/PipActivity;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 1033
    return-void
.end method

.method public setCurrentDisplay(Ljavax/microedition/lcdui/Displayable;)V
    .locals 1
    .param p1, "displayable"    # Ljavax/microedition/lcdui/Displayable;

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/lori/app/PipActivity;->curDisplay:Ljavax/microedition/lcdui/Displayable;

    .line 1038
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Displayable;->getView()Landroid/view/View;

    move-result-object v0

    .line 1039
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/lori/app/PipActivity;->setContentView(Landroid/view/View;)V

    .line 1040
    return-void
.end method

.method public setDefualTypeface(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "textview"    # Landroid/widget/TextView;

    .prologue
    .line 1044
    sget-object v1, Lcom/lori/app/PipActivity;->DEFAULT_FONT:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Font;->getTypefacePaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 1045
    .local v0, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1046
    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1047
    return-void
.end method

.method verifyDeveloperPayload(Lcom/android/googleplay/Purchase;)Z
    .locals 5
    .param p1, "p"    # Lcom/android/googleplay/Purchase;

    .prologue
    .line 1118
    invoke-virtual {p1}, Lcom/android/googleplay/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v1

    .line 1119
    .local v1, "payload":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1120
    .local v2, "temppayload":J
    invoke-static {v2, v3}, Lcom/android/googleplay/Security;->isNonceKnown(J)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1121
    .local v0, "matchOrNot":Ljava/lang/Boolean;
    invoke-static {v2, v3}, Lcom/android/googleplay/Security;->removeNonce(J)V

    .line 1146
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4
.end method
