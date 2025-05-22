.class public Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;
.super Ljava/lang/Object;
.source "GCSConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/GCSConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionType"
.end annotation


# static fields
.field public static final AP03:I = 0x1

.field public static DEVICE:I = -0x1

.field public static DEVICE_CONNECTION:I = -0x1

.field public static final DV03:I = 0x3

.field private static GOTOTYPE:I = -0x1

.field public static final IDEAL:I = 0x0

.field private static TYPE:I = 0x0

.field public static final USB1:I = 0x1

.field public static final USB2:I = 0x2

.field public static USB2_AVALIABLE:Z = false

.field public static USB2_CONFIRM:Z = false

.field public static USB_MOUNTED:Z = false

.field public static final W4:I = 0x2

.field public static final WIFI:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCurrentType()I
    .locals 2

    const-class v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;

    monitor-enter v0

    .line 194
    :try_start_0
    sget v1, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->TYPE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getGOTOTYPE()I
    .locals 2

    const-class v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;

    monitor-enter v0

    .line 202
    :try_start_0
    sget v1, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->GOTOTYPE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isUSB2_CONFIRM()Z
    .locals 2

    const-class v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;

    monitor-enter v0

    .line 169
    :try_start_0
    sget-boolean v1, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->USB2_CONFIRM:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isUsb2Avaliable()Z
    .locals 2

    const-class v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;

    monitor-enter v0

    .line 177
    :try_start_0
    sget-boolean v1, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->USB2_AVALIABLE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isUsbMounted()Z
    .locals 2

    const-class v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;

    monitor-enter v0

    .line 186
    :try_start_0
    sget-boolean v1, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->USB_MOUNTED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setCurrectType(I)V
    .locals 1

    const-class v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;

    monitor-enter v0

    .line 198
    :try_start_0
    sput p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->TYPE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setGOTOTYPE(I)V
    .locals 1

    const-class v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;

    monitor-enter v0

    .line 206
    :try_start_0
    sput p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->GOTOTYPE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setUSB2_CONFIRM(Z)V
    .locals 1

    const-class v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;

    monitor-enter v0

    .line 173
    :try_start_0
    sput-boolean p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->USB2_CONFIRM:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setUsb2Avaliable(Z)V
    .locals 1

    const-class v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;

    monitor-enter v0

    .line 181
    :try_start_0
    sput-boolean p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->USB2_AVALIABLE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setUsbMounted(Z)V
    .locals 1

    const-class v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;

    monitor-enter v0

    .line 190
    :try_start_0
    sput-boolean p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->USB_MOUNTED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
