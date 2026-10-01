.class public Lcom/baidu/cyberplayer/dlna/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/cyberplayer/dlna/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/cyberplayer/dlna/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/baidu/cyberplayer/dlna/a;


# instance fields
.field final a:I

.field private a:Landroid/os/Handler;

.field private a:Lcom/baidu/cyberplayer/dlna/b;

.field private a:Lcom/baidu/cyberplayer/utils/bh;

.field private a:Lcom/baidu/cyberplayer/utils/bk;

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/cyberplayer/dlna/a;->a:Lcom/baidu/cyberplayer/dlna/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/a;->a:Landroid/os/Handler;

    .line 25
    const/16 v0, 0x65

    iput v0, p0, Lcom/baidu/cyberplayer/dlna/a;->a:I

    .line 26
    const/16 v0, 0x67

    iput v0, p0, Lcom/baidu/cyberplayer/dlna/a;->b:I

    .line 27
    const/16 v0, 0x69

    iput v0, p0, Lcom/baidu/cyberplayer/dlna/a;->c:I

    .line 28
    const/16 v0, 0x6b

    iput v0, p0, Lcom/baidu/cyberplayer/dlna/a;->d:I

    .line 29
    const/16 v0, 0x6d

    iput v0, p0, Lcom/baidu/cyberplayer/dlna/a;->e:I

    .line 30
    const/16 v0, 0x6e

    iput v0, p0, Lcom/baidu/cyberplayer/dlna/a;->f:I

    .line 33
    new-instance v0, Lcom/baidu/cyberplayer/dlna/a$a;

    invoke-direct {v0, p0}, Lcom/baidu/cyberplayer/dlna/a$a;-><init>(Lcom/baidu/cyberplayer/dlna/a;)V

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/dlna/a$a;->start()V

    .line 34
    new-instance v0, Lcom/baidu/cyberplayer/utils/bh;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/bh;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/a;->a:Lcom/baidu/cyberplayer/utils/bh;

    .line 35
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/a;->a:Lcom/baidu/cyberplayer/utils/bh;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bh;->a()Lcom/baidu/cyberplayer/utils/be;

    move-result-object v0

    new-instance v1, Lcom/baidu/cyberplayer/utils/bI;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/bI;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/be;->a(Lcom/baidu/cyberplayer/utils/br;)Z

    .line 36
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/a;->a:Lcom/baidu/cyberplayer/utils/bh;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bh;->a()Lcom/baidu/cyberplayer/utils/be;

    move-result-object v0

    new-instance v1, Lcom/baidu/cyberplayer/utils/bG;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/bG;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/be;->a(Lcom/baidu/cyberplayer/utils/br;)Z

    .line 37
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/a;->a:Lcom/baidu/cyberplayer/utils/bh;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bh;->a()Lcom/baidu/cyberplayer/utils/be;

    move-result-object v0

    new-instance v1, Lcom/baidu/cyberplayer/utils/bH;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/bH;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/be;->a(Lcom/baidu/cyberplayer/utils/br;)Z

    .line 38
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/a;->a:Lcom/baidu/cyberplayer/utils/bh;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bh;->a()Lcom/baidu/cyberplayer/utils/be;

    move-result-object v0

    new-instance v1, Lcom/baidu/cyberplayer/utils/bJ;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/bJ;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/be;->a(Lcom/baidu/cyberplayer/utils/br;)Z

    .line 39
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/a;->a:Lcom/baidu/cyberplayer/utils/bh;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bh;->a()Lcom/baidu/cyberplayer/utils/be;

    move-result-object v0

    new-instance v1, Lcom/baidu/cyberplayer/utils/bD;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/bD;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/be;->a(Lcom/baidu/cyberplayer/utils/br;)Z

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/a;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/a;->a:Landroid/os/Handler;

    return-object p1
.end method

.method public static a()Lcom/baidu/cyberplayer/dlna/a;
    .locals 1

    .line 43
    sget-object v0, Lcom/baidu/cyberplayer/dlna/a;->a:Lcom/baidu/cyberplayer/dlna/a;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/baidu/cyberplayer/dlna/a;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/dlna/a;-><init>()V

    sput-object v0, Lcom/baidu/cyberplayer/dlna/a;->a:Lcom/baidu/cyberplayer/dlna/a;

    .line 46
    :cond_0
    sget-object v0, Lcom/baidu/cyberplayer/dlna/a;->a:Lcom/baidu/cyberplayer/dlna/a;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/a;)Lcom/baidu/cyberplayer/dlna/b;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/a;->a:Lcom/baidu/cyberplayer/dlna/b;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/a;)Lcom/baidu/cyberplayer/utils/bh;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/a;->a:Lcom/baidu/cyberplayer/utils/bh;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/a;)Lcom/baidu/cyberplayer/utils/bk;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/a;->a:Lcom/baidu/cyberplayer/utils/bk;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/a;Lcom/baidu/cyberplayer/utils/bk;)Lcom/baidu/cyberplayer/utils/bk;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/a;->a:Lcom/baidu/cyberplayer/utils/bk;

    return-object p1
.end method
