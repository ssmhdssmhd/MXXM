.class Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V
    .locals 0
    .param p1, "this$0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 239
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 241
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmOnInfoListener(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmOnInfoListener(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 244
    :cond_0
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 276
    :sswitch_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0, p3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fputmVideoRotationDegree(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)V

    .line 278
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmRenderView(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmRenderView(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v0

    invoke-interface {v0, p3}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setVideoRotation(I)V

    goto :goto_0

    .line 274
    :sswitch_1
    goto :goto_0

    .line 271
    :sswitch_2
    goto :goto_0

    .line 268
    :sswitch_3
    goto :goto_0

    .line 265
    :sswitch_4
    goto :goto_0

    .line 262
    :sswitch_5
    goto :goto_0

    .line 259
    :sswitch_6
    goto :goto_0

    .line 256
    :sswitch_7
    goto :goto_0

    .line 253
    :sswitch_8
    goto :goto_0

    .line 247
    :sswitch_9
    goto :goto_0

    .line 250
    :sswitch_a
    nop

    .line 285
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_a
        0x2bc -> :sswitch_9
        0x2bd -> :sswitch_8
        0x2be -> :sswitch_7
        0x2bf -> :sswitch_6
        0x320 -> :sswitch_5
        0x321 -> :sswitch_4
        0x322 -> :sswitch_3
        0x385 -> :sswitch_2
        0x386 -> :sswitch_1
        0x2711 -> :sswitch_0
    .end sparse-switch
.end method
