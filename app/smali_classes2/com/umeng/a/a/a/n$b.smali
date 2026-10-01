.class Lcom/umeng/a/a/a/n$b;
.super Ljava/lang/Object;
.source "TUnion.java"

# interfaces
.implements Lcom/umeng/a/a/a/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/a/a/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/a/a/a/n$1;)V
    .locals 0

    .line 209
    invoke-direct {p0}, Lcom/umeng/a/a/a/n$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/a/a/a/n$a;
    .locals 2

    .line 211
    new-instance v0, Lcom/umeng/a/a/a/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/n$a;-><init>(Lcom/umeng/a/a/a/n$1;)V

    return-object v0
.end method

.method public synthetic b()Lcom/umeng/a/a/a/c/a;
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/umeng/a/a/a/n$b;->a()Lcom/umeng/a/a/a/n$a;

    move-result-object v0

    return-object v0
.end method
