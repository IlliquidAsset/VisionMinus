.class Lcom/powervision/home/utils/Ap03ActivationManager$1;
.super Lcom/powervision/base/net/observable/RequestObservable;
.source "Ap03ActivationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/utils/Ap03ActivationManager;->uploadActivationCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/net/observable/RequestObservable<",
        "Ljava/util/List<",
        "Lcom/powervision/home/model/ActivationInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/utils/Ap03ActivationManager;


# direct methods
.method constructor <init>(Lcom/powervision/home/utils/Ap03ActivationManager;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/powervision/home/utils/Ap03ActivationManager$1;->this$0:Lcom/powervision/home/utils/Ap03ActivationManager;

    invoke-direct {p0}, Lcom/powervision/base/net/observable/RequestObservable;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/powervision/base/net/exception/ApiException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/powervision/home/utils/Ap03ActivationManager$1;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/home/model/ActivationInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method
