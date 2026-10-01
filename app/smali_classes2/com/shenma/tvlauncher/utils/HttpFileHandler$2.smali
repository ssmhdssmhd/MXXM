.class Lcom/shenma/tvlauncher/utils/HttpFileHandler$2;
.super Ljava/lang/Object;
.source "HttpFileHandler.java"

# interfaces
.implements Lorg/apache/http/entity/ContentProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/utils/HttpFileHandler;->response(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/utils/HttpFileHandler;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/utils/HttpFileHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/utils/HttpFileHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/shenma/tvlauncher/utils/HttpFileHandler$2;->this$0:Lcom/shenma/tvlauncher/utils/HttpFileHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 87
    .local v0, "writer":Ljava/io/OutputStreamWriter;
    const-string v1, "<html><body><h1>"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 88
    const-string v1, "Access denied"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 89
    const-string v1, "</h1></body></html>"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 91
    return-void
.end method
