.class Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$1;
.super Ljava/lang/Object;
.source "FakeDanmakuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->getFrameAtTime(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;

.field final synthetic val$frameRate:I


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;I)V
    .locals 0
    .param p1, "this$0"    # Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;

    .line 308
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$1;->this$0:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;

    iput p2, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$1;->val$frameRate:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 311
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$1;->this$0:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;

    iget v1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$1;->val$frameRate:I

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->getFrameAtTime(I)V

    .line 312
    return-void
.end method
