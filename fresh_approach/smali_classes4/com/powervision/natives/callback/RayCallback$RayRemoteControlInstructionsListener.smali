.class public interface abstract Lcom/powervision/natives/callback/RayCallback$RayRemoteControlInstructionsListener;
.super Ljava/lang/Object;
.source "RayCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/RayCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RayRemoteControlInstructionsListener"
.end annotation


# static fields
.field public static final RAY_REMOTE_INSTRUCTIONS_FISH_VIEW:I = 0x2

.field public static final RAY_REMOTE_INSTRUCTIONS_TAKE_PIC:I = 0x0

.field public static final RAY_REMOTE_INSTRUCTIONS_UNSETTLED:I = 0x3

.field public static final RAY_REMOTE_INSTRUCTIONS_VIDEO:I = 0x1

.field public static final RAY_REMOTE_INSTRUCTIONS_VR_PRESS:I = 0x4

.field public static final RAY_REMOTE_INSTRUCTIONS_VR_RELEASE:I = 0x5


# virtual methods
.method public abstract remoteControlInstructions(I)V
.end method
