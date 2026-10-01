.class public Lcom/umeng/a/a/a/b/a$a;
.super Ljava/lang/Object;
.source "TBinaryProtocol.java"

# interfaces
.implements Lcom/umeng/a/a/a/b/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/a/a/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/umeng/a/a/a/b/a$a;-><init>(ZZ)V

    .line 59
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/a/a/a/b/a$a;-><init>(ZZI)V

    .line 63
    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/a/a/a/b/a$a;->a:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/a/a/a/b/a$a;->b:Z

    .line 66
    iput-boolean p1, p0, Lcom/umeng/a/a/a/b/a$a;->a:Z

    .line 67
    iput-boolean p2, p0, Lcom/umeng/a/a/a/b/a$a;->b:Z

    .line 68
    iput p3, p0, Lcom/umeng/a/a/a/b/a$a;->c:I

    .line 69
    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/a/a/a/d/c;)Lcom/umeng/a/a/a/b/h;
    .locals 3

    .line 72
    new-instance v0, Lcom/umeng/a/a/a/b/a;

    iget-boolean v1, p0, Lcom/umeng/a/a/a/b/a$a;->a:Z

    iget-boolean v2, p0, Lcom/umeng/a/a/a/b/a$a;->b:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/umeng/a/a/a/b/a;-><init>(Lcom/umeng/a/a/a/d/c;ZZ)V

    .line 73
    iget p1, p0, Lcom/umeng/a/a/a/b/a$a;->c:I

    if-eqz p1, :cond_0

    .line 74
    iget p1, p0, Lcom/umeng/a/a/a/b/a$a;->c:I

    invoke-virtual {v0, p1}, Lcom/umeng/a/a/a/b/a;->c(I)V

    .line 76
    :cond_0
    return-object v0
.end method
