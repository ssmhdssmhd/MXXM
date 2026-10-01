.class Lcom/shenma/tvlauncher/SettingWallpaperActivity$5;
.super Ljava/lang/Object;
.source "SettingWallpaperActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/SettingWallpaperActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/SettingWallpaperActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$5;->this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .line 216
    sub-int v0, p4, p3

    .line 217
    .local v0, "i":I
    if-ge p2, v0, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$5;->this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->-$$Nest$mpageDown(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)V

    .line 223
    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .line 213
    return-void
.end method
