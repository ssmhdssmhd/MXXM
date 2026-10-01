.class Lnet/sunniwell/android/httpserver/HttpFileHandler$2;
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


# direct methods
.method constructor <init>(Lnet/sunniwell/android/httpserver/HttpFileHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sunniwell/android/httpserver/HttpFileHandler$2;->this$0:Lnet/sunniwell/android/httpserver/HttpFileHandler;

    .line 117
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

    .line 121
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 122
    nop

    .line 121
    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 123
    .local v0, "writer":Ljava/io/OutputStreamWriter;
    const-string v1, "<html><body><h1>"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 124
    const-string v1, "Access denied"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 125
    const-string v1, "</h1></body></html>"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 127
    return-void
.end method
