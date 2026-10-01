.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->onCreateMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2302
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 2306
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetisMenuShow(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 2355
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 2306
    if-eqz v0, :cond_0

    .line 2307
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputisMenuShow(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Z)V

    .line 2308
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, v6}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputisMenuItemShow(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Z)V

    .line 2309
    packed-switch p3, :pswitch_data_0

    .line 2347
    return-void

    .line 2342
    :pswitch_0
    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$sfputmenutype(I)V

    .line 2343
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmenulist(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v2, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/LivePlayUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetisMenuItemShow(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2344
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmenulist(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->qlposition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 2345
    return-void

    .line 2336
    :pswitch_1
    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$sfputmenutype(I)V

    .line 2337
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmenulist(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/LivePlayUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetisMenuItemShow(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2338
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmenulist(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 2339
    return-void

    .line 2330
    :pswitch_2
    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$sfputmenutype(I)V

    .line 2331
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmenulist(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/utils/LivePlayUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetisMenuItemShow(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2332
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmenulist(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->phszposition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 2333
    return-void

    .line 2324
    :pswitch_3
    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$sfputmenutype(I)V

    .line 2325
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmenulist(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/utils/LivePlayUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetisMenuItemShow(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2326
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmenulist(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hmblposition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 2327
    return-void

    .line 2318
    :pswitch_4
    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$sfputmenutype(I)V

    .line 2319
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmenulist(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/utils/LivePlayUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetisMenuItemShow(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2320
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmenulist(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->jmposition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 2321
    return-void

    .line 2349
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetisMenuItemShow(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2351
    invoke-static {}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$sfgetmenutype()I

    move-result v0

    const/16 v8, 0x11

    packed-switch v0, :pswitch_data_1

    .line 2497
    return-void

    .line 2472
    :pswitch_5
    sput p3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->qlposition:I

    .line 2473
    const-string v0, "LIVEs"

    if-nez p3, :cond_1

    .line 2474
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1, v0, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2475
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetSP(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2476
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 2477
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2478
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mstopPlayback(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 2479
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->finish()V

    .line 2480
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    sget v2, Lcom/shenma/tvlauncher/R$string;->Data_cache_cleaning_successful:I

    sget v3, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 2481
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    if-ne p3, v6, :cond_2

    .line 2482
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1, v0, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2483
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mstopPlayback(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 2484
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->finish()V

    .line 2485
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    sget v1, Lcom/shenma/tvlauncher/R$string;->memory_channel:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 2486
    :cond_2
    if-ne p3, v4, :cond_3

    .line 2487
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetSP(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2488
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 2489
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2490
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mstopPlayback(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 2491
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->finish()V

    .line 2492
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    sget v2, Lcom/shenma/tvlauncher/R$string;->memory_source:I

    sget v3, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 2494
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mhideMenu(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 2495
    return-void

    .line 2442
    :pswitch_6
    sput p3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    .line 2443
    const-string v0, "live_core"

    if-nez p3, :cond_4

    .line 2444
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetsp(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2445
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "\u81ea\u52a8"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2446
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 2447
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    if-ne p3, v6, :cond_5

    .line 2448
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetsp(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2449
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "\u7cfb\u7edf"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2450
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 2451
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    if-ne p3, v4, :cond_6

    .line 2452
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetsp(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2453
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "IJK"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2454
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 2455
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_6
    if-ne p3, v3, :cond_7

    .line 2456
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetsp(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2457
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "EXO"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2458
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 2459
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_7
    if-ne p3, v2, :cond_8

    .line 2460
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetsp(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2461
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "\u963f\u91cc"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2462
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2464
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmPlayerStatus(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    if-eq v0, v1, :cond_9

    .line 2465
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetplayIndex(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mSelecteVod(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 2466
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2468
    :cond_9
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mhideMenu(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 2469
    return-void

    .line 2428
    :pswitch_7
    sput p3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->phszposition:I

    .line 2429
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetsp(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2430
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "playPre"

    if-nez p3, :cond_a

    .line 2431
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2432
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 2433
    :cond_a
    if-ne p3, v6, :cond_b

    .line 2434
    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2435
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2437
    :cond_b
    :goto_2
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mgetPlayPreferences(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 2438
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mhideMenu(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 2439
    return-void

    .line 2402
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_8
    sput p3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hmblposition:I

    .line 2403
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    sget v5, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hmblposition:I

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mselectScales(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 2404
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetsp(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2405
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p3, :cond_c

    .line 2406
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string/jumbo v2, "\u539f\u59cb\u6bd4\u4f8b"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2407
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 2408
    :cond_c
    if-ne p3, v6, :cond_d

    .line 2409
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string v2, "4:3 \u7f29\u653e"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2410
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 2411
    :cond_d
    if-ne p3, v4, :cond_e

    .line 2412
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string v2, "16:9\u7f29\u653e"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2413
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 2414
    :cond_e
    if-ne p3, v3, :cond_f

    .line 2415
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string/jumbo v2, "\u5168\u5c4f\u62c9\u4f38"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2416
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 2417
    :cond_f
    if-ne p3, v2, :cond_10

    .line 2418
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string/jumbo v2, "\u7b49\u6bd4\u7f29\u653e"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2419
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 2420
    :cond_10
    if-ne p3, v1, :cond_11

    .line 2421
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string/jumbo v2, "\u5168\u5c4f\u88c1\u526a"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2422
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2424
    :cond_11
    :goto_3
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mhideMenu(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 2425
    return-void

    .line 2372
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_9
    sput p3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->jmposition:I

    .line 2373
    const-string v0, "mIsHwDecode"

    if-nez p3, :cond_12

    .line 2374
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetsp(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2375
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2376
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->mg:Ljava/lang/String;

    const-string/jumbo v2, "\u8f6f\u89e3\u7801"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2377
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    .line 2378
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_12
    if-ne p3, v6, :cond_13

    .line 2379
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetsp(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2380
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2381
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->mg:Ljava/lang/String;

    const-string/jumbo v2, "\u786c\u89e3\u7801"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2382
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2384
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_13
    :goto_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$msetDecode(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 2385
    if-ne p3, v6, :cond_14

    .line 2386
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    invoke-virtual {v0, v7}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    goto :goto_5

    .line 2387
    :cond_14
    if-nez p3, :cond_15

    .line 2388
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    .line 2390
    :cond_15
    :goto_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, v7}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputisPause(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/lang/Boolean;)V

    .line 2391
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2392
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v1

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputmLastPos(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 2394
    :cond_16
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmPlayerStatus(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    if-eq v0, v1, :cond_17

    .line 2395
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2396
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->resume()V

    .line 2398
    :cond_17
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mhideMenu(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 2399
    return-void

    .line 2354
    :pswitch_a
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetvideoInfo(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p3, :cond_19

    .line 2355
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, v7}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputisNext(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/lang/Boolean;)V

    .line 2356
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, v6}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputisSwitch(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Z)V

    .line 2357
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, p3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputplayIndex(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 2358
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmPlayerStatus(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    if-eq v0, v1, :cond_18

    .line 2359
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetplayIndex(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mSelecteVod(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 2360
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2362
    :cond_18
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetisControllerShow(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    .line 2365
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2367
    :cond_19
    sput p3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 2368
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mhideMenu(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 2369
    return-void

    .line 2500
    :cond_1a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
