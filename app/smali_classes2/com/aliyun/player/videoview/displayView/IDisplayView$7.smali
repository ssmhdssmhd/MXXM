.class Lcom/aliyun/player/videoview/displayView/IDisplayView$7;
.super Ljava/lang/Object;
.source "IDisplayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/videoview/displayView/IDisplayView;->attachView()V
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

    .line 240
    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView$7;->this$0:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView$7;->this$0:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-static {v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->access$200(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView$7;->this$0:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-static {v1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->access$100(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 245
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView$7;->this$0:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView$7;->this$0:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-static {v1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->access$300(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Lcom/aliyun/player/IPlayer$MirrorMode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->access$400(Lcom/aliyun/player/videoview/displayView/IDisplayView;Lcom/aliyun/player/IPlayer$MirrorMode;)V

    .line 246
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView$7;->this$0:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView$7;->this$0:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-static {v1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->access$500(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Lcom/aliyun/player/IPlayer$ScaleMode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->access$600(Lcom/aliyun/player/videoview/displayView/IDisplayView;Lcom/aliyun/player/IPlayer$ScaleMode;)V

    .line 247
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView$7;->this$0:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView$7;->this$0:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-static {v1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->access$700(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Lcom/aliyun/player/IPlayer$RotateMode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->access$800(Lcom/aliyun/player/videoview/displayView/IDisplayView;Lcom/aliyun/player/IPlayer$RotateMode;)V

    .line 249
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView$7;->this$0:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-static {v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->access$000(Lcom/aliyun/player/videoview/displayView/IDisplayView;)V

    .line 251
    return-void
.end method
