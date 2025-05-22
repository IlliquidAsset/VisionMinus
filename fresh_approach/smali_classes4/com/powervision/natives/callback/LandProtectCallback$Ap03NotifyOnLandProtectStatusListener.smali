.class public interface abstract Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectStatusListener;
.super Ljava/lang/Object;
.source "LandProtectCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/LandProtectCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ap03NotifyOnLandProtectStatusListener"
.end annotation


# static fields
.field public static final LAND_PROTECT_STATUS_INFO_JUDGE_FAILED:I = 0x0

.field public static final LAND_PROTECT_STATUS_INFO_JUDGE_GOOD:I = 0x2

.field public static final LAND_PROTECT_STATUS_INFO_JUDGE_NOT_GOOD:I = 0x1


# virtual methods
.method public abstract setLandProtectStatusInfoJudgeFailed()V
.end method

.method public abstract setLandProtectStatusInfoJudgeGood()V
.end method

.method public abstract setLandProtectStatusInfoJudgeNotGood()V
.end method
