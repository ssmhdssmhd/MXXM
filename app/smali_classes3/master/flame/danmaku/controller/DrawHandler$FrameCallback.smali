.class Lmaster/flame/danmaku/controller/DrawHandler$FrameCallback;
.super Ljava/lang/Object;
.source "DrawHandler.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/controller/DrawHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lmaster/flame/danmaku/controller/DrawHandler;


# direct methods
.method private constructor <init>(Lmaster/flame/danmaku/controller/DrawHandler;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DrawHandler$FrameCallback;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmaster/flame/danmaku/controller/DrawHandler;Lmaster/flame/danmaku/controller/DrawHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lmaster/flame/danmaku/controller/DrawHandler;
    .param p2, "x1"    # Lmaster/flame/danmaku/controller/DrawHandler$1;

    .line 463
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/controller/DrawHandler$FrameCallback;-><init>(Lmaster/flame/danmaku/controller/DrawHandler;)V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2
    .param p1, "frameTimeNanos"    # J

    .line 466
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler$FrameCallback;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    .line 467
    return-void
.end method
