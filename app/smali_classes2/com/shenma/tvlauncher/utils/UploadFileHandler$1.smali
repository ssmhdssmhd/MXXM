.class Lcom/shenma/tvlauncher/utils/UploadFileHandler$1;
.super Ljava/lang/Object;
.source "UploadFileHandler.java"

# interfaces
.implements Lorg/apache/http/entity/ContentProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/utils/UploadFileHandler;->writeToHTML(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/utils/UploadFileHandler;

.field final synthetic val$returnStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/utils/UploadFileHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/utils/UploadFileHandler;
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

    .line 155
    iput-object p1, p0, Lcom/shenma/tvlauncher/utils/UploadFileHandler$1;->this$0:Lcom/shenma/tvlauncher/utils/UploadFileHandler;

    iput-object p2, p0, Lcom/shenma/tvlauncher/utils/UploadFileHandler$1;->val$returnStr:Ljava/lang/String;

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

    .line 157
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 158
    .local v0, "writer":Ljava/io/OutputStreamWriter;
    iget-object v1, p0, Lcom/shenma/tvlauncher/utils/UploadFileHandler$1;->val$returnStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 160
    return-void
.end method
