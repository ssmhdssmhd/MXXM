.class Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;

.field tv_channel:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter$ViewHolder;->this$0:Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
