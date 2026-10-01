.class Lcom/baidu/cyberplayer/core/CyberPlayerCore$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/core/CyberPlayerCore$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$1;


# direct methods
.method constructor <init>(Lcom/baidu/cyberplayer/core/CyberPlayerCore$1;)V
    .locals 0

    .line 2028
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$1$1;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2033
    const-string v0, "CyberPlayerCore"

    const-string v1, "delay send createVPText"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    const/16 v0, 0x12c

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b(III)V

    .line 2035
    return-void
.end method
