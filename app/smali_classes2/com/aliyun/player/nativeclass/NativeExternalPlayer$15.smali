.class Lcom/aliyun/player/nativeclass/NativeExternalPlayer$15;
.super Ljava/lang/Object;
.source "NativeExternalPlayer.java"

# interfaces
.implements Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;


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

    .line 163
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$15;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnStreamInfoGet(Lcom/aliyun/player/nativeclass/MediaInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/aliyun/player/nativeclass/MediaInfo;

    .line 167
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$15;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$15;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-static {v1}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$1800(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JLcom/aliyun/player/nativeclass/MediaInfo;)V

    .line 168
    return-void
.end method
