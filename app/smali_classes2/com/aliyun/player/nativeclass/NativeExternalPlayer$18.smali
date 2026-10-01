.class Lcom/aliyun/player/nativeclass/NativeExternalPlayer$18;
.super Ljava/lang/Object;
.source "NativeExternalPlayer.java"

# interfaces
.implements Lcom/aliyun/player/ApasaraExternalPlayer$OnSubtitleListener;


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

    .line 183
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$18;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubtitleExtAdded(ILjava/lang/String;)V
    .locals 6
    .param p1, "trackIndex"    # I
    .param p2, "url"    # Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$18;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$18;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-static {v1}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)J

    move-result-wide v1

    int-to-long v3, p1

    move-object v5, p2

    .end local p2    # "url":Ljava/lang/String;
    .local v5, "url":Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$2100(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJLjava/lang/String;)V

    .line 187
    return-void
.end method

.method public onSubtitleHide(IJ)V
    .locals 6
    .param p1, "trackIndex"    # I
    .param p2, "id"    # J

    .line 196
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$18;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$18;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-static {v1}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)J

    move-result-wide v1

    int-to-long v3, p1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$2300(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJ[B)V

    .line 197
    return-void
.end method

.method public onSubtitleShow(IJLjava/lang/String;)V
    .locals 6
    .param p1, "trackIndex"    # I
    .param p2, "id"    # J
    .param p4, "data"    # Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$18;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$18;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-static {v1}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)J

    move-result-wide v1

    int-to-long v3, p1

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$2200(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJ[B)V

    .line 192
    return-void
.end method
