.class public Lcom/shenma/tvlauncher/utils/Rsa;
.super Ljava/lang/Object;
.source "Rsa.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Rsa"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "dataString"    # Ljava/lang/String;
    .param p1, "publicKeyString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 44
    .local v1, "publicKeyBytes":[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 45
    .local v2, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 46
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    .line 47
    .local v4, "publicKey":Ljava/security/PublicKey;
    const-string v5, "RSA/ECB/PKCS1Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 48
    .local v5, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    invoke-virtual {v5, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 50
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 51
    .local v6, "encryptedBytes":[B
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    .local v7, "outputStream":Ljava/io/ByteArrayOutputStream;
    array-length v8, v6

    .line 53
    .local v8, "inputLength":I
    const/4 v9, 0x0

    .line 54
    .local v9, "offset":I
    const/16 v10, 0x80

    .line 56
    .local v10, "maxDecryptBlockSize":I
    :goto_0
    sub-int v11, v8, v9

    if-lez v11, :cond_1

    .line 58
    sub-int v11, v8, v9

    if-le v11, v10, :cond_0

    .line 59
    invoke-virtual {v5, v6, v9, v10}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v11

    .local v11, "cache":[B
    goto :goto_1

    .line 61
    .end local v11    # "cache":[B
    :cond_0
    sub-int v11, v8, v9

    invoke-virtual {v5, v6, v9, v11}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v11

    .line 63
    .restart local v11    # "cache":[B
    :goto_1
    array-length v12, v11

    invoke-virtual {v7, v11, v0, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 64
    add-int/2addr v9, v10

    .line 65
    .end local v11    # "cache":[B
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 68
    .local v0, "decryptedBytes":[B
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 69
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V

    return-object v11
.end method

.method public static encrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "dataString"    # Ljava/lang/String;
    .param p1, "publicKeyString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 82
    .local v1, "publicKeyBytes":[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 83
    .local v2, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 84
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    .line 85
    .local v4, "publicKey":Ljava/security/PublicKey;
    const-string v5, "RSA/ECB/PKCS1Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 86
    .local v5, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v5, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 89
    .local v6, "dataBytes":[B
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 90
    .local v7, "outputStream":Ljava/io/ByteArrayOutputStream;
    array-length v8, v6

    .line 91
    .local v8, "inputLength":I
    const/4 v9, 0x0

    .line 92
    .local v9, "offset":I
    const/16 v10, 0x75

    .line 94
    .local v10, "maxEncryptBlockSize":I
    :goto_0
    sub-int v11, v8, v9

    if-lez v11, :cond_1

    .line 96
    sub-int v11, v8, v9

    if-le v11, v10, :cond_0

    .line 97
    invoke-virtual {v5, v6, v9, v10}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v11

    .local v11, "cache":[B
    goto :goto_1

    .line 99
    .end local v11    # "cache":[B
    :cond_0
    sub-int v11, v8, v9

    invoke-virtual {v5, v6, v9, v11}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v11

    .line 101
    .restart local v11    # "cache":[B
    :goto_1
    array-length v12, v11

    invoke-virtual {v7, v11, v0, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 102
    add-int/2addr v9, v10

    .line 103
    .end local v11    # "cache":[B
    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .line 106
    .local v11, "encryptedBytes":[B
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 107
    invoke-static {v11, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
