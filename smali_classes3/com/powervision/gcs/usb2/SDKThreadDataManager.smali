.class public Lcom/powervision/gcs/usb2/SDKThreadDataManager;
.super Ljava/lang/Object;
.source "SDKThreadDataManager.java"


# static fields
.field private static sdkThreadDataManager:Lcom/powervision/gcs/usb2/SDKThreadDataManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/powervision/gcs/usb2/SDKThreadDataManager;
    .locals 1

    .line 16
    sget-object v0, Lcom/powervision/gcs/usb2/SDKThreadDataManager;->sdkThreadDataManager:Lcom/powervision/gcs/usb2/SDKThreadDataManager;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/powervision/gcs/usb2/SDKThreadDataManager;

    invoke-direct {v0}, Lcom/powervision/gcs/usb2/SDKThreadDataManager;-><init>()V

    sput-object v0, Lcom/powervision/gcs/usb2/SDKThreadDataManager;->sdkThreadDataManager:Lcom/powervision/gcs/usb2/SDKThreadDataManager;

    .line 19
    :cond_0
    sget-object v0, Lcom/powervision/gcs/usb2/SDKThreadDataManager;->sdkThreadDataManager:Lcom/powervision/gcs/usb2/SDKThreadDataManager;

    return-object v0
.end method
