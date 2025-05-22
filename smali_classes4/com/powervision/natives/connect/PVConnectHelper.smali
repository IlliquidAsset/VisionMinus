.class public Lcom/powervision/natives/connect/PVConnectHelper;
.super Ljava/lang/Object;
.source "PVConnectHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;,
        Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;,
        Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;,
        Lcom/powervision/natives/connect/PVConnectHelper$RemoteConnectSuccessListener;
    }
.end annotation


# static fields
.field private static mHelper:Lcom/powervision/natives/connect/PVConnectHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/powervision/natives/connect/PVConnectHelper;

    invoke-direct {v0}, Lcom/powervision/natives/connect/PVConnectHelper;-><init>()V

    sput-object v0, Lcom/powervision/natives/connect/PVConnectHelper;->mHelper:Lcom/powervision/natives/connect/PVConnectHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/powervision/natives/connect/PVConnectHelper;
    .locals 1

    .line 11
    sget-object v0, Lcom/powervision/natives/connect/PVConnectHelper;->mHelper:Lcom/powervision/natives/connect/PVConnectHelper;

    return-object v0
.end method
