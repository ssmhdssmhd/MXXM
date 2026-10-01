.class public final enum Lcom/umeng/analytics/d/h;
.super Ljava/lang/Enum;
.source "ErrorSource.java"

# interfaces
.implements Lcom/umeng/a/a/a/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/analytics/d/h;",
        ">;",
        "Lcom/umeng/a/a/a/h;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/analytics/d/h;

.field public static final enum b:Lcom/umeng/analytics/d/h;

.field private static final synthetic d:[Lcom/umeng/analytics/d/h;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcom/umeng/analytics/d/h;

    const-string v1, "LEGIT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/d/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/analytics/d/h;->a:Lcom/umeng/analytics/d/h;

    .line 16
    new-instance v0, Lcom/umeng/analytics/d/h;

    const-string v1, "ALIEN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/umeng/analytics/d/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/analytics/d/h;->b:Lcom/umeng/analytics/d/h;

    .line 14
    new-array v0, v4, [Lcom/umeng/analytics/d/h;

    sget-object v1, Lcom/umeng/analytics/d/h;->a:Lcom/umeng/analytics/d/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/analytics/d/h;->b:Lcom/umeng/analytics/d/h;

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/analytics/d/h;->d:[Lcom/umeng/analytics/d/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/umeng/analytics/d/h;->c:I

    .line 22
    return-void
.end method

.method public static a(I)Lcom/umeng/analytics/d/h;
    .locals 0

    .line 36
    packed-switch p0, :pswitch_data_0

    .line 42
    const/4 p0, 0x0

    return-object p0

    .line 40
    :pswitch_0
    sget-object p0, Lcom/umeng/analytics/d/h;->b:Lcom/umeng/analytics/d/h;

    return-object p0

    .line 38
    :pswitch_1
    sget-object p0, Lcom/umeng/analytics/d/h;->a:Lcom/umeng/analytics/d/h;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/analytics/d/h;
    .locals 1

    .line 14
    const-class v0, Lcom/umeng/analytics/d/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/d/h;

    return-object p0
.end method

.method public static values()[Lcom/umeng/analytics/d/h;
    .locals 1

    .line 14
    sget-object v0, Lcom/umeng/analytics/d/h;->d:[Lcom/umeng/analytics/d/h;

    invoke-virtual {v0}, [Lcom/umeng/analytics/d/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/analytics/d/h;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/umeng/analytics/d/h;->c:I

    return v0
.end method
