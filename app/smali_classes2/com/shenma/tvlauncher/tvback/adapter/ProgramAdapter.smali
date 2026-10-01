.class public Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;
.super Landroid/widget/BaseAdapter;
.source "ProgramAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static mView:Landroid/view/View;


# instance fields
.field private context:Landroid/content/Context;

.field private holder:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;

.field private mApp:Lcom/shenma/tvlauncher/application/MyApplication;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPrograms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p2, "mPrograms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->mPrograms:Ljava/util/ArrayList;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/application/MyApplication;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->mApp:Lcom/shenma/tvlauncher/application/MyApplication;

    .line 38
    return-void
.end method

.method public static setViewSate()V
    .locals 2

    .line 41
    sget-object v0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->mView:Landroid/view/View;

    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_back_log:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->huikan:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->mPrograms:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->mPrograms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 89
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 95
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->mPrograms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 101
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 49
    if-nez p2, :cond_0

    .line 50
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/shenma/tvlauncher/R$layout;->lv_tv_back_column_item:I

    .line 51
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    new-instance v0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;-><init>(Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->holder:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;

    .line 53
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->holder:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;

    sget v1, Lcom/shenma/tvlauncher/R$id;->fl_item:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;->fl_item:Landroid/widget/FrameLayout;

    .line 54
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->holder:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;

    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_back_time:I

    .line 55
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;->tv_Program_time:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->holder:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;

    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_back_name:I

    .line 57
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;->tv_Program_name:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->holder:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;

    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_back_log:I

    .line 59
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;->im_program_state:Landroid/widget/ImageView;

    .line 60
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->holder:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->holder:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->mPrograms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 65
    .local v0, "info":Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->holder:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;

    iget-object v1, v1, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;->tv_Program_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->holder:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;

    iget-object v1, v1, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;->tv_Program_time:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->mApp:Lcom/shenma/tvlauncher/application/MyApplication;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/application/MyApplication;->getOnPlay()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "sate":Ljava/lang/String;
    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    sput-object p2, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->mView:Landroid/view/View;

    .line 71
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->holder:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;

    iget-object v2, v2, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;->tv_Program_name:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "      \uff08\u518d\u6b21\u70b9\u51fb\u5168\u5c4f\u663e\u793a\uff09"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->holder:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;

    iget-object v2, v2, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;->im_program_state:Landroid/widget/ImageView;

    sget v3, Lcom/shenma/tvlauncher/R$drawable;->onplay:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 74
    :cond_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->holder:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;

    iget-object v2, v2, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;->tv_Program_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->holder:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;

    iget-object v2, v2, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;->im_program_state:Landroid/widget/ImageView;

    sget v3, Lcom/shenma/tvlauncher/R$drawable;->huikan:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    :goto_1
    return-object p2
.end method
