.class final Lcom/aliyun/loader/MediaLoader$1;
.super Ljava/lang/Object;
.source "MediaLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/loader/MediaLoader;->nOnError(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$code:I

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/aliyun/loader/MediaLoader$1;->val$url:Ljava/lang/String;

    iput p2, p0, Lcom/aliyun/loader/MediaLoader$1;->val$code:I

    iput-object p3, p0, Lcom/aliyun/loader/MediaLoader$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 130
    invoke-static {}, Lcom/aliyun/loader/MediaLoader;->getInstance()Lcom/aliyun/loader/MediaLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/aliyun/loader/MediaLoader;->access$000(Lcom/aliyun/loader/MediaLoader;)Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/aliyun/loader/MediaLoader;->getInstance()Lcom/aliyun/loader/MediaLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/aliyun/loader/MediaLoader;->access$000(Lcom/aliyun/loader/MediaLoader;)Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/aliyun/loader/MediaLoader$1;->val$url:Ljava/lang/String;

    iget v2, p0, Lcom/aliyun/loader/MediaLoader$1;->val$code:I

    iget-object v3, p0, Lcom/aliyun/loader/MediaLoader$1;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;->onError(Ljava/lang/String;ILjava/lang/String;)V

    .line 133
    :cond_0
    return-void
.end method
