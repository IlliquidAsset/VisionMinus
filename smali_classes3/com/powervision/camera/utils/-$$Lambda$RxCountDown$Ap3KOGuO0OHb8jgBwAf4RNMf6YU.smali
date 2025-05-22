.class public final synthetic Lcom/powervision/camera/utils/-$$Lambda$RxCountDown$Ap3KOGuO0OHb8jgBwAf4RNMf6YU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/powervision/camera/utils/RxCountDown;

.field public final synthetic f$1:Landroid/util/SparseArray;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/camera/utils/RxCountDown;Landroid/util/SparseArray;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/camera/utils/-$$Lambda$RxCountDown$Ap3KOGuO0OHb8jgBwAf4RNMf6YU;->f$0:Lcom/powervision/camera/utils/RxCountDown;

    iput-object p2, p0, Lcom/powervision/camera/utils/-$$Lambda$RxCountDown$Ap3KOGuO0OHb8jgBwAf4RNMf6YU;->f$1:Landroid/util/SparseArray;

    iput p3, p0, Lcom/powervision/camera/utils/-$$Lambda$RxCountDown$Ap3KOGuO0OHb8jgBwAf4RNMf6YU;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/powervision/camera/utils/-$$Lambda$RxCountDown$Ap3KOGuO0OHb8jgBwAf4RNMf6YU;->f$0:Lcom/powervision/camera/utils/RxCountDown;

    iget-object v1, p0, Lcom/powervision/camera/utils/-$$Lambda$RxCountDown$Ap3KOGuO0OHb8jgBwAf4RNMf6YU;->f$1:Landroid/util/SparseArray;

    iget v2, p0, Lcom/powervision/camera/utils/-$$Lambda$RxCountDown$Ap3KOGuO0OHb8jgBwAf4RNMf6YU;->f$2:I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, p1}, Lcom/powervision/camera/utils/RxCountDown;->lambda$countdown$3$RxCountDown(Landroid/util/SparseArray;ILjava/lang/Integer;)V

    return-void
.end method
