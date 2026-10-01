.class public Lcom/shenma/tvlauncher/Api;
.super Ljava/lang/Object;
.source "Api.java"


# static fields
.field public static CLOUD_JUHETV_URL:Ljava/lang/String;

.field public static JUHEQQ692000321_ID:Ljava/lang/String;

.field public static MAIN_JUHETV_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    const-string v0, ""

    sput-object v0, Lcom/shenma/tvlauncher/Api;->CLOUD_JUHETV_URL:Ljava/lang/String;

    .line 6
    const-string v0, "https://域名/zk.php 64位编码"

    sput-object v0, Lcom/shenma/tvlauncher/Api;->MAIN_JUHETV_URL:Ljava/lang/String;

    .line 8
    const-string v0, "应用id"

    sput-object v0, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
