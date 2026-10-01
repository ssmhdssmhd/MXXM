.class Lcom/aliyun/player/videoview/displayView/IDisplayView$6;
.super Ljava/lang/Object;
.source "IDisplayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/videoview/displayView/IDisplayView;->detachView()V
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

    .line 228
    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView$6;->this$0:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView$6;->this$0:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-static {v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->access$100(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView$6;->this$0:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-static {v1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->access$200(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Landroid/view/ViewGroup;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView$6;->this$0:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-static {v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->access$200(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView$6;->this$0:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-static {v1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->access$100(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 234
    :cond_0
    return-void
.end method
