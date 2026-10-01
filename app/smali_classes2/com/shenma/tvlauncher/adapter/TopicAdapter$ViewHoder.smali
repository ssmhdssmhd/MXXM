.class Lcom/shenma/tvlauncher/adapter/TopicAdapter$ViewHoder;
.super Ljava/lang/Object;
.source "TopicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/adapter/TopicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHoder"
.end annotation


# instance fields
.field public image:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/shenma/tvlauncher/adapter/TopicAdapter;


# direct methods
.method private constructor <init>(Lcom/shenma/tvlauncher/adapter/TopicAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/TopicAdapter$ViewHoder;->this$0:Lcom/shenma/tvlauncher/adapter/TopicAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shenma/tvlauncher/adapter/TopicAdapter;Lcom/shenma/tvlauncher/adapter/TopicAdapter-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/adapter/TopicAdapter$ViewHoder;-><init>(Lcom/shenma/tvlauncher/adapter/TopicAdapter;)V

    return-void
.end method
