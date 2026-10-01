.class public Lcom/aliyun/player/IPlayer$Option;
.super Ljava/lang/Object;
.source "IPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Option"
.end annotation


# static fields
.field public static RenderFPS:Lcom/aliyun/player/IPlayer$Option;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1761
    new-instance v0, Lcom/aliyun/player/IPlayer$Option;

    const-string v1, "renderFps"

    invoke-direct {v0, v1}, Lcom/aliyun/player/IPlayer$Option;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/IPlayer$Option;->RenderFPS:Lcom/aliyun/player/IPlayer$Option;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 1765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1766
    iput-object p1, p0, Lcom/aliyun/player/IPlayer$Option;->mValue:Ljava/lang/String;

    .line 1767
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1770
    iget-object v0, p0, Lcom/aliyun/player/IPlayer$Option;->mValue:Ljava/lang/String;

    return-object v0
.end method
