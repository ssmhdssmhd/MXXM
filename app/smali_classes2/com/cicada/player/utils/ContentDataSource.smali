.class public Lcom/cicada/player/utils/ContentDataSource;
.super Ljava/lang/Object;
.source "ContentDataSource.java"


# annotations
.annotation runtime Lcom/cicada/player/utils/NativeUsed;
.end annotation


# static fields
.field private static final EINVAL:I = 0x16

.field private static final EIO:I = 0x5

.field private static final ENOENT:I = 0x2

.field private static final SEEK_CUR:I = 0x1

.field private static final SEEK_END:I = 0x2

.field private static final SEEK_SET:I = 0x0

.field private static final SEEK_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;


# instance fields
.field private mOffset:J

.field private mStream:Ljava/io/InputStream;

.field private mStreamSize:I

.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/cicada/player/utils/ContentDataSource;->sContext:Landroid/content/Context;

    .line 30
    const-class v0, Lcom/cicada/player/utils/ContentDataSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cicada/player/utils/ContentDataSource;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mUri:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mStreamSize:I

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mOffset:J

    .line 34
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 37
    if-eqz p0, :cond_0

    sget-object v0, Lcom/cicada/player/utils/ContentDataSource;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/cicada/player/utils/ContentDataSource;->sContext:Landroid/content/Context;

    .line 40
    :cond_0
    return-void
.end method

.method private skip(J)J
    .locals 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .local v0, "skipBytes":J
    return-wide v0

    .line 143
    .end local v0    # "skipBytes":J
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    iget-wide v1, p0, Lcom/cicada/player/utils/ContentDataSource;->mOffset:J

    add-long/2addr v1, p1

    long-to-int v2, v1

    int-to-long v1, v2

    .line 145
    .local v1, "skipBytes":J
    invoke-virtual {p0}, Lcom/cicada/player/utils/ContentDataSource;->close()V

    .line 146
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/cicada/player/utils/ContentDataSource;->open(I)I

    .line 147
    iget-object v3, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;

    invoke-virtual {v3, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    .line 148
    .local v3, "ret":J
    return-wide v3
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 99
    :cond_0
    :goto_0
    return-void
.end method

.method public open(I)I
    .locals 5
    .param p1, "flags"    # I

    .line 48
    iget-object v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, -0x16

    if-eqz v0, :cond_0

    .line 49
    return v1

    .line 52
    :cond_0
    sget-object v0, Lcom/cicada/player/utils/ContentDataSource;->sContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 53
    return v1

    .line 56
    :cond_1
    sget-object v0, Lcom/cicada/player/utils/ContentDataSource;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 57
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/cicada/player/utils/ContentDataSource;->mUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 60
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    nop

    .line 65
    iget-object v3, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;

    if-nez v3, :cond_2

    .line 66
    return v1

    .line 70
    :cond_2
    const-wide/16 v3, 0x0

    :try_start_1
    iput-wide v3, p0, Lcom/cicada/player/utils/ContentDataSource;->mOffset:J

    .line 71
    iget-object v1, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    iput v1, p0, Lcom/cicada/player/utils/ContentDataSource;->mStreamSize:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    nop

    .line 75
    const/4 v1, 0x0

    return v1

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/io/IOException;
    const/4 v3, -0x5

    return v3

    .line 61
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 62
    .local v1, "e":Ljava/io/FileNotFoundException;
    const/4 v3, -0x2

    return v3
.end method

.method public read([B)I
    .locals 5
    .param p1, "buffer"    # [B

    .line 79
    iget-object v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 80
    const/16 v0, -0x16

    return v0

    .line 82
    :cond_0
    const/4 v0, -0x1

    .line 84
    .local v0, "read":I
    :try_start_0
    iget-object v1, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v0, v1

    .line 85
    iget-wide v1, p0, Lcom/cicada/player/utils/ContentDataSource;->mOffset:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/cicada/player/utils/ContentDataSource;->mOffset:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    nop

    .line 89
    return v0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, -0x5

    return v2
.end method

.method public seek(JI)J
    .locals 9
    .param p1, "offset"    # J
    .param p3, "whence"    # I

    .line 102
    iget-object v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;

    const-wide/16 v1, -0x16

    if-nez v0, :cond_0

    .line 103
    return-wide v1

    .line 106
    :cond_0
    const/high16 v0, 0x10000

    if-ne p3, v0, :cond_2

    .line 107
    iget v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mStreamSize:I

    if-gtz v0, :cond_1

    .line 108
    return-wide v1

    .line 110
    :cond_1
    iget v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mStreamSize:I

    int-to-long v0, v0

    return-wide v0

    .line 113
    :cond_2
    const-wide/16 v3, 0x0

    .line 114
    .local v3, "targetOffset":J
    const/4 v0, 0x2

    const-wide/16 v5, -0x5

    if-ne p3, v0, :cond_3

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    .line 119
    .end local v3    # "targetOffset":J
    .local v0, "targetOffset":J
    goto :goto_0

    .line 117
    .end local v0    # "targetOffset":J
    .restart local v3    # "targetOffset":J
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    return-wide v5

    .line 120
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    if-nez p3, :cond_4

    .line 121
    iget-wide v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mOffset:J

    sub-long v0, p1, v0

    .end local v3    # "targetOffset":J
    .local v0, "targetOffset":J
    goto :goto_0

    .line 122
    .end local v0    # "targetOffset":J
    .restart local v3    # "targetOffset":J
    :cond_4
    const/4 v0, 0x1

    if-ne p3, v0, :cond_5

    .line 123
    move-wide v0, p1

    .line 129
    .end local v3    # "targetOffset":J
    .restart local v0    # "targetOffset":J
    :goto_0
    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/cicada/player/utils/ContentDataSource;->skip(J)J

    move-result-wide v2

    .line 130
    .local v2, "skipBytes":J
    iget-wide v7, p0, Lcom/cicada/player/utils/ContentDataSource;->mOffset:J

    add-long/2addr v7, v2

    iput-wide v7, p0, Lcom/cicada/player/utils/ContentDataSource;->mOffset:J

    .line 131
    iget-wide v4, p0, Lcom/cicada/player/utils/ContentDataSource;->mOffset:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide v4

    .line 132
    .end local v2    # "skipBytes":J
    :catch_1
    move-exception v2

    .line 133
    .local v2, "e":Ljava/io/IOException;
    return-wide v5

    .line 125
    .end local v0    # "targetOffset":J
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "targetOffset":J
    :cond_5
    return-wide v1
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/cicada/player/utils/ContentDataSource;->mUri:Ljava/lang/String;

    .line 44
    return-void
.end method
