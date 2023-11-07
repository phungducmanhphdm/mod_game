.class public Ljavax/microedition/rms/SqlDao;
.super Ljava/lang/Object;
.source "SqlDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/microedition/rms/SqlDao$RecordStoreSqliteOpenHelper;
    }
.end annotation


# static fields
.field public static final COLUMNNAME_RECORDSTORE_NAME:Ljava/lang/String; = "name"

.field public static final COLUMNNAME_RECORDSTORE_NEXTID:Ljava/lang/String; = "nextId"

.field public static final COLUMNNAME_RECORDSTORE_NUMBER_OF_RECORDS:Ljava/lang/String; = "number_of_records"

.field public static final COLUMNNAME_RECORDSTORE_RECORDSTORE_PK:Ljava/lang/String; = "recordstore_pk"

.field public static final COLUMNNAME_RECORDSTORE_SIZE:Ljava/lang/String; = "current_size"

.field public static final COLUMNNAME_RECORDSTORE_VERSION:Ljava/lang/String; = "version"

.field public static final COLUMNNAME_RECORD_DATA:Ljava/lang/String; = "bytes"

.field public static final COLUMNNAME_RECORD_RECORDNUMBER:Ljava/lang/String; = "record_number"

.field public static final COLUMNNAME_RECORD_RECORDSTORE_FK:Ljava/lang/String; = "recordstore_fk"

.field public static final COLUMNNAME_RECORD_RECORD_PK:Ljava/lang/String; = "record_pk"

.field public static final TABLENAME_RECORD:Ljava/lang/String; = "record"

.field public static final TABLENAME_RECORDSTORE:Ljava/lang/String; = "recordstore"

.field private static database:Landroid/database/sqlite/SQLiteDatabase;

.field private static instance:Ljavax/microedition/rms/SqlDao;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-direct {p0}, Ljavax/microedition/rms/SqlDao;->init()V

    .line 47
    return-void
.end method

.method private extractRecordStore(Landroid/database/Cursor;)Ljavax/microedition/rms/RecordStore;
    .locals 19
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 56
    monitor-enter p0

    .line 61
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 62
    const-string v18, "recordstore_pk"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 63
    .local v3, "i":I
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 64
    .local v6, "j":I
    const-string v18, "version"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 65
    .local v9, "k":I
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 66
    .local v12, "l":I
    const-string v18, "nextId"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 67
    .local v4, "i1":I
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 68
    .local v7, "j1":I
    const-string v18, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 69
    .local v10, "k1":I
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 70
    .local v17, "s":Ljava/lang/String;
    const-string v18, "number_of_records"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 71
    .local v13, "l1":I
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 72
    .local v5, "i2":I
    const-string v18, "current_size"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 73
    .local v8, "j2":I
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 74
    .local v11, "k2":I
    int-to-long v14, v6

    .line 75
    .local v14, "l2":J
    new-instance v16, Ljavax/microedition/rms/RecordStore;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14, v15}, Ljavax/microedition/rms/RecordStore;-><init>(Ljava/lang/String;J)V

    .line 76
    .local v16, "recordstore":Ljavax/microedition/rms/RecordStore;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljavax/microedition/rms/RecordStore;->setVersion(I)V

    .line 77
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljavax/microedition/rms/RecordStore;->setNextId(I)V

    .line 78
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljavax/microedition/rms/RecordStore;->setNumberOfRecords(I)V

    .line 79
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljavax/microedition/rms/RecordStore;->setSize(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :try_start_1
    monitor-exit p0

    .line 85
    .end local v3    # "i":I
    .end local v4    # "i1":I
    .end local v5    # "i2":I
    .end local v6    # "j":I
    .end local v7    # "j1":I
    .end local v8    # "j2":I
    .end local v9    # "k":I
    .end local v10    # "k1":I
    .end local v11    # "k2":I
    .end local v12    # "l":I
    .end local v13    # "l1":I
    .end local v14    # "l2":J
    .end local v16    # "recordstore":Ljavax/microedition/rms/RecordStore;
    .end local v17    # "s":Ljava/lang/String;
    :goto_0
    return-object v16

    .line 81
    :catch_0
    move-exception v2

    .line 82
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    monitor-exit p0

    .line 85
    const/16 v16, 0x0

    goto :goto_0

    .line 56
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18
.end method

.method public static getInstance()Ljavax/microedition/rms/SqlDao;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Ljavax/microedition/rms/SqlDao;->instance:Ljavax/microedition/rms/SqlDao;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljavax/microedition/rms/SqlDao;

    invoke-direct {v0}, Ljavax/microedition/rms/SqlDao;-><init>()V

    sput-object v0, Ljavax/microedition/rms/SqlDao;->instance:Ljavax/microedition/rms/SqlDao;

    .line 92
    :cond_0
    sget-object v0, Ljavax/microedition/rms/SqlDao;->instance:Ljavax/microedition/rms/SqlDao;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 97
    sget-object v0, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    check-cast v0, Lcom/lori/app/PipActivity;

    invoke-virtual {v0}, Lcom/lori/app/PipActivity;->getDefaultView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 98
    .local v2, "context":Landroid/content/Context;
    move-object v1, p0

    .line 99
    .local v1, "sqldao":Ljavax/microedition/rms/SqlDao;
    new-instance v0, Ljavax/microedition/rms/SqlDao$RecordStoreSqliteOpenHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "recordstoredb"

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, Ljavax/microedition/rms/SqlDao$RecordStoreSqliteOpenHelper;-><init>(Ljavax/microedition/rms/SqlDao;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v0}, Ljavax/microedition/rms/SqlDao$RecordStoreSqliteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 100
    return-void
.end method


# virtual methods
.method public addRecord(J[B)I
    .locals 101
    .param p1, "l"    # J
    .param p3, "abyte0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 109
    monitor-enter p0

    .line 111
    const/16 v25, 0x0

    .line 112
    .local v25, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v4, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    .local v4, "store_3":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x1

    :try_start_1
    new-array v8, v5, [Ljava/lang/String;

    .line 124
    .local v8, "as":[Ljava/lang/String;
    new-instance v100, Ljava/lang/StringBuilder;

    invoke-direct/range {v100 .. v100}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v100, "stringbuilder":Ljava/lang/StringBuilder;
    move-wide/from16 v67, p1

    .line 126
    .local v67, "l1":J
    move-object/from16 v0, v100

    move-wide/from16 v1, v67

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    .line 128
    .local v77, "s":Ljava/lang/String;
    const/4 v5, 0x0

    aput-object v77, v8, v5

    .line 129
    const-string v5, "recordstore"

    const/4 v6, 0x0

    const-string v7, "recordstore_pk = ?"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 132
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    .line 133
    move-object/from16 v26, v25

    .line 134
    .local v26, "cursor1":Landroid/database/Cursor;
    const-string v78, "version"

    .line 135
    .local v78, "s1":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v78

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 137
    .local v35, "i":I
    move-object/from16 v27, v25

    .line 138
    .local v27, "cursor2":Landroid/database/Cursor;
    move/from16 v55, v35

    .line 139
    .local v55, "j":I
    move-object/from16 v0, v27

    move/from16 v1, v55

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v61

    .line 141
    .local v61, "k":I
    move-object/from16 v28, v25

    .line 142
    .local v28, "cursor3":Landroid/database/Cursor;
    const-string v88, "nextId"

    .line 143
    .local v88, "s2":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v88

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    .line 145
    .local v36, "i1":I
    move-object/from16 v29, v25

    .line 146
    .local v29, "cursor4":Landroid/database/Cursor;
    move/from16 v56, v36

    .line 147
    .local v56, "j1":I
    move-object/from16 v0, v29

    move/from16 v1, v56

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v62

    .line 149
    .local v62, "k1":I
    move-object/from16 v30, v25

    .line 150
    .local v30, "cursor5":Landroid/database/Cursor;
    const-string v89, "number_of_records"

    .line 151
    .local v89, "s3":Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v89

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    .line 153
    .local v37, "i2":I
    move-object/from16 v31, v25

    .line 154
    .local v31, "cursor6":Landroid/database/Cursor;
    move/from16 v57, v37

    .line 155
    .local v57, "j2":I
    move-object/from16 v0, v31

    move/from16 v1, v57

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v63

    .line 158
    .local v63, "k2":I
    move-object/from16 v32, v25

    .line 159
    .local v32, "cursor7":Landroid/database/Cursor;
    const-string v90, "current_size"

    .line 160
    .local v90, "s4":Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v90

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v69

    .line 162
    .local v69, "l2":I
    move-object/from16 v33, v25

    .line 163
    .local v33, "cursor8":Landroid/database/Cursor;
    move/from16 v38, v69

    .line 164
    .local v38, "i3":I
    move-object/from16 v0, v33

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v58

    .line 170
    .local v58, "j3":I
    :try_start_2
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 204
    :goto_0
    :try_start_3
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 209
    .local v15, "contentvalues":Landroid/content/ContentValues;
    move-object/from16 v16, v15

    .line 210
    .local v16, "contentvalues1":Landroid/content/ContentValues;
    :try_start_4
    const-string v91, "bytes"

    .line 211
    .local v91, "s5":Ljava/lang/String;
    move-object/from16 v12, p3

    .line 212
    .local v12, "abyte1":[B
    move-object/from16 v0, v16

    move-object/from16 v1, v91

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 214
    const/16 v41, 0x0

    .line 215
    .local v41, "integer":Ljava/lang/Integer;
    move-object/from16 v42, v41

    .line 216
    .local v42, "integer1":Ljava/lang/Object;
    move/from16 v64, v62

    .line 217
    .local v64, "k3":I
    new-instance v42, Ljava/lang/Integer;

    .end local v42    # "integer1":Ljava/lang/Object;
    move-object/from16 v0, v42

    move/from16 v1, v64

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 218
    .local v42, "integer1":Ljava/lang/Integer;
    move-object/from16 v41, v42

    .line 219
    move-object/from16 v17, v15

    .line 220
    .local v17, "contentvalues2":Landroid/content/ContentValues;
    const-string v92, "record_number"

    .line 221
    .local v92, "s6":Ljava/lang/String;
    move-object/from16 v47, v41

    .line 222
    .local v47, "integer2":Ljava/lang/Integer;
    move-object/from16 v0, v17

    move-object/from16 v1, v92

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    const/16 v74, 0x0

    .line 225
    .local v74, "long1":Ljava/lang/Long;
    move-object/from16 v75, v74

    .line 226
    .local v75, "long2":Ljava/lang/Object;
    move-wide/from16 v70, p1

    .line 227
    .local v70, "l3":J
    new-instance v75, Ljava/lang/Long;

    .end local v75    # "long2":Ljava/lang/Object;
    move-object/from16 v0, v75

    move-wide/from16 v1, v70

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 228
    .local v75, "long2":Ljava/lang/Long;
    move-object/from16 v74, v75

    .line 229
    move-object/from16 v18, v15

    .line 230
    .local v18, "contentvalues3":Landroid/content/ContentValues;
    const-string v93, "recordstore_fk"

    .line 231
    .local v93, "s7":Ljava/lang/String;
    move-object/from16 v76, v74

    .line 232
    .local v76, "long3":Ljava/lang/Long;
    move-object/from16 v0, v18

    move-object/from16 v1, v93

    move-object/from16 v2, v76

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 234
    sget-object v5, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 235
    sget-object v97, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 236
    .local v97, "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    const-string v94, "record"

    .line 237
    .local v94, "s8":Ljava/lang/String;
    const/16 v95, 0x0

    .line 238
    .local v95, "s9":Ljava/lang/String;
    move-object/from16 v19, v15

    .line 239
    .local v19, "contentvalues4":Landroid/content/ContentValues;
    move-object/from16 v0, v97

    move-object/from16 v1, v94

    move-object/from16 v2, v95

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 240
    sget-object v5, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 241
    sget-object v5, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 253
    :try_start_5
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 254
    add-int/lit8 v39, v61, 0x1

    .line 255
    .local v39, "i4":I
    add-int/lit8 v59, v62, 0x1

    .line 256
    .local v59, "j4":I
    add-int/lit8 v65, v63, 0x1

    .line 257
    .local v65, "k4":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v72, v0

    .line 258
    .local v72, "l4":I
    add-int v40, v58, v72

    .line 260
    .local v40, "i5":I
    const/16 v48, 0x0

    .line 261
    .local v48, "integer3":Ljava/lang/Integer;
    move-object/from16 v49, v48

    .line 262
    .local v49, "integer4":Ljava/lang/Object;
    move/from16 v60, v39

    .line 263
    .local v60, "j5":I
    new-instance v49, Ljava/lang/Integer;

    .end local v49    # "integer4":Ljava/lang/Object;
    move-object/from16 v0, v49

    move/from16 v1, v60

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 264
    .local v49, "integer4":Ljava/lang/Integer;
    move-object/from16 v48, v49

    .line 265
    move-object/from16 v20, v15

    .line 266
    .local v20, "contentvalues5":Landroid/content/ContentValues;
    const-string v79, "version"

    .line 267
    .local v79, "s10":Ljava/lang/String;
    move-object/from16 v50, v48

    .line 268
    .local v50, "integer5":Ljava/lang/Integer;
    move-object/from16 v0, v20

    move-object/from16 v1, v79

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    new-instance v51, Ljava/lang/Integer;

    move-object/from16 v0, v51

    move/from16 v1, v59

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 271
    .local v51, "integer6":Ljava/lang/Integer;
    move-object/from16 v21, v15

    .line 272
    .local v21, "contentvalues6":Landroid/content/ContentValues;
    const-string v80, "nextId"

    .line 273
    .local v80, "s11":Ljava/lang/String;
    move-object/from16 v52, v51

    .line 274
    .local v52, "integer7":Ljava/lang/Integer;
    move-object/from16 v0, v21

    move-object/from16 v1, v80

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    const/16 v53, 0x0

    .line 278
    .local v53, "integer8":Ljava/lang/Integer;
    move-object/from16 v54, v53

    .line 279
    .local v54, "integer9":Ljava/lang/Object;
    move/from16 v66, v65

    .line 280
    .local v66, "k5":I
    new-instance v54, Ljava/lang/Integer;

    .end local v54    # "integer9":Ljava/lang/Object;
    move-object/from16 v0, v54

    move/from16 v1, v66

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 281
    .local v54, "integer9":Ljava/lang/Integer;
    move-object/from16 v53, v54

    .line 282
    move-object/from16 v22, v15

    .line 283
    .local v22, "contentvalues7":Landroid/content/ContentValues;
    const-string v81, "number_of_records"

    .line 284
    .local v81, "s12":Ljava/lang/String;
    move-object/from16 v43, v53

    .line 285
    .local v43, "integer10":Ljava/lang/Integer;
    move-object/from16 v0, v22

    move-object/from16 v1, v81

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    const/16 v44, 0x0

    .line 288
    .local v44, "integer11":Ljava/lang/Integer;
    move-object/from16 v45, v44

    .line 289
    .local v45, "integer12":Ljava/lang/Object;
    move/from16 v73, v40

    .line 290
    .local v73, "l5":I
    new-instance v45, Ljava/lang/Integer;

    .end local v45    # "integer12":Ljava/lang/Object;
    move-object/from16 v0, v45

    move/from16 v1, v73

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 291
    .local v45, "integer12":Ljava/lang/Integer;
    move-object/from16 v44, v45

    .line 292
    move-object/from16 v23, v15

    .line 293
    .local v23, "contentvalues8":Landroid/content/ContentValues;
    const-string v82, "current_size"

    .line 294
    .local v82, "s13":Ljava/lang/String;
    move-object/from16 v46, v44

    .line 295
    .local v46, "integer13":Ljava/lang/Integer;
    move-object/from16 v0, v23

    move-object/from16 v1, v82

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    sget-object v5, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 299
    sget-object v98, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 300
    .local v98, "sqlitedatabase1":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x1

    new-array v13, v5, [Ljava/lang/String;

    .line 301
    .local v13, "as1":[Ljava/lang/String;
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v83

    .line 302
    .local v83, "s14":Ljava/lang/String;
    const/4 v5, 0x0

    aput-object v83, v13, v5

    .line 303
    move-object/from16 v99, v98

    .line 304
    .local v99, "sqlitedatabase2":Landroid/database/sqlite/SQLiteDatabase;
    const-string v84, "recordstore"

    .line 305
    .local v84, "s15":Ljava/lang/String;
    move-object/from16 v24, v15

    .line 306
    .local v24, "contentvalues9":Landroid/content/ContentValues;
    const-string v85, "recordstore_pk= ?"

    .line 307
    .local v85, "s16":Ljava/lang/String;
    move-object v14, v13

    .line 308
    .local v14, "as2":[Ljava/lang/String;
    move-object/from16 v0, v99

    move-object/from16 v1, v84

    move-object/from16 v2, v24

    move-object/from16 v3, v85

    invoke-virtual {v0, v1, v2, v3, v14}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 309
    sget-object v5, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 310
    sget-object v5, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 318
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return v62

    .line 166
    .end local v8    # "as":[Ljava/lang/String;
    .end local v12    # "abyte1":[B
    .end local v13    # "as1":[Ljava/lang/String;
    .end local v14    # "as2":[Ljava/lang/String;
    .end local v15    # "contentvalues":Landroid/content/ContentValues;
    .end local v16    # "contentvalues1":Landroid/content/ContentValues;
    .end local v17    # "contentvalues2":Landroid/content/ContentValues;
    .end local v18    # "contentvalues3":Landroid/content/ContentValues;
    .end local v19    # "contentvalues4":Landroid/content/ContentValues;
    .end local v20    # "contentvalues5":Landroid/content/ContentValues;
    .end local v21    # "contentvalues6":Landroid/content/ContentValues;
    .end local v22    # "contentvalues7":Landroid/content/ContentValues;
    .end local v23    # "contentvalues8":Landroid/content/ContentValues;
    .end local v24    # "contentvalues9":Landroid/content/ContentValues;
    .end local v26    # "cursor1":Landroid/database/Cursor;
    .end local v27    # "cursor2":Landroid/database/Cursor;
    .end local v28    # "cursor3":Landroid/database/Cursor;
    .end local v29    # "cursor4":Landroid/database/Cursor;
    .end local v30    # "cursor5":Landroid/database/Cursor;
    .end local v31    # "cursor6":Landroid/database/Cursor;
    .end local v32    # "cursor7":Landroid/database/Cursor;
    .end local v33    # "cursor8":Landroid/database/Cursor;
    .end local v35    # "i":I
    .end local v36    # "i1":I
    .end local v37    # "i2":I
    .end local v38    # "i3":I
    .end local v39    # "i4":I
    .end local v40    # "i5":I
    .end local v41    # "integer":Ljava/lang/Integer;
    .end local v42    # "integer1":Ljava/lang/Integer;
    .end local v43    # "integer10":Ljava/lang/Integer;
    .end local v44    # "integer11":Ljava/lang/Integer;
    .end local v45    # "integer12":Ljava/lang/Integer;
    .end local v46    # "integer13":Ljava/lang/Integer;
    .end local v47    # "integer2":Ljava/lang/Integer;
    .end local v48    # "integer3":Ljava/lang/Integer;
    .end local v49    # "integer4":Ljava/lang/Integer;
    .end local v50    # "integer5":Ljava/lang/Integer;
    .end local v51    # "integer6":Ljava/lang/Integer;
    .end local v52    # "integer7":Ljava/lang/Integer;
    .end local v53    # "integer8":Ljava/lang/Integer;
    .end local v54    # "integer9":Ljava/lang/Integer;
    .end local v55    # "j":I
    .end local v56    # "j1":I
    .end local v57    # "j2":I
    .end local v58    # "j3":I
    .end local v59    # "j4":I
    .end local v60    # "j5":I
    .end local v61    # "k":I
    .end local v62    # "k1":I
    .end local v63    # "k2":I
    .end local v64    # "k3":I
    .end local v65    # "k4":I
    .end local v66    # "k5":I
    .end local v67    # "l1":J
    .end local v69    # "l2":I
    .end local v70    # "l3":J
    .end local v72    # "l4":I
    .end local v73    # "l5":I
    .end local v74    # "long1":Ljava/lang/Long;
    .end local v75    # "long2":Ljava/lang/Long;
    .end local v76    # "long3":Ljava/lang/Long;
    .end local v77    # "s":Ljava/lang/String;
    .end local v78    # "s1":Ljava/lang/String;
    .end local v79    # "s10":Ljava/lang/String;
    .end local v80    # "s11":Ljava/lang/String;
    .end local v81    # "s12":Ljava/lang/String;
    .end local v82    # "s13":Ljava/lang/String;
    .end local v83    # "s14":Ljava/lang/String;
    .end local v84    # "s15":Ljava/lang/String;
    .end local v85    # "s16":Ljava/lang/String;
    .end local v88    # "s2":Ljava/lang/String;
    .end local v89    # "s3":Ljava/lang/String;
    .end local v90    # "s4":Ljava/lang/String;
    .end local v91    # "s5":Ljava/lang/String;
    .end local v92    # "s6":Ljava/lang/String;
    .end local v93    # "s7":Ljava/lang/String;
    .end local v94    # "s8":Ljava/lang/String;
    .end local v95    # "s9":Ljava/lang/String;
    .end local v97    # "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    .end local v98    # "sqlitedatabase1":Landroid/database/sqlite/SQLiteDatabase;
    .end local v99    # "sqlitedatabase2":Landroid/database/sqlite/SQLiteDatabase;
    .end local v100    # "stringbuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v34

    .line 167
    .local v34, "ex":Ljava/lang/Exception;
    :try_start_7
    new-instance v5, Ljavax/microedition/rms/RecordStoreException;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 168
    .end local v34    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 170
    :try_start_8
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 174
    :goto_1
    :try_start_9
    throw v5

    .line 109
    .end local v4    # "store_3":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v5

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v5

    .line 243
    .restart local v4    # "store_3":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "as":[Ljava/lang/String;
    .restart local v15    # "contentvalues":Landroid/content/ContentValues;
    .restart local v16    # "contentvalues1":Landroid/content/ContentValues;
    .restart local v26    # "cursor1":Landroid/database/Cursor;
    .restart local v27    # "cursor2":Landroid/database/Cursor;
    .restart local v28    # "cursor3":Landroid/database/Cursor;
    .restart local v29    # "cursor4":Landroid/database/Cursor;
    .restart local v30    # "cursor5":Landroid/database/Cursor;
    .restart local v31    # "cursor6":Landroid/database/Cursor;
    .restart local v32    # "cursor7":Landroid/database/Cursor;
    .restart local v33    # "cursor8":Landroid/database/Cursor;
    .restart local v35    # "i":I
    .restart local v36    # "i1":I
    .restart local v37    # "i2":I
    .restart local v38    # "i3":I
    .restart local v55    # "j":I
    .restart local v56    # "j1":I
    .restart local v57    # "j2":I
    .restart local v58    # "j3":I
    .restart local v61    # "k":I
    .restart local v62    # "k1":I
    .restart local v63    # "k2":I
    .restart local v67    # "l1":J
    .restart local v69    # "l2":I
    .restart local v77    # "s":Ljava/lang/String;
    .restart local v78    # "s1":Ljava/lang/String;
    .restart local v88    # "s2":Ljava/lang/String;
    .restart local v89    # "s3":Ljava/lang/String;
    .restart local v90    # "s4":Ljava/lang/String;
    .restart local v100    # "stringbuilder":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v96

    .line 245
    .local v96, "sqlexception":Landroid/database/SQLException;
    :try_start_a
    invoke-virtual/range {v96 .. v96}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v86

    .line 246
    .local v86, "s17":Ljava/lang/String;
    new-instance v5, Ljavax/microedition/rms/RecordStoreException;

    move-object/from16 v0, v86

    invoke-direct {v5, v0}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 312
    .end local v86    # "s17":Ljava/lang/String;
    .end local v96    # "sqlexception":Landroid/database/SQLException;
    .restart local v12    # "abyte1":[B
    .restart local v17    # "contentvalues2":Landroid/content/ContentValues;
    .restart local v18    # "contentvalues3":Landroid/content/ContentValues;
    .restart local v19    # "contentvalues4":Landroid/content/ContentValues;
    .restart local v41    # "integer":Ljava/lang/Integer;
    .restart local v42    # "integer1":Ljava/lang/Integer;
    .restart local v47    # "integer2":Ljava/lang/Integer;
    .restart local v64    # "k3":I
    .restart local v70    # "l3":J
    .restart local v74    # "long1":Ljava/lang/Long;
    .restart local v75    # "long2":Ljava/lang/Long;
    .restart local v76    # "long3":Ljava/lang/Long;
    .restart local v91    # "s5":Ljava/lang/String;
    .restart local v92    # "s6":Ljava/lang/String;
    .restart local v93    # "s7":Ljava/lang/String;
    .restart local v94    # "s8":Ljava/lang/String;
    .restart local v95    # "s9":Ljava/lang/String;
    .restart local v97    # "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    :catch_2
    move-exception v34

    .line 314
    .restart local v34    # "ex":Ljava/lang/Exception;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v87

    .line 315
    .local v87, "s18":Ljava/lang/String;
    new-instance v5, Ljavax/microedition/rms/RecordStoreException;

    move-object/from16 v0, v87

    invoke-direct {v5, v0}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 171
    .end local v8    # "as":[Ljava/lang/String;
    .end local v12    # "abyte1":[B
    .end local v15    # "contentvalues":Landroid/content/ContentValues;
    .end local v16    # "contentvalues1":Landroid/content/ContentValues;
    .end local v17    # "contentvalues2":Landroid/content/ContentValues;
    .end local v18    # "contentvalues3":Landroid/content/ContentValues;
    .end local v19    # "contentvalues4":Landroid/content/ContentValues;
    .end local v26    # "cursor1":Landroid/database/Cursor;
    .end local v27    # "cursor2":Landroid/database/Cursor;
    .end local v28    # "cursor3":Landroid/database/Cursor;
    .end local v29    # "cursor4":Landroid/database/Cursor;
    .end local v30    # "cursor5":Landroid/database/Cursor;
    .end local v31    # "cursor6":Landroid/database/Cursor;
    .end local v32    # "cursor7":Landroid/database/Cursor;
    .end local v33    # "cursor8":Landroid/database/Cursor;
    .end local v34    # "ex":Ljava/lang/Exception;
    .end local v35    # "i":I
    .end local v36    # "i1":I
    .end local v37    # "i2":I
    .end local v38    # "i3":I
    .end local v41    # "integer":Ljava/lang/Integer;
    .end local v42    # "integer1":Ljava/lang/Integer;
    .end local v47    # "integer2":Ljava/lang/Integer;
    .end local v55    # "j":I
    .end local v56    # "j1":I
    .end local v57    # "j2":I
    .end local v58    # "j3":I
    .end local v61    # "k":I
    .end local v62    # "k1":I
    .end local v63    # "k2":I
    .end local v64    # "k3":I
    .end local v67    # "l1":J
    .end local v69    # "l2":I
    .end local v70    # "l3":J
    .end local v74    # "long1":Ljava/lang/Long;
    .end local v75    # "long2":Ljava/lang/Long;
    .end local v76    # "long3":Ljava/lang/Long;
    .end local v77    # "s":Ljava/lang/String;
    .end local v78    # "s1":Ljava/lang/String;
    .end local v87    # "s18":Ljava/lang/String;
    .end local v88    # "s2":Ljava/lang/String;
    .end local v89    # "s3":Ljava/lang/String;
    .end local v90    # "s4":Ljava/lang/String;
    .end local v91    # "s5":Ljava/lang/String;
    .end local v92    # "s6":Ljava/lang/String;
    .end local v93    # "s7":Ljava/lang/String;
    .end local v94    # "s8":Ljava/lang/String;
    .end local v95    # "s9":Ljava/lang/String;
    .end local v97    # "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    .end local v100    # "stringbuilder":Ljava/lang/StringBuilder;
    :catch_3
    move-exception v6

    goto :goto_1

    .restart local v8    # "as":[Ljava/lang/String;
    .restart local v26    # "cursor1":Landroid/database/Cursor;
    .restart local v27    # "cursor2":Landroid/database/Cursor;
    .restart local v28    # "cursor3":Landroid/database/Cursor;
    .restart local v29    # "cursor4":Landroid/database/Cursor;
    .restart local v30    # "cursor5":Landroid/database/Cursor;
    .restart local v31    # "cursor6":Landroid/database/Cursor;
    .restart local v32    # "cursor7":Landroid/database/Cursor;
    .restart local v33    # "cursor8":Landroid/database/Cursor;
    .restart local v35    # "i":I
    .restart local v36    # "i1":I
    .restart local v37    # "i2":I
    .restart local v38    # "i3":I
    .restart local v55    # "j":I
    .restart local v56    # "j1":I
    .restart local v57    # "j2":I
    .restart local v58    # "j3":I
    .restart local v61    # "k":I
    .restart local v62    # "k1":I
    .restart local v63    # "k2":I
    .restart local v67    # "l1":J
    .restart local v69    # "l2":I
    .restart local v77    # "s":Ljava/lang/String;
    .restart local v78    # "s1":Ljava/lang/String;
    .restart local v88    # "s2":Ljava/lang/String;
    .restart local v89    # "s3":Ljava/lang/String;
    .restart local v90    # "s4":Ljava/lang/String;
    .restart local v100    # "stringbuilder":Ljava/lang/StringBuilder;
    :catch_4
    move-exception v5

    goto/16 :goto_0
.end method

.method public createRecordStore(Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;
    .locals 10
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 329
    monitor-enter p0

    .line 331
    if-nez p1, :cond_0

    .line 332
    :try_start_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "The parameter \'recordStoreName\' must not be null."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 329
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 338
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 339
    .local v0, "contentvalues":Landroid/content/ContentValues;
    const-string v7, "name"

    invoke-virtual {v0, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    sget-object v7, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 342
    sget-object v7, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "recordstore"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 343
    .local v1, "l":J
    sget-object v7, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 344
    sget-object v7, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 346
    const-wide/16 v7, -0x1

    cmp-long v7, v1, v7

    if-eqz v7, :cond_1

    .line 347
    new-instance v3, Ljavax/microedition/rms/RecordStore;

    invoke-direct {v3, p1, v1, v2}, Ljavax/microedition/rms/RecordStore;-><init>(Ljava/lang/String;J)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    .local v3, "recordstore":Ljavax/microedition/rms/RecordStore;
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v3

    .line 351
    .end local v3    # "recordstore":Ljavax/microedition/rms/RecordStore;
    :cond_1
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not insert record store row with name \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'. Reason: The method \'SQLiteDatabase.insertOrThrow\' returned \'-1\' instead of throwing an exception."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, "s1":Ljava/lang/String;
    new-instance v7, Ljavax/microedition/rms/RecordStoreException;

    invoke-direct {v7, v4}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 354
    .end local v0    # "contentvalues":Landroid/content/ContentValues;
    .end local v1    # "l":J
    .end local v4    # "s1":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 356
    .local v6, "sqlexception":Landroid/database/SQLException;
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not insert record store row with name \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'. Reason: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 357
    .local v5, "s2":Ljava/lang/String;
    new-instance v7, Ljavax/microedition/rms/RecordStoreException;

    invoke-direct {v7, v5}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public deleteRecordStore(Ljava/lang/String;)V
    .locals 10
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotFoundException;
        }
    .end annotation

    .prologue
    .line 369
    monitor-enter p0

    .line 371
    :try_start_0
    invoke-virtual {p0, p1}, Ljavax/microedition/rms/SqlDao;->getRecordStore(Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;

    move-result-object v3

    .line 372
    .local v3, "recordstore":Ljavax/microedition/rms/RecordStore;
    if-nez v3, :cond_0

    .line 374
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not delete row in table \'recordstore\' with value \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 375
    .local v4, "s1":Ljava/lang/String;
    new-instance v8, Ljavax/microedition/rms/RecordStoreNotFoundException;

    invoke-direct {v8, v4}, Ljavax/microedition/rms/RecordStoreNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 369
    .end local v3    # "recordstore":Ljavax/microedition/rms/RecordStore;
    .end local v4    # "s1":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 378
    .restart local v3    # "recordstore":Ljavax/microedition/rms/RecordStore;
    :cond_0
    :try_start_1
    sget-object v8, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 380
    sget-object v6, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 381
    .local v6, "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x1

    new-array v0, v8, [Ljava/lang/String;

    .line 382
    .local v0, "as":[Ljava/lang/String;
    const/4 v8, 0x0

    aput-object p1, v0, v8

    .line 383
    const-string v8, "recordstore"

    const-string v9, "name = ?"

    invoke-virtual {v6, v8, v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 385
    sget-object v7, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 386
    .local v7, "sqlitedatabase1":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x1

    new-array v1, v8, [Ljava/lang/String;

    .line 387
    .local v1, "as1":[Ljava/lang/String;
    iget-wide v8, v3, Ljavax/microedition/rms/RecordStore;->recordStorePk:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 388
    .local v5, "s2":Ljava/lang/String;
    const/4 v8, 0x0

    aput-object v5, v1, v8

    .line 389
    const-string v8, "record"

    const-string v9, "recordstore_fk = ?"

    invoke-virtual {v7, v8, v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 390
    sget-object v8, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 392
    sget-object v8, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    .end local v0    # "as":[Ljava/lang/String;
    .end local v1    # "as1":[Ljava/lang/String;
    .end local v5    # "s2":Ljava/lang/String;
    .end local v6    # "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    .end local v7    # "sqlitedatabase1":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 399
    return-void

    .line 394
    :catch_0
    move-exception v2

    .line 396
    .local v2, "ex":Ljava/lang/Exception;
    const-string v8, "SqlDao"

    const-string v9, "deleteRecordStore() ERROR!!!!!!!!!!!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 407
    monitor-enter p0

    .line 410
    :try_start_0
    sget-object v1, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 415
    return-void

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 407
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getRecord(JI)[B
    .locals 15
    .param p1, "l"    # J
    .param p3, "i"    # I

    .prologue
    .line 423
    monitor-enter p0

    .line 425
    const/4 v9, 0x0

    .line 426
    .local v9, "abyte0":[B
    const/4 v10, 0x0

    .line 428
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 429
    .local v1, "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 430
    .local v3, "as":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v4, "bytes"

    aput-object v4, v3, v2

    .line 431
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    .line 432
    .local v5, "as1":[Ljava/lang/String;
    move/from16 v0, p3

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 433
    .local v13, "s":Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v13, v5, v2

    .line 435
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    .line 436
    .local v14, "s1":Ljava/lang/String;
    const/4 v2, 0x1

    aput-object v14, v5, v2

    .line 437
    const-string v2, "record"

    const-string v4, "record_number=? AND recordstore_fk=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 438
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 440
    .local v12, "j":I
    if-eqz v12, :cond_0

    .line 441
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 442
    const/4 v12, 0x0

    .line 443
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 452
    :cond_0
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 457
    .end local v1    # "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "as":[Ljava/lang/String;
    .end local v5    # "as1":[Ljava/lang/String;
    .end local v12    # "j":I
    .end local v13    # "s":Ljava/lang/String;
    .end local v14    # "s1":Ljava/lang/String;
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v9

    .line 445
    :catch_0
    move-exception v11

    .line 447
    .local v11, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 452
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 453
    :catch_1
    move-exception v2

    goto :goto_0

    .line 449
    .end local v11    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 452
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 456
    :goto_1
    :try_start_6
    throw v2

    .line 423
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    .line 453
    :catch_2
    move-exception v4

    goto :goto_1

    .restart local v1    # "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "as":[Ljava/lang/String;
    .restart local v5    # "as1":[Ljava/lang/String;
    .restart local v12    # "j":I
    .restart local v13    # "s":Ljava/lang/String;
    .restart local v14    # "s1":Ljava/lang/String;
    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method public getRecordIdsForRecordStore(J)[I
    .locals 15
    .param p1, "l"    # J

    .prologue
    .line 467
    monitor-enter p0

    .line 469
    const/4 v10, 0x0

    .line 470
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 472
    .local v0, "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 474
    .local v8, "ai":[I
    const/4 v1, 0x1

    :try_start_1
    new-array v2, v1, [Ljava/lang/String;

    .line 475
    .local v2, "as":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v3, "record_number"

    aput-object v3, v2, v1

    .line 476
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    .line 478
    .local v4, "as1":[Ljava/lang/String;
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    .line 479
    .local v14, "s":Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v14, v4, v1

    .line 480
    const-string v1, "record"

    const-string v3, "recordstore_fk=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "record_number ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 481
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 482
    .local v12, "i":I
    if-eqz v12, :cond_1

    .line 485
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 486
    new-array v8, v12, [I

    .line 487
    const/4 v13, 0x0

    .line 489
    .local v13, "j":I
    :goto_0
    if-lt v13, v12, :cond_0

    .line 490
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 491
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v9, v8

    .line 509
    .end local v2    # "as":[Ljava/lang/String;
    .end local v4    # "as1":[Ljava/lang/String;
    .end local v8    # "ai":[I
    .end local v12    # "i":I
    .end local v13    # "j":I
    .end local v14    # "s":Ljava/lang/String;
    .local v9, "ai":[I
    :goto_2
    return-object v9

    .line 493
    .end local v9    # "ai":[I
    .restart local v2    # "as":[Ljava/lang/String;
    .restart local v4    # "as1":[Ljava/lang/String;
    .restart local v8    # "ai":[I
    .restart local v12    # "i":I
    .restart local v13    # "j":I
    .restart local v14    # "s":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    :try_start_4
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v8, v13

    .line 494
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 495
    add-int/lit8 v13, v13, 0x1

    .line 488
    goto :goto_0

    .line 498
    .end local v13    # "j":I
    :cond_1
    const/4 v1, 0x0

    new-array v8, v1, [I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 504
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 509
    .end local v2    # "as":[Ljava/lang/String;
    .end local v4    # "as1":[Ljava/lang/String;
    .end local v12    # "i":I
    .end local v14    # "s":Ljava/lang/String;
    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v9, v8

    .end local v8    # "ai":[I
    .restart local v9    # "ai":[I
    goto :goto_2

    .line 500
    .end local v9    # "ai":[I
    .restart local v8    # "ai":[I
    :catch_0
    move-exception v11

    .line 501
    .local v11, "ex":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 504
    :try_start_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 505
    :catch_1
    move-exception v1

    goto :goto_3

    .line 502
    .end local v11    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 504
    :try_start_9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 508
    :goto_4
    :try_start_a
    throw v1

    .line 467
    .end local v0    # "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "ai":[I
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v1

    .line 505
    .restart local v0    # "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "as":[Ljava/lang/String;
    .restart local v4    # "as1":[Ljava/lang/String;
    .restart local v8    # "ai":[I
    .restart local v12    # "i":I
    .restart local v13    # "j":I
    .restart local v14    # "s":Ljava/lang/String;
    :catch_2
    move-exception v1

    goto :goto_1

    .end local v2    # "as":[Ljava/lang/String;
    .end local v4    # "as1":[Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "j":I
    .end local v14    # "s":Ljava/lang/String;
    :catch_3
    move-exception v3

    goto :goto_4

    .restart local v2    # "as":[Ljava/lang/String;
    .restart local v4    # "as1":[Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v14    # "s":Ljava/lang/String;
    :catch_4
    move-exception v1

    goto :goto_3
.end method

.method public getRecordSize()I
    .locals 1

    .prologue
    .line 519
    monitor-enter p0

    .line 520
    :try_start_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRecordStore(J)Ljavax/microedition/rms/RecordStore;
    .locals 13
    .param p1, "l"    # J

    .prologue
    .line 530
    const/4 v11, 0x0

    .line 531
    .local v11, "recordstore1":Ljavax/microedition/rms/RecordStore;
    monitor-enter p0

    .line 533
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 534
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The parameter \'recordStoreName\' must not have a negative value."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 531
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 537
    :cond_0
    const/4 v8, 0x0

    .line 539
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    sget-object v0, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 540
    .local v0, "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    .line 541
    .local v4, "as":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 542
    .local v12, "s":Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v12, v4, v1

    .line 543
    const-string v1, "recordstore"

    const/4 v2, 0x0

    const-string v3, "recordstore_pk = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 544
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 545
    .local v10, "j":I
    if-eqz v10, :cond_1

    .line 546
    invoke-direct {p0, v8}, Ljavax/microedition/rms/SqlDao;->extractRecordStore(Landroid/database/Cursor;)Ljavax/microedition/rms/RecordStore;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v11

    .line 552
    :cond_1
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 558
    .end local v0    # "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "as":[Ljava/lang/String;
    .end local v10    # "j":I
    .end local v12    # "s":Ljava/lang/String;
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v11

    .line 548
    :catch_0
    move-exception v9

    .line 549
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 552
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 553
    :catch_1
    move-exception v1

    goto :goto_0

    .line 550
    .end local v9    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    .line 552
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 556
    :goto_1
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 553
    :catch_2
    move-exception v2

    goto :goto_1

    .restart local v0    # "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "as":[Ljava/lang/String;
    .restart local v10    # "j":I
    .restart local v12    # "s":Ljava/lang/String;
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public getRecordStore(Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;
    .locals 12
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 571
    const/4 v11, 0x0

    .line 572
    .local v11, "recordstore1":Ljavax/microedition/rms/RecordStore;
    monitor-enter p0

    .line 574
    if-nez p1, :cond_0

    .line 575
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The parameter \'recordStoreName\' must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 572
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 578
    :cond_0
    const/4 v8, 0x0

    .line 580
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    sget-object v0, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 581
    .local v0, "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    .line 582
    .local v4, "as":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v4, v1

    .line 583
    const-string v1, "recordstore"

    const/4 v2, 0x0

    const-string v3, "name = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 584
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 585
    .local v10, "i":I
    if-eqz v10, :cond_1

    .line 586
    invoke-direct {p0, v8}, Ljavax/microedition/rms/SqlDao;->extractRecordStore(Landroid/database/Cursor;)Ljavax/microedition/rms/RecordStore;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v11

    .line 592
    :cond_1
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 598
    .end local v0    # "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "as":[Ljava/lang/String;
    .end local v10    # "i":I
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v11

    .line 588
    :catch_0
    move-exception v9

    .line 589
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 592
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 593
    :catch_1
    move-exception v1

    goto :goto_0

    .line 590
    .end local v9    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    .line 592
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 596
    :goto_1
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 593
    :catch_2
    move-exception v2

    goto :goto_1

    .restart local v0    # "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "as":[Ljava/lang/String;
    .restart local v10    # "i":I
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public listRecordStores()[Ljava/lang/String;
    .locals 14

    .prologue
    .line 610
    monitor-enter p0

    .line 612
    const/4 v9, 0x0

    .line 613
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 615
    .local v8, "as1":[Ljava/lang/String;
    :try_start_0
    sget-object v0, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 616
    .local v0, "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 617
    .local v2, "as":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v3, "name"

    aput-object v3, v2, v1

    .line 618
    const-string v1, "recordstore"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 622
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 623
    .local v11, "i":I
    new-array v8, v11, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    const/4 v12, 0x0

    .line 628
    .local v12, "j":I
    :goto_0
    if-lt v12, v11, :cond_0

    .line 643
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 648
    .end local v0    # "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "as":[Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "j":I
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v8

    .line 631
    .restart local v0    # "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "as":[Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v12    # "j":I
    :cond_0
    const/4 v1, 0x1

    :try_start_3
    invoke-interface {v9, v1}, Landroid/database/Cursor;->move(I)Z

    .line 632
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 633
    .local v13, "s":Ljava/lang/String;
    aput-object v13, v8, v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 634
    add-int/lit8 v12, v12, 0x1

    .line 626
    goto :goto_0

    .line 637
    .end local v0    # "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "as":[Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "j":I
    .end local v13    # "s":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 639
    .local v10, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 643
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 644
    :catch_1
    move-exception v1

    goto :goto_1

    .line 641
    .end local v10    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 643
    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 647
    :goto_2
    :try_start_7
    throw v1

    .line 610
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    .line 644
    :catch_2
    move-exception v3

    goto :goto_2

    .restart local v0    # "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "as":[Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v12    # "j":I
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public removeRecord(JI)V
    .locals 22
    .param p1, "l"    # J
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 659
    monitor-enter p0

    .line 662
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljavax/microedition/rms/SqlDao;->getRecordStore(J)Ljavax/microedition/rms/RecordStore;

    move-result-object v14

    .line 664
    .local v14, "recordstore":Ljavax/microedition/rms/RecordStore;
    invoke-virtual/range {p0 .. p3}, Ljavax/microedition/rms/SqlDao;->getRecord(JI)[B

    move-result-object v3

    .line 665
    .local v3, "abyte0":[B
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 666
    .local v6, "contentvalues":Landroid/content/ContentValues;
    invoke-virtual {v14}, Ljavax/microedition/rms/RecordStore;->getSize()I

    move-result v11

    .line 667
    .local v11, "j":I
    array-length v13, v3

    .line 668
    .local v13, "k":I
    sub-int v8, v11, v13

    .line 669
    .local v8, "i1":I
    invoke-virtual {v14}, Ljavax/microedition/rms/RecordStore;->getVersion()I

    move-result v20

    add-int/lit8 v12, v20, 0x1

    .line 670
    .local v12, "j1":I
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 671
    .local v9, "integer":Ljava/lang/Integer;
    const-string v20, "current_size"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 672
    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v12}, Ljava/lang/Integer;-><init>(I)V

    .line 673
    .local v10, "integer1":Ljava/lang/Integer;
    const-string v20, "version"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 674
    sget-object v18, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 675
    .local v18, "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v4, v0, [Ljava/lang/String;

    .line 676
    .local v4, "as":[Ljava/lang/String;
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    .line 677
    .local v15, "s":Ljava/lang/String;
    const/16 v20, 0x0

    aput-object v15, v4, v20

    .line 678
    const-string v20, "recordstore"

    const-string v21, "recordstore_pk= ?"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 679
    sget-object v19, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 680
    .local v19, "sqlitedatabase1":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v5, v0, [Ljava/lang/String;

    .line 681
    .local v5, "as1":[Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 682
    .local v16, "s1":Ljava/lang/String;
    const/16 v20, 0x0

    aput-object v16, v5, v20

    .line 683
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    .line 684
    .local v17, "s2":Ljava/lang/String;
    const/16 v20, 0x1

    aput-object v17, v5, v20

    .line 685
    const-string v20, "record"

    const-string v21, "record_pk=? AND recordstore_fk=?"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    .end local v3    # "abyte0":[B
    .end local v4    # "as":[Ljava/lang/String;
    .end local v5    # "as1":[Ljava/lang/String;
    .end local v6    # "contentvalues":Landroid/content/ContentValues;
    .end local v8    # "i1":I
    .end local v9    # "integer":Ljava/lang/Integer;
    .end local v10    # "integer1":Ljava/lang/Integer;
    .end local v11    # "j":I
    .end local v12    # "j1":I
    .end local v13    # "k":I
    .end local v14    # "recordstore":Ljavax/microedition/rms/RecordStore;
    .end local v15    # "s":Ljava/lang/String;
    .end local v16    # "s1":Ljava/lang/String;
    .end local v17    # "s2":Ljava/lang/String;
    .end local v18    # "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    .end local v19    # "sqlitedatabase1":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 690
    return-void

    .line 686
    :catch_0
    move-exception v7

    .line 687
    .local v7, "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 659
    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v20

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v20
.end method

.method public setRecord(JI[B)V
    .locals 27
    .param p1, "l"    # J
    .param p3, "i"    # I
    .param p4, "abyte0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 699
    monitor-enter p0

    .line 701
    :try_start_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 702
    .local v7, "contentValues":Landroid/content/ContentValues;
    const-string v18, "bytes"

    .line 703
    .local v18, "s":Ljava/lang/String;
    move-object/from16 v3, p4

    .line 704
    .local v3, "abyte2":[B
    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 706
    sget-object v25, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v25 .. v25}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 707
    sget-object v23, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 708
    .local v23, "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v5, v0, [Ljava/lang/String;

    .line 709
    .local v5, "as":[Ljava/lang/String;
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    .line 710
    .local v19, "s1":Ljava/lang/String;
    const/16 v25, 0x0

    aput-object v19, v5, v25

    .line 711
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 712
    .local v20, "s2":Ljava/lang/String;
    const/16 v25, 0x1

    aput-object v20, v5, v25

    .line 714
    const-string v25, "record"

    const-string v26, "recordstore_fk= ? AND record_number=?"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v7, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 715
    sget-object v25, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v25 .. v25}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 716
    sget-object v25, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v25 .. v25}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 718
    invoke-virtual/range {p0 .. p2}, Ljavax/microedition/rms/SqlDao;->getRecordStore(J)Ljavax/microedition/rms/RecordStore;

    move-result-object v17

    .line 719
    .local v17, "recordstore":Ljavax/microedition/rms/RecordStore;
    invoke-virtual/range {p0 .. p3}, Ljavax/microedition/rms/SqlDao;->getRecord(JI)[B

    move-result-object v4

    .line 720
    .local v4, "abyte3":[B
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 721
    invoke-virtual/range {v17 .. v17}, Ljavax/microedition/rms/RecordStore;->getSize()I

    move-result v12

    .line 722
    .local v12, "j":I
    array-length v0, v4

    move/from16 v25, v0

    move/from16 v0, v25

    neg-int v14, v0

    .line 723
    .local v14, "k":I
    add-int v9, v12, v14

    .line 724
    .local v9, "i1":I
    array-length v13, v3

    .line 725
    .local v13, "j1":I
    add-int v15, v9, v13

    .line 726
    .local v15, "k1":I
    invoke-virtual/range {v17 .. v17}, Ljavax/microedition/rms/RecordStore;->getVersion()I

    move-result v25

    add-int/lit8 v16, v25, 0x1

    .line 729
    .local v16, "l1":I
    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v15}, Ljava/lang/Integer;-><init>(I)V

    .line 730
    .local v10, "integer":Ljava/lang/Integer;
    const-string v25, "current_size"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 731
    new-instance v11, Ljava/lang/Integer;

    move/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 732
    .local v11, "integer1":Ljava/lang/Integer;
    const-string v25, "version"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 734
    sget-object v24, Ljavax/microedition/rms/SqlDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 735
    .local v24, "sqlitedatabase1":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v6, v0, [Ljava/lang/String;

    .line 736
    .local v6, "as1":[Ljava/lang/String;
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    .line 737
    .local v21, "s3":Ljava/lang/String;
    const/16 v25, 0x0

    aput-object v21, v6, v25

    .line 738
    const-string v25, "recordstore"

    const-string v26, "recordstore_pk= ?"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v7, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    :try_start_1
    monitor-exit p0

    .line 745
    return-void

    .line 740
    .end local v3    # "abyte2":[B
    .end local v4    # "abyte3":[B
    .end local v5    # "as":[Ljava/lang/String;
    .end local v6    # "as1":[Ljava/lang/String;
    .end local v7    # "contentValues":Landroid/content/ContentValues;
    .end local v9    # "i1":I
    .end local v10    # "integer":Ljava/lang/Integer;
    .end local v11    # "integer1":Ljava/lang/Integer;
    .end local v12    # "j":I
    .end local v13    # "j1":I
    .end local v14    # "k":I
    .end local v15    # "k1":I
    .end local v16    # "l1":I
    .end local v17    # "recordstore":Ljavax/microedition/rms/RecordStore;
    .end local v18    # "s":Ljava/lang/String;
    .end local v19    # "s1":Ljava/lang/String;
    .end local v20    # "s2":Ljava/lang/String;
    .end local v21    # "s3":Ljava/lang/String;
    .end local v23    # "sqlitedatabase":Landroid/database/sqlite/SQLiteDatabase;
    .end local v24    # "sqlitedatabase1":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v8

    .line 741
    .local v8, "ex":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    .line 742
    .local v22, "s4":Ljava/lang/String;
    new-instance v25, Ljavax/microedition/rms/RecordStoreException;

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 699
    .end local v8    # "ex":Ljava/lang/Exception;
    .end local v22    # "s4":Ljava/lang/String;
    :catchall_0
    move-exception v25

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v25
.end method
