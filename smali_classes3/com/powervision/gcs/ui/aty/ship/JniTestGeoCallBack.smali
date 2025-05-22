.class public Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;
.super Ljava/lang/Object;
.source "JniTestGeoCallBack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack$JniCallback;
    }
.end annotation


# static fields
.field private static jniTestGeoCallBack:Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;


# instance fields
.field jniCallback:Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack$JniCallback;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;
    .locals 1

    .line 15
    sget-object v0, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;->jniTestGeoCallBack:Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;

    invoke-direct {v0}, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;-><init>()V

    sput-object v0, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;->jniTestGeoCallBack:Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;

    .line 18
    :cond_0
    sget-object v0, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;->jniTestGeoCallBack:Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;

    return-object v0
.end method


# virtual methods
.method public getJniCallBack()Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack$JniCallback;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;->jniCallback:Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack$JniCallback;

    return-object v0
.end method

.method public setJniCallBack(Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack$JniCallback;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;->jniCallback:Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack$JniCallback;

    return-void
.end method
