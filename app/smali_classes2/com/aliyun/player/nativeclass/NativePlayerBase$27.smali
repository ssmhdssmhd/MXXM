.class Lcom/aliyun/player/nativeclass/NativePlayerBase$27;
.super Ljava/lang/Object;
.source "NativePlayerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase;->onSubtitleHeader(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

.field final synthetic val$header:Ljava/lang/String;

.field final synthetic val$trackIndex:I


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 1184
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$27;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iput p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$27;->val$trackIndex:I

    iput-object p3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$27;->val$header:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1187
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$27;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$1700(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$27;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$1700(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    move-result-object v0

    iget v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$27;->val$trackIndex:I

    iget-object v2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$27;->val$header:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;->onSubtitleHeader(ILjava/lang/String;)V

    .line 1190
    :cond_0
    return-void
.end method
