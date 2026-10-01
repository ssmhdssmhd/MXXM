.class public Lcom/umeng/analytics/a/f;
.super Ljava/lang/Object;
.source "ImprintHandler.java"


# static fields
.field private static final a:Ljava/lang/String; = ".imprint"

.field private static final b:[B


# instance fields
.field private c:Lcom/umeng/analytics/d/n;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "pbl0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/a/f;->b:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->c:Lcom/umeng/analytics/d/n;

    .line 30
    iput-object p1, p0, Lcom/umeng/analytics/a/f;->d:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private a(Lcom/umeng/analytics/d/n;Lcom/umeng/analytics/d/n;)Lcom/umeng/analytics/d/n;
    .locals 4

    .line 110
    if-nez p2, :cond_0

    .line 111
    return-object p1

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/analytics/d/n;->d()Ljava/util/Map;

    move-result-object v0

    .line 115
    invoke-virtual {p2}, Lcom/umeng/analytics/d/n;->d()Ljava/util/Map;

    move-result-object v1

    .line 117
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 118
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/analytics/d/o;

    invoke-virtual {v3}, Lcom/umeng/analytics/d/o;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 121
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :goto_1
    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p2}, Lcom/umeng/analytics/d/n;->h()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/d/n;->a(I)Lcom/umeng/analytics/d/n;

    .line 126
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/a/f;->a(Lcom/umeng/analytics/d/n;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/d/n;->a(Ljava/lang/String;)Lcom/umeng/analytics/d/n;

    .line 128
    return-object p1
.end method

.method private c(Lcom/umeng/analytics/d/n;)Z
    .locals 6

    .line 50
    invoke-virtual {p1}, Lcom/umeng/analytics/d/n;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/a/f;->a(Lcom/umeng/analytics/d/n;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 51
    return v1

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/analytics/d/n;->d()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/d/o;

    .line 55
    invoke-virtual {v0}, Lcom/umeng/analytics/d/o;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/analytics/a/c;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 56
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/a/f;->a(Lcom/umeng/analytics/d/o;)[B

    move-result-object v0

    .line 58
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    .line 59
    aget-byte v4, v2, v3

    aget-byte v5, v0, v3

    if-eq v4, v5, :cond_1

    return v1

    .line 58
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 61
    :cond_2
    goto :goto_0

    .line 63
    :cond_3
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public declared-synchronized a()Lcom/umeng/analytics/d/n;
    .locals 1

    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->c:Lcom/umeng/analytics/d/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 132
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/umeng/analytics/d/n;)Ljava/lang/String;
    .locals 5

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    new-instance v1, Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/umeng/analytics/d/n;->d()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 37
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/analytics/d/o;

    invoke-virtual {v3}, Lcom/umeng/analytics/d/o;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/analytics/d/o;

    invoke-virtual {v3}, Lcom/umeng/analytics/d/o;->f()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/analytics/d/o;

    invoke-virtual {v2}, Lcom/umeng/analytics/d/o;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    goto :goto_0

    .line 44
    :cond_0
    iget p1, p1, Lcom/umeng/analytics/d/n;->b:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/common/util/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/umeng/analytics/d/o;)[B
    .locals 6

    .line 67
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 68
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {p1}, Lcom/umeng/analytics/d/o;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 72
    sget-object v0, Lcom/umeng/analytics/a/f;->b:[B

    .line 73
    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 75
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 76
    aget-byte v4, p1, v3

    aget-byte v5, v0, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-object v2
.end method

.method public b()V
    .locals 4

    .line 136
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".imprint"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    return-void

    .line 142
    :cond_0
    nop

    .line 143
    nop

    .line 145
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/umeng/analytics/a/f;->d:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :try_start_1
    invoke-static {v1}, Lcom/umeng/common/util/h;->b(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 147
    :catch_0
    move-exception v2

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    .line 147
    :catch_1
    move-exception v2

    move-object v1, v0

    .line 148
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 150
    :goto_1
    invoke-static {v1}, Lcom/umeng/common/util/h;->c(Ljava/io/InputStream;)V

    .line 151
    nop

    .line 153
    if-eqz v0, :cond_1

    .line 155
    :try_start_3
    new-instance v1, Lcom/umeng/analytics/d/n;

    invoke-direct {v1}, Lcom/umeng/analytics/d/n;-><init>()V

    .line 156
    new-instance v2, Lcom/umeng/a/a/a/g;

    invoke-direct {v2}, Lcom/umeng/a/a/a/g;-><init>()V

    invoke-virtual {v2, v1, v0}, Lcom/umeng/a/a/a/g;->a(Lcom/umeng/a/a/a/d;[B)V

    .line 157
    iput-object v1, p0, Lcom/umeng/analytics/a/f;->c:Lcom/umeng/analytics/d/n;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 160
    goto :goto_2

    .line 158
    :catch_2
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    :cond_1
    :goto_2
    return-void

    .line 150
    :catchall_1
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/umeng/common/util/h;->c(Ljava/io/InputStream;)V

    throw v0
.end method

.method public b(Lcom/umeng/analytics/d/n;)V
    .locals 1

    .line 83
    if-nez p1, :cond_0

    .line 85
    return-void

    .line 88
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->c(Lcom/umeng/analytics/d/n;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    return-void

    .line 95
    :cond_1
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->c:Lcom/umeng/analytics/d/n;

    .line 97
    nop

    .line 99
    if-nez v0, :cond_2

    .line 100
    goto :goto_0

    .line 102
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/a/f;->a(Lcom/umeng/analytics/d/n;Lcom/umeng/analytics/d/n;)Lcom/umeng/analytics/d/n;

    move-result-object p1

    .line 105
    :goto_0
    iput-object p1, p0, Lcom/umeng/analytics/a/f;->c:Lcom/umeng/analytics/d/n;

    .line 106
    monitor-exit p0

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->c:Lcom/umeng/analytics/d/n;

    if-nez v0, :cond_0

    .line 166
    return-void

    .line 170
    :cond_0
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/m;

    invoke-direct {v0}, Lcom/umeng/a/a/a/m;-><init>()V

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->c:Lcom/umeng/analytics/d/n;

    invoke-virtual {v0, v1}, Lcom/umeng/a/a/a/m;->a(Lcom/umeng/a/a/a/d;)[B

    move-result-object v0

    .line 171
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/umeng/analytics/a/f;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".imprint"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/umeng/common/util/h;->a(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    :goto_0
    return-void
.end method

.method public d()Z
    .locals 3

    .line 178
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".imprint"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method
