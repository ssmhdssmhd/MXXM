.class Lcom/shenma/tvlauncher/HistoryAndCollectActivity$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "HistoryAndCollectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/HistoryAndCollectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field mylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;


# direct methods
.method public constructor <init>(Lcom/shenma/tvlauncher/HistoryAndCollectActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HistoryAndCollectActivity;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 556
    .local p3, "mylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$MyAdapter;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 557
    iput-object p2, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$MyAdapter;->context:Landroid/content/Context;

    .line 558
    iput-object p3, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$MyAdapter;->mylist:Ljava/util/ArrayList;

    .line 559
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$MyAdapter;->mylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 568
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$MyAdapter;->mylist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 573
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 578
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$MyAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$layout;->mv_controler_menu_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 579
    .local v0, "v":Landroid/view/View;
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_menu_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 580
    .local v1, "tv":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$MyAdapter;->mylist:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    return-object v0
.end method
