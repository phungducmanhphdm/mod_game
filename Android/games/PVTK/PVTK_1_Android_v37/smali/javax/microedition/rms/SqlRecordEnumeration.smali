.class public Ljavax/microedition/rms/SqlRecordEnumeration;
.super Ljava/lang/Object;
.source "SqlRecordEnumeration.java"

# interfaces
.implements Ljavax/microedition/rms/RecordEnumeration;


# instance fields
.field private final comparator:Ljavax/microedition/rms/RecordComparator;

.field private destroyed:Z

.field private final filter:Ljavax/microedition/rms/RecordFilter;

.field private keepUpdated:Z

.field private lastRecordIndex:I

.field private recordIds:[I

.field private final recordStore:Ljavax/microedition/rms/RecordStore;

.field private sqlDao:Ljavax/microedition/rms/SqlDao;


# direct methods
.method public constructor <init>(Ljavax/microedition/rms/RecordStore;Ljavax/microedition/rms/RecordFilter;Ljavax/microedition/rms/RecordComparator;Z)V
    .locals 2
    .param p1, "recordstore"    # Ljavax/microedition/rms/RecordStore;
    .param p2, "recordfilter"    # Ljavax/microedition/rms/RecordFilter;
    .param p3, "recordcomparator"    # Ljavax/microedition/rms/RecordComparator;
    .param p4, "flag"    # Z

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->destroyed:Z

    .line 11
    iput-object p1, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->recordStore:Ljavax/microedition/rms/RecordStore;

    .line 12
    iput-object p2, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->filter:Ljavax/microedition/rms/RecordFilter;

    .line 13
    iput-object p3, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->comparator:Ljavax/microedition/rms/RecordComparator;

    .line 14
    iput-boolean p4, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->keepUpdated:Z

    .line 15
    invoke-static {}, Ljavax/microedition/rms/SqlDao;->getInstance()Ljavax/microedition/rms/SqlDao;

    move-result-object v0

    .line 16
    .local v0, "sqldao":Ljavax/microedition/rms/SqlDao;
    iput-object v0, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->sqlDao:Ljavax/microedition/rms/SqlDao;

    .line 17
    invoke-virtual {p0}, Ljavax/microedition/rms/SqlRecordEnumeration;->rebuild()V

    .line 18
    return-void
.end method

.method private filter()V
    .locals 14

    .prologue
    .line 22
    const/4 v2, -0x1

    .line 24
    .local v2, "byte0":B
    iget-object v13, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->filter:Ljavax/microedition/rms/RecordFilter;

    if-nez v13, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    const/4 v3, 0x0

    .line 30
    .local v3, "i":I
    iget-object v13, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->recordIds:[I

    array-length v5, v13

    .line 31
    .local v5, "j":I
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_1
    if-lt v7, v5, :cond_2

    .line 44
    if-lez v3, :cond_0

    .line 46
    sub-int v13, v5, v3

    new-array v1, v13, [I

    .line 47
    .local v1, "ai":[I
    const/4 v6, 0x0

    .line 48
    .local v6, "j1":I
    const/4 v9, 0x0

    .local v9, "l":I
    :goto_2
    if-lt v9, v5, :cond_4

    .line 58
    iput-object v1, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->recordIds:[I

    goto :goto_0

    .line 33
    .end local v1    # "ai":[I
    .end local v6    # "j1":I
    .end local v9    # "l":I
    :cond_2
    iget-object v13, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->recordIds:[I

    aget v4, v13, v7

    .line 34
    .local v4, "i1":I
    iget-object v12, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->sqlDao:Ljavax/microedition/rms/SqlDao;

    .line 35
    .local v12, "sqldao":Ljavax/microedition/rms/SqlDao;
    iget-object v13, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->recordStore:Ljavax/microedition/rms/RecordStore;

    invoke-virtual {v13}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v10

    .line 36
    .local v10, "l1":J
    invoke-virtual {v12, v10, v11, v4}, Ljavax/microedition/rms/SqlDao;->getRecord(JI)[B

    move-result-object v0

    .line 37
    .local v0, "abyte0":[B
    iget-object v13, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->filter:Ljavax/microedition/rms/RecordFilter;

    invoke-interface {v13, v0}, Ljavax/microedition/rms/RecordFilter;->matches([B)Z

    move-result v13

    if-nez v13, :cond_3

    .line 39
    iget-object v13, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->recordIds:[I

    aput v2, v13, v7

    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 31
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 50
    .end local v0    # "abyte0":[B
    .end local v4    # "i1":I
    .end local v10    # "l1":J
    .end local v12    # "sqldao":Ljavax/microedition/rms/SqlDao;
    .restart local v1    # "ai":[I
    .restart local v6    # "j1":I
    .restart local v9    # "l":I
    :cond_4
    iget-object v13, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->recordIds:[I

    aget v8, v13, v9

    .line 51
    .local v8, "k1":I
    if-eq v8, v2, :cond_5

    .line 53
    aput v8, v1, v6

    .line 54
    add-int/lit8 v6, v6, 0x1

    .line 48
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2
.end method

.method private isDestroyed()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->destroyed:Z

    return v0
.end method

.method private sort()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->comparator:Ljavax/microedition/rms/RecordComparator;

    if-eqz v0, :cond_0

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->destroyed:Z

    .line 75
    return-void
.end method

.method public hasNextElement()Z
    .locals 5

    .prologue
    .line 79
    invoke-direct {p0}, Ljavax/microedition/rms/SqlRecordEnumeration;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "This RecordEnumeration instance is destroyed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 81
    :cond_0
    iget v1, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->lastRecordIndex:I

    .line 82
    .local v1, "j":I
    iget-object v3, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->recordIds:[I

    array-length v3, v3

    add-int/lit8 v2, v3, -0x1

    .line 84
    .local v2, "k":I
    if-ge v1, v2, :cond_1

    .line 85
    const/4 v0, 0x1

    .line 88
    .local v0, "flag":Z
    :goto_0
    return v0

    .line 87
    .end local v0    # "flag":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "flag":Z
    goto :goto_0
.end method

.method public hasPreviousElement()Z
    .locals 3

    .prologue
    .line 93
    invoke-direct {p0}, Ljavax/microedition/rms/SqlRecordEnumeration;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This RecordEnumeration instance is destroyed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_0
    iget v1, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->lastRecordIndex:I

    if-lez v1, :cond_1

    .line 97
    const/4 v0, 0x1

    .line 100
    .local v0, "flag":Z
    :goto_0
    return v0

    .line 99
    .end local v0    # "flag":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "flag":Z
    goto :goto_0
.end method

.method public isKeptUpdated()Z
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljavax/microedition/rms/SqlRecordEnumeration;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This RecordEnumeration instance is destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    iget-boolean v0, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->keepUpdated:Z

    return v0
.end method

.method public keepUpdated(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 113
    invoke-direct {p0}, Ljavax/microedition/rms/SqlRecordEnumeration;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This RecordEnumeration instance is destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iput-boolean p1, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->keepUpdated:Z

    .line 119
    return-void
.end method

.method public nextRecord()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Ljavax/microedition/rms/SqlRecordEnumeration;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 127
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "This RecordEnumeration instance is destroyed."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 128
    :cond_0
    iget-object v6, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->recordStore:Ljavax/microedition/rms/RecordStore;

    invoke-virtual {v6}, Ljavax/microedition/rms/RecordStore;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 129
    new-instance v6, Ljavax/microedition/rms/RecordStoreNotOpenException;

    const-string v7, "The record store which is enumerated is closed."

    invoke-direct {v6, v7}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 131
    :cond_1
    iget v6, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->lastRecordIndex:I

    add-int/lit8 v0, v6, 0x1

    .line 132
    .local v0, "i":I
    iget-object v6, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->recordIds:[I

    array-length v1, v6

    .line 133
    .local v1, "j":I
    if-lt v0, v1, :cond_2

    .line 135
    new-instance v6, Ljavax/microedition/rms/InvalidRecordIDException;

    const-string v7, "The end of the enumeration is reached."

    invoke-direct {v6, v7}, Ljavax/microedition/rms/InvalidRecordIDException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 138
    :cond_2
    iput v0, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->lastRecordIndex:I

    .line 139
    iget-object v6, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->recordIds:[I

    aget v2, v6, v0

    .line 140
    .local v2, "k":I
    iget-object v5, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->sqlDao:Ljavax/microedition/rms/SqlDao;

    .line 141
    .local v5, "sqldao":Ljavax/microedition/rms/SqlDao;
    iget-object v6, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->recordStore:Ljavax/microedition/rms/RecordStore;

    invoke-virtual {v6}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v3

    .line 142
    .local v3, "l":J
    invoke-virtual {v5, v3, v4, v2}, Ljavax/microedition/rms/SqlDao;->getRecord(JI)[B

    move-result-object v6

    return-object v6
.end method

.method public nextRecordId()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/InvalidRecordIDException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0}, Ljavax/microedition/rms/SqlRecordEnumeration;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "This RecordEnumeration instance is destroyed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    :cond_0
    iget v2, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->lastRecordIndex:I

    add-int/lit8 v0, v2, 0x1

    .line 152
    .local v0, "i":I
    iget-object v2, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->recordIds:[I

    array-length v1, v2

    .line 153
    .local v1, "j":I
    if-lt v0, v1, :cond_1

    .line 155
    new-instance v2, Ljavax/microedition/rms/InvalidRecordIDException;

    const-string v3, "No more records in this enumeration."

    invoke-direct {v2, v3}, Ljavax/microedition/rms/InvalidRecordIDException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 158
    :cond_1
    iput v0, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->lastRecordIndex:I

    .line 159
    iget-object v2, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->recordIds:[I

    aget v2, v2, v0

    return v2
.end method

.method public numRecords()I
    .locals 2

    .prologue
    .line 165
    invoke-direct {p0}, Ljavax/microedition/rms/SqlRecordEnumeration;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This RecordEnumeration instance is destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    iget-object v0, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->recordIds:[I

    array-length v0, v0

    return v0
.end method

.method public previousRecord()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0}, Ljavax/microedition/rms/SqlRecordEnumeration;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 175
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "This RecordEnumeration instance is destroyed."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 176
    :cond_0
    iget-object v5, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->recordStore:Ljavax/microedition/rms/RecordStore;

    invoke-virtual {v5}, Ljavax/microedition/rms/RecordStore;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 177
    new-instance v5, Ljavax/microedition/rms/RecordStoreNotOpenException;

    const-string v6, "The record store which is enumerated is closed."

    invoke-direct {v5, v6}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 179
    :cond_1
    iget v5, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->lastRecordIndex:I

    add-int/lit8 v0, v5, -0x1

    .line 180
    .local v0, "i":I
    if-gez v0, :cond_2

    .line 182
    new-instance v5, Ljavax/microedition/rms/InvalidRecordIDException;

    const-string v6, "The start of the enumeration is reached."

    invoke-direct {v5, v6}, Ljavax/microedition/rms/InvalidRecordIDException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 185
    :cond_2
    iput v0, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->lastRecordIndex:I

    .line 186
    iget-object v5, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->recordIds:[I

    aget v1, v5, v0

    .line 187
    .local v1, "j":I
    iget-object v4, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->sqlDao:Ljavax/microedition/rms/SqlDao;

    .line 188
    .local v4, "sqldao":Ljavax/microedition/rms/SqlDao;
    iget-object v5, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->recordStore:Ljavax/microedition/rms/RecordStore;

    invoke-virtual {v5}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v2

    .line 189
    .local v2, "l":J
    invoke-virtual {v4, v2, v3, v1}, Ljavax/microedition/rms/SqlDao;->getRecord(JI)[B

    move-result-object v5

    return-object v5
.end method

.method public previousRecordId()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/InvalidRecordIDException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-direct {p0}, Ljavax/microedition/rms/SqlRecordEnumeration;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This RecordEnumeration instance is destroyed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_0
    iget v1, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->lastRecordIndex:I

    add-int/lit8 v0, v1, -0x1

    .line 199
    .local v0, "i":I
    iget v1, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->lastRecordIndex:I

    if-gez v1, :cond_1

    .line 201
    new-instance v1, Ljavax/microedition/rms/InvalidRecordIDException;

    const-string v2, "The start of the enumeration is reached."

    invoke-direct {v1, v2}, Ljavax/microedition/rms/InvalidRecordIDException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_1
    iput v0, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->lastRecordIndex:I

    .line 205
    iget-object v1, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->recordIds:[I

    aget v1, v1, v0

    return v1
.end method

.method public rebuild()V
    .locals 6

    .prologue
    .line 211
    invoke-direct {p0}, Ljavax/microedition/rms/SqlRecordEnumeration;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "This RecordEnumeration instance is destroyed."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 216
    :cond_0
    invoke-virtual {p0}, Ljavax/microedition/rms/SqlRecordEnumeration;->reset()V

    .line 217
    iget-object v3, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->sqlDao:Ljavax/microedition/rms/SqlDao;

    .line 218
    .local v3, "sqldao":Ljavax/microedition/rms/SqlDao;
    iget-object v4, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->recordStore:Ljavax/microedition/rms/RecordStore;

    invoke-virtual {v4}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v1

    .line 219
    .local v1, "l":J
    invoke-virtual {v3, v1, v2}, Ljavax/microedition/rms/SqlDao;->getRecordIdsForRecordStore(J)[I

    move-result-object v0

    .line 220
    .local v0, "ai":[I
    iput-object v0, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->recordIds:[I

    .line 221
    invoke-direct {p0}, Ljavax/microedition/rms/SqlRecordEnumeration;->filter()V

    .line 222
    invoke-direct {p0}, Ljavax/microedition/rms/SqlRecordEnumeration;->sort()V

    .line 223
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 229
    invoke-direct {p0}, Ljavax/microedition/rms/SqlRecordEnumeration;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This RecordEnumeration instance is destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Ljavax/microedition/rms/SqlRecordEnumeration;->lastRecordIndex:I

    .line 235
    return-void
.end method
