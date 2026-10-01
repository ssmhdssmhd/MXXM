.class Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;
.super Ljava/lang/Object;
.source "IdHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdRecording"
.end annotation


# instance fields
.field final id:Ljava/lang/String;

.field level:I

.field final sb:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;


# direct methods
.method public constructor <init>(Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;->this$0:Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;->id:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;->level:I

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;->sb:Ljava/lang/StringBuilder;

    .line 34
    return-void
.end method
