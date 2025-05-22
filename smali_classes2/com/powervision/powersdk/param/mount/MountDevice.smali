.class public final enum Lcom/powervision/powersdk/param/mount/MountDevice;
.super Ljava/lang/Enum;
.source "MountDevice.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/powervision/powersdk/param/mount/MountDevice;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/powervision/powersdk/param/mount/MountDevice;

.field public static final enum MOUNTAPI_DEVICE_CAN:Lcom/powervision/powersdk/param/mount/MountDevice;

.field public static final enum MOUNTAPI_DEVICE_GPIO1:Lcom/powervision/powersdk/param/mount/MountDevice;

.field public static final enum MOUNTAPI_DEVICE_GPIO2:Lcom/powervision/powersdk/param/mount/MountDevice;

.field public static final enum MOUNTAPI_DEVICE_GPIO3:Lcom/powervision/powersdk/param/mount/MountDevice;

.field public static final enum MOUNTAPI_DEVICE_I2C:Lcom/powervision/powersdk/param/mount/MountDevice;

.field public static final enum MOUNTAPI_DEVICE_MOTOR:Lcom/powervision/powersdk/param/mount/MountDevice;

.field public static final enum MOUNTAPI_DEVICE_SPI:Lcom/powervision/powersdk/param/mount/MountDevice;

.field public static final enum MOUNTAPI_DEVICE_UART:Lcom/powervision/powersdk/param/mount/MountDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 8
    new-instance v0, Lcom/powervision/powersdk/param/mount/MountDevice;

    const-string v1, "MOUNTAPI_DEVICE_UART"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/powervision/powersdk/param/mount/MountDevice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/powersdk/param/mount/MountDevice;->MOUNTAPI_DEVICE_UART:Lcom/powervision/powersdk/param/mount/MountDevice;

    .line 9
    new-instance v0, Lcom/powervision/powersdk/param/mount/MountDevice;

    const-string v1, "MOUNTAPI_DEVICE_CAN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/powervision/powersdk/param/mount/MountDevice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/powersdk/param/mount/MountDevice;->MOUNTAPI_DEVICE_CAN:Lcom/powervision/powersdk/param/mount/MountDevice;

    .line 10
    new-instance v0, Lcom/powervision/powersdk/param/mount/MountDevice;

    const-string v1, "MOUNTAPI_DEVICE_I2C"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/powervision/powersdk/param/mount/MountDevice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/powersdk/param/mount/MountDevice;->MOUNTAPI_DEVICE_I2C:Lcom/powervision/powersdk/param/mount/MountDevice;

    .line 11
    new-instance v0, Lcom/powervision/powersdk/param/mount/MountDevice;

    const-string v1, "MOUNTAPI_DEVICE_SPI"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/powervision/powersdk/param/mount/MountDevice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/powersdk/param/mount/MountDevice;->MOUNTAPI_DEVICE_SPI:Lcom/powervision/powersdk/param/mount/MountDevice;

    .line 12
    new-instance v0, Lcom/powervision/powersdk/param/mount/MountDevice;

    const-string v1, "MOUNTAPI_DEVICE_GPIO1"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/powervision/powersdk/param/mount/MountDevice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/powersdk/param/mount/MountDevice;->MOUNTAPI_DEVICE_GPIO1:Lcom/powervision/powersdk/param/mount/MountDevice;

    .line 13
    new-instance v0, Lcom/powervision/powersdk/param/mount/MountDevice;

    const-string v1, "MOUNTAPI_DEVICE_GPIO2"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/powervision/powersdk/param/mount/MountDevice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/powersdk/param/mount/MountDevice;->MOUNTAPI_DEVICE_GPIO2:Lcom/powervision/powersdk/param/mount/MountDevice;

    .line 14
    new-instance v0, Lcom/powervision/powersdk/param/mount/MountDevice;

    const-string v1, "MOUNTAPI_DEVICE_GPIO3"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/powervision/powersdk/param/mount/MountDevice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/powersdk/param/mount/MountDevice;->MOUNTAPI_DEVICE_GPIO3:Lcom/powervision/powersdk/param/mount/MountDevice;

    .line 15
    new-instance v0, Lcom/powervision/powersdk/param/mount/MountDevice;

    const-string v1, "MOUNTAPI_DEVICE_MOTOR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/powervision/powersdk/param/mount/MountDevice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/powersdk/param/mount/MountDevice;->MOUNTAPI_DEVICE_MOTOR:Lcom/powervision/powersdk/param/mount/MountDevice;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/powervision/powersdk/param/mount/MountDevice;

    .line 7
    sget-object v10, Lcom/powervision/powersdk/param/mount/MountDevice;->MOUNTAPI_DEVICE_UART:Lcom/powervision/powersdk/param/mount/MountDevice;

    aput-object v10, v1, v2

    sget-object v2, Lcom/powervision/powersdk/param/mount/MountDevice;->MOUNTAPI_DEVICE_CAN:Lcom/powervision/powersdk/param/mount/MountDevice;

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/powersdk/param/mount/MountDevice;->MOUNTAPI_DEVICE_I2C:Lcom/powervision/powersdk/param/mount/MountDevice;

    aput-object v2, v1, v4

    sget-object v2, Lcom/powervision/powersdk/param/mount/MountDevice;->MOUNTAPI_DEVICE_SPI:Lcom/powervision/powersdk/param/mount/MountDevice;

    aput-object v2, v1, v5

    sget-object v2, Lcom/powervision/powersdk/param/mount/MountDevice;->MOUNTAPI_DEVICE_GPIO1:Lcom/powervision/powersdk/param/mount/MountDevice;

    aput-object v2, v1, v6

    sget-object v2, Lcom/powervision/powersdk/param/mount/MountDevice;->MOUNTAPI_DEVICE_GPIO2:Lcom/powervision/powersdk/param/mount/MountDevice;

    aput-object v2, v1, v7

    sget-object v2, Lcom/powervision/powersdk/param/mount/MountDevice;->MOUNTAPI_DEVICE_GPIO3:Lcom/powervision/powersdk/param/mount/MountDevice;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/powervision/powersdk/param/mount/MountDevice;->$VALUES:[Lcom/powervision/powersdk/param/mount/MountDevice;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/powervision/powersdk/param/mount/MountDevice;
    .locals 1

    .line 7
    const-class v0, Lcom/powervision/powersdk/param/mount/MountDevice;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/powervision/powersdk/param/mount/MountDevice;

    return-object p0
.end method

.method public static values()[Lcom/powervision/powersdk/param/mount/MountDevice;
    .locals 1

    .line 7
    sget-object v0, Lcom/powervision/powersdk/param/mount/MountDevice;->$VALUES:[Lcom/powervision/powersdk/param/mount/MountDevice;

    invoke-virtual {v0}, [Lcom/powervision/powersdk/param/mount/MountDevice;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/powervision/powersdk/param/mount/MountDevice;

    return-object v0
.end method
