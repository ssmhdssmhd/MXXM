.class Lcom/aliyun/player/nativeclass/DisplayViewHelper$4;
.super Ljava/lang/Object;
.source "DisplayViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/DisplayViewHelper;->firstFrameRender(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

.field final synthetic val$hasVideo:Z


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/DisplayViewHelper;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 273
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$4;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    iput-boolean p2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$4;->val$hasVideo:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 276
    iget-boolean v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$4;->val$hasVideo:Z

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$4;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$700(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 278
    .local v1, "displayView":Lcom/aliyun/player/videoview/displayView/IDisplayView;
    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {v1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->detachView()V

    .line 281
    .end local v1    # "displayView":Lcom/aliyun/player/videoview/displayView/IDisplayView;
    :cond_0
    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$4;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$700(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$4;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$600(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 286
    return-void
.end method
