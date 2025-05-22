.class Lcom/powervision/gcs/utils/CountDownTimer$CountHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "CountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/utils/CountDownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/gcs/utils/CountDownTimer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/utils/CountDownTimer;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/gcs/utils/CountDownTimer;Landroid/os/Message;)V
    .locals 0

    .line 127
    invoke-virtual {p1, p2}, Lcom/powervision/gcs/utils/CountDownTimer;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 119
    check-cast p1, Lcom/powervision/gcs/utils/CountDownTimer;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/utils/CountDownTimer$CountHandler;->referenceHandleMessage(Lcom/powervision/gcs/utils/CountDownTimer;Landroid/os/Message;)V

    return-void
.end method
