.class public final enum Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;
.super Ljava/lang/Enum;
.source "AliDisplayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/videoview/AliDisplayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

.field public static final enum Either:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

.field public static final enum SurfaceView:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

.field public static final enum TextureView:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    const-string v1, "Either"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;->Either:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    .line 33
    new-instance v0, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    const-string v1, "SurfaceView"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;->SurfaceView:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    .line 40
    new-instance v0, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    const-string v1, "TextureView"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;->TextureView:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    sget-object v1, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;->Either:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;->SurfaceView:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;->TextureView:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;->$VALUES:[Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    return-object v0
.end method

.method public static values()[Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;
    .locals 1

    .line 19
    sget-object v0, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;->$VALUES:[Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    invoke-virtual {v0}, [Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    return-object v0
.end method
