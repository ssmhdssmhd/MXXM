.class public Lcom/aliyun/private_service/PrivateService;
.super Ljava/lang/Object;
.source "PrivateService.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 15
    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "verifyFile"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 21
    if-eqz p0, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/aliyun/private_service/PrivateService;->nInitService(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method

.method public static initService(Landroid/content/Context;[B)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "verifyBuffer"    # [B

    .line 27
    if-eqz p0, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/aliyun/private_service/PrivateService;->nInitService(Ljava/lang/Object;[B)V

    .line 30
    :cond_0
    return-void
.end method

.method private static native nInitService(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method private static native nInitService(Ljava/lang/Object;[B)V
.end method
