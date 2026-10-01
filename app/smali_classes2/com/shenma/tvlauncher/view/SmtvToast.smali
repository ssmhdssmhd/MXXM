.class public Lcom/shenma/tvlauncher/view/SmtvToast;
.super Landroid/widget/Toast;
.source "SmtvToast.java"


# instance fields
.field private context:Landroid/content/Context;

.field private iv_smtv_toast:Landroid/widget/ImageView;

.field private tv_smtv_toast:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/SmtvToast;->context:Landroid/content/Context;

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$layout;->tv_toast:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, "v":Landroid/view/View;
    sget v1, Lcom/shenma/tvlauncher/R$id;->iv_smtv_toast:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/SmtvToast;->iv_smtv_toast:Landroid/widget/ImageView;

    .line 30
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_smtv_toast:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/SmtvToast;->tv_smtv_toast:Landroid/widget/TextView;

    .line 31
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/SmtvToast;->setView(Landroid/view/View;)V

    .line 32
    return-void
.end method

.method public static makeText(Landroid/content/Context;II)Lcom/shenma/tvlauncher/view/SmtvToast;
    .locals 1
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramInt1"    # I
    .param p2, "paramInt2"    # I

    .line 36
    new-instance v0, Lcom/shenma/tvlauncher/view/SmtvToast;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/SmtvToast;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, "localSmtvToast":Lcom/shenma/tvlauncher/view/SmtvToast;
    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/SmtvToast;->setText(I)V

    .line 38
    invoke-virtual {v0, p2}, Lcom/shenma/tvlauncher/view/SmtvToast;->setDuration(I)V

    .line 39
    return-object v0
.end method

.method public static makeText(Landroid/content/Context;III)Lcom/shenma/tvlauncher/view/SmtvToast;
    .locals 1
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramInt1"    # I
    .param p2, "paramInt2"    # I
    .param p3, "paramInt3"    # I

    .line 44
    new-instance v0, Lcom/shenma/tvlauncher/view/SmtvToast;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/SmtvToast;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, "localSmtvToast":Lcom/shenma/tvlauncher/view/SmtvToast;
    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/SmtvToast;->setText(I)V

    .line 46
    invoke-virtual {v0, p2}, Lcom/shenma/tvlauncher/view/SmtvToast;->setDuration(I)V

    .line 47
    invoke-virtual {v0, p3}, Lcom/shenma/tvlauncher/view/SmtvToast;->setIcon(I)V

    .line 48
    return-object v0
.end method

.method public static makeText(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;)Lcom/shenma/tvlauncher/view/SmtvToast;
    .locals 1
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramInt1"    # I
    .param p2, "paramInt2"    # I
    .param p3, "paramDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 53
    new-instance v0, Lcom/shenma/tvlauncher/view/SmtvToast;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/SmtvToast;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, "localSmtvToast":Lcom/shenma/tvlauncher/view/SmtvToast;
    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/SmtvToast;->setText(I)V

    .line 55
    invoke-virtual {v0, p2}, Lcom/shenma/tvlauncher/view/SmtvToast;->setDuration(I)V

    .line 56
    invoke-virtual {v0, p3}, Lcom/shenma/tvlauncher/view/SmtvToast;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 57
    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/String;I)Lcom/shenma/tvlauncher/view/SmtvToast;
    .locals 1
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramString"    # Ljava/lang/String;
    .param p2, "paramInt"    # I

    .line 62
    new-instance v0, Lcom/shenma/tvlauncher/view/SmtvToast;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/SmtvToast;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "localSmtvToast":Lcom/shenma/tvlauncher/view/SmtvToast;
    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/SmtvToast;->setText(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, p2}, Lcom/shenma/tvlauncher/view/SmtvToast;->setDuration(I)V

    .line 65
    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)Lcom/shenma/tvlauncher/view/SmtvToast;
    .locals 1
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramString"    # Ljava/lang/String;
    .param p2, "paramInt"    # I
    .param p3, "paramDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 70
    new-instance v0, Lcom/shenma/tvlauncher/view/SmtvToast;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/SmtvToast;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, "localSmtvToast":Lcom/shenma/tvlauncher/view/SmtvToast;
    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/SmtvToast;->setText(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, p2}, Lcom/shenma/tvlauncher/view/SmtvToast;->setDuration(I)V

    .line 73
    invoke-virtual {v0, p3}, Lcom/shenma/tvlauncher/view/SmtvToast;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 74
    return-object v0
.end method


# virtual methods
.method public removeIcon()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/SmtvToast;->iv_smtv_toast:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 79
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "paramInt"    # I

    .line 82
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/SmtvToast;->iv_smtv_toast:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "paramDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 86
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/SmtvToast;->iv_smtv_toast:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    return-void
.end method

.method public setText(I)V
    .locals 1
    .param p1, "paramInt"    # I

    .line 90
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/SmtvToast;->tv_smtv_toast:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 91
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "paramString"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/SmtvToast;->tv_smtv_toast:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method public setTextColor(I)V
    .locals 2
    .param p1, "paramInt"    # I

    .line 98
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/SmtvToast;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 99
    .local v0, "i":I
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/SmtvToast;->tv_smtv_toast:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "paramFloat"    # F

    .line 103
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/SmtvToast;->tv_smtv_toast:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 104
    return-void
.end method
