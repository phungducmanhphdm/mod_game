.class final Ljavax/microedition/rms/SqlDao$RecordStoreSqliteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SqlDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/microedition/rms/SqlDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RecordStoreSqliteOpenHelper"
.end annotation


# instance fields
.field this$0:Ljavax/microedition/rms/SqlDao;

.field final synthetic this$0$:Ljavax/microedition/rms/SqlDao;


# direct methods
.method constructor <init>(Ljavax/microedition/rms/SqlDao;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "cursorfactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p5, "i"    # I

    .prologue
    .line 37
    iput-object p1, p0, Ljavax/microedition/rms/SqlDao$RecordStoreSqliteOpenHelper;->this$0$:Ljavax/microedition/rms/SqlDao;

    .line 38
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 39
    iput-object p1, p0, Ljavax/microedition/rms/SqlDao$RecordStoreSqliteOpenHelper;->this$0:Ljavax/microedition/rms/SqlDao;

    .line 40
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "sqlitedatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 21
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 22
    const-string v0, "CREATE TABLE recordstore (recordstore_pk INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,name VARCHAR(30) NOT NULL,current_size INT DEFAULT 0,nextId INT DEFAULT 1,auth_mode INT DEFAULT 0,writeable TINYINT(1) DEFAULT 0,version INT DEFAULT 0,number_of_records INT DEFAULT 0,timestamp INT DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 23
    const-string v0, "CREATE TABLE record (record_pk INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,recordstore_fk INT NOT NULL,bytes BLOB,record_number INT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 25
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 26
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "sqlitedatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "i"    # I
    .param p3, "j"    # I

    .prologue
    .line 30
    return-void
.end method
