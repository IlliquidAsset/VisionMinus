.class public interface abstract Lcom/powervision/natives/callback/RayCallback$RayArmStatusListener;
.super Ljava/lang/Object;
.source "RayCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/RayCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RayArmStatusListener"
.end annotation


# static fields
.field public static final RAY_ARM_BACK:I = 0x0

.field public static final RAY_DISARM_BACK:I = 0x1


# virtual methods
.method public abstract rayArm()V
.end method

.method public abstract rayDisarm()V
.end method
