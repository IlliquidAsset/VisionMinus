.class public Lcom/mob/apc/APCException;
.super Ljava/lang/Exception;
.source ""


# static fields
.field public static final AIDL_ERROR_CODE_SERVICE_BINDER_NULL_OR_TIMEOUT:I = 0x3e9

.field public static final AIDL_ERROR_CODE_SERVICE_BINDER_SEND_MESSAGE_REMOTEEXCEPTION:I = 0x3ec

.field public static final AIDL_ERROR_CODE_SERVICE_BIND_EXCEPTION:I = 0x3ea

.field public static final AIDL_ERROR_CODE_SERVICE_BIND_FAILED:I = 0x3eb


# instance fields
.field public errorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/mob/apc/APCException;->errorCode:I

    iput p1, p0, Lcom/mob/apc/APCException;->errorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/mob/apc/APCException;->errorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/mob/apc/APCException;->errorCode:I

    return-void
.end method
