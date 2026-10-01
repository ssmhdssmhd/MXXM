.class Lcom/shenma/tvlauncher/adapter/WallpaperAdapter$ViewHoder;
.super Ljava/lang/Object;
.source "WallpaperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHoder"
.end annotation


# instance fields
.field public cardView:Landroid/view/View;

.field final synthetic this$0:Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;

.field public tvs_item_img_iv:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/WallpaperAdapter$ViewHoder;->this$0:Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;Lcom/shenma/tvlauncher/adapter/WallpaperAdapter-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/adapter/WallpaperAdapter$ViewHoder;-><init>(Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;)V

    return-void
.end method
