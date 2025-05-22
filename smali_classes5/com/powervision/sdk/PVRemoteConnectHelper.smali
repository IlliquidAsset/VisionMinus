.class public Lcom/powervision/sdk/PVRemoteConnectHelper;
.super Ljava/lang/Object;
.source "PVRemoteConnectHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/sdk/PVRemoteConnectHelper$ConnectListener;
    }
.end annotation


# static fields
.field private static mHelper:Lcom/powervision/sdk/PVRemoteConnectHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/powervision/sdk/PVRemoteConnectHelper;

    invoke-direct {v0}, Lcom/powervision/sdk/PVRemoteConnectHelper;-><init>()V

    sput-object v0, Lcom/powervision/sdk/PVRemoteConnectHelper;->mHelper:Lcom/powervision/sdk/PVRemoteConnectHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/powervision/sdk/PVRemoteConnectHelper;
    .locals 1

    .line 11
    sget-object v0, Lcom/powervision/sdk/PVRemoteConnectHelper;->mHelper:Lcom/powervision/sdk/PVRemoteConnectHelper;

    return-object v0
.end method
