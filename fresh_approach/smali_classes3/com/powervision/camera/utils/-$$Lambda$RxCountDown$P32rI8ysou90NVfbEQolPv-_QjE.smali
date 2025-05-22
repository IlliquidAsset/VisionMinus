.class public final synthetic Lcom/powervision/camera/utils/-$$Lambda$RxCountDown$P32rI8ysou90NVfbEQolPv-_QjE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/powervision/camera/utils/RxCountDown;

.field public final synthetic f$1:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/camera/utils/RxCountDown;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/camera/utils/-$$Lambda$RxCountDown$P32rI8ysou90NVfbEQolPv-_QjE;->f$0:Lcom/powervision/camera/utils/RxCountDown;

    iput-object p2, p0, Lcom/powervision/camera/utils/-$$Lambda$RxCountDown$P32rI8ysou90NVfbEQolPv-_QjE;->f$1:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/powervision/camera/utils/-$$Lambda$RxCountDown$P32rI8ysou90NVfbEQolPv-_QjE;->f$0:Lcom/powervision/camera/utils/RxCountDown;

    iget-object v1, p0, Lcom/powervision/camera/utils/-$$Lambda$RxCountDown$P32rI8ysou90NVfbEQolPv-_QjE;->f$1:Landroid/util/SparseArray;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Lcom/powervision/camera/utils/RxCountDown;->lambda$countdown$1$RxCountDown(Landroid/util/SparseArray;Ljava/lang/Integer;)V

    return-void
.end method
