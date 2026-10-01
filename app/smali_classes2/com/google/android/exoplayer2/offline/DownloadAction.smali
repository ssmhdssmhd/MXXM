.class public abstract Lcom/google/android/exoplayer2/offline/DownloadAction;
.super Ljava/lang/Object;
.source "DownloadAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;
    }
.end annotation


# static fields
.field private static defaultDeserializers:[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;


# instance fields
.field public final data:[B

.field public final isRemoveAction:Z

.field public final type:Ljava/lang/String;

.field public final uri:Landroid/net/Uri;

.field public final version:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILandroid/net/Uri;Z[B)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "isRemoveAction"    # Z
    .param p5, "data"    # [B

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->type:Ljava/lang/String;

    .line 158
    iput p2, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->version:I

    .line 159
    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->uri:Landroid/net/Uri;

    .line 160
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->isRemoveAction:Z

    .line 161
    if-eqz p5, :cond_0

    move-object v0, p5

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->data:[B

    .line 162
    return-void
.end method

.method public static deserializeFromStream([Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/offline/DownloadAction;
    .locals 7
    .param p0, "deserializers"    # [Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 116
    .local v0, "dataInputStream":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 118
    .local v2, "version":I
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p0, v4

    .line 119
    .local v5, "deserializer":Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;
    iget-object v6, v5, Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v5, Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;->version:I

    if-lt v6, v2, :cond_0

    .line 120
    invoke-virtual {v5, v2, v0}, Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;->readFromStream(ILjava/io/DataInputStream;)Lcom/google/android/exoplayer2/offline/DownloadAction;

    move-result-object v3

    return-object v3

    .line 118
    .end local v5    # "deserializer":Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    :cond_1
    new-instance v3, Lcom/google/android/exoplayer2/offline/DownloadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No deserializer found for:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/offline/DownloadException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v3

    :goto_2
    goto :goto_1
.end method

.method public static declared-synchronized getDefaultDeserializers()[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;
    .locals 6

    const-class v0, Lcom/google/android/exoplayer2/offline/DownloadAction;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcom/google/android/exoplayer2/offline/DownloadAction;->defaultDeserializers:[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    if-eqz v1, :cond_0

    .line 62
    sget-object v1, Lcom/google/android/exoplayer2/offline/DownloadAction;->defaultDeserializers:[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 64
    :cond_0
    const/4 v1, 0x4

    :try_start_1
    new-array v1, v1, [Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    .line 65
    .local v1, "deserializers":[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;
    const/4 v2, 0x0

    .line 66
    .local v2, "count":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .local v3, "count":I
    sget-object v4, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;->DESERIALIZER:Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    aput-object v4, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    const-string v2, "com.google.android.exoplayer2.source.dash.offline.DashDownloadAction"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "count":I
    .local v4, "count":I
    :try_start_3
    invoke-static {v2}, Lcom/google/android/exoplayer2/offline/DownloadAction;->getDeserializer(Ljava/lang/Class;)Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    move-result-object v5

    aput-object v5, v1, v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    goto :goto_1

    .line 74
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    move v3, v4

    goto :goto_0

    .end local v4    # "count":I
    .restart local v3    # "count":I
    :catch_1
    move-exception v2

    :goto_0
    move v4, v3

    .line 79
    .end local v3    # "count":I
    .restart local v4    # "count":I
    :goto_1
    :try_start_4
    const-string v2, "com.google.android.exoplayer2.source.hls.offline.HlsDownloadAction"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "count":I
    .restart local v3    # "count":I
    :try_start_5
    invoke-static {v2}, Lcom/google/android/exoplayer2/offline/DownloadAction;->getDeserializer(Ljava/lang/Class;)Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    move-result-object v5

    aput-object v5, v1, v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 84
    goto :goto_3

    .line 82
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v2

    move v4, v3

    goto :goto_2

    .end local v3    # "count":I
    .restart local v4    # "count":I
    :catch_3
    move-exception v2

    :goto_2
    move v3, v4

    .line 87
    .end local v4    # "count":I
    .restart local v3    # "count":I
    :goto_3
    :try_start_6
    const-string v2, "com.google.android.exoplayer2.source.smoothstreaming.offline.SsDownloadAction"

    .line 88
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 91
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "count":I
    .restart local v4    # "count":I
    :try_start_7
    invoke-static {v2}, Lcom/google/android/exoplayer2/offline/DownloadAction;->getDeserializer(Ljava/lang/Class;)Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    move-result-object v5

    aput-object v5, v1, v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 94
    goto :goto_5

    .line 92
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_4
    move-exception v2

    move v3, v4

    goto :goto_4

    .end local v4    # "count":I
    .restart local v3    # "count":I
    :catch_5
    move-exception v2

    :goto_4
    move v4, v3

    .line 95
    .end local v3    # "count":I
    .restart local v4    # "count":I
    :goto_5
    :try_start_8
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    sput-object v2, Lcom/google/android/exoplayer2/offline/DownloadAction;->defaultDeserializers:[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    .line 96
    sget-object v2, Lcom/google/android/exoplayer2/offline/DownloadAction;->defaultDeserializers:[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v0

    return-object v2

    .line 60
    .end local v1    # "deserializers":[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;
    .end local v4    # "count":I
    :catchall_0
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v1
.end method

.method private static getDeserializer(Ljava/lang/Class;)Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 217
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "DESERIALIZER"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 218
    .local v0, "value":Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    return-object v1
.end method

.method public static serializeToStream(Lcom/google/android/exoplayer2/offline/DownloadAction;Ljava/io/OutputStream;)V
    .locals 2
    .param p0, "action"    # Lcom/google/android/exoplayer2/offline/DownloadAction;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 131
    .local v0, "dataOutputStream":Ljava/io/DataOutputStream;
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 132
    iget v1, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->version:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 133
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadAction;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 134
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 135
    return-void
.end method


# virtual methods
.method public abstract createDownloader(Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)Lcom/google/android/exoplayer2/offline/Downloader;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 196
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 199
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/offline/DownloadAction;

    .line 200
    .local v1, "that":Lcom/google/android/exoplayer2/offline/DownloadAction;
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->type:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/exoplayer2/offline/DownloadAction;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->version:I

    iget v3, v1, Lcom/google/android/exoplayer2/offline/DownloadAction;->version:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->uri:Landroid/net/Uri;

    iget-object v3, v1, Lcom/google/android/exoplayer2/offline/DownloadAction;->uri:Landroid/net/Uri;

    .line 202
    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->isRemoveAction:Z

    iget-boolean v3, v1, Lcom/google/android/exoplayer2/offline/DownloadAction;->isRemoveAction:Z

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->data:[B

    iget-object v3, v1, Lcom/google/android/exoplayer2/offline/DownloadAction;->data:[B

    .line 204
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 200
    :goto_0
    return v0

    .line 197
    .end local v1    # "that":Lcom/google/android/exoplayer2/offline/DownloadAction;
    :cond_2
    :goto_1
    return v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation

    .line 183
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    .line 210
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->isRemoveAction:Z

    add-int/2addr v1, v2

    .line 211
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->data:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 212
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isSameMedia(Lcom/google/android/exoplayer2/offline/DownloadAction;)Z
    .locals 2
    .param p1, "other"    # Lcom/google/android/exoplayer2/offline/DownloadAction;

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->uri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/exoplayer2/offline/DownloadAction;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final toByteArray()[B
    .locals 3

    .line 166
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 168
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadAction;->serializeToStream(Lcom/google/android/exoplayer2/offline/DownloadAction;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    nop

    .line 173
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 169
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method

.method protected abstract writeToStream(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
