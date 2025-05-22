.class Lcom/powervision/base/config/PVW4CameraConfig$SingletonHolder;
.super Ljava/lang/Object;
.source "PVW4CameraConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/config/PVW4CameraConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static instance:Lcom/powervision/base/config/PVW4CameraConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/powervision/base/config/PVW4CameraConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/powervision/base/config/PVW4CameraConfig;-><init>(Lcom/powervision/base/config/PVW4CameraConfig$1;)V

    sput-object v0, Lcom/powervision/base/config/PVW4CameraConfig$SingletonHolder;->instance:Lcom/powervision/base/config/PVW4CameraConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/powervision/base/config/PVW4CameraConfig;
    .locals 1

    .line 13
    sget-object v0, Lcom/powervision/base/config/PVW4CameraConfig$SingletonHolder;->instance:Lcom/powervision/base/config/PVW4CameraConfig;

    return-object v0
.end method
