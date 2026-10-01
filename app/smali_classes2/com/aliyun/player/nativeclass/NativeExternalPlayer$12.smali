.class Lcom/aliyun/player/nativeclass/NativeExternalPlayer$12;
.super Ljava/lang/Object;
.source "NativeExternalPlayer.java"

# interfaces
.implements Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoRenderedListener;


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

    .line 142
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$12;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoRendered(JJ)V
    .locals 7
    .param p1, "timeMs"    # J
    .param p3, "pts"    # J

    .line 146
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$12;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$12;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-static {v1}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)J

    move-result-wide v1

    move-wide v3, p1

    move-wide v5, p3

    .end local p1    # "timeMs":J
    .end local p3    # "pts":J
    .local v3, "timeMs":J
    .local v5, "pts":J
    invoke-static/range {v0 .. v6}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$1500(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJJ)V

    .line 147
    return-void
.end method
