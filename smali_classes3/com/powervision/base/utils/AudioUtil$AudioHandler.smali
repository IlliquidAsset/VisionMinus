.class Lcom/powervision/base/utils/AudioUtil$AudioHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "AudioUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/utils/AudioUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AudioHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/base/utils/AudioUtil;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/base/utils/AudioUtil;)V
    .locals 0

    .line 253
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/base/utils/AudioUtil;Landroid/os/Message;)V
    .locals 0

    .line 258
    iget p2, p2, Landroid/os/Message;->what:I

    invoke-virtual {p1, p2}, Lcom/powervision/base/utils/AudioUtil;->playAudio(I)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 250
    check-cast p1, Lcom/powervision/base/utils/AudioUtil;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/base/utils/AudioUtil$AudioHandler;->referenceHandleMessage(Lcom/powervision/base/utils/AudioUtil;Landroid/os/Message;)V

    return-void
.end method
