.class public Lnet/tsz/afinal/exception/DbException;
.super Lnet/tsz/afinal/exception/AfinalException;
.source "DbException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private strMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lnet/tsz/afinal/exception/AfinalException;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/tsz/afinal/exception/DbException;->strMsg:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "strMsg"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Lnet/tsz/afinal/exception/AfinalException;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/tsz/afinal/exception/DbException;->strMsg:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lnet/tsz/afinal/exception/DbException;->strMsg:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public printStackTrace()V
    .locals 2

    .line 28
    iget-object v0, p0, Lnet/tsz/afinal/exception/DbException;->strMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v1, p0, Lnet/tsz/afinal/exception/DbException;->strMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    :cond_0
    invoke-super {p0}, Lnet/tsz/afinal/exception/AfinalException;->printStackTrace()V

    .line 32
    return-void
.end method
