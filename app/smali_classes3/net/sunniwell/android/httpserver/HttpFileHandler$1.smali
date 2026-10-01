.class Lnet/sunniwell/android/httpserver/HttpFileHandler$1;
.super Ljava/lang/Object;
.source "HttpFileHandler.java"

# interfaces
.implements Lorg/apache/http/entity/ContentProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sunniwell/android/httpserver/HttpFileHandler;->response(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sunniwell/android/httpserver/HttpFileHandler;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/sunniwell/android/httpserver/HttpFileHandler;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sunniwell/android/httpserver/HttpFileHandler$1;->this$0:Lnet/sunniwell/android/httpserver/HttpFileHandler;

    iput-object p2, p0, Lnet/sunniwell/android/httpserver/HttpFileHandler$1;->val$path:Ljava/lang/String;

    .line 98
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

    .line 102
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 103
    nop

    .line 102
    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 104
    .local v0, "writer":Ljava/io/OutputStreamWriter;
    const-string v2, "<html><body><h1>"

    invoke-virtual {v0, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 105
    const-string v2, "File "

    invoke-virtual {v0, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lnet/sunniwell/android/httpserver/HttpFileHandler$1;->val$path:Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 107
    const-string v1, " not found"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 108
    const-string v1, "</h1></body></html>"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 110
    return-void
.end method
