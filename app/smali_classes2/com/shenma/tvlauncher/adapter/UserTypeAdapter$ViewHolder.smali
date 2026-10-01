.class Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "UserTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private app_icon:Landroid/widget/ImageView;

.field private app_title:Landroid/widget/TextView;

.field private checked:Landroid/widget/ImageView;

.field private item_cardview:Landroid/view/View;

.field private packflag:Landroid/widget/TextView;

.field private poster:Landroid/widget/ImageView;

.field private state:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

.field private videoName:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetapp_icon(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->app_icon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetapp_title(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->app_title:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpackflag(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->packflag:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetposter(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->poster:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstate(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->state:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoName(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->videoName:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputapp_icon(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->app_icon:Landroid/widget/ImageView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputapp_title(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->app_title:Landroid/widget/TextView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputchecked(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->checked:Landroid/widget/ImageView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputitem_cardview(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->item_cardview:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpackflag(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->packflag:Landroid/widget/TextView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputposter(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->poster:Landroid/widget/ImageView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstate(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->state:Landroid/widget/TextView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvideoName(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->videoName:Landroid/widget/TextView;

    return-void
.end method

.method constructor <init>(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 163
    .local p0, "this":Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;, "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter<TT;>.ViewHolder;"
    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->this$0:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    return-void
.end method
