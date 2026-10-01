.class Lcom/cicada/player/utils/VsyncTimer$1;
.super Ljava/lang/Object;
.source "VsyncTimer.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cicada/player/utils/VsyncTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cicada/player/utils/VsyncTimer;


# direct methods
.method constructor <init>(Lcom/cicada/player/utils/VsyncTimer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cicada/player/utils/VsyncTimer;

    .line 26
    iput-object p1, p0, Lcom/cicada/player/utils/VsyncTimer$1;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 3
    .param p1, "frameTimeNanos"    # J

    .line 29
    iget-object v0, p0, Lcom/cicada/player/utils/VsyncTimer$1;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    iget-object v1, p0, Lcom/cicada/player/utils/VsyncTimer$1;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    invoke-static {v1}, Lcom/cicada/player/utils/VsyncTimer;->access$000(Lcom/cicada/player/utils/VsyncTimer;)J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1, p2}, Lcom/cicada/player/utils/VsyncTimer;->access$100(Lcom/cicada/player/utils/VsyncTimer;JJ)I

    .line 30
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 31
    return-void
.end method
