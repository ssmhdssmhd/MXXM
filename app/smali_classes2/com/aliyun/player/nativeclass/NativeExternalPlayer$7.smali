.class Lcom/aliyun/player/nativeclass/NativeExternalPlayer$7;
.super Ljava/lang/Object;
.source "NativeExternalPlayer.java"

# interfaces
.implements Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->create(JLcom/aliyun/player/nativeclass/Options;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    .line 104
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$7;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekEnd(Z)V
    .locals 3
    .param p1, "seekInCache"    # Z

    .line 113
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$7;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$7;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-static {v1}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$1000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JZ)V

    .line 114
    return-void
.end method

.method public onSeekStart(Z)V
    .locals 3
    .param p1, "seekInCache"    # Z

    .line 108
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$7;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$7;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-static {v1}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$900(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JZ)V

    .line 109
    return-void
.end method
