.class Lcom/aliyun/player/videoview/displayView/IDisplayView$3;
.super Ljava/lang/Object;
.source "IDisplayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/videoview/displayView/IDisplayView;->setVideoSize(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/videoview/displayView/IDisplayView;


# direct methods
.method constructor <init>(Lcom/aliyun/player/videoview/displayView/IDisplayView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 76
    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView$3;->this$0:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView$3;->this$0:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-static {v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->access$000(Lcom/aliyun/player/videoview/displayView/IDisplayView;)V

    .line 80
    return-void
.end method
