.class public Lnet/sunniwell/android/httpserver/TestHttpServer;
.super Landroid/app/Activity;
.source "TestHttpServer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    sget v0, Lnet/sunniwell/android/httpserver/R$layout;->main:I

    invoke-virtual {p0, v0}, Lnet/sunniwell/android/httpserver/TestHttpServer;->setContentView(I)V

    .line 31
    return-void
.end method
