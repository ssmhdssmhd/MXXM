.class Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cicada/player/utils/media/DrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrmInfo"
.end annotation


# instance fields
.field public keyFormat:Ljava/lang/String;

.field public keyUrl:Ljava/lang/String;

.field public licenseUrl:Ljava/lang/String;

.field public mime:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->licenseUrl:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyUrl:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyFormat:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->mime:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cicada/player/utils/media/DrmSessionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/cicada/player/utils/media/DrmSessionManager$1;

    .line 50
    invoke-direct {p0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;-><init>()V

    return-void
.end method

.method private static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .line 77
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public isSame(Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;)Z
    .locals 3
    .param p1, "info"    # Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

    .line 57
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 58
    return v0

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    return v0

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->licenseUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->licenseUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 66
    return v0

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyFormat:Ljava/lang/String;

    iget-object v2, p1, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyFormat:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 70
    return v0

    .line 73
    :cond_3
    const/4 v0, 0x1

    return v0
.end method
