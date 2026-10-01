.class public final enum Lcom/umeng/analytics/d/t$a;
.super Ljava/lang/Enum;
.source "PropertyValue.java"

# interfaces
.implements Lcom/umeng/a/a/a/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/analytics/d/t$a;",
        ">;",
        "Lcom/umeng/a/a/a/k;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/analytics/d/t$a;

.field public static final enum b:Lcom/umeng/analytics/d/t$a;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/d/t$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Lcom/umeng/analytics/d/t$a;


# instance fields
.field private final d:S

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 38
    new-instance v0, Lcom/umeng/analytics/d/t$a;

    const-string/jumbo v1, "string_value"

    const-string v2, "STRING_VALUE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/umeng/analytics/d/t$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/t$a;->a:Lcom/umeng/analytics/d/t$a;

    .line 39
    new-instance v0, Lcom/umeng/analytics/d/t$a;

    const-string v1, "long_value"

    const-string v2, "LONG_VALUE"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/umeng/analytics/d/t$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/t$a;->b:Lcom/umeng/analytics/d/t$a;

    .line 37
    new-array v0, v5, [Lcom/umeng/analytics/d/t$a;

    sget-object v1, Lcom/umeng/analytics/d/t$a;->a:Lcom/umeng/analytics/d/t$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/analytics/d/t$a;->b:Lcom/umeng/analytics/d/t$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/umeng/analytics/d/t$a;->f:[Lcom/umeng/analytics/d/t$a;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/d/t$a;->c:Ljava/util/Map;

    .line 44
    const-class v0, Lcom/umeng/analytics/d/t$a;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/d/t$a;

    .line 45
    sget-object v2, Lcom/umeng/analytics/d/t$a;->c:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/umeng/analytics/d/t$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    iput-short p3, p0, Lcom/umeng/analytics/d/t$a;->d:S

    .line 85
    iput-object p4, p0, Lcom/umeng/analytics/d/t$a;->e:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public static a(I)Lcom/umeng/analytics/d/t$a;
    .locals 0

    .line 53
    packed-switch p0, :pswitch_data_0

    .line 59
    const/4 p0, 0x0

    return-object p0

    .line 57
    :pswitch_0
    sget-object p0, Lcom/umeng/analytics/d/t$a;->b:Lcom/umeng/analytics/d/t$a;

    return-object p0

    .line 55
    :pswitch_1
    sget-object p0, Lcom/umeng/analytics/d/t$a;->a:Lcom/umeng/analytics/d/t$a;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lcom/umeng/analytics/d/t$a;
    .locals 1

    .line 77
    sget-object v0, Lcom/umeng/analytics/d/t$a;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/d/t$a;

    return-object p0
.end method

.method public static b(I)Lcom/umeng/analytics/d/t$a;
    .locals 3

    .line 68
    invoke-static {p0}, Lcom/umeng/analytics/d/t$a;->a(I)Lcom/umeng/analytics/d/t$a;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    return-object v0

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " doesn\'t exist!"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/analytics/d/t$a;
    .locals 1

    .line 37
    const-class v0, Lcom/umeng/analytics/d/t$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/d/t$a;

    return-object p0
.end method

.method public static values()[Lcom/umeng/analytics/d/t$a;
    .locals 1

    .line 37
    sget-object v0, Lcom/umeng/analytics/d/t$a;->f:[Lcom/umeng/analytics/d/t$a;

    invoke-virtual {v0}, [Lcom/umeng/analytics/d/t$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/analytics/d/t$a;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .line 89
    iget-short v0, p0, Lcom/umeng/analytics/d/t$a;->d:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/umeng/analytics/d/t$a;->e:Ljava/lang/String;

    return-object v0
.end method
