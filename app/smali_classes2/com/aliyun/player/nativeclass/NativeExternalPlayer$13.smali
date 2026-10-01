.class Lcom/aliyun/player/nativeclass/NativeExternalPlayer$13;
.super Ljava/lang/Object;
.source "NativeExternalPlayer.java"

# interfaces
.implements Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;


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

    .line 149
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$13;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$13;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$13;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-static {v1}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)J

    move-result-wide v1

    int-to-long v3, p1

    move-object v5, p2

    .end local p2    # "msg":Ljava/lang/String;
    .local v5, "msg":Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$1600(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJLjava/lang/String;)V

    .line 154
    return-void
.end method
