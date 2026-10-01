.class public final enum Lcom/aliyun/player/AliPlayerFactory$BlackType;
.super Ljava/lang/Enum;
.source "AliPlayerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/AliPlayerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlackType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/AliPlayerFactory$BlackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/AliPlayerFactory$BlackType;

.field public static final enum HW_Decode_H264:Lcom/aliyun/player/AliPlayerFactory$BlackType;

.field public static final enum HW_Decode_HEVC:Lcom/aliyun/player/AliPlayerFactory$BlackType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 181
    new-instance v0, Lcom/aliyun/player/AliPlayerFactory$BlackType;

    const-string v1, "HW_Decode_H264"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aliyun/player/AliPlayerFactory$BlackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/AliPlayerFactory$BlackType;->HW_Decode_H264:Lcom/aliyun/player/AliPlayerFactory$BlackType;

    .line 183
    new-instance v0, Lcom/aliyun/player/AliPlayerFactory$BlackType;

    const-string v1, "HW_Decode_HEVC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/aliyun/player/AliPlayerFactory$BlackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/AliPlayerFactory$BlackType;->HW_Decode_HEVC:Lcom/aliyun/player/AliPlayerFactory$BlackType;

    .line 174
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/aliyun/player/AliPlayerFactory$BlackType;

    sget-object v1, Lcom/aliyun/player/AliPlayerFactory$BlackType;->HW_Decode_H264:Lcom/aliyun/player/AliPlayerFactory$BlackType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/AliPlayerFactory$BlackType;->HW_Decode_HEVC:Lcom/aliyun/player/AliPlayerFactory$BlackType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/aliyun/player/AliPlayerFactory$BlackType;->$VALUES:[Lcom/aliyun/player/AliPlayerFactory$BlackType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/AliPlayerFactory$BlackType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 174
    const-class v0, Lcom/aliyun/player/AliPlayerFactory$BlackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/AliPlayerFactory$BlackType;

    return-object v0
.end method

.method public static values()[Lcom/aliyun/player/AliPlayerFactory$BlackType;
    .locals 1

    .line 174
    sget-object v0, Lcom/aliyun/player/AliPlayerFactory$BlackType;->$VALUES:[Lcom/aliyun/player/AliPlayerFactory$BlackType;

    invoke-virtual {v0}, [Lcom/aliyun/player/AliPlayerFactory$BlackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/AliPlayerFactory$BlackType;

    return-object v0
.end method
