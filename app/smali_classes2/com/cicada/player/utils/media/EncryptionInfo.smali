.class public Lcom/cicada/player/utils/media/EncryptionInfo;
.super Ljava/lang/Object;
.source "EncryptionInfo.java"


# annotations
.annotation runtime Lcom/cicada/player/utils/NativeUsed;
.end annotation


# instance fields
.field public crypt_byte_block:I

.field public iv:[B

.field public key_id:[B

.field public scheme:Ljava/lang/String;

.field public skip_byte_block:I

.field public subsamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cicada/player/utils/media/SubsampleEncryptionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->crypt_byte_block:I

    .line 12
    iput v0, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->skip_byte_block:I

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->key_id:[B

    .line 15
    iput-object v0, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->iv:[B

    .line 16
    iput-object v0, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->subsamples:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public setIv([B)V
    .locals 0
    .param p1, "iv"    # [B

    .line 23
    iput-object p1, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->iv:[B

    .line 24
    return-void
.end method

.method public setKeyId([B)V
    .locals 0
    .param p1, "keyId"    # [B

    .line 19
    iput-object p1, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->key_id:[B

    .line 20
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->scheme:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setSubsamples(Ljava/lang/Object;)V
    .locals 1
    .param p1, "subsamples"    # Ljava/lang/Object;

    .line 27
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->subsamples:Ljava/util/List;

    .line 28
    return-void
.end method
