.class Lcom/powervision/localhttp/PVW4RequestListenerHelper$40;
.super Lcom/google/gson/reflect/TypeToken;
.source "PVW4RequestListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/localhttp/PVW4RequestListenerHelper;->notifyListeners(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/powervision/localhttp/entity/BaseModel<",
        "Lcom/powervision/localhttp/entity/PVW4SlowRecordRatio;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/localhttp/PVW4RequestListenerHelper;


# direct methods
.method constructor <init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper$40;->this$0:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
