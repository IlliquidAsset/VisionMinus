.class public Lcom/powervision/natives/callback/FollowParamCallback;
.super Ljava/lang/Object;
.source "FollowParamCallback.java"


# instance fields
.field private final TYPE_INTERFACE_SWITCHFRAMING:I

.field public distance:F

.field public followEnable:I

.field public followSwitch:I

.field public frame:I

.field public height:F

.field public switchFraming:I

.field public velocity:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 5
    iput v0, p0, Lcom/powervision/natives/callback/FollowParamCallback;->TYPE_INTERFACE_SWITCHFRAMING:I

    .line 19
    iput v0, p0, Lcom/powervision/natives/callback/FollowParamCallback;->followEnable:I

    return-void
.end method
