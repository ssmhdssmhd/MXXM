.class Lcom/umeng/analytics/d/e$c;
.super Lcom/umeng/a/a/a/c/d;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/d<",
        "Lcom/umeng/analytics/d/e;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1216
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/e$1;)V
    .locals 0

    .line 1216
    invoke-direct {p0}, Lcom/umeng/analytics/d/e$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 1216
    check-cast p2, Lcom/umeng/analytics/d/e;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/e$c;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/e;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 1220
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 1221
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1222
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1223
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1225
    :cond_0
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1226
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1228
    :cond_1
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1229
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1231
    :cond_2
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1232
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1234
    :cond_3
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->r()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1235
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1237
    :cond_4
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->u()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1238
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1240
    :cond_5
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->x()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1241
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1243
    :cond_6
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->A()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1244
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1246
    :cond_7
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->D()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1247
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1249
    :cond_8
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->G()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1250
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1252
    :cond_9
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->J()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1253
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1255
    :cond_a
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->M()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1256
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1258
    :cond_b
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->P()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1259
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1261
    :cond_c
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->S()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1262
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1264
    :cond_d
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->V()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1265
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1267
    :cond_e
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->Y()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1268
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1270
    :cond_f
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->ab()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1271
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1273
    :cond_10
    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(Ljava/util/BitSet;I)V

    .line 1274
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->e()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1275
    iget-object v0, p2, Lcom/umeng/analytics/d/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 1277
    :cond_11
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->i()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1278
    iget-object v0, p2, Lcom/umeng/analytics/d/e;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 1280
    :cond_12
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->l()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1281
    iget-object v0, p2, Lcom/umeng/analytics/d/e;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 1283
    :cond_13
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->o()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1284
    iget-object v0, p2, Lcom/umeng/analytics/d/e;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 1286
    :cond_14
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->r()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1287
    iget-object v0, p2, Lcom/umeng/analytics/d/e;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 1289
    :cond_15
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->u()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1290
    iget-object v0, p2, Lcom/umeng/analytics/d/e;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 1292
    :cond_16
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->x()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1293
    iget-object v0, p2, Lcom/umeng/analytics/d/e;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 1295
    :cond_17
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->A()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1296
    iget-object v0, p2, Lcom/umeng/analytics/d/e;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 1298
    :cond_18
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->D()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1299
    iget-object v0, p2, Lcom/umeng/analytics/d/e;->i:Lcom/umeng/analytics/d/u;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/d/u;->b(Lcom/umeng/a/a/a/b/h;)V

    .line 1301
    :cond_19
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->G()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1302
    iget-boolean v0, p2, Lcom/umeng/analytics/d/e;->j:Z

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Z)V

    .line 1304
    :cond_1a
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->J()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1305
    iget-boolean v0, p2, Lcom/umeng/analytics/d/e;->k:Z

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Z)V

    .line 1307
    :cond_1b
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->M()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1308
    iget-object v0, p2, Lcom/umeng/analytics/d/e;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 1310
    :cond_1c
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->P()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1311
    iget-object v0, p2, Lcom/umeng/analytics/d/e;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 1313
    :cond_1d
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->S()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1314
    iget-wide v0, p2, Lcom/umeng/analytics/d/e;->n:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(J)V

    .line 1316
    :cond_1e
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->V()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1317
    iget-object v0, p2, Lcom/umeng/analytics/d/e;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 1319
    :cond_1f
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->Y()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1320
    iget-object v0, p2, Lcom/umeng/analytics/d/e;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 1322
    :cond_20
    invoke-virtual {p2}, Lcom/umeng/analytics/d/e;->ab()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1323
    iget-object p2, p2, Lcom/umeng/analytics/d/e;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 1325
    :cond_21
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 1216
    check-cast p2, Lcom/umeng/analytics/d/e;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/e$c;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/e;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 1329
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 1330
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 1331
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1332
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/e;->a:Ljava/lang/String;

    .line 1333
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/e;->a(Z)V

    .line 1335
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1336
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/e;->b:Ljava/lang/String;

    .line 1337
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/e;->b(Z)V

    .line 1339
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1340
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/e;->c:Ljava/lang/String;

    .line 1341
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/e;->c(Z)V

    .line 1343
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1344
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/e;->d:Ljava/lang/String;

    .line 1345
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/e;->d(Z)V

    .line 1347
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1348
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/e;->e:Ljava/lang/String;

    .line 1349
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/e;->e(Z)V

    .line 1351
    :cond_4
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1352
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/e;->f:Ljava/lang/String;

    .line 1353
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/e;->f(Z)V

    .line 1355
    :cond_5
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1356
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/e;->g:Ljava/lang/String;

    .line 1357
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/e;->g(Z)V

    .line 1359
    :cond_6
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1360
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/e;->h:Ljava/lang/String;

    .line 1361
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/e;->h(Z)V

    .line 1363
    :cond_7
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1364
    new-instance v1, Lcom/umeng/analytics/d/u;

    invoke-direct {v1}, Lcom/umeng/analytics/d/u;-><init>()V

    iput-object v1, p2, Lcom/umeng/analytics/d/e;->i:Lcom/umeng/analytics/d/u;

    .line 1365
    iget-object v1, p2, Lcom/umeng/analytics/d/e;->i:Lcom/umeng/analytics/d/u;

    invoke-virtual {v1, p1}, Lcom/umeng/analytics/d/u;->a(Lcom/umeng/a/a/a/b/h;)V

    .line 1366
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/e;->i(Z)V

    .line 1368
    :cond_8
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1369
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->t()Z

    move-result v1

    iput-boolean v1, p2, Lcom/umeng/analytics/d/e;->j:Z

    .line 1370
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/e;->k(Z)V

    .line 1372
    :cond_9
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1373
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->t()Z

    move-result v1

    iput-boolean v1, p2, Lcom/umeng/analytics/d/e;->k:Z

    .line 1374
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/e;->m(Z)V

    .line 1376
    :cond_a
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1377
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/e;->l:Ljava/lang/String;

    .line 1378
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/e;->n(Z)V

    .line 1380
    :cond_b
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1381
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/e;->m:Ljava/lang/String;

    .line 1382
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/e;->o(Z)V

    .line 1384
    :cond_c
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1385
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->x()J

    move-result-wide v3

    iput-wide v3, p2, Lcom/umeng/analytics/d/e;->n:J

    .line 1386
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/e;->p(Z)V

    .line 1388
    :cond_d
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1389
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/e;->o:Ljava/lang/String;

    .line 1390
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/e;->q(Z)V

    .line 1392
    :cond_e
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1393
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/e;->p:Ljava/lang/String;

    .line 1394
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/e;->r(Z)V

    .line 1396
    :cond_f
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1397
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/umeng/analytics/d/e;->q:Ljava/lang/String;

    .line 1398
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/e;->s(Z)V

    .line 1400
    :cond_10
    return-void
.end method
