.class Lcom/aliyun/player/nativeclass/NativeExternalPlayer$16;
.super Ljava/lang/Object;
.source "NativeExternalPlayer.java"

# interfaces
.implements Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamSwitchSucListener;


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

    .line 170
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$16;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamSwitchSuc(Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;Lcom/aliyun/player/nativeclass/TrackInfo;)V
    .locals 4
    .param p1, "type"    # Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;
    .param p2, "trackInfo"    # Lcom/aliyun/player/nativeclass/TrackInfo;

    .line 174
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$16;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$16;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-static {v1}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ordinal()I

    move-result v3

    invoke-static {v0, v1, v2, v3, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$1900(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JILcom/aliyun/player/nativeclass/TrackInfo;)V

    .line 175
    return-void
.end method
