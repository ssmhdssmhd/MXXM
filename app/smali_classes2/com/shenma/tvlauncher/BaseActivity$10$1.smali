.class Lcom/shenma/tvlauncher/BaseActivity$10$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lorg/apache/http/entity/ContentProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/BaseActivity$10;->handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shenma/tvlauncher/BaseActivity$10;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/BaseActivity$10;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shenma/tvlauncher/BaseActivity$10;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 625
    iput-object p1, p0, Lcom/shenma/tvlauncher/BaseActivity$10$1;->this$1:Lcom/shenma/tvlauncher/BaseActivity$10;

    iput-object p2, p0, Lcom/shenma/tvlauncher/BaseActivity$10$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 628
    .local v0, "writer":Ljava/io/OutputStreamWriter;
    const-string v2, "<html><body><h1>"

    invoke-virtual {v0, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 629
    const-string v2, "Search"

    invoke-virtual {v0, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 630
    iget-object v2, p0, Lcom/shenma/tvlauncher/BaseActivity$10$1;->val$path:Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 631
    const-string v1, "SearchSuccess"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 632
    const-string v1, "</h1></body></html>"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 634
    return-void
.end method
