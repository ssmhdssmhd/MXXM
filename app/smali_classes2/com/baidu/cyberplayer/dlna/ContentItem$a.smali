.class public final enum Lcom/baidu/cyberplayer/dlna/ContentItem$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/dlna/ContentItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/cyberplayer/dlna/ContentItem$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/cyberplayer/dlna/ContentItem$a;

.field private static final synthetic a:[Lcom/baidu/cyberplayer/dlna/ContentItem$a;

.field public static final enum b:Lcom/baidu/cyberplayer/dlna/ContentItem$a;

.field public static final enum c:Lcom/baidu/cyberplayer/dlna/ContentItem$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 6
    new-instance v0, Lcom/baidu/cyberplayer/dlna/ContentItem$a;

    const-string v1, "CONTAINER_ITEM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/cyberplayer/dlna/ContentItem$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/dlna/ContentItem$a;->a:Lcom/baidu/cyberplayer/dlna/ContentItem$a;

    .line 7
    new-instance v0, Lcom/baidu/cyberplayer/dlna/ContentItem$a;

    const-string v1, "FILE_ITEM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/cyberplayer/dlna/ContentItem$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/dlna/ContentItem$a;->b:Lcom/baidu/cyberplayer/dlna/ContentItem$a;

    .line 8
    new-instance v0, Lcom/baidu/cyberplayer/dlna/ContentItem$a;

    const-string v1, "RESOURCE_ITEM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/baidu/cyberplayer/dlna/ContentItem$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/dlna/ContentItem$a;->c:Lcom/baidu/cyberplayer/dlna/ContentItem$a;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/cyberplayer/dlna/ContentItem$a;

    sget-object v1, Lcom/baidu/cyberplayer/dlna/ContentItem$a;->a:Lcom/baidu/cyberplayer/dlna/ContentItem$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/cyberplayer/dlna/ContentItem$a;->b:Lcom/baidu/cyberplayer/dlna/ContentItem$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/cyberplayer/dlna/ContentItem$a;->c:Lcom/baidu/cyberplayer/dlna/ContentItem$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/cyberplayer/dlna/ContentItem$a;->a:[Lcom/baidu/cyberplayer/dlna/ContentItem$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/cyberplayer/dlna/ContentItem$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 5
    const-class v0, Lcom/baidu/cyberplayer/dlna/ContentItem$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/cyberplayer/dlna/ContentItem$a;

    return-object v0
.end method

.method public static values()[Lcom/baidu/cyberplayer/dlna/ContentItem$a;
    .locals 1

    .line 5
    sget-object v0, Lcom/baidu/cyberplayer/dlna/ContentItem$a;->a:[Lcom/baidu/cyberplayer/dlna/ContentItem$a;

    invoke-virtual {v0}, [Lcom/baidu/cyberplayer/dlna/ContentItem$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/cyberplayer/dlna/ContentItem$a;

    return-object v0
.end method
