.class Lcom/shenma/tvlauncher/HttpRequest$1;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HttpRequest;->doGet(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/shenma/tvlauncher/HttpRequest$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/shenma/tvlauncher/HttpRequest$1;->val$url:Ljava/lang/String;

    const-string v1, "MTV"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/HttpRequest;->httpget(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    return-void
.end method
