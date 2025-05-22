.class final Lcom/umeng/commonsdk/internal/utils/i$1;
.super Ljava/lang/Object;
.source "SystemLayerUtil.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/internal/utils/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 62
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/i;->b()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 63
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/i;->c()I

    return-void

    .line 66
    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/i;->d()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 67
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/i;->e()I

    .line 68
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/i;->f()Ljava/util/ArrayList;

    move-result-object v0

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_1
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/i;->d()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 71
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/i;->e()I

    .line 72
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/i;->g()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/internal/utils/i;->a(J)J

    .line 75
    :cond_2
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/i;->g()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/internal/utils/i;->b(J)J

    .line 78
    :cond_3
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/i;->h()I

    .line 79
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/i;->i()V

    :cond_4
    return-void
.end method
