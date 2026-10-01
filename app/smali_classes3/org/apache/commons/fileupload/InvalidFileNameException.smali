.class public Lorg/apache/commons/fileupload/InvalidFileNameException;
.super Ljava/lang/RuntimeException;
.source "InvalidFileNameException.java"


# static fields
.field private static final serialVersionUID:J = 0x6df0bfc62ecd7a86L


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "pMessage"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lorg/apache/commons/fileupload/InvalidFileNameException;->name:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/commons/fileupload/InvalidFileNameException;->name:Ljava/lang/String;

    return-object v0
.end method
