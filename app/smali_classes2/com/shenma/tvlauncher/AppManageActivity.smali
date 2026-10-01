.class public Lcom/shenma/tvlauncher/AppManageActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "AppManageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/AppManageActivity$MyAdapter;,
        Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;,
        Lcom/shenma/tvlauncher/AppManageActivity$AppAdapter;
    }
.end annotation


# static fields
.field private static final ADD_TO_FAV:I = 0x3eb

.field private static final REMOVE_FROM_FAV:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "AppManageActivity"


# instance fields
.field private final SHOW_GRIDVIEW_ITEM:I

.field private applist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/dao/bean/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dbtools:Lcom/shenma/tvlauncher/db/DatabaseOperator;

.field private isVis:I

.field private lastFocusPkgName:Ljava/lang/String;

.field private mAppUninstallReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private menulist:Landroid/widget/ListView;

.field private menupopupWindow:Landroid/widget/PopupWindow;

.field private my_app_layout:Landroid/widget/LinearLayout;

.field private my_app_manage_gv:Landroid/widget/GridView;

.field private sysapplst:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private whiteBorder:Landroid/widget/ImageView;


# direct methods
.method static bridge synthetic -$$Nest$fgetapplist(Lcom/shenma/tvlauncher/AppManageActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->applist:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdbtools(Lcom/shenma/tvlauncher/AppManageActivity;)Lcom/shenma/tvlauncher/db/DatabaseOperator;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->dbtools:Lcom/shenma/tvlauncher/db/DatabaseOperator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisVis(Lcom/shenma/tvlauncher/AppManageActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->isVis:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastFocusPkgName(Lcom/shenma/tvlauncher/AppManageActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->lastFocusPkgName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIndex(Lcom/shenma/tvlauncher/AppManageActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->mIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmenupopupWindow(Lcom/shenma/tvlauncher/AppManageActivity;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmy_app_manage_gv(Lcom/shenma/tvlauncher/AppManageActivity;)Landroid/widget/GridView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->my_app_manage_gv:Landroid/widget/GridView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisVis(Lcom/shenma/tvlauncher/AppManageActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/AppManageActivity;->isVis:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastFocusPkgName(Lcom/shenma/tvlauncher/AppManageActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/AppManageActivity;->lastFocusPkgName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIndex(Lcom/shenma/tvlauncher/AppManageActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/AppManageActivity;->mIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckIsSysApp(Lcom/shenma/tvlauncher/AppManageActivity;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/AppManageActivity;->checkIsSysApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhideMenu(Lcom/shenma/tvlauncher/AppManageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->hideMenu()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mqueryAllAppInstalled(Lcom/shenma/tvlauncher/AppManageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->queryAllAppInstalled()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mqueryAllSystemApp(Lcom/shenma/tvlauncher/AppManageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->queryAllSystemApp()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowMenu(Lcom/shenma/tvlauncher/AppManageActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/AppManageActivity;->showMenu(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 57
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->SHOW_GRIDVIEW_ITEM:I

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->mIndex:I

    .line 68
    new-instance v0, Lcom/shenma/tvlauncher/AppManageActivity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/AppManageActivity$1;-><init>(Lcom/shenma/tvlauncher/AppManageActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->mAppUninstallReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    new-instance v0, Lcom/shenma/tvlauncher/AppManageActivity$2;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/AppManageActivity$2;-><init>(Lcom/shenma/tvlauncher/AppManageActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkIsSysApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packname"    # Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->sysapplst:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 304
    .local v1, "pkgname":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    const/4 v0, 0x1

    return v0

    .line 307
    .end local v1    # "pkgname":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 308
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private flyWhiteBorder(IIFF)V
    .locals 9
    .param p1, "paramInt1"    # I
    .param p2, "paramInt2"    # I
    .param p3, "paramFloat1"    # F
    .param p4, "paramFloat2"    # F

    .line 201
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->whiteBorder:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 202
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 204
    .local v0, "i":I
    iget-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    .line 205
    .local v1, "j":I
    iget-object v2, p0, Lcom/shenma/tvlauncher/AppManageActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 206
    .local v2, "localViewPropertyAnimator1":Landroid/view/ViewPropertyAnimator;
    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 207
    int-to-float v3, p1

    .line 208
    .local v3, "f1":F
    int-to-float v4, v0

    .line 209
    .local v4, "f2":F
    div-float v5, v3, v4

    .line 210
    .local v5, "f3":F
    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 211
    int-to-float v6, p2

    .line 212
    .local v6, "f4":F
    int-to-float v7, v1

    .line 213
    .local v7, "f5":F
    div-float v8, v6, v7

    .line 214
    .local v8, "f6":F
    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 215
    invoke-virtual {v2, p3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 216
    invoke-virtual {v2, p4}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 217
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 218
    return-void
.end method

.method private getData(I)Ljava/util/ArrayList;
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v1, 0x3ea

    const-string/jumbo v2, "\u5378\u8f7d"

    if-ne p1, v1, :cond_0

    .line 381
    const-string/jumbo v1, "\u4ece\u5e38\u7528\u4e2d\u5220\u9664"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 383
    :cond_0
    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_1

    .line 384
    const-string/jumbo v1, "\u6dfb\u52a0\u5230\u5e38\u7528"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_1
    :goto_0
    return-object v0
.end method

.method private hideMenu()V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 418
    :cond_0
    return-void
.end method

.method private initData()V
    .locals 6

    .line 140
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shenma/tvlauncher/AppManageActivity$3;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/AppManageActivity$3;-><init>(Lcom/shenma/tvlauncher/AppManageActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 147
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 148
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->onCreateMenu()V

    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 151
    .local v0, "mAppFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity;->mAppUninstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/shenma/tvlauncher/AppManageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    sget v1, Lcom/shenma/tvlauncher/R$id;->blue_border:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/AppManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 156
    .local v1, "image":Landroid/widget/ImageView;
    iput-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity;->whiteBorder:Landroid/widget/ImageView;

    .line 157
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$dimen;->sm_164:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/shenma/tvlauncher/R$dimen;->sm_144:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v2, "localLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$dimen;->sm_170:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 159
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$dimen;->sm_150:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 160
    iget-object v3, p0, Lcom/shenma/tvlauncher/AppManageActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v3, p0, Lcom/shenma/tvlauncher/AppManageActivity;->whiteBorder:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    return-void
.end method

.method private queryAllAppInstalled()V
    .locals 15

    .line 231
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->dbtools:Lcom/shenma/tvlauncher/db/DatabaseOperator;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/db/DatabaseOperator;->queryAll()Ljava/util/List;

    move-result-object v0

    .line 233
    .local v0, "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 236
    .local v2, "packLst":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/shenma/tvlauncher/AppManageActivity;->applist:Ljava/util/List;

    .line 237
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v4, "templovLst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/dao/bean/AppInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v5, "tempinsLst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/dao/bean/AppInfo;>;"
    const/4 v6, 0x0

    .line 240
    .local v6, "mInfo":Landroid/content/pm/ResolveInfo;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 241
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v10, "com.shenma.tvlauncher"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 242
    move-object v6, v8

    .line 243
    goto :goto_1

    .line 245
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    goto :goto_0

    .line 246
    :cond_1
    :goto_1
    invoke-interface {v2, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 248
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string/jumbo v9, "zhouchuan"

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 249
    .local v8, "pkgname":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 250
    .local v11, "info":Landroid/content/pm/ResolveInfo;
    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 251
    new-instance v12, Lcom/shenma/tvlauncher/dao/bean/AppInfo;

    invoke-direct {v12}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;-><init>()V

    .line 252
    .local v12, "ai":Lcom/shenma/tvlauncher/dao/bean/AppInfo;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->setAppicon(Landroid/graphics/drawable/Drawable;)V

    .line 253
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->setAppname(Ljava/lang/String;)V

    .line 254
    iget-object v13, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->setApppack(Ljava/lang/String;)V

    .line 255
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->setLove(Z)V

    .line 256
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    move-object v6, v11

    .line 258
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "is exist"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .end local v11    # "info":Landroid/content/pm/ResolveInfo;
    .end local v12    # "ai":Lcom/shenma/tvlauncher/dao/bean/AppInfo;
    :cond_2
    goto :goto_3

    .line 261
    :cond_3
    invoke-interface {v2, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 262
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "is removed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .end local v8    # "pkgname":Ljava/lang/String;
    goto/16 :goto_2

    .line 264
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 265
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    new-instance v10, Lcom/shenma/tvlauncher/dao/bean/AppInfo;

    invoke-direct {v10}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;-><init>()V

    .line 266
    .local v10, "ai":Lcom/shenma/tvlauncher/dao/bean/AppInfo;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->setAppicon(Landroid/graphics/drawable/Drawable;)V

    .line 267
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->setAppname(Ljava/lang/String;)V

    .line 268
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->setApppack(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v10, v3}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->setLove(Z)V

    .line 270
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "is added"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    .end local v10    # "ai":Lcom/shenma/tvlauncher/dao/bean/AppInfo;
    goto :goto_4

    .line 273
    :cond_5
    iget-object v3, p0, Lcom/shenma/tvlauncher/AppManageActivity;->applist:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 274
    iget-object v3, p0, Lcom/shenma/tvlauncher/AppManageActivity;->applist:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 276
    iget-object v3, p0, Lcom/shenma/tvlauncher/AppManageActivity;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x3e9

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 277
    return-void
.end method

.method private queryAllSystemApp()V
    .locals 5

    .line 281
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 282
    .local v0, "packList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity;->sysapplst:Ljava/util/List;

    .line 283
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 285
    .local v2, "pack":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 286
    goto :goto_0

    .line 287
    :cond_0
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    .line 288
    goto :goto_0

    .line 291
    :cond_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/AppManageActivity;->sysapplst:Ljava/util/List;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    .end local v2    # "pack":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 294
    :cond_2
    return-void
.end method

.method private showMenu(I)V
    .locals 4
    .param p1, "type"    # I

    .line 407
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->menulist:Landroid/widget/ListView;

    new-instance v1, Lcom/shenma/tvlauncher/AppManageActivity$MyAdapter;

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/AppManageActivity;->getData(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lcom/shenma/tvlauncher/AppManageActivity$MyAdapter;-><init>(Lcom/shenma/tvlauncher/AppManageActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 408
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    sget v1, Lcom/shenma/tvlauncher/R$style;->AnimationMenu:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 409
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity;->my_app_layout:Landroid/widget/LinearLayout;

    const/16 v2, 0x35

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 410
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$dimen;->sm_350:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, Lcom/shenma/tvlauncher/AppManageActivity;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 411
    return-void
.end method


# virtual methods
.method protected findViewById()V
    .locals 2

    .line 170
    sget v0, Lcom/shenma/tvlauncher/R$id;->my_app_manage_gv:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/AppManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->my_app_manage_gv:Landroid/widget/GridView;

    .line 171
    sget v0, Lcom/shenma/tvlauncher/R$id;->my_app_layout:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/AppManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->my_app_layout:Landroid/widget/LinearLayout;

    .line 172
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->my_app_layout:Landroid/widget/LinearLayout;

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->video_details_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 173
    new-instance v0, Lcom/shenma/tvlauncher/db/DatabaseOperator;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/db/DatabaseOperator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->dbtools:Lcom/shenma/tvlauncher/db/DatabaseOperator;

    .line 174
    return-void
.end method

.method protected initView()V
    .locals 0

    .line 129
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->findViewById()V

    .line 130
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->setListener()V

    .line 131
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 166
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 135
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onBackPressed()V

    .line 136
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->finish()V

    .line 137
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 107
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    sget v0, Lcom/shenma/tvlauncher/R$layout;->activity_appmgr:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/AppManageActivity;->setContentView(I)V

    .line 109
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->initView()V

    .line 110
    invoke-direct {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->initData()V

    .line 111
    return-void
.end method

.method public onCreateMenu()V
    .locals 3

    .line 315
    sget v0, Lcom/shenma/tvlauncher/R$layout;->controler_menu:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 316
    .local v0, "menuView":Landroid/view/View;
    sget v1, Lcom/shenma/tvlauncher/R$id;->media_controler_menu:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity;->menulist:Landroid/widget/ListView;

    .line 317
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    .line 318
    iget-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 319
    iget-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 320
    iget-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 321
    iget-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity;->menulist:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/AppManageActivity$5;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/AppManageActivity$5;-><init>(Lcom/shenma/tvlauncher/AppManageActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 335
    iget-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity;->menulist:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/AppManageActivity$6;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/AppManageActivity$6;-><init>(Lcom/shenma/tvlauncher/AppManageActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 370
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->mAppUninstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/AppManageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 223
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onDestroy()V

    .line 224
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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

    .line 423
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->whiteBorder:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    move-object v0, p0

    .line 425
    .local v0, "mainActivity":Lcom/shenma/tvlauncher/AppManageActivity;
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/R$dimen;->sm_170:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 426
    .local v1, "f1":F
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$dimen;->sm_150:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 427
    .local v2, "f2":F
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$dimen;->sm_164:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/shenma/tvlauncher/R$dimen;->sm_144:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/shenma/tvlauncher/AppManageActivity;->flyWhiteBorder(IIFF)V

    .line 429
    sget v3, Lcom/shenma/tvlauncher/R$id;->myapp_gridview_item_flag_tv:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 430
    .local v3, "packname":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 431
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/shenma/tvlauncher/AppManageActivity;->startActivity(Landroid/content/Intent;)V

    .line 432
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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

    .line 436
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-eqz p2, :cond_1

    .line 437
    iput p3, p0, Lcom/shenma/tvlauncher/AppManageActivity;->mIndex:I

    .line 438
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->applist:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/dao/bean/AppInfo;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->getApppack()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->lastFocusPkgName:Ljava/lang/String;

    .line 439
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->applist:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/dao/bean/AppInfo;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->isLove()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3ea

    goto :goto_0

    :cond_0
    const/16 v0, 0x3eb

    :goto_0
    iput v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->isVis:I

    .line 441
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->whiteBorder:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    move-object v0, p0

    .line 443
    .local v0, "mainActivity":Lcom/shenma/tvlauncher/AppManageActivity;
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/R$dimen;->sm_170:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 444
    .local v1, "f1":F
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$dimen;->sm_150:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 445
    .local v2, "f2":F
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$dimen;->sm_164:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/shenma/tvlauncher/R$dimen;->sm_144:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/shenma/tvlauncher/AppManageActivity;->flyWhiteBorder(IIFF)V

    .line 448
    .end local v0    # "mainActivity":Lcom/shenma/tvlauncher/AppManageActivity;
    .end local v1    # "f1":F
    .end local v2    # "f2":F
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 394
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 395
    invoke-direct {p0}, Lcom/shenma/tvlauncher/AppManageActivity;->hideMenu()V

    goto :goto_0

    .line 396
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 397
    iget v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->isVis:I

    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/AppManageActivity;->showMenu(I)V

    goto :goto_0

    .line 398
    :cond_1
    const/16 v0, 0x4a8

    if-ne p1, v0, :cond_2

    .line 399
    iget v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->isVis:I

    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/AppManageActivity;->showMenu(I)V

    .line 401
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/shenma/tvlauncher/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 452
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->lastFocusPkgName:Ljava/lang/String;

    .line 453
    const/4 v0, -0x1

    iput v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->mIndex:I

    .line 454
    iput v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->isVis:I

    .line 455
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->whiteBorder:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 456
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 115
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onPause()V

    .line 116
    const-string v0, "AppManageActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 117
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 122
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onResume()V

    .line 123
    const-string v0, "AppManageActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 124
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->my_app_manage_gv:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity;->my_app_manage_gv:Landroid/widget/GridView;

    new-instance v1, Lcom/shenma/tvlauncher/AppManageActivity$4;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/AppManageActivity$4;-><init>(Lcom/shenma/tvlauncher/AppManageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 190
    return-void
.end method
