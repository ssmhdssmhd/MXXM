.class public Lcom/shenma/tvlauncher/view/HomeDialog$Builder;
.super Ljava/lang/Object;
.source "HomeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/view/HomeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private message:Ljava/lang/String;

.field private neutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private neutralButtonText:Ljava/lang/String;

.field private positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveButtonText:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetneutralButtonClickListener(Lcom/shenma/tvlauncher/view/HomeDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->neutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpositiveButtonClickListener(Lcom/shenma/tvlauncher/view/HomeDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->context:Landroid/content/Context;

    .line 60
    return-void
.end method


# virtual methods
.method public create()Lcom/shenma/tvlauncher/view/HomeDialog;
    .locals 6

    .line 162
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 164
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/shenma/tvlauncher/view/HomeDialog;

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->context:Landroid/content/Context;

    sget v3, Lcom/shenma/tvlauncher/R$style;->DialogStyle:I

    invoke-direct {v1, v2, v3}, Lcom/shenma/tvlauncher/view/HomeDialog;-><init>(Landroid/content/Context;I)V

    .line 165
    .local v1, "dialog":Lcom/shenma/tvlauncher/view/HomeDialog;
    sget v2, Lcom/shenma/tvlauncher/R$layout;->tv_exit_dialog_layout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 167
    .local v2, "layout":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/view/HomeDialog;->setCancelable(Z)V

    .line 168
    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/view/HomeDialog;->setCanceledOnTouchOutside(Z)V

    .line 169
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Lcom/shenma/tvlauncher/view/HomeDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->title:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 171
    sget v3, Lcom/shenma/tvlauncher/R$id;->tv_exit_msg_titile:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->message:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 174
    sget v3, Lcom/shenma/tvlauncher/R$id;->tv_exit_msg:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->positiveButtonText:Ljava/lang/String;

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    .line 178
    sget v3, Lcom/shenma/tvlauncher/R$id;->tv_exit_confirm:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->positiveButtonText:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_3

    .line 180
    sget v3, Lcom/shenma/tvlauncher/R$id;->lv_exit_ok:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    new-instance v5, Lcom/shenma/tvlauncher/view/HomeDialog$Builder$1;

    invoke-direct {v5, p0, v1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder$1;-><init>(Lcom/shenma/tvlauncher/view/HomeDialog$Builder;Lcom/shenma/tvlauncher/view/HomeDialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 188
    :cond_2
    sget v3, Lcom/shenma/tvlauncher/R$id;->lv_exit_ok:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 191
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->neutralButtonText:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 192
    sget v3, Lcom/shenma/tvlauncher/R$id;->tv_exit_cancle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->neutralButtonText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->neutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_5

    .line 194
    sget v3, Lcom/shenma/tvlauncher/R$id;->lv_exit_cancle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    new-instance v4, Lcom/shenma/tvlauncher/view/HomeDialog$Builder$2;

    invoke-direct {v4, p0, v1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder$2;-><init>(Lcom/shenma/tvlauncher/view/HomeDialog$Builder;Lcom/shenma/tvlauncher/view/HomeDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 202
    :cond_4
    sget v3, Lcom/shenma/tvlauncher/R$id;->lv_exit_cancle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 204
    :cond_5
    :goto_1
    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/view/HomeDialog;->setContentView(Landroid/view/View;)V

    .line 205
    return-object v1
.end method

.method public creates()Lcom/shenma/tvlauncher/view/HomeDialog;
    .locals 6

    .line 209
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 211
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/shenma/tvlauncher/view/HomeDialog;

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->context:Landroid/content/Context;

    sget v3, Lcom/shenma/tvlauncher/R$style;->DialogStyle:I

    invoke-direct {v1, v2, v3}, Lcom/shenma/tvlauncher/view/HomeDialog;-><init>(Landroid/content/Context;I)V

    .line 212
    .local v1, "dialog":Lcom/shenma/tvlauncher/view/HomeDialog;
    sget v2, Lcom/shenma/tvlauncher/R$layout;->tv_exit_dialog_layout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 213
    .local v2, "layout":Landroid/view/View;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/view/HomeDialog;->setCancelable(Z)V

    .line 214
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/view/HomeDialog;->setCanceledOnTouchOutside(Z)V

    .line 215
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Lcom/shenma/tvlauncher/view/HomeDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->title:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 217
    sget v3, Lcom/shenma/tvlauncher/R$id;->tv_exit_msg_titile:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :cond_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->message:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 220
    sget v3, Lcom/shenma/tvlauncher/R$id;->tv_exit_msg:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->positiveButtonText:Ljava/lang/String;

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    .line 224
    sget v3, Lcom/shenma/tvlauncher/R$id;->tv_exit_confirm:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->positiveButtonText:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_3

    .line 226
    sget v3, Lcom/shenma/tvlauncher/R$id;->lv_exit_ok:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    new-instance v5, Lcom/shenma/tvlauncher/view/HomeDialog$Builder$3;

    invoke-direct {v5, p0, v1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder$3;-><init>(Lcom/shenma/tvlauncher/view/HomeDialog$Builder;Lcom/shenma/tvlauncher/view/HomeDialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 234
    :cond_2
    sget v3, Lcom/shenma/tvlauncher/R$id;->lv_exit_ok:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->neutralButtonText:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 238
    sget v3, Lcom/shenma/tvlauncher/R$id;->tv_exit_cancle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->neutralButtonText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->neutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_5

    .line 240
    sget v3, Lcom/shenma/tvlauncher/R$id;->lv_exit_cancle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    new-instance v4, Lcom/shenma/tvlauncher/view/HomeDialog$Builder$4;

    invoke-direct {v4, p0, v1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder$4;-><init>(Lcom/shenma/tvlauncher/view/HomeDialog$Builder;Lcom/shenma/tvlauncher/view/HomeDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 248
    :cond_4
    sget v3, Lcom/shenma/tvlauncher/R$id;->lv_exit_cancle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 250
    :cond_5
    :goto_1
    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/view/HomeDialog;->setContentView(Landroid/view/View;)V

    .line 251
    return-object v1
.end method

.method public setMessage(I)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;
    .locals 1
    .param p1, "message"    # I

    .line 80
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->message:Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->message:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;
    .locals 1
    .param p1, "neutralButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 140
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->neutralButtonText:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->neutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 142
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;
    .locals 0
    .param p1, "neutralButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 153
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->neutralButtonText:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->neutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 155
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;
    .locals 1
    .param p1, "positiveButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 114
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 116
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 127
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 129
    return-object p0
.end method

.method public setTitle(I)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;
    .locals 1
    .param p1, "title"    # I

    .line 91
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->title:Ljava/lang/String;

    .line 92
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->title:Ljava/lang/String;

    .line 103
    return-object p0
.end method
