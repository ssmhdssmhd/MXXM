.class Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$8;
.super Lcom/android/volley/toolbox/HurlStack;
.source "Home2RecommendThemeSevenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$8;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;

    invoke-direct {p0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    return-void
.end method


# virtual methods
.method protected createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-super {p0, p1}, Lcom/android/volley/toolbox/HurlStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method
