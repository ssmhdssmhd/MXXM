.class public Lcom/aliyun/utils/EncodeUtils;
.super Ljava/lang/Object;
.source "EncodeUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/aliyun/utils/EncodeUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/utils/EncodeUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "b":[B
    const/4 v1, 0x0

    .line 21
    .local v1, "s":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    const/4 v2, 0x0

    return-object v2

    .line 26
    :cond_0
    :try_start_0
    const-string/jumbo v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 28
    goto :goto_0

    .line 27
    :catch_0
    move-exception v2

    .line 29
    :goto_0
    if-eqz v0, :cond_1

    .line 30
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    .line 31
    .local v2, "encode":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    return-object v3

    .line 33
    .end local v2    # "encode":[B
    :cond_1
    return-object v1
.end method

.method public static getDecodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "b":[B
    const/4 v1, 0x0

    .line 40
    .local v1, "s":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    const/4 v2, 0x0

    return-object v2

    .line 44
    :cond_0
    :try_start_0
    const-string/jumbo v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 46
    goto :goto_0

    .line 45
    :catch_0
    move-exception v2

    .line 47
    :goto_0
    if-eqz v0, :cond_1

    .line 48
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    .line 49
    .local v2, "decode":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    return-object v3

    .line 51
    .end local v2    # "decode":[B
    :cond_1
    return-object v1
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/aliyun/utils/EncodeUtils;->getMD5([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMD5([B)Ljava/lang/String;
    .locals 11
    .param p0, "source"    # [B

    .line 60
    const-string v0, ""

    .line 61
    .local v0, "s":Ljava/lang/String;
    const/16 v1, 0x10

    new-array v2, v1, [C

    fill-array-data v2, :array_0

    .line 64
    .local v2, "hexDigits":[C
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 65
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 66
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 68
    .local v4, "tmp":[B
    const/16 v5, 0x20

    new-array v5, v5, [C

    .line 70
    .local v5, "str":[C
    const/4 v6, 0x0

    .line 71
    .local v6, "k":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_0

    .line 73
    aget-byte v8, v4, v7

    .line 74
    .local v8, "byte0":B
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "k":I
    .local v9, "k":I
    ushr-int/lit8 v10, v8, 0x4

    and-int/lit8 v10, v10, 0xf

    aget-char v10, v2, v10

    aput-char v10, v5, v6

    .line 76
    add-int/lit8 v6, v9, 0x1

    .end local v9    # "k":I
    .restart local v6    # "k":I
    and-int/lit8 v10, v8, 0xf

    aget-char v10, v2, v10

    aput-char v10, v5, v9

    .line 71
    .end local v8    # "byte0":B
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 78
    .end local v7    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 80
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "tmp":[B
    .end local v5    # "str":[C
    .end local v6    # "k":I
    goto :goto_1

    .line 79
    :catch_0
    move-exception v1

    .line 81
    :goto_1
    return-object v0

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method
