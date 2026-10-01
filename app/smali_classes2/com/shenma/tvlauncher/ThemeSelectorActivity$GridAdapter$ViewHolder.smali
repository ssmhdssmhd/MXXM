.class Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ThemeSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private itemRootView:Landroid/view/View;

.field ivIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;

.field tvTitle:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetitemRootView(Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;->itemRootView:Landroid/view/View;

    return-object p0
.end method

.method constructor <init>(Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;
    .param p2, "itemView"    # Landroid/view/View;
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

    .line 294
    iput-object p1, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;->this$0:Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;

    .line 295
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 296
    sget v0, Lcom/shenma/tvlauncher/R$id;->iv_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    .line 297
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 298
    sget v0, Lcom/shenma/tvlauncher/R$id;->card_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;->itemRootView:Landroid/view/View;

    .line 299
    return-void
.end method
