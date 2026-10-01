.class public Lcom/shenma/tvlauncher/utils/Rc4;
.super Ljava/lang/Object;
.source "Rc4.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Rc4"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static HexString2Bytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "src"    # Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 103
    .local v0, "size":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 104
    .local v1, "ret":[B
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 105
    .local v2, "tmp":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    div-int/lit8 v4, v0, 0x2

    if-ge v3, v4, :cond_0

    .line 106
    mul-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v2, v5

    invoke-static {v4, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->uniteBytes(BB)B

    move-result v4

    aput-byte v4, v1, v3

    .line 105
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    .end local v3    # "i":I
    :cond_0
    return-object v1
.end method

.method private static RC4Base([BLjava/lang/String;)[B
    .locals 9
    .param p0, "input"    # [B
    .param p1, "mKkey"    # Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "x":I
    const/4 v1, 0x0

    .line 122
    .local v1, "y":I
    invoke-static {p1}, Lcom/shenma/tvlauncher/utils/Rc4;->initKey(Ljava/lang/String;)[B

    move-result-object v2

    .line 123
    .local v2, "key":[B
    array-length v3, p0

    new-array v3, v3, [B

    .line 124
    .local v3, "result":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_0

    .line 125
    add-int/lit8 v5, v0, 0x1

    and-int/lit16 v0, v5, 0xff

    .line 126
    aget-byte v5, v2, v0

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v5, v1

    and-int/lit16 v1, v5, 0xff

    .line 127
    aget-byte v5, v2, v0

    .line 128
    .local v5, "tmp":B
    aget-byte v6, v2, v1

    aput-byte v6, v2, v0

    .line 129
    aput-byte v5, v2, v1

    .line 130
    aget-byte v6, p0, v4

    aget-byte v7, v2, v0

    and-int/lit16 v7, v7, 0xff

    aget-byte v8, v2, v1

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-byte v7, v2, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    .line 124
    .end local v5    # "tmp":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 133
    .end local v4    # "i":I
    :cond_0
    return-object v3
.end method

.method private static asString([B)Ljava/lang/String;
    .locals 5
    .param p0, "buf"    # [B

    .line 60
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 61
    .local v0, "strbuf":Ljava/lang/StringBuffer;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 62
    .local v3, "b":B
    int-to-char v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 61
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 32
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Rc4;->HexString2Bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/shenma/tvlauncher/utils/Rc4;->RC4Base([BLjava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 33
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static decry_RC4([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # Ljava/lang/String;

    .line 18
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p0, p1}, Lcom/shenma/tvlauncher/utils/Rc4;->RC4Base([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Rc4;->asString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 19
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static decryptBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "encryptedBase64"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 147
    .local v0, "encryptedData":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->rc4Decrypt([B[B)[B

    move-result-object v1

    .line 148
    .local v1, "decryptedData":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 149
    .end local v0    # "encryptedData":[B
    .end local v1    # "decryptedData":[B
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static encry_RC4_byte(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 39
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/shenma/tvlauncher/utils/Rc4;->RC4Base([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 40
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 53
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {p0, p1}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Rc4;->asString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Rc4;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 54
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static initKey(Ljava/lang/String;)[B
    .locals 9
    .param p0, "aKey"    # Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 70
    .local v0, "b_key":[B
    const/16 v1, 0x100

    new-array v2, v1, [B

    .line 71
    .local v2, "state":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 72
    int-to-byte v4, v3

    aput-byte v4, v2, v3

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :cond_0
    const/4 v4, 0x0

    .line 75
    .local v4, "index1":I
    const/4 v5, 0x0

    .line 76
    .local v5, "index2":I
    if-eqz v0, :cond_3

    array-length v6, v0

    if-nez v6, :cond_1

    goto :goto_2

    .line 79
    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    .line 80
    aget-byte v6, v0, v4

    and-int/lit16 v6, v6, 0xff

    aget-byte v7, v2, v3

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    add-int/2addr v6, v5

    and-int/lit16 v5, v6, 0xff

    .line 81
    aget-byte v6, v2, v3

    .line 82
    .local v6, "tmp":B
    aget-byte v7, v2, v5

    aput-byte v7, v2, v3

    .line 83
    aput-byte v6, v2, v5

    .line 84
    add-int/lit8 v7, v4, 0x1

    array-length v8, v0

    rem-int v4, v7, v8

    .line 79
    .end local v6    # "tmp":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 86
    :cond_2
    return-object v2

    .line 77
    :cond_3
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private static rc4Decrypt([B[B)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 156
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "RC4"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 157
    .local v0, "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 158
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 159
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    return-object v2
.end method

.method private static toHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 90
    const-string v0, ""

    .line 91
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 92
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "s4":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x30

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .end local v2    # "s4":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static uniteBytes(BB)B
    .locals 6
    .param p0, "src0"    # B
    .param p1, "src1"    # B

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [B

    const/4 v5, 0x0

    aput-byte p0, v4, v5

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    int-to-char v0, v0

    .line 113
    .local v0, "_b0":C
    shl-int/lit8 v2, v0, 0x4

    int-to-char v0, v2

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    new-array v3, v3, [B

    aput-byte p1, v3, v5

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    int-to-char v1, v1

    .line 115
    .local v1, "_b1":C
    xor-int v2, v0, v1

    int-to-byte v2, v2

    .line 116
    .local v2, "ret":B
    return v2
.end method
