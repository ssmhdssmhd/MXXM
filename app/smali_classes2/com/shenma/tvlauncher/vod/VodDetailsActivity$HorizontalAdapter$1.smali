.class Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$1;
.super Ljava/lang/Object;
.source "VodDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;->onBindViewHolder(Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;
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

    .line 1752
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$1;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;

    iput p2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 1755
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$1;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;->-$$Nest$fgetonItemClickListener(Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;)Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$1;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;->-$$Nest$fgetonItemClickListener(Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;)Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$OnItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$OnItemClickListener;->onItemClick(I)V

    .line 1758
    :cond_0
    return-void
.end method
