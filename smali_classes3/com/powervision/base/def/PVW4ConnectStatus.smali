.class public Lcom/powervision/base/def/PVW4ConnectStatus;
.super Ljava/lang/Object;
.source "PVW4ConnectStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/def/PVW4ConnectStatus$PVW4ConnectStatusDef;
    }
.end annotation


# static fields
.field public static final TYPE_CONNECTED:I = 0x0

.field public static final TYPE_CONNECT_FAILED:I = 0x1

.field public static final TYPE_CONNECT_TIMEOUT:I = 0x3

.field public static final TYPE_DISCONNECT:I = 0x2

.field public static final TYPE_HEARTBEAT_RECOVERY:I = 0x4

.field public static final TYPE_HEARTBEAT_TIMEOUT:I = 0x5


# instance fields
.field public final mConnectStatus:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/powervision/base/def/PVW4ConnectStatus;->mConnectStatus:I

    return-void
.end method
