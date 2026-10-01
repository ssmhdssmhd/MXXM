.class public Lcom/aliyun/utils/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# static fields
.field private static appName:Ljava/lang/String;

.field private static appNameDecied:Z

.field private static packageName:Ljava/lang/String;

.field private static packageNameDecied:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/aliyun/utils/AppUtils;->packageNameDecied:Z

    .line 31
    sput-boolean v0, Lcom/aliyun/utils/AppUtils;->appNameDecied:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 35
    sget-boolean v0, Lcom/aliyun/utils/AppUtils;->appNameDecied:Z

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/aliyun/utils/AppUtils;->appName:Ljava/lang/String;

    return-object v0

    .line 39
    :cond_0
    if-nez p0, :cond_1

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 44
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "appLabel":Ljava/lang/String;
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/aliyun/utils/AppUtils;->appName:Ljava/lang/String;

    .line 50
    const/4 v2, 0x1

    sput-boolean v2, Lcom/aliyun/utils/AppUtils;->appNameDecied:Z

    .line 52
    sget-object v2, Lcom/aliyun/utils/AppUtils;->appName:Ljava/lang/String;

    return-object v2
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 17
    sget-boolean v0, Lcom/aliyun/utils/AppUtils;->packageNameDecied:Z

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lcom/aliyun/utils/AppUtils;->packageName:Ljava/lang/String;

    return-object v0

    .line 21
    :cond_0
    if-nez p0, :cond_1

    .line 22
    const/4 v0, 0x0

    return-object v0

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/utils/AppUtils;->packageName:Ljava/lang/String;

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/aliyun/utils/AppUtils;->packageNameDecied:Z

    .line 28
    sget-object v0, Lcom/aliyun/utils/AppUtils;->packageName:Ljava/lang/String;

    return-object v0
.end method
