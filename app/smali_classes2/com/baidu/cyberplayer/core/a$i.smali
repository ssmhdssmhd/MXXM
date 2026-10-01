.class Lcom/baidu/cyberplayer/core/a$i;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field private a:I

.field private a:Lcom/baidu/cyberplayer/core/a$h;

.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/cyberplayer/core/a;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private b:I

.field private b:Z

.field private c:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/cyberplayer/core/a;",
            ">;)V"
        }
    .end annotation

    .line 1334
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1906
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/a$i;->a:Ljava/util/ArrayList;

    .line 1907
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/a$i;->m:Z

    .line 1908
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/cyberplayer/core/a$i;->n:Z

    .line 1335
    iput v1, p0, Lcom/baidu/cyberplayer/core/a$i;->a:I

    .line 1336
    iput v1, p0, Lcom/baidu/cyberplayer/core/a$i;->b:I

    .line 1337
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/a$i;->k:Z

    .line 1338
    iput v0, p0, Lcom/baidu/cyberplayer/core/a$i;->c:I

    .line 1339
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/a$i;->a:Ljava/lang/ref/WeakReference;

    .line 1340
    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/a$i;Z)Z
    .locals 0

    .line 1332
    iput-boolean p1, p0, Lcom/baidu/cyberplayer/core/a$i;->b:Z

    return p1
.end method

.method private b()Z
    .locals 2

    .line 1714
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/a$i;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/a$i;->e:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/a$i;->f:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/baidu/cyberplayer/core/a$i;->a:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/baidu/cyberplayer/core/a$i;->b:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/a$i;->k:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/baidu/cyberplayer/core/a$i;->c:I

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private h()V
    .locals 1

    .line 1363
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/a$i;->i:Z

    if-eqz v0, :cond_0

    .line 1364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/a$i;->i:Z

    .line 1365
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$i;->a:Lcom/baidu/cyberplayer/core/a$h;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/a$h;->b()V

    .line 1367
    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    .line 1374
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/a$i;->h:Z

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$i;->a:Lcom/baidu/cyberplayer/core/a$h;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/a$h;->c()V

    .line 1376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/a$i;->h:Z

    .line 1377
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/cyberplayer/core/a$j;->b(Lcom/baidu/cyberplayer/core/a$i;)V

    .line 1379
    :cond_0
    return-void
.end method

.method private j()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1382
    move-object/from16 v1, p0

    new-instance v0, Lcom/baidu/cyberplayer/core/a$h;

    iget-object v2, v1, Lcom/baidu/cyberplayer/core/a$i;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/baidu/cyberplayer/core/a$h;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/baidu/cyberplayer/core/a$i;->a:Lcom/baidu/cyberplayer/core/a$h;

    .line 1383
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/baidu/cyberplayer/core/a$i;->h:Z

    .line 1384
    iput-boolean v0, v1, Lcom/baidu/cyberplayer/core/a$i;->i:Z

    .line 1386
    nop

    .line 1387
    nop

    .line 1388
    nop

    .line 1389
    nop

    .line 1390
    nop

    .line 1391
    nop

    .line 1392
    nop

    .line 1393
    nop

    .line 1394
    nop

    .line 1395
    nop

    .line 1396
    nop

    .line 1397
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1399
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1401
    :goto_1
    :try_start_1
    iget-boolean v2, v1, Lcom/baidu/cyberplayer/core/a$i;->a:Z

    if-eqz v2, :cond_0

    .line 1402
    const-string v0, "CPGLSurfaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "guard thread exit should exit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/baidu/cyberplayer/core/a$i;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1698
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v2

    monitor-enter v2

    .line 1699
    :try_start_2
    invoke-direct {v1}, Lcom/baidu/cyberplayer/core/a$i;->h()V

    .line 1700
    invoke-direct {v1}, Lcom/baidu/cyberplayer/core/a$i;->i()V

    .line 1701
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1406
    :cond_0
    :try_start_3
    iget-object v2, v1, Lcom/baidu/cyberplayer/core/a$i;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1407
    iget-object v2, v1, Lcom/baidu/cyberplayer/core/a$i;->a:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/Runnable;

    .line 1408
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1412
    :cond_1
    nop

    .line 1413
    iget-boolean v2, v1, Lcom/baidu/cyberplayer/core/a$i;->d:Z

    iget-boolean v0, v1, Lcom/baidu/cyberplayer/core/a$i;->c:Z

    if-eq v2, v0, :cond_2

    .line 1414
    iget-boolean v0, v1, Lcom/baidu/cyberplayer/core/a$i;->c:Z

    .line 1415
    iget-boolean v2, v1, Lcom/baidu/cyberplayer/core/a$i;->c:Z

    iput-boolean v2, v1, Lcom/baidu/cyberplayer/core/a$i;->d:Z

    .line 1416
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    .line 1413
    :cond_2
    const/4 v0, 0x0

    .line 1424
    :goto_2
    iget-boolean v2, v1, Lcom/baidu/cyberplayer/core/a$i;->j:Z

    if-eqz v2, :cond_3

    .line 1430
    invoke-direct {v1}, Lcom/baidu/cyberplayer/core/a$i;->h()V

    .line 1431
    invoke-direct {v1}, Lcom/baidu/cyberplayer/core/a$i;->i()V

    .line 1432
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/baidu/cyberplayer/core/a$i;->j:Z

    .line 1433
    const/4 v5, 0x1

    .line 1437
    :cond_3
    if-eqz v3, :cond_4

    .line 1438
    invoke-direct {v1}, Lcom/baidu/cyberplayer/core/a$i;->h()V

    .line 1439
    invoke-direct {v1}, Lcom/baidu/cyberplayer/core/a$i;->i()V

    .line 1440
    const/4 v3, 0x0

    .line 1444
    :cond_4
    if-eqz v0, :cond_5

    iget-boolean v2, v1, Lcom/baidu/cyberplayer/core/a$i;->i:Z

    if-eqz v2, :cond_5

    .line 1450
    invoke-direct {v1}, Lcom/baidu/cyberplayer/core/a$i;->h()V

    .line 1454
    :cond_5
    if-eqz v0, :cond_8

    iget-boolean v2, v1, Lcom/baidu/cyberplayer/core/a$i;->h:Z

    if-eqz v2, :cond_8

    .line 1455
    iget-object v2, v1, Lcom/baidu/cyberplayer/core/a$i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/cyberplayer/core/a;

    .line 1457
    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    invoke-static {v2}, Lcom/baidu/cyberplayer/core/a;->a(Lcom/baidu/cyberplayer/core/a;)Z

    move-result v2

    .line 1459
    :goto_3
    if-eqz v2, :cond_7

    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/cyberplayer/core/a$j;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1462
    :cond_7
    invoke-direct {v1}, Lcom/baidu/cyberplayer/core/a$i;->i()V

    .line 1472
    :cond_8
    if-eqz v0, :cond_9

    .line 1473
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/a$j;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1475
    iget-object v0, v1, Lcom/baidu/cyberplayer/core/a$i;->a:Lcom/baidu/cyberplayer/core/a$h;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/a$h;->c()V

    .line 1485
    :cond_9
    iget-boolean v0, v1, Lcom/baidu/cyberplayer/core/a$i;->e:Z

    if-nez v0, :cond_b

    iget-boolean v0, v1, Lcom/baidu/cyberplayer/core/a$i;->g:Z

    if-nez v0, :cond_b

    .line 1491
    iget-boolean v0, v1, Lcom/baidu/cyberplayer/core/a$i;->i:Z

    if-eqz v0, :cond_a

    .line 1492
    invoke-direct {v1}, Lcom/baidu/cyberplayer/core/a$i;->h()V

    .line 1494
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/baidu/cyberplayer/core/a$i;->g:Z

    .line 1495
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/baidu/cyberplayer/core/a$i;->f:Z

    .line 1496
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1500
    :cond_b
    iget-boolean v0, v1, Lcom/baidu/cyberplayer/core/a$i;->e:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Lcom/baidu/cyberplayer/core/a$i;->g:Z

    if-eqz v0, :cond_c

    .line 1506
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/baidu/cyberplayer/core/a$i;->g:Z

    .line 1507
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1510
    :cond_c
    if-eqz v4, :cond_d

    .line 1516
    nop

    .line 1517
    nop

    .line 1518
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/baidu/cyberplayer/core/a$i;->l:Z

    .line 1519
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x0

    const/4 v14, 0x0

    .line 1523
    :cond_d
    invoke-direct {v1}, Lcom/baidu/cyberplayer/core/a$i;->b()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1527
    iget-boolean v0, v1, Lcom/baidu/cyberplayer/core/a$i;->h:Z

    if-nez v0, :cond_f

    .line 1528
    if-eqz v5, :cond_e

    .line 1529
    const/4 v5, 0x0

    goto :goto_4

    .line 1530
    :cond_e
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/a$j;->a(Lcom/baidu/cyberplayer/core/a$i;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_f

    .line 1533
    :try_start_4
    iget-object v0, v1, Lcom/baidu/cyberplayer/core/a$i;->a:Lcom/baidu/cyberplayer/core/a$h;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/a$h;->a()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1538
    nop

    .line 1539
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, v1, Lcom/baidu/cyberplayer/core/a$i;->h:Z

    .line 1540
    nop

    .line 1541
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v7, 0x1

    goto :goto_4

    .line 1534
    :catch_0
    move-exception v0

    .line 1535
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/cyberplayer/core/a$j;->b(Lcom/baidu/cyberplayer/core/a$i;)V

    .line 1537
    throw v0

    .line 1545
    :cond_f
    :goto_4
    iget-boolean v0, v1, Lcom/baidu/cyberplayer/core/a$i;->h:Z

    if-eqz v0, :cond_10

    iget-boolean v0, v1, Lcom/baidu/cyberplayer/core/a$i;->i:Z

    if-nez v0, :cond_10

    .line 1546
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/baidu/cyberplayer/core/a$i;->i:Z

    .line 1547
    nop

    .line 1548
    nop

    .line 1549
    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 1552
    :cond_10
    iget-boolean v0, v1, Lcom/baidu/cyberplayer/core/a$i;->i:Z

    if-eqz v0, :cond_1d

    .line 1553
    iget-boolean v0, v1, Lcom/baidu/cyberplayer/core/a$i;->m:Z

    if-eqz v0, :cond_11

    .line 1554
    nop

    .line 1555
    iget v0, v1, Lcom/baidu/cyberplayer/core/a$i;->a:I

    .line 1556
    iget v2, v1, Lcom/baidu/cyberplayer/core/a$i;->b:I

    .line 1557
    nop

    .line 1565
    nop

    .line 1567
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/baidu/cyberplayer/core/a$i;->m:Z

    move v11, v0

    move v12, v2

    const/4 v8, 0x1

    const/4 v10, 0x1

    const/4 v14, 0x1

    .line 1569
    :cond_11
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/baidu/cyberplayer/core/a$i;->k:Z

    .line 1570
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1571
    nop

    .line 1595
    :goto_5
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1597
    if-eqz v13, :cond_12

    .line 1598
    :try_start_6
    invoke-interface {v13}, Ljava/lang/Runnable;->run()V

    .line 1599
    nop

    .line 1600
    const/4 v0, 0x0

    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1603
    :cond_12
    if-eqz v8, :cond_14

    .line 1607
    iget-object v0, v1, Lcom/baidu/cyberplayer/core/a$i;->a:Lcom/baidu/cyberplayer/core/a$h;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/a$h;->a()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1608
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v15

    monitor-enter v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1609
    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, v1, Lcom/baidu/cyberplayer/core/a$i;->f:Z

    .line 1610
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1611
    monitor-exit v15

    .line 1612
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1611
    :catchall_1
    move-exception v0

    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    .line 1614
    :cond_13
    const/4 v8, 0x0

    .line 1617
    :cond_14
    if-eqz v9, :cond_15

    .line 1618
    iget-object v0, v1, Lcom/baidu/cyberplayer/core/a$i;->a:Lcom/baidu/cyberplayer/core/a$h;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/a$h;->a()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljavax/microedition/khronos/opengles/GL10;

    .line 1620
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/baidu/cyberplayer/core/a$j;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1621
    const/4 v9, 0x0

    .line 1623
    :cond_15
    if-eqz v7, :cond_17

    .line 1627
    iget-object v0, v1, Lcom/baidu/cyberplayer/core/a$i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/cyberplayer/core/a;

    .line 1628
    if-eqz v0, :cond_16

    .line 1629
    invoke-static {v0}, Lcom/baidu/cyberplayer/core/a;->a(Lcom/baidu/cyberplayer/core/a;)Lcom/baidu/cyberplayer/core/a$m;

    move-result-object v0

    iget-object v7, v1, Lcom/baidu/cyberplayer/core/a$i;->a:Lcom/baidu/cyberplayer/core/a$h;

    iget-object v7, v7, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v6, v7}, Lcom/baidu/cyberplayer/core/a$m;->a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1632
    :cond_16
    const/4 v7, 0x0

    .line 1635
    :cond_17
    if-eqz v10, :cond_19

    .line 1640
    iget-object v0, v1, Lcom/baidu/cyberplayer/core/a$i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/cyberplayer/core/a;

    .line 1641
    if-eqz v0, :cond_18

    .line 1642
    invoke-static {v0}, Lcom/baidu/cyberplayer/core/a;->a(Lcom/baidu/cyberplayer/core/a;)Lcom/baidu/cyberplayer/core/a$m;

    move-result-object v0

    invoke-interface {v0, v6, v11, v12}, Lcom/baidu/cyberplayer/core/a$m;->a(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1644
    :cond_18
    const/4 v10, 0x0

    .line 1651
    :cond_19
    iget-object v0, v1, Lcom/baidu/cyberplayer/core/a$i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/cyberplayer/core/a;

    .line 1652
    if-eqz v0, :cond_1a

    .line 1653
    invoke-static {v0}, Lcom/baidu/cyberplayer/core/a;->a(Lcom/baidu/cyberplayer/core/a;)Lcom/baidu/cyberplayer/core/a$m;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/baidu/cyberplayer/core/a$m;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1656
    :cond_1a
    iget-boolean v0, v1, Lcom/baidu/cyberplayer/core/a$i;->n:Z

    if-nez v0, :cond_1b

    .line 1657
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()[B

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1658
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1661
    :cond_1b
    iget-object v0, v1, Lcom/baidu/cyberplayer/core/a$i;->a:Lcom/baidu/cyberplayer/core/a$h;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/a$h;->a()I

    move-result v0

    .line 1662
    sparse-switch v0, :sswitch_data_0

    .line 1679
    const-string v15, "GLThread"

    goto :goto_6

    .line 1669
    :sswitch_0
    nop

    .line 1670
    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_7

    .line 1664
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_7

    .line 1679
    :goto_6
    const-string v2, "eglSwapBuffers"

    invoke-static {v15, v2, v0}, Lcom/baidu/cyberplayer/core/a$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1682
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v2

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1683
    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, v1, Lcom/baidu/cyberplayer/core/a$i;->f:Z

    .line 1684
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 1685
    monitor-exit v2

    .line 1689
    :goto_7
    if-eqz v14, :cond_1c

    .line 1690
    const/4 v4, 0x1

    .line 1692
    :cond_1c
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1685
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1592
    :cond_1d
    :try_start_b
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 1594
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1595
    :catchall_3
    move-exception v0

    monitor-exit v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1698
    :catchall_4
    move-exception v0

    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v2

    monitor-enter v2

    .line 1699
    :try_start_d
    invoke-direct {v1}, Lcom/baidu/cyberplayer/core/a$i;->h()V

    .line 1700
    invoke-direct {v1}, Lcom/baidu/cyberplayer/core/a$i;->i()V

    .line 1701
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8

    nop

    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_1
        0x300e -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1733
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v0

    monitor-enter v0

    .line 1734
    :try_start_0
    iget v1, p0, Lcom/baidu/cyberplayer/core/a$i;->c:I

    monitor-exit v0

    return v1

    .line 1735
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a()V
    .locals 2

    .line 1739
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v0

    monitor-enter v0

    .line 1740
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/cyberplayer/core/a$i;->k:Z

    .line 1741
    iput-boolean v1, p0, Lcom/baidu/cyberplayer/core/a$i;->n:Z

    .line 1742
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1743
    monitor-exit v0

    .line 1744
    return-void

    .line 1743
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(I)V
    .locals 1

    .line 1723
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1726
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v0

    monitor-enter v0

    .line 1727
    :try_start_0
    iput p1, p0, Lcom/baidu/cyberplayer/core/a$i;->c:I

    .line 1728
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1729
    monitor-exit v0

    .line 1730
    return-void

    .line 1729
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1724
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "renderMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(II)V
    .locals 1

    .line 1828
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v0

    monitor-enter v0

    .line 1829
    :try_start_0
    iput p1, p0, Lcom/baidu/cyberplayer/core/a$i;->a:I

    .line 1830
    iput p2, p0, Lcom/baidu/cyberplayer/core/a$i;->b:I

    .line 1831
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/cyberplayer/core/a$i;->m:Z

    .line 1832
    iput-boolean p1, p0, Lcom/baidu/cyberplayer/core/a$i;->k:Z

    .line 1833
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/cyberplayer/core/a$i;->l:Z

    .line 1834
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1837
    :goto_0
    iget-boolean p1, p0, Lcom/baidu/cyberplayer/core/a$i;->b:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/baidu/cyberplayer/core/a$i;->d:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/baidu/cyberplayer/core/a$i;->l:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/core/a$i;->a()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1844
    :try_start_1
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1847
    :goto_1
    goto :goto_0

    .line 1845
    :catch_0
    move-exception p1

    .line 1846
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 1849
    :cond_0
    monitor-exit v0

    .line 1850
    return-void

    .line 1849
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .line 1880
    if-eqz p1, :cond_0

    .line 1883
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v0

    monitor-enter v0

    .line 1884
    :try_start_0
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/a$i;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1885
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1886
    monitor-exit v0

    .line 1887
    return-void

    .line 1886
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1881
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "r must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Z
    .locals 1

    .line 1706
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/a$i;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/a$i;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/a$i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 2

    .line 1747
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v0

    monitor-enter v0

    .line 1751
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/cyberplayer/core/a$i;->e:Z

    .line 1752
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1753
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/cyberplayer/core/a$i;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/cyberplayer/core/a$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1755
    :try_start_1
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1758
    :goto_1
    goto :goto_0

    .line 1756
    :catch_0
    move-exception v1

    .line 1757
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 1760
    :cond_0
    monitor-exit v0

    .line 1761
    return-void

    .line 1760
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public c()V
    .locals 2

    .line 1764
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v0

    monitor-enter v0

    .line 1768
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/cyberplayer/core/a$i;->e:Z

    .line 1769
    iput-boolean v1, p0, Lcom/baidu/cyberplayer/core/a$i;->n:Z

    .line 1770
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1773
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1775
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/cyberplayer/core/a$i;->g:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/cyberplayer/core/a$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1777
    :try_start_1
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1780
    :goto_1
    goto :goto_0

    .line 1778
    :catch_0
    move-exception v1

    .line 1779
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 1782
    :cond_0
    monitor-exit v0

    .line 1783
    return-void

    .line 1782
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public d()V
    .locals 2

    .line 1786
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v0

    monitor-enter v0

    .line 1790
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/cyberplayer/core/a$i;->c:Z

    .line 1791
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1792
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/cyberplayer/core/a$i;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/cyberplayer/core/a$i;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1797
    :try_start_1
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1800
    :goto_1
    goto :goto_0

    .line 1798
    :catch_0
    move-exception v1

    .line 1799
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 1802
    :cond_0
    monitor-exit v0

    .line 1803
    return-void

    .line 1802
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public e()V
    .locals 3

    .line 1806
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v0

    monitor-enter v0

    .line 1810
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/cyberplayer/core/a$i;->c:Z

    .line 1811
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/a$i;->k:Z

    .line 1812
    iput-boolean v1, p0, Lcom/baidu/cyberplayer/core/a$i;->l:Z

    .line 1813
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1814
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/cyberplayer/core/a$i;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/cyberplayer/core/a$i;->d:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/cyberplayer/core/a$i;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1819
    :try_start_1
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1822
    :goto_1
    goto :goto_0

    .line 1820
    :catch_0
    move-exception v1

    .line 1821
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 1824
    :cond_0
    monitor-exit v0

    .line 1825
    return-void

    .line 1824
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public f()V
    .locals 2

    .line 1855
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v0

    monitor-enter v0

    .line 1856
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/cyberplayer/core/a$i;->a:Z

    .line 1857
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1858
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/cyberplayer/core/a$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1860
    :try_start_1
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1863
    :goto_1
    goto :goto_0

    .line 1861
    :catch_0
    move-exception v1

    .line 1862
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 1865
    :cond_0
    monitor-exit v0

    .line 1866
    return-void

    .line 1865
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public g()V
    .locals 1

    .line 1869
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/a$i;->j:Z

    .line 1870
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1871
    return-void
.end method

.method public run()V
    .locals 3

    .line 1344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/core/a$i;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/core/a$i;->setName(Ljava/lang/String;)V

    .line 1350
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/a$i;->j()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1354
    :goto_0
    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/cyberplayer/core/a$j;->a(Lcom/baidu/cyberplayer/core/a$i;)V

    .line 1355
    goto :goto_1

    .line 1354
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/baidu/cyberplayer/core/a;->a()Lcom/baidu/cyberplayer/core/a$j;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/baidu/cyberplayer/core/a$j;->a(Lcom/baidu/cyberplayer/core/a$i;)V

    throw v0

    .line 1351
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1356
    :goto_1
    return-void
.end method
