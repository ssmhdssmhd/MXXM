.class Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;
.super Ljava/lang/Object;
.source "DisplayViewHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/DisplayViewHelper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 50
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$000(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/AliDisplayView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aliyun/player/videoview/AliDisplayView;->getMeasuredWidth()I

    move-result v0

    .line 54
    .local v0, "width":I
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-static {v1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$000(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/AliDisplayView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aliyun/player/videoview/AliDisplayView;->getMeasuredHeight()I

    move-result v1

    .line 55
    .local v1, "height":I
    iget-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-static {v2}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$100(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-static {v2}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$200(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-static {v2, v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$102(Lcom/aliyun/player/nativeclass/DisplayViewHelper;I)I

    .line 57
    iget-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-static {v2, v1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$202(Lcom/aliyun/player/nativeclass/DisplayViewHelper;I)I

    .line 58
    iget-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-static {v2}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$300(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 59
    iget-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-static {v2}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$300(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->parentSizeChanged()V

    .line 62
    :cond_1
    return-void
.end method
