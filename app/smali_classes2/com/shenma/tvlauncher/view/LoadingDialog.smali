.class public Lcom/shenma/tvlauncher/view/LoadingDialog;
.super Landroid/app/ProgressDialog;
.source "LoadingDialog.java"


# instance fields
.field private context:Landroid/content/Context;

.field private message:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/shenma/tvlauncher/view/LoadingDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/view/LoadingDialog;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmessage(Lcom/shenma/tvlauncher/view/LoadingDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/view/LoadingDialog;->message:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 26
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/LoadingDialog;->context:Landroid/content/Context;

    .line 27
    iput-object p3, p0, Lcom/shenma/tvlauncher/view/LoadingDialog;->message:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/LoadingDialog;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/shenma/tvlauncher/view/LoadingDialog;->message:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private setScreenBrightness()V
    .locals 3

    .line 81
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 82
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 83
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 85
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget v0, Lcom/shenma/tvlauncher/R$layout;->tv_loading_dialog:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/LoadingDialog;->setContentView(I)V

    .line 41
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/LoadingDialog;->setScreenBrightness()V

    .line 43
    new-instance v0, Lcom/shenma/tvlauncher/view/LoadingDialog$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/LoadingDialog$1;-><init>(Lcom/shenma/tvlauncher/view/LoadingDialog;)V

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/LoadingDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 56
    new-instance v0, Lcom/shenma/tvlauncher/view/LoadingDialog$2;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/LoadingDialog$2;-><init>(Lcom/shenma/tvlauncher/view/LoadingDialog;)V

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/LoadingDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 74
    return-void
.end method
