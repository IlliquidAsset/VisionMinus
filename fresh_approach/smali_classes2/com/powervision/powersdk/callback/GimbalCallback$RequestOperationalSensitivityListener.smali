.class public interface abstract Lcom/powervision/powersdk/callback/GimbalCallback$RequestOperationalSensitivityListener;
.super Ljava/lang/Object;
.source "GimbalCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/powersdk/callback/GimbalCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestOperationalSensitivityListener"
.end annotation


# static fields
.field public static final PVSDK_OPERATIONALSENSITIVITYCONFIG_INFO_PITCH:I = 0x0

.field public static final PVSDK_OPERATIONALSENSITIVITYCONFIG_INFO_ROLL:I = 0x1


# virtual methods
.method public abstract onOperationalsenSitivityConfigPitch(F)V
.end method

.method public abstract onOperationalsenSitivityConfigRoll(F)V
.end method
