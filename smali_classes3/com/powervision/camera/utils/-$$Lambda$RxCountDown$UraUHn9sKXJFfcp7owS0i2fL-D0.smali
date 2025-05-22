.class public final synthetic Lcom/powervision/camera/utils/-$$Lambda$RxCountDown$UraUHn9sKXJFfcp7owS0i2fL-D0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/powervision/camera/utils/-$$Lambda$RxCountDown$UraUHn9sKXJFfcp7owS0i2fL-D0;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/powervision/camera/utils/-$$Lambda$RxCountDown$UraUHn9sKXJFfcp7owS0i2fL-D0;->f$0:I

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Lcom/powervision/camera/utils/RxCountDown;->lambda$countCaptureDown$4(ILjava/lang/Long;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
