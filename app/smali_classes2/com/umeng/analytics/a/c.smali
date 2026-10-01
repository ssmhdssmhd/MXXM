.class public Lcom/umeng/analytics/a/c;
.super Ljava/lang/Object;
.source "Envelope.java"


# instance fields
.field private final a:[B

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:[B

.field private e:[B

.field private f:[B

.field private g:I

.field private h:I

.field private i:I

.field private j:[B

.field private k:[B


# direct methods
.method private constructor <init>([BLjava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/umeng/analytics/a/c;->a:[B

    .line 23
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/umeng/analytics/a/c;->b:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/a/c;->c:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/umeng/analytics/a/c;->d:[B

    .line 27
    iput-object v0, p0, Lcom/umeng/analytics/a/c;->e:[B

    .line 28
    iput-object v0, p0, Lcom/umeng/analytics/a/c;->f:[B

    .line 30
    const/4 v1, 0x0

    iput v1, p0, Lcom/umeng/analytics/a/c;->g:I

    .line 31
    iput v1, p0, Lcom/umeng/analytics/a/c;->h:I

    .line 32
    iput v1, p0, Lcom/umeng/analytics/a/c;->i:I

    .line 34
    iput-object v0, p0, Lcom/umeng/analytics/a/c;->j:[B

    .line 35
    iput-object v0, p0, Lcom/umeng/analytics/a/c;->k:[B

    .line 39
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 43
    iput-object p2, p0, Lcom/umeng/analytics/a/c;->c:Ljava/lang/String;

    .line 44
    array-length p2, p1

    iput p2, p0, Lcom/umeng/analytics/a/c;->i:I

    .line 45
    invoke-static {p1}, Lcom/umeng/common/util/f;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/a/c;->j:[B

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p2, p1

    iput p2, p0, Lcom/umeng/analytics/a/c;->h:I

    .line 48
    iput-object p3, p0, Lcom/umeng/analytics/a/c;->k:[B

    .line 49
    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "entity is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[B)Lcom/umeng/analytics/a/c;
    .locals 10

    .line 65
    const-string v0, "serial"

    const-string/jumbo v1, "signature"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/umeng/common/b;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-static {p0}, Lcom/umeng/common/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-static {p0}, Lcom/umeng/analytics/b/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/m;

    move-result-object p0

    .line 70
    invoke-virtual {p0, v1, v2}, Lcom/umeng/analytics/b/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 71
    const/4 v6, 0x1

    invoke-virtual {p0, v0, v6}, Lcom/umeng/analytics/b/m;->a(Ljava/lang/String;I)I

    move-result v7

    .line 73
    new-instance v8, Lcom/umeng/analytics/a/c;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v8, p2, p1, v3}, Lcom/umeng/analytics/a/c;-><init>([BLjava/lang/String;[B)V

    .line 75
    invoke-virtual {v8, v5}, Lcom/umeng/analytics/a/c;->a(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v8, v7}, Lcom/umeng/analytics/a/c;->a(I)V

    .line 77
    invoke-virtual {v8}, Lcom/umeng/analytics/a/c;->b()V

    .line 79
    invoke-virtual {p0}, Lcom/umeng/analytics/b/m;->a()Lcom/umeng/analytics/b/m$a;

    move-result-object p0

    add-int/2addr v7, v6

    invoke-virtual {p0, v0, v7}, Lcom/umeng/analytics/b/m$a;->a(Ljava/lang/String;I)Lcom/umeng/analytics/b/m$a;

    move-result-object p0

    invoke-virtual {v8}, Lcom/umeng/analytics/a/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/umeng/analytics/b/m$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/analytics/b/m$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/analytics/b/m$a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    return-object v8

    .line 81
    :catch_0
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    return-object v2
.end method

.method public static a([B)[B
    .locals 1

    .line 193
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 195
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 197
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 198
    :catch_0
    move-exception p0

    .line 199
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    const/4 p0, 0x0

    return-object p0
.end method

.method private a([BI)[B
    .locals 10

    .line 102
    iget-object v0, p0, Lcom/umeng/analytics/a/c;->k:[B

    invoke-static {v0}, Lcom/umeng/analytics/a/c;->a([B)[B

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/umeng/analytics/a/c;->j:[B

    invoke-static {v1}, Lcom/umeng/analytics/a/c;->a([B)[B

    move-result-object v1

    .line 105
    array-length v2, v0

    .line 106
    mul-int/lit8 v3, v2, 0x2

    new-array v4, v3, [B

    .line 109
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v2, :cond_0

    .line 110
    mul-int/lit8 v8, v6, 0x2

    aget-byte v9, v1, v6

    aput-byte v9, v4, v8

    .line 111
    add-int/2addr v8, v7

    aget-byte v7, v0, v6

    aput-byte v7, v4, v8

    .line 109
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 115
    :cond_0
    nop

    .line 116
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 117
    aget-byte v1, p1, v0

    aput-byte v1, v4, v0

    .line 118
    sub-int v1, v3, v0

    sub-int/2addr v1, v7

    array-length v2, p1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v7

    aget-byte v2, p1, v2

    aput-byte v2, v4, v1

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 122
    :cond_1
    nop

    .line 124
    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    .line 125
    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 126
    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 127
    ushr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    const/4 v6, 0x4

    new-array v6, v6, [B

    aput-byte p1, v6, v5

    aput-byte v0, v6, v7

    aput-byte v2, v6, v1

    const/4 p1, 0x3

    aput-byte p2, v6, p1

    .line 129
    nop

    :goto_2
    if-ge v5, v3, :cond_2

    .line 130
    aget-byte p1, v4, v5

    rem-int/lit8 p2, v5, 0x4

    aget-byte p2, v6, p2

    xor-int/2addr p1, p2

    int-to-byte p1, p1

    aput-byte p1, v4, v5

    .line 129
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 133
    :cond_2
    return-object v4
.end method

.method public static b([B)Ljava/lang/String;
    .locals 5

    .line 207
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 208
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 209
    aget-byte v3, p0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const-string v3, "%02X"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 6

    .line 216
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 218
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 219
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    .line 220
    return-object v0

    .line 223
    :cond_1
    div-int/lit8 v0, v1, 0x2

    new-array v0, v0, [B

    .line 224
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 225
    div-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 224
    move v2, v4

    goto :goto_0

    .line 228
    :cond_2
    return-object v0
.end method

.method private d()[B
    .locals 5

    .line 137
    iget-object v0, p0, Lcom/umeng/analytics/a/c;->a:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v2, v1

    invoke-direct {p0, v0, v2}, Lcom/umeng/analytics/a/c;->a([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private e()[B
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    iget-object v1, p0, Lcom/umeng/analytics/a/c;->d:[B

    invoke-static {v1}, Lcom/umeng/analytics/a/c;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget v1, p0, Lcom/umeng/analytics/a/c;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    iget v1, p0, Lcom/umeng/analytics/a/c;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    iget v1, p0, Lcom/umeng/analytics/a/c;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    iget-object v1, p0, Lcom/umeng/analytics/a/c;->e:[B

    invoke-static {v1}, Lcom/umeng/analytics/a/c;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/a/c;->a([B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/umeng/analytics/a/c;->d:[B

    invoke-static {v0}, Lcom/umeng/analytics/a/c;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/umeng/analytics/a/c;->g:I

    .line 61
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-static {p1}, Lcom/umeng/analytics/a/c;->b(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/a/c;->d:[B

    .line 53
    return-void
.end method

.method public b()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/umeng/analytics/a/c;->d:[B

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/umeng/analytics/a/c;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/c;->d:[B

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/a/c;->d:[B

    iget v1, p0, Lcom/umeng/analytics/a/c;->h:I

    invoke-direct {p0, v0, v1}, Lcom/umeng/analytics/a/c;->a([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/c;->e:[B

    .line 98
    invoke-direct {p0}, Lcom/umeng/analytics/a/c;->e()[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/c;->f:[B

    .line 99
    return-void
.end method

.method public c()[B
    .locals 2

    .line 153
    new-instance v0, Lcom/umeng/analytics/e/a;

    invoke-direct {v0}, Lcom/umeng/analytics/e/a;-><init>()V

    .line 155
    iget-object v1, p0, Lcom/umeng/analytics/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/e/a;->a(Ljava/lang/String;)Lcom/umeng/analytics/e/a;

    .line 156
    iget-object v1, p0, Lcom/umeng/analytics/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/e/a;->b(Ljava/lang/String;)Lcom/umeng/analytics/e/a;

    .line 157
    iget-object v1, p0, Lcom/umeng/analytics/a/c;->d:[B

    invoke-static {v1}, Lcom/umeng/analytics/a/c;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/e/a;->c(Ljava/lang/String;)Lcom/umeng/analytics/e/a;

    .line 158
    iget v1, p0, Lcom/umeng/analytics/a/c;->g:I

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/e/a;->a(I)Lcom/umeng/analytics/e/a;

    .line 159
    iget v1, p0, Lcom/umeng/analytics/a/c;->h:I

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/e/a;->c(I)Lcom/umeng/analytics/e/a;

    .line 160
    iget v1, p0, Lcom/umeng/analytics/a/c;->i:I

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/e/a;->d(I)Lcom/umeng/analytics/e/a;

    .line 161
    iget-object v1, p0, Lcom/umeng/analytics/a/c;->j:[B

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/e/a;->a([B)Lcom/umeng/analytics/e/a;

    .line 162
    iget-object v1, p0, Lcom/umeng/analytics/a/c;->e:[B

    invoke-static {v1}, Lcom/umeng/analytics/a/c;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/e/a;->d(Ljava/lang/String;)Lcom/umeng/analytics/e/a;

    .line 163
    iget-object v1, p0, Lcom/umeng/analytics/a/c;->f:[B

    invoke-static {v1}, Lcom/umeng/analytics/a/c;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/e/a;->e(Ljava/lang/String;)Lcom/umeng/analytics/e/a;

    .line 166
    :try_start_0
    new-instance v1, Lcom/umeng/a/a/a/m;

    invoke-direct {v1}, Lcom/umeng/a/a/a/m;-><init>()V

    invoke-virtual {v1, v0}, Lcom/umeng/a/a/a/m;->a(Lcom/umeng/a/a/a/d;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    iget-object v1, p0, Lcom/umeng/analytics/a/c;->b:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string/jumbo v1, "version : %s\n"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v1, p0, Lcom/umeng/analytics/a/c;->c:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v1, "address : %s\n"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v1, p0, Lcom/umeng/analytics/a/c;->d:[B

    invoke-static {v1}, Lcom/umeng/analytics/a/c;->b([B)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string/jumbo v1, "signature : %s\n"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget v1, p0, Lcom/umeng/analytics/a/c;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v1, "serial : %s\n"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget v1, p0, Lcom/umeng/analytics/a/c;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string/jumbo v1, "timestamp : %d\n"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget v1, p0, Lcom/umeng/analytics/a/c;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v1, "length : %d\n"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-object v1, p0, Lcom/umeng/analytics/a/c;->e:[B

    invoke-static {v1}, Lcom/umeng/analytics/a/c;->b([B)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v1, "guid : %s\n"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v1, p0, Lcom/umeng/analytics/a/c;->f:[B

    invoke-static {v1}, Lcom/umeng/analytics/a/c;->b([B)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    const-string v1, "checksum : %s "

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
