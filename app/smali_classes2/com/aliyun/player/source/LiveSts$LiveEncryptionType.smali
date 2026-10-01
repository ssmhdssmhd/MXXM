.class public final enum Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;
.super Ljava/lang/Enum;
.source "LiveSts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/source/LiveSts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LiveEncryptionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

.field public static final enum AliEncryption:Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

.field public static final enum NoEncryption:Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

.field public static final enum WideVine_FairPlay:Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

    const-string v1, "NoEncryption"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;->NoEncryption:Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

    .line 26
    new-instance v0, Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

    const-string v1, "AliEncryption"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;->AliEncryption:Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

    .line 30
    new-instance v0, Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

    const-string v1, "WideVine_FairPlay"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;->WideVine_FairPlay:Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

    sget-object v1, Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;->NoEncryption:Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;->AliEncryption:Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;->WideVine_FairPlay:Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;->$VALUES:[Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 18
    const-class v0, Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

    return-object v0
.end method

.method public static values()[Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;
    .locals 1

    .line 18
    sget-object v0, Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;->$VALUES:[Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

    invoke-virtual {v0}, [Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

    return-object v0
.end method
