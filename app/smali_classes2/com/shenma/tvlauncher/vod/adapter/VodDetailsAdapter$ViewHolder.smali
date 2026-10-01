.class Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "VodDetailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private iv_details_recommend_poster:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;

.field private tv_details_recommend_name:Landroid/widget/TextView;

.field private tv_details_recommend_score:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetiv_details_recommend_poster(Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;->iv_details_recommend_poster:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_details_recommend_name(Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;->tv_details_recommend_name:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_details_recommend_score(Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;->tv_details_recommend_score:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputiv_details_recommend_poster(Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;->iv_details_recommend_poster:Landroid/widget/ImageView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtv_details_recommend_name(Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;->tv_details_recommend_name:Landroid/widget/TextView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtv_details_recommend_score(Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;->tv_details_recommend_score:Landroid/widget/TextView;

    return-void
.end method

.method constructor <init>(Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;->this$0:Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method
