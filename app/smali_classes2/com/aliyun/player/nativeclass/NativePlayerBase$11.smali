.class Lcom/aliyun/player/nativeclass/NativePlayerBase$11;
.super Ljava/lang/Object;
.source "NativePlayerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase;->onVideoRendered(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

.field final synthetic val$pts:J

.field final synthetic val$timeMs:J


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 968
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$11;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iput-wide p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$11;->val$timeMs:J

    iput-wide p4, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$11;->val$pts:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 971
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$11;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$1000(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$11;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$1000(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    move-result-object v0

    iget-wide v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$11;->val$timeMs:J

    iget-wide v3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$11;->val$pts:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;->onVideoRendered(JJ)V

    .line 974
    :cond_0
    return-void
.end method
