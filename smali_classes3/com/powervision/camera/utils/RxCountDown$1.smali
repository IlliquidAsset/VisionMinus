.class Lcom/powervision/camera/utils/RxCountDown$1;
.super Ljava/lang/Object;
.source "RxCountDown.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/camera/utils/RxCountDown;->countCaptureDown(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/camera/utils/RxCountDown;

.field final synthetic val$sparseArray:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/powervision/camera/utils/RxCountDown;Landroid/util/SparseArray;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/powervision/camera/utils/RxCountDown$1;->this$0:Lcom/powervision/camera/utils/RxCountDown;

    iput-object p2, p0, Lcom/powervision/camera/utils/RxCountDown$1;->val$sparseArray:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/powervision/camera/utils/RxCountDown$1;->val$sparseArray:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/camera/utils/RxCountDown$1;->val$sparseArray:Landroid/util/SparseArray;

    const/16 v1, 0xf27

    invoke-virtual {p1, v1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/powervision/camera/utils/RxCountDown$1;->accept(Ljava/lang/Integer;)V

    return-void
.end method
