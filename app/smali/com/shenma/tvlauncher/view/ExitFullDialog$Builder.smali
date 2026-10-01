.class public Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;
.super Ljava/lang/Object;
.source "ExitFullDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/view/ExitFullDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private neutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private neutralButtonText:Ljava/lang/String;

.field private positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveButtonText:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetneutralButtonClickListener(Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->neutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpositiveButtonClickListener(Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->context:Landroid/content/Context;

    .line 45
    return-void
.end method


# virtual methods
.method public create()Lcom/shenma/tvlauncher/view/ExitFullDialog;
    .locals 7

    .line 143
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 145
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/shenma/tvlauncher/view/ExitFullDialog;

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->context:Landroid/content/Context;

    sget v3, Lcom/shenma/tvlauncher/R$style;->Dialog_Fullscreen:I

    invoke-direct {v1, v2, v3}, Lcom/shenma/tvlauncher/view/ExitFullDialog;-><init>(Landroid/content/Context;I)V

    .line 146
    .local v1, "dialog":Lcom/shenma/tvlauncher/view/ExitFullDialog;
    sget v2, Lcom/shenma/tvlauncher/R$layout;->exit_view:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 147
    .local v2, "layout":Landroid/view/View;
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->bg:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/shenma/tvlauncher/utils/BlurUtils;->doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 148
    .local v3, "bg":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/view/ExitFullDialog;->setContentView(Landroid/view/View;)V

    .line 157
    iget-object v4, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->positiveButtonText:Ljava/lang/String;

    const/16 v5, 0x8

    if-eqz v4, :cond_0

    .line 158
    sget v4, Lcom/shenma/tvlauncher/R$id;->exit_ok_bt:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iget-object v6, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->positiveButtonText:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v4, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v4, :cond_1

    .line 160
    sget v4, Lcom/shenma/tvlauncher/R$id;->exit_ok_bt:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    new-instance v6, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder$1;

    invoke-direct {v6, p0, v1}, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder$1;-><init>(Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;Lcom/shenma/tvlauncher/view/ExitFullDialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 168
    :cond_0
    sget v4, Lcom/shenma/tvlauncher/R$id;->exit_ok_bt:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 171
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->neutralButtonText:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 172
    sget v4, Lcom/shenma/tvlauncher/R$id;->exit_cancel_bt:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->neutralButtonText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v4, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->neutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v4, :cond_3

    .line 174
    sget v4, Lcom/shenma/tvlauncher/R$id;->exit_cancel_bt:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    new-instance v5, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder$2;

    invoke-direct {v5, p0, v1}, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder$2;-><init>(Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;Lcom/shenma/tvlauncher/view/ExitFullDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 182
    :cond_2
    sget v4, Lcom/shenma/tvlauncher/R$id;->exit_cancel_bt:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_3
    :goto_1
    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/view/ExitFullDialog;->setContentView(Landroid/view/View;)V

    .line 185
    return-object v1
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;
    .locals 1
    .param p1, "neutralButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 121
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->neutralButtonText:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->neutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 123
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;
    .locals 0
    .param p1, "neutralButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 134
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->neutralButtonText:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->neutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 136
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;
    .locals 1
    .param p1, "positiveButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 95
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 97
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 108
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 110
    return-object p0
.end method
