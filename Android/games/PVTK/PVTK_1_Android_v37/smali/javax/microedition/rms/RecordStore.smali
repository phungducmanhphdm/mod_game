.class public Ljavax/microedition/rms/RecordStore;
.super Ljava/lang/Object;
.source "RecordStore.java"


# static fields
.field public static final AUTHMODE_ANY:I = 0x1

.field public static final AUTHMODE_PRIVATE:I

.field private static openedRecordStores:Ljava/util/HashMap;

.field private static sqlDao:Ljavax/microedition/rms/SqlDao;


# instance fields
.field private authMode:I

.field private lastModified:J

.field private listeners:Ljava/util/List;

.field private name:Ljava/lang/String;

.field private nextRecordID:I

.field private numRecords:I

.field private openCount:I

.field recordStorePk:J

.field private size:I

.field private sizeAvailable:J

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 532
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljavax/microedition/rms/RecordStore;->openedRecordStores:Ljava/util/HashMap;

    .line 533
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "l"    # J

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-wide/32 v1, 0x400000

    iput-wide v1, p0, Ljavax/microedition/rms/RecordStore;->sizeAvailable:J

    .line 10
    const/4 v1, 0x1

    iput v1, p0, Ljavax/microedition/rms/RecordStore;->nextRecordID:I

    .line 11
    const/4 v1, 0x0

    iput v1, p0, Ljavax/microedition/rms/RecordStore;->openCount:I

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .local v0, "arraylist":Ljava/util/ArrayList;
    iput-object v0, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    .line 14
    iput-object p1, p0, Ljavax/microedition/rms/RecordStore;->name:Ljava/lang/String;

    .line 15
    iput-wide p2, p0, Ljavax/microedition/rms/RecordStore;->recordStorePk:J

    .line 16
    return-void
.end method

.method private static cacheRecordStore(Ljava/lang/String;Ljavax/microedition/rms/RecordStore;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "recordstore"    # Ljavax/microedition/rms/RecordStore;

    .prologue
    .line 20
    sget-object v0, Ljavax/microedition/rms/RecordStore;->openedRecordStores:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget v0, p1, Ljavax/microedition/rms/RecordStore;->openCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Ljavax/microedition/rms/RecordStore;->openCount:I

    .line 22
    return-void
.end method

.method private closeChachedRecordStore()Z
    .locals 4

    .prologue
    .line 26
    const/4 v0, 0x1

    .line 27
    .local v0, "i":I
    iget v3, p0, Ljavax/microedition/rms/RecordStore;->openCount:I

    sub-int v1, v3, v0

    .line 28
    .local v1, "j":I
    iput v1, p0, Ljavax/microedition/rms/RecordStore;->openCount:I

    .line 29
    iget v1, p0, Ljavax/microedition/rms/RecordStore;->openCount:I

    .line 30
    if-lez v1, :cond_0

    .line 32
    const/4 v3, 0x0

    .line 37
    :goto_0
    return v3

    .line 35
    :cond_0
    iget-object v2, p0, Ljavax/microedition/rms/RecordStore;->name:Ljava/lang/String;

    .line 36
    .local v2, "s":Ljava/lang/String;
    sget-object v3, Ljavax/microedition/rms/RecordStore;->openedRecordStores:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static deleteRecordStore(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;,
            Ljavax/microedition/rms/RecordStoreNotFoundException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p0}, Ljavax/microedition/rms/RecordStore;->getOpenedRecordStoreFromCache(Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The record store \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "s1":Ljava/lang/String;
    new-instance v1, Ljavax/microedition/rms/RecordStoreException;

    invoke-direct {v1, v0}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    .end local v0    # "s1":Ljava/lang/String;
    :cond_0
    sget-object v1, Ljavax/microedition/rms/RecordStore;->sqlDao:Ljavax/microedition/rms/SqlDao;

    invoke-virtual {v1, p0}, Ljavax/microedition/rms/SqlDao;->deleteRecordStore(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method private fireRecordAddedEvent(I)V
    .locals 6
    .param p1, "i"    # I

    .prologue
    .line 57
    iget-object v3, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    .line 58
    .local v3, "list":Ljava/util/List;
    monitor-enter v3

    .line 61
    :try_start_0
    iget-object v4, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    .line 62
    .local v4, "list1":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 65
    .local v2, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 66
    .local v1, "flag":Z
    if-nez v1, :cond_0

    .line 58
    .end local v1    # "flag":Z
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v4    # "list1":Ljava/util/List;
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    return-void

    .line 68
    .restart local v1    # "flag":Z
    .restart local v2    # "iterator":Ljava/util/Iterator;
    .restart local v4    # "list1":Ljava/util/List;
    :cond_0
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/microedition/rms/RecordListener;

    invoke-interface {v5, p0, p1}, Ljavax/microedition/rms/RecordListener;->recordAdded(Ljavax/microedition/rms/RecordStore;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 70
    .end local v1    # "flag":Z
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v4    # "list1":Ljava/util/List;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 58
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method private fireRecordChangedEvent(I)V
    .locals 6
    .param p1, "i"    # I

    .prologue
    .line 79
    iget-object v3, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    .line 80
    .local v3, "list":Ljava/util/List;
    monitor-enter v3

    .line 83
    :try_start_0
    iget-object v4, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    .line 84
    .local v4, "list1":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 87
    .local v2, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 88
    .local v1, "flag":Z
    if-nez v1, :cond_0

    .line 80
    .end local v1    # "flag":Z
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v4    # "list1":Ljava/util/List;
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    return-void

    .line 90
    .restart local v1    # "flag":Z
    .restart local v2    # "iterator":Ljava/util/Iterator;
    .restart local v4    # "list1":Ljava/util/List;
    :cond_0
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/microedition/rms/RecordListener;

    invoke-interface {v5, p0, p1}, Ljavax/microedition/rms/RecordListener;->recordChanged(Ljavax/microedition/rms/RecordStore;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 92
    .end local v1    # "flag":Z
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v4    # "list1":Ljava/util/List;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 80
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method private fireRecordDeletedEvent(I)V
    .locals 6
    .param p1, "i"    # I

    .prologue
    .line 101
    iget-object v3, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    .line 102
    .local v3, "list":Ljava/util/List;
    monitor-enter v3

    .line 105
    :try_start_0
    iget-object v4, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    .line 106
    .local v4, "list1":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 109
    .local v2, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 110
    .local v1, "flag":Z
    if-nez v1, :cond_0

    .line 102
    .end local v1    # "flag":Z
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v4    # "list1":Ljava/util/List;
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    return-void

    .line 112
    .restart local v1    # "flag":Z
    .restart local v2    # "iterator":Ljava/util/Iterator;
    .restart local v4    # "list1":Ljava/util/List;
    :cond_0
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/microedition/rms/RecordListener;

    invoke-interface {v5, p0, p1}, Ljavax/microedition/rms/RecordListener;->recordDeleted(Ljavax/microedition/rms/RecordStore;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 114
    .end local v1    # "flag":Z
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v4    # "list1":Ljava/util/List;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 102
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method private static getOpenedRecordStoreFromCache(Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 122
    sget-object v0, Ljavax/microedition/rms/RecordStore;->openedRecordStores:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/rms/RecordStore;

    return-object v0
.end method

.method private static init()V
    .locals 1

    .prologue
    .line 127
    sget-object v0, Ljavax/microedition/rms/RecordStore;->sqlDao:Ljavax/microedition/rms/SqlDao;

    if-nez v0, :cond_0

    .line 128
    invoke-static {}, Ljavax/microedition/rms/SqlDao;->getInstance()Ljavax/microedition/rms/SqlDao;

    move-result-object v0

    sput-object v0, Ljavax/microedition/rms/RecordStore;->sqlDao:Ljavax/microedition/rms/SqlDao;

    .line 129
    :cond_0
    return-void
.end method

.method public static listRecordStores()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Ljavax/microedition/rms/RecordStore;->init()V

    .line 134
    sget-object v1, Ljavax/microedition/rms/RecordStore;->sqlDao:Ljavax/microedition/rms/SqlDao;

    invoke-virtual {v1}, Ljavax/microedition/rms/SqlDao;->listRecordStores()[Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "as":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 138
    :cond_0
    const/4 v0, 0x0

    .line 141
    :cond_1
    return-object v0
.end method

.method public static openRecordStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;,
            Ljavax/microedition/rms/RecordStoreNotFoundException;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    return-object v0
.end method

.method public static openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;,
            Ljavax/microedition/rms/RecordStoreFullException;,
            Ljavax/microedition/rms/RecordStoreNotFoundException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {}, Ljavax/microedition/rms/RecordStore;->init()V

    .line 155
    if-nez p0, :cond_0

    .line 156
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Parameter \'recordStoreName\' must not be null or empty."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 157
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x20

    if-le v6, v7, :cond_2

    .line 158
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Parameter \'recordStoreName\' must have a length between 1 and 32."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 160
    :cond_2
    invoke-static {p0}, Ljavax/microedition/rms/RecordStore;->openRecordStoreFromCache(Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    .line 162
    .local v0, "recordstore":Ljavax/microedition/rms/RecordStore;
    if-eqz v0, :cond_3

    .line 164
    move-object v3, v0

    .line 190
    .local v3, "recordstore3":Ljavax/microedition/rms/RecordStore;
    :goto_0
    return-object v3

    .line 167
    .end local v3    # "recordstore3":Ljavax/microedition/rms/RecordStore;
    :cond_3
    sget-object v6, Ljavax/microedition/rms/RecordStore;->sqlDao:Ljavax/microedition/rms/SqlDao;

    invoke-virtual {v6, p0}, Ljavax/microedition/rms/SqlDao;->getRecordStore(Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;

    move-result-object v1

    .line 168
    .local v1, "recordstore1":Ljavax/microedition/rms/RecordStore;
    if-eqz v1, :cond_4

    .line 170
    invoke-static {p0, v1}, Ljavax/microedition/rms/RecordStore;->cacheRecordStore(Ljava/lang/String;Ljavax/microedition/rms/RecordStore;)V

    .line 171
    move-object v3, v1

    .line 172
    .restart local v3    # "recordstore3":Ljavax/microedition/rms/RecordStore;
    goto :goto_0

    .line 174
    .end local v3    # "recordstore3":Ljavax/microedition/rms/RecordStore;
    :cond_4
    if-nez p1, :cond_5

    .line 176
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No record store with name \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "s1":Ljava/lang/String;
    new-instance v6, Ljavax/microedition/rms/RecordStoreNotFoundException;

    invoke-direct {v6, v4}, Ljavax/microedition/rms/RecordStoreNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 180
    .end local v4    # "s1":Ljava/lang/String;
    :cond_5
    sget-object v6, Ljavax/microedition/rms/RecordStore;->sqlDao:Ljavax/microedition/rms/SqlDao;

    invoke-virtual {v6, p0}, Ljavax/microedition/rms/SqlDao;->createRecordStore(Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;

    move-result-object v2

    .line 181
    .local v2, "recordstore2":Ljavax/microedition/rms/RecordStore;
    if-nez v2, :cond_6

    .line 183
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not create record store with name \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'. Reason: The method \'SqlDao.createRecordStore\' returned null although it is not allowed to do so."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 184
    .local v5, "s2":Ljava/lang/String;
    new-instance v6, Ljavax/microedition/rms/RecordStoreException;

    invoke-direct {v6, v5}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 186
    .end local v5    # "s2":Ljava/lang/String;
    :cond_6
    invoke-static {p0, v2}, Ljavax/microedition/rms/RecordStore;->cacheRecordStore(Ljava/lang/String;Ljavax/microedition/rms/RecordStore;)V

    .line 187
    move-object v3, v2

    .restart local v3    # "recordstore3":Ljavax/microedition/rms/RecordStore;
    goto :goto_0
.end method

.method public static openRecordStore(Ljava/lang/String;ZIZ)Ljavax/microedition/rms/RecordStore;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "flag"    # Z
    .param p2, "i"    # I
    .param p3, "flag1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;,
            Ljavax/microedition/rms/RecordStoreFullException;,
            Ljavax/microedition/rms/RecordStoreNotFoundException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {p0, p1}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    return-object v0
.end method

.method private static openRecordStoreFromCache(Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 201
    sget-object v1, Ljavax/microedition/rms/RecordStore;->openedRecordStores:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/rms/RecordStore;

    .line 202
    .local v0, "recordstore":Ljavax/microedition/rms/RecordStore;
    if-eqz v0, :cond_0

    .line 204
    iget v1, v0, Ljavax/microedition/rms/RecordStore;->openCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Ljavax/microedition/rms/RecordStore;->openCount:I

    .line 206
    :cond_0
    return-object v0
.end method

.method private updateRecordStoreInstance(Ljavax/microedition/rms/RecordStore;)V
    .locals 8
    .param p1, "recordstore"    # Ljavax/microedition/rms/RecordStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v7, p1, Ljavax/microedition/rms/RecordStore;->name:Ljava/lang/String;

    .line 213
    .local v7, "s":Ljava/lang/String;
    iput-object v7, p0, Ljavax/microedition/rms/RecordStore;->name:Ljava/lang/String;

    .line 214
    iget v0, p1, Ljavax/microedition/rms/RecordStore;->nextRecordID:I

    .line 215
    .local v0, "i":I
    iput v0, p0, Ljavax/microedition/rms/RecordStore;->nextRecordID:I

    .line 216
    iget v2, p1, Ljavax/microedition/rms/RecordStore;->numRecords:I

    .line 217
    .local v2, "j":I
    iput v2, p0, Ljavax/microedition/rms/RecordStore;->numRecords:I

    .line 218
    iget v3, p1, Ljavax/microedition/rms/RecordStore;->size:I

    .line 219
    .local v3, "k":I
    iput v3, p0, Ljavax/microedition/rms/RecordStore;->size:I

    .line 220
    iget v4, p1, Ljavax/microedition/rms/RecordStore;->version:I

    .line 221
    .local v4, "l":I
    iput v4, p0, Ljavax/microedition/rms/RecordStore;->version:I

    .line 222
    iget-wide v5, p1, Ljavax/microedition/rms/RecordStore;->recordStorePk:J

    .line 223
    .local v5, "l1":J
    iput-wide v5, p0, Ljavax/microedition/rms/RecordStore;->recordStorePk:J

    .line 224
    iget v1, p1, Ljavax/microedition/rms/RecordStore;->authMode:I

    .line 225
    .local v1, "i1":I
    iput v1, p0, Ljavax/microedition/rms/RecordStore;->authMode:I

    .line 226
    return-void
.end method


# virtual methods
.method public addRecord([BII)I
    .locals 27
    .param p1, "abyte0"    # [B
    .param p2, "i"    # I
    .param p3, "j"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;,
            Ljavax/microedition/rms/RecordStoreFullException;
        }
    .end annotation

    .prologue
    .line 232
    const/4 v7, 0x0

    .line 233
    .local v7, "k":I
    const-string v15, "The offset \'"

    .line 234
    .local v15, "s":Ljava/lang/String;
    const-string v16, "\' must not be negative."

    .line 235
    .local v16, "s1":Ljava/lang/String;
    const-string v17, "\'"

    .line 236
    .local v17, "s2":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/rms/RecordStore;->isClosed()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 237
    new-instance v25, Ljavax/microedition/rms/RecordStoreNotOpenException;

    const-string v26, "The record store is not open because it was closed. This RecordStore object is invalid and will stay so."

    invoke-direct/range {v25 .. v26}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 238
    :cond_0
    if-nez p1, :cond_1

    .line 239
    new-array v0, v7, [B

    move-object/from16 p1, v0

    .line 240
    :cond_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    if-eqz v25, :cond_2

    .line 242
    move-object/from16 v0, p1

    array-length v9, v0

    .line 243
    .local v9, "l":I
    move/from16 v0, p2

    if-lt v0, v9, :cond_2

    .line 245
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\' is beyond the size of the data array of \'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 246
    .local v24, "stringbuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    array-length v4, v0

    .line 247
    .local v4, "i1":I
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 248
    .local v18, "s3":Ljava/lang/String;
    new-instance v25, Ljavax/microedition/rms/RecordStoreException;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 251
    .end local v4    # "i1":I
    .end local v9    # "l":I
    .end local v18    # "s3":Ljava/lang/String;
    .end local v24    # "stringbuilder":Ljava/lang/StringBuilder;
    :cond_2
    if-gez p3, :cond_3

    .line 253
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "The number of bytes \'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 254
    .local v19, "s4":Ljava/lang/String;
    new-instance v25, Ljavax/microedition/rms/RecordStoreException;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 256
    .end local v19    # "s4":Ljava/lang/String;
    :cond_3
    if-gez p2, :cond_4

    .line 258
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 259
    .local v20, "s5":Ljava/lang/String;
    new-instance v25, Ljavax/microedition/rms/RecordStoreException;

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 261
    .end local v20    # "s5":Ljava/lang/String;
    :cond_4
    add-int v6, p2, p3

    .line 262
    .local v6, "j1":I
    move-object/from16 v0, p1

    array-length v8, v0

    .line 263
    .local v8, "k1":I
    if-le v6, v8, :cond_5

    .line 265
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "The Parameter numBytes with value \'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\' exceeds the number of available bytes if counted from offset \'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 266
    .local v21, "s6":Ljava/lang/String;
    new-instance v25, Ljavax/microedition/rms/RecordStoreException;

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 269
    .end local v21    # "s6":Ljava/lang/String;
    :cond_5
    move/from16 v0, p3

    new-array v3, v0, [B

    .line 270
    .local v3, "abyte1":[B
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v3, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    sget-object v22, Ljavax/microedition/rms/RecordStore;->sqlDao:Ljavax/microedition/rms/SqlDao;

    .line 272
    .local v22, "sqldao":Ljavax/microedition/rms/SqlDao;
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v10

    .line 273
    .local v10, "l1":J
    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11, v3}, Ljavax/microedition/rms/SqlDao;->addRecord(J[B)I

    move-result v5

    .line 274
    .local v5, "i2":I
    sget-object v23, Ljavax/microedition/rms/RecordStore;->sqlDao:Ljavax/microedition/rms/SqlDao;

    .line 275
    .local v23, "sqldao1":Ljavax/microedition/rms/SqlDao;
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v12

    .line 276
    .local v12, "l2":J
    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Ljavax/microedition/rms/SqlDao;->getRecordStore(J)Ljavax/microedition/rms/RecordStore;

    move-result-object v14

    .line 277
    .local v14, "recordstore":Ljavax/microedition/rms/RecordStore;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Ljavax/microedition/rms/RecordStore;->updateRecordStoreInstance(Ljavax/microedition/rms/RecordStore;)V

    .line 278
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Ljavax/microedition/rms/RecordStore;->fireRecordAddedEvent(I)V

    .line 279
    return v5
.end method

.method public addRecordListener(Ljavax/microedition/rms/RecordListener;)V
    .locals 4
    .param p1, "recordlistener"    # Ljavax/microedition/rms/RecordListener;

    .prologue
    .line 285
    iget-object v1, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    .line 287
    .local v1, "list":Ljava/util/List;
    monitor-enter v1

    .line 288
    :try_start_0
    iget-object v3, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 289
    .local v0, "flag":Z
    if-nez v0, :cond_0

    .line 291
    iget-object v2, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    .line 292
    .local v2, "list1":Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    .end local v2    # "list1":Ljava/util/List;
    :cond_0
    monitor-exit v1

    .line 295
    return-void

    .line 287
    .end local v0    # "flag":Z
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public closeRecordStore()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Ljavax/microedition/rms/RecordStore;->closeChachedRecordStore()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v1, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    .line 305
    .local v1, "list":Ljava/util/List;
    monitor-enter v1

    .line 308
    :try_start_0
    iget-object v2, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :goto_1
    :try_start_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public deleteRecord(I)V
    .locals 8
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 320
    new-instance v7, Ljavax/microedition/rms/RecordStoreNotOpenException;

    invoke-direct {v7}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>()V

    throw v7

    .line 321
    :cond_0
    if-gez p1, :cond_1

    .line 323
    new-instance v7, Ljavax/microedition/rms/InvalidRecordIDException;

    invoke-direct {v7}, Ljavax/microedition/rms/InvalidRecordIDException;-><init>()V

    throw v7

    .line 326
    :cond_1
    sget-object v5, Ljavax/microedition/rms/RecordStore;->sqlDao:Ljavax/microedition/rms/SqlDao;

    .line 327
    .local v5, "sqldao":Ljavax/microedition/rms/SqlDao;
    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v0

    .line 328
    .local v0, "l":J
    invoke-virtual {v5, v0, v1, p1}, Ljavax/microedition/rms/SqlDao;->removeRecord(JI)V

    .line 329
    sget-object v6, Ljavax/microedition/rms/RecordStore;->sqlDao:Ljavax/microedition/rms/SqlDao;

    .line 330
    .local v6, "sqldao1":Ljavax/microedition/rms/SqlDao;
    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v2

    .line 331
    .local v2, "l1":J
    invoke-virtual {v6, v2, v3}, Ljavax/microedition/rms/SqlDao;->getRecordStore(J)Ljavax/microedition/rms/RecordStore;

    move-result-object v4

    .line 332
    .local v4, "recordstore":Ljavax/microedition/rms/RecordStore;
    invoke-direct {p0, v4}, Ljavax/microedition/rms/RecordStore;->updateRecordStoreInstance(Ljavax/microedition/rms/RecordStore;)V

    .line 333
    invoke-direct {p0, p1}, Ljavax/microedition/rms/RecordStore;->fireRecordDeletedEvent(I)V

    .line 334
    return-void
.end method

.method public enumerateRecords(Ljavax/microedition/rms/RecordFilter;Ljavax/microedition/rms/RecordComparator;Z)Ljavax/microedition/rms/RecordEnumeration;
    .locals 1
    .param p1, "recordfilter"    # Ljavax/microedition/rms/RecordFilter;
    .param p2, "recordcomparator"    # Ljavax/microedition/rms/RecordComparator;
    .param p3, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    .line 342
    new-instance v0, Ljavax/microedition/rms/SqlRecordEnumeration;

    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/microedition/rms/SqlRecordEnumeration;-><init>(Ljavax/microedition/rms/RecordStore;Ljavax/microedition/rms/RecordFilter;Ljavax/microedition/rms/RecordComparator;Z)V

    return-object v0
.end method

.method public getLastModified()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    .line 348
    iget-wide v0, p0, Ljavax/microedition/rms/RecordStore;->lastModified:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Ljavax/microedition/rms/RecordStore;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextRecordID()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    new-instance v0, Ljavax/microedition/rms/RecordStoreNotOpenException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_0
    iget v0, p0, Ljavax/microedition/rms/RecordStore;->nextRecordID:I

    return v0
.end method

.method public getNumRecords()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    .line 369
    iget v0, p0, Ljavax/microedition/rms/RecordStore;->numRecords:I

    return v0
.end method

.method protected getPk()J
    .locals 2

    .prologue
    .line 374
    iget-wide v0, p0, Ljavax/microedition/rms/RecordStore;->recordStorePk:J

    return-wide v0
.end method

.method public getRecord(I[BI)I
    .locals 3
    .param p1, "i"    # I
    .param p2, "abyte0"    # [B
    .param p3, "j"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Ljavax/microedition/rms/RecordStore;->getRecord(I)[B

    move-result-object v0

    .line 381
    .local v0, "abyte1":[B
    array-length v1, v0

    .line 382
    .local v1, "k":I
    const/4 v2, 0x0

    invoke-static {v0, v2, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    array-length v2, v0

    sub-int/2addr v2, p3

    return v2
.end method

.method public getRecord(I)[B
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 391
    new-instance v3, Ljavax/microedition/rms/RecordStoreNotOpenException;

    invoke-direct {v3}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>()V

    throw v3

    .line 392
    :cond_0
    if-gez p1, :cond_1

    .line 394
    new-instance v3, Ljavax/microedition/rms/InvalidRecordIDException;

    invoke-direct {v3}, Ljavax/microedition/rms/InvalidRecordIDException;-><init>()V

    throw v3

    .line 397
    :cond_1
    sget-object v2, Ljavax/microedition/rms/RecordStore;->sqlDao:Ljavax/microedition/rms/SqlDao;

    .line 398
    .local v2, "sqldao":Ljavax/microedition/rms/SqlDao;
    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v0

    .line 399
    .local v0, "l":J
    invoke-virtual {v2, v0, v1, p1}, Ljavax/microedition/rms/SqlDao;->getRecord(JI)[B

    move-result-object v3

    return-object v3
.end method

.method public getRecordSize(I)I
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 408
    invoke-virtual {p0, p1}, Ljavax/microedition/rms/RecordStore;->getRecord(I)[B

    move-result-object v0

    .line 410
    .local v0, "abyte1":[B
    if-nez v0, :cond_0

    .line 411
    const/4 v1, 0x0

    .line 415
    :goto_0
    return v1

    .line 414
    :cond_0
    array-length v1, v0

    .line 415
    .local v1, "k":I
    goto :goto_0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    .line 421
    iget v0, p0, Ljavax/microedition/rms/RecordStore;->size:I

    return v0
.end method

.method public getSizeAvailable()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    .line 428
    iget-wide v0, p0, Ljavax/microedition/rms/RecordStore;->sizeAvailable:J

    long-to-int v0, v0

    return v0
.end method

.method public getVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    .line 441
    iget v0, p0, Ljavax/microedition/rms/RecordStore;->version:I

    return v0
.end method

.method protected isClosed()Z
    .locals 2

    .prologue
    .line 450
    monitor-enter p0

    .line 451
    :try_start_0
    iget v0, p0, Ljavax/microedition/rms/RecordStore;->openCount:I

    .line 452
    .local v0, "i":I
    if-gtz v0, :cond_0

    .line 453
    monitor-exit p0

    const/4 v1, 0x1

    .line 455
    :goto_0
    return v1

    :cond_0
    monitor-exit p0

    const/4 v1, 0x0

    goto :goto_0

    .line 450
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeRecordListener(Ljavax/microedition/rms/RecordListener;)V
    .locals 4
    .param p1, "recordlistener"    # Ljavax/microedition/rms/RecordListener;

    .prologue
    .line 461
    iget-object v1, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    .line 462
    .local v1, "list":Ljava/util/List;
    monitor-enter v1

    .line 463
    :try_start_0
    iget-object v3, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 464
    .local v0, "flag":Z
    if-nez v0, :cond_0

    .line 466
    iget-object v2, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    .line 467
    .local v2, "list1":Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 462
    .end local v2    # "list1":Ljava/util/List;
    :cond_0
    monitor-exit v1

    .line 479
    return-void

    .line 462
    .end local v0    # "flag":Z
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setMode(IZ)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 484
    return-void
.end method

.method setNextId(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 488
    iput p1, p0, Ljavax/microedition/rms/RecordStore;->nextRecordID:I

    .line 489
    return-void
.end method

.method setNumberOfRecords(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 493
    iput p1, p0, Ljavax/microedition/rms/RecordStore;->numRecords:I

    .line 494
    return-void
.end method

.method public setRecord(I[BII)V
    .locals 10
    .param p1, "i"    # I
    .param p2, "abyte0"    # [B
    .param p3, "j"    # I
    .param p4, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreException;,
            Ljavax/microedition/rms/RecordStoreFullException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 501
    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->isClosed()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 502
    new-instance v8, Ljavax/microedition/rms/RecordStoreNotOpenException;

    invoke-direct {v8}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>()V

    throw v8

    .line 503
    :cond_0
    if-gez p1, :cond_1

    .line 504
    new-instance v8, Ljavax/microedition/rms/InvalidRecordIDException;

    const-string v9, "The parameter \'recordId\' must not be negative."

    invoke-direct {v8, v9}, Ljavax/microedition/rms/InvalidRecordIDException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 505
    :cond_1
    if-nez p2, :cond_2

    .line 506
    new-array p2, v9, [B

    .line 507
    :cond_2
    new-array v0, p4, [B

    .line 508
    .local v0, "abyte1":[B
    invoke-static {p2, p3, v0, v9, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    sget-object v6, Ljavax/microedition/rms/RecordStore;->sqlDao:Ljavax/microedition/rms/SqlDao;

    .line 510
    .local v6, "sqldao":Ljavax/microedition/rms/SqlDao;
    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v1

    .line 511
    .local v1, "l1":J
    invoke-virtual {v6, v1, v2, p1, v0}, Ljavax/microedition/rms/SqlDao;->setRecord(JI[B)V

    .line 512
    sget-object v7, Ljavax/microedition/rms/RecordStore;->sqlDao:Ljavax/microedition/rms/SqlDao;

    .line 514
    .local v7, "sqldao1":Ljavax/microedition/rms/SqlDao;
    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v3

    .line 515
    .local v3, "l2":J
    invoke-virtual {v7, v1, v2}, Ljavax/microedition/rms/SqlDao;->getRecordStore(J)Ljavax/microedition/rms/RecordStore;

    move-result-object v5

    .line 516
    .local v5, "recordstore":Ljavax/microedition/rms/RecordStore;
    invoke-direct {p0, v5}, Ljavax/microedition/rms/RecordStore;->updateRecordStoreInstance(Ljavax/microedition/rms/RecordStore;)V

    .line 517
    invoke-direct {p0, p1}, Ljavax/microedition/rms/RecordStore;->fireRecordChangedEvent(I)V

    .line 518
    return-void
.end method

.method setSize(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 522
    iput p1, p0, Ljavax/microedition/rms/RecordStore;->size:I

    .line 523
    return-void
.end method

.method setVersion(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 527
    iput p1, p0, Ljavax/microedition/rms/RecordStore;->version:I

    .line 528
    return-void
.end method
