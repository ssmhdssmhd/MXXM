.class Lcom/shenma/tvlauncher/utils/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/wepower/live/parser/IPlay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/utils/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/utils/Utils;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/utils/Utils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/utils/Utils;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/shenma/tvlauncher/utils/Utils$1;->this$0:Lcom/shenma/tvlauncher/utils/Utils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public returnIP()Ljava/lang/String;
    .locals 1

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public returnPlayUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    return-object v0
.end method
