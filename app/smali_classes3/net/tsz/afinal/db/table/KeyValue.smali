.class public Lnet/tsz/afinal/db/table/KeyValue;
.super Ljava/lang/Object;
.source "KeyValue.java"


# static fields
.field private static sdf:Ljava/text/SimpleDateFormat;


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/tsz/afinal/db/table/KeyValue;->sdf:Ljava/text/SimpleDateFormat;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lnet/tsz/afinal/db/table/KeyValue;->key:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lnet/tsz/afinal/db/table/KeyValue;->value:Ljava/lang/Object;

    .line 27
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lnet/tsz/afinal/db/table/KeyValue;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .line 41
    iget-object v0, p0, Lnet/tsz/afinal/db/table/KeyValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Date;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/tsz/afinal/db/table/KeyValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/sql/Date;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lnet/tsz/afinal/db/table/KeyValue;->value:Ljava/lang/Object;

    return-object v0

    .line 42
    :cond_1
    :goto_0
    sget-object v0, Lnet/tsz/afinal/db/table/KeyValue;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lnet/tsz/afinal/db/table/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lnet/tsz/afinal/db/table/KeyValue;->key:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lnet/tsz/afinal/db/table/KeyValue;->value:Ljava/lang/Object;

    .line 48
    return-void
.end method
