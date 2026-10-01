.class Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;
.super Ljava/lang/Object;
.source "AppManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/AppManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public myapp_gridview_item_flag_tv:Landroid/widget/TextView;

.field public myapp_gridview_item_iv:Landroid/widget/ImageView;

.field public myapp_gridview_item_love_iv:Landroid/widget/ImageView;

.field public myapp_gridview_item_tv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/shenma/tvlauncher/AppManageActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/AppManageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/AppManageActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 512
    iput-object p1, p0, Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
