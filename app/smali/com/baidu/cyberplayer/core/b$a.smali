.class public final enum Lcom/baidu/cyberplayer/core/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/core/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/cyberplayer/core/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/cyberplayer/core/b$a;

.field private static final synthetic a:[Lcom/baidu/cyberplayer/core/b$a;

.field public static final enum b:Lcom/baidu/cyberplayer/core/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 50
    new-instance v0, Lcom/baidu/cyberplayer/core/b$a;

    const-string v1, "CACHE_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/cyberplayer/core/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/core/b$a;->a:Lcom/baidu/cyberplayer/core/b$a;

    .line 51
    new-instance v0, Lcom/baidu/cyberplayer/core/b$a;

    const-string v1, "CACHE_END"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/cyberplayer/core/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/core/b$a;->b:Lcom/baidu/cyberplayer/core/b$a;

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/cyberplayer/core/b$a;

    sget-object v1, Lcom/baidu/cyberplayer/core/b$a;->a:Lcom/baidu/cyberplayer/core/b$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/cyberplayer/core/b$a;->b:Lcom/baidu/cyberplayer/core/b$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/cyberplayer/core/b$a;->a:[Lcom/baidu/cyberplayer/core/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/cyberplayer/core/b$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 49
    const-class v0, Lcom/baidu/cyberplayer/core/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/cyberplayer/core/b$a;

    return-object v0
.end method

.method public static values()[Lcom/baidu/cyberplayer/core/b$a;
    .locals 1

    .line 49
    sget-object v0, Lcom/baidu/cyberplayer/core/b$a;->a:[Lcom/baidu/cyberplayer/core/b$a;

    invoke-virtual {v0}, [Lcom/baidu/cyberplayer/core/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/cyberplayer/core/b$a;

    return-object v0
.end method
