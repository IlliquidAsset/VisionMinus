.class public Lcom/powervision/gcs/utils/ship/SensorEventHelper;
.super Ljava/lang/Object;
.source "SensorEventHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final TIME_SENSOR:I

.field private compassLayout:Landroid/widget/FrameLayout;

.field private lastTime:J

.field private mAngle:F

.field private mContext:Landroid/content/Context;

.field private mImage:Landroid/widget/ImageView;

.field private mMarker:Lcom/powervision/condition/widget/NationMarker;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/powervision/gcs/utils/ship/SensorEventHelper;->lastTime:J

    const/16 v0, 0x64

    .line 21
    iput v0, p0, Lcom/powervision/gcs/utils/ship/SensorEventHelper;->TIME_SENSOR:I

    .line 28
    iput-object p1, p0, Lcom/powervision/gcs/utils/ship/SensorEventHelper;->mContext:Landroid/content/Context;

    const-string v0, "sensor"

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/powervision/gcs/utils/ship/SensorEventHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x3

    .line 31
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/utils/ship/SensorEventHelper;->mSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method public static getScreenRotationOnPhone(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    .line 106
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 108
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, -0x5a

    return p0

    :cond_1
    const/16 p0, 0xb4

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/powervision/gcs/utils/ship/SensorEventHelper;->lastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 71
    :cond_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 72
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/SensorEventHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/powervision/gcs/utils/ship/SensorEventHelper;->getScreenRotationOnPhone(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_2
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    add-float/2addr p1, v0

    .line 79
    :cond_3
    :goto_0
    iget v1, p0, Lcom/powervision/gcs/utils/ship/SensorEventHelper;->mAngle:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    goto :goto_1

    .line 82
    :cond_4
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p1, 0x0

    :cond_5
    iput p1, p0, Lcom/powervision/gcs/utils/ship/SensorEventHelper;->mAngle:F

    .line 83
    iget-object v1, p0, Lcom/powervision/gcs/utils/ship/SensorEventHelper;->mMarker:Lcom/powervision/condition/widget/NationMarker;

    if-eqz v1, :cond_6

    sub-float p1, v0, p1

    .line 84
    invoke-virtual {v1, p1}, Lcom/powervision/condition/widget/NationMarker;->setRotateAngle(F)V

    .line 86
    :cond_6
    iget-object p1, p0, Lcom/powervision/gcs/utils/ship/SensorEventHelper;->mImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    .line 87
    iget v1, p0, Lcom/powervision/gcs/utils/ship/SensorEventHelper;->mAngle:F

    sub-float v1, v0, v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 89
    :cond_7
    iget-object p1, p0, Lcom/powervision/gcs/utils/ship/SensorEventHelper;->compassLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_8

    .line 90
    iget v1, p0, Lcom/powervision/gcs/utils/ship/SensorEventHelper;->mAngle:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 92
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/gcs/utils/ship/SensorEventHelper;->lastTime:J

    :goto_1
    return-void
.end method

.method public registerSensorListener()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/SensorEventHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/powervision/gcs/utils/ship/SensorEventHelper;->mSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public setCompassLayout(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/powervision/gcs/utils/ship/SensorEventHelper;->compassLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method public setCurrentImage(Landroid/widget/ImageView;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/powervision/gcs/utils/ship/SensorEventHelper;->mImage:Landroid/widget/ImageView;

    return-void
.end method

.method public setCurrentMarker(Lcom/powervision/condition/widget/NationMarker;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/powervision/gcs/utils/ship/SensorEventHelper;->mMarker:Lcom/powervision/condition/widget/NationMarker;

    return-void
.end method

.method public unRegisterSensorListener()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/SensorEventHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/powervision/gcs/utils/ship/SensorEventHelper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method
