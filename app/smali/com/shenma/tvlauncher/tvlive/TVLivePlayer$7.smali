.class Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$7;
.super Ljava/lang/Object;
.source "TVLivePlayer.java"

# interfaces
.implements Lcom/baidu/cyberplayer/core/BVideoView$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->setvvListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 639
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$7;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(II)Z
    .locals 2
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .line 644
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$7;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    sget-object v1, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$PLAYER_STATUS;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fputmPlayerStatus(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$PLAYER_STATUS;)V

    .line 645
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$7;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fputisNext(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Z)V

    .line 646
    const/4 v0, 0x0

    return v0
.end method
