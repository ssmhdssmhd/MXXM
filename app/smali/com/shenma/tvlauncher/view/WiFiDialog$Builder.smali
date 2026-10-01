.class public Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
.super Ljava/lang/Object;
.source "WiFiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/view/WiFiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private contentView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private neutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private neutralButtonText:Ljava/lang/String;

.field private positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveButtonText:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetneutralButtonClickListener(Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->neutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpositiveButtonClickListener(Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->context:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public create()Lcom/shenma/tvlauncher/view/WiFiDialog;
    .locals 7

    .line 109
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 111
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/shenma/tvlauncher/view/WiFiDialog;

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->context:Landroid/content/Context;

    sget v3, Lcom/shenma/tvlauncher/R$style;->WiFiDialog:I

    invoke-direct {v1, v2, v3}, Lcom/shenma/tvlauncher/view/WiFiDialog;-><init>(Landroid/content/Context;I)V

    .line 112
    .local v1, "dialog":Lcom/shenma/tvlauncher/view/WiFiDialog;
    sget v2, Lcom/shenma/tvlauncher/R$layout;->wifi_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 113
    .local v2, "v":Landroid/view/View;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Lcom/shenma/tvlauncher/view/WiFiDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->positiveButtonText:Ljava/lang/String;

    const/16 v5, 0x8

    if-eqz v3, :cond_0

    .line 116
    sget v3, Lcom/shenma/tvlauncher/R$id;->wifi_dialog_bt1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v6, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->positiveButtonText:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_1

    .line 118
    sget v3, Lcom/shenma/tvlauncher/R$id;->wifi_dialog_bt1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v6, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder$1;

    invoke-direct {v6, p0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder$1;-><init>(Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;Lcom/shenma/tvlauncher/view/WiFiDialog;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 126
    :cond_0
    sget v3, Lcom/shenma/tvlauncher/R$id;->wifi_dialog_bt1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->neutralButtonText:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 130
    sget v3, Lcom/shenma/tvlauncher/R$id;->wifi_dialog_bt2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->neutralButtonText:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->neutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_3

    .line 132
    sget v3, Lcom/shenma/tvlauncher/R$id;->wifi_dialog_bt2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v5, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder$2;

    invoke-direct {v5, p0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder$2;-><init>(Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;Lcom/shenma/tvlauncher/view/WiFiDialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 140
    :cond_2
    sget v3, Lcom/shenma/tvlauncher/R$id;->wifi_dialog_bt2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->contentView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 145
    sget v3, Lcom/shenma/tvlauncher/R$id;->wifi_dialog_content:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 146
    sget v3, Lcom/shenma/tvlauncher/R$id;->wifi_dialog_content:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->contentView:Landroid/view/View;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    :cond_4
    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/view/WiFiDialog;->setContentView(Landroid/view/View;)V

    .line 149
    return-object v1
.end method

.method public creates()Lcom/shenma/tvlauncher/view/WiFiDialog;
    .locals 7

    .line 153
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 155
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/shenma/tvlauncher/view/WiFiDialog;

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->context:Landroid/content/Context;

    sget v3, Lcom/shenma/tvlauncher/R$style;->WiFiDialog:I

    invoke-direct {v1, v2, v3}, Lcom/shenma/tvlauncher/view/WiFiDialog;-><init>(Landroid/content/Context;I)V

    .line 156
    .local v1, "dialog":Lcom/shenma/tvlauncher/view/WiFiDialog;
    sget v2, Lcom/shenma/tvlauncher/R$layout;->forget_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 157
    .local v2, "v":Landroid/view/View;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Lcom/shenma/tvlauncher/view/WiFiDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->positiveButtonText:Ljava/lang/String;

    const/16 v5, 0x8

    if-eqz v3, :cond_0

    .line 160
    sget v3, Lcom/shenma/tvlauncher/R$id;->forget_dialog_bt1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v6, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->positiveButtonText:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_1

    .line 162
    sget v3, Lcom/shenma/tvlauncher/R$id;->forget_dialog_bt1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v6, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder$3;

    invoke-direct {v6, p0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder$3;-><init>(Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;Lcom/shenma/tvlauncher/view/WiFiDialog;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 170
    :cond_0
    sget v3, Lcom/shenma/tvlauncher/R$id;->forget_dialog_bt1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 173
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->neutralButtonText:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 174
    sget v3, Lcom/shenma/tvlauncher/R$id;->forget_dialog_bt2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->neutralButtonText:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->neutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_3

    .line 176
    sget v3, Lcom/shenma/tvlauncher/R$id;->forget_dialog_bt2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v5, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder$4;

    invoke-direct {v5, p0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder$4;-><init>(Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;Lcom/shenma/tvlauncher/view/WiFiDialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 184
    :cond_2
    sget v3, Lcom/shenma/tvlauncher/R$id;->forget_dialog_bt2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->contentView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 189
    sget v3, Lcom/shenma/tvlauncher/R$id;->forget_dialog_content:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 190
    sget v3, Lcom/shenma/tvlauncher/R$id;->forget_dialog_content:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->contentView:Landroid/view/View;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    :cond_4
    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/view/WiFiDialog;->setContentView(Landroid/view/View;)V

    .line 193
    return-object v1
.end method

.method public setContentView(Landroid/view/View;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;

    .line 51
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->contentView:Landroid/view/View;

    .line 52
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    .locals 1
    .param p1, "neutralButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->neutralButtonText:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->neutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 90
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    .locals 0
    .param p1, "neutralButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 100
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->neutralButtonText:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->neutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 102
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    .locals 1
    .param p1, "positiveButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 63
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 65
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 76
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 78
    return-object p0
.end method
