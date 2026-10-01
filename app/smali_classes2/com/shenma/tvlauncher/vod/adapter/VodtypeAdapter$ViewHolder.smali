.class Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "VodtypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private poster:Landroid/widget/ImageView;

.field private score:Landroid/widget/TextView;

.field private spuerHd:Landroid/widget/ImageView;

.field private state:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;

.field private videoName:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetposter(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->poster:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscore(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->score:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstate(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->state:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoName(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->videoName:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputposter(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->poster:Landroid/widget/ImageView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscore(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->score:Landroid/widget/TextView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstate(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->state:Landroid/widget/TextView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvideoName(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->videoName:Landroid/widget/TextView;

    return-void
.end method

.method constructor <init>(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->this$0:Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
